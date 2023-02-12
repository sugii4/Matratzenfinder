var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

const validateDefinition = {
  0: 'min1',
  1: 'min1',
  2: 'min1',
  3: 'min1',
  4: 'any',
  5: 'any'
}

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Fertig";
  } else {
    document.getElementById("nextBtn").innerHTML = "Weiter";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;

  if (currentTab === 2) {
    const sizes = document.querySelectorAll('[data-size]');
    sizes.forEach(s=>{
      s.removeAttribute('disabled')
      if (document.querySelectorAll('[type=radio][name=zg]:checked')[0].dataset.value === '1' && s.dataset.size === '2') {
        s.setAttribute('disabled','')
      }
    })
  }

  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    formSubmit()
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0, l=y.length; i<l; i++) {
    if (validateDefinition[currentTab] === 'min1') {
      if(!checkRadio(document.getElementsByClassName("tab")[currentTab].querySelectorAll('[type=radio]'))){
        valid = false
      }
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}

function checkRadio(radios) {
  for (var i = 0, len = radios.length; i < len; i++) {
       if (radios[i].checked) {
           return true;
       }
  }
  return false;
}

async function formSubmit() {
  const formdata = new FormData()
  formdata.set('zg', document.querySelectorAll('[type=radio][name=zg]:checked')[0].dataset.value)
  formdata.set('hg', document.querySelectorAll('[type=radio][name=hg]:checked')[0].dataset.value)
  formdata.set('mg', document.querySelectorAll('[type=radio][name=mg]:checked')[0].dataset.value)
  formdata.set('m', document.querySelectorAll('[type=radio][name=m]:checked')[0].dataset.value)

  const allergies = document.querySelectorAll('[type=checkbox][name=ag]:checked')
  if (allergies.length === 0) {
    formdata.append('ag[]', '')
  } else {
    allergies.forEach(a=>{
      formdata.append('ag[]', a.dataset.value)
    })
  }

  const beschwerden = document.querySelectorAll('[type=checkbox][name=b]:checked')
  if (beschwerden.length === 0) {
    formdata.append('b[]', '')
  } else {
    beschwerden.forEach(a=>{
      formdata.append('b[]', a.dataset.value)
    })
  }

  const data = new URLSearchParams();
  for (const pair of formdata) {
      data.append(pair[0], pair[1]);
  }

  const response = await fetch('controller.php',{method:'POST',body:data})
  const json = await response.json()

  console.log(json)
}