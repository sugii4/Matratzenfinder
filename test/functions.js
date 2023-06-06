var currentTab = 0;
showTab(currentTab);

const validateDefinition = {
  0: 'min1',
  1: 'min1',
  2: 'min1',
  3: 'any',
  4: 'min1',
  5: 'min1'
}

function showTab(tab) {
  var allTabs = document.getElementsByClassName("tab");
  allTabs[tab].style.display = "grid";
  if (tab === 0) { 
    document.getElementById("prevBtn").style.opacity = "0";
    const prevBtn = document.getElementById("prevBtn")
    prevBtn.setAttribute('disabled', '')
    prevBtn.style.cursor = "default"
  } else {
    document.getElementById("prevBtn").style.opacity = "1";
    prevBtn.removeAttribute('disabled')
    prevBtn.style.cursor = "pointer"
  }
  if (tab === (allTabs.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Fertig";
  } else {
    document.getElementById("nextBtn").innerHTML = "Weiter";
  }
  fixStepIndicator(tab)
}

function nextPrev(nextTab) {
  var allTabs = document.getElementsByClassName("tab");
  if (nextTab === 1 && !validateForm()) return false;
  allTabs[currentTab].style.display = "none";
  currentTab = currentTab + nextTab;

  if (currentTab === 2) {
    const sizes = document.querySelectorAll('[data-size]');
    sizes.forEach(s=>{
      s.removeAttribute('disabled')
      if (document.querySelectorAll('[type=radio][name=target]:checked')[0].dataset.value === '1' && s.dataset.size === '2') {
        s.setAttribute('disabled','')
      }
    })
  }

  if (currentTab === 4) {
    const allergies2 = document.querySelectorAll('[data-size]');
    allergies2.forEach(a=>{
      a.removeAttribute('disabled')
      if (document.querySelectorAll('[type=checkbox][name=allergy]:checked')[0]?.dataset.value === '1' && a.dataset.size === 'latex') {
        a.setAttribute('disabled', '')
      }
    })
  }

  if (currentTab >= allTabs.length) {
    formSubmit()
    return false;
  }
  showTab(currentTab);
}

function validateForm() {
  var allTabs, tabInputs, counter, valid = true;
  allTabs = document.getElementsByClassName("tab");
  tabInputs = allTabs[currentTab].getElementsByTagName('input');
  for (counter = 0, inputs = tabInputs.length; counter < inputs; counter++) {
    if (validateDefinition[currentTab] === 'min1') {
      if(!checkRadio(document.getElementsByClassName("tab")[currentTab].querySelectorAll('[type=radio]'))){
        valid = false
      }
    }
  }
  if (validateDefinition[currentTab] === 'any') {
    valid = true
  }
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid;
}

function fixStepIndicator(n) {
  var counter, steps = document.getElementsByClassName("step");
  for (counter = 0; counter < steps.length; counter++) {
    steps[counter].className = steps[counter].className.replace(" active", "");
  }
  steps[n].className += " active";
}

function checkRadio(radios) {
  for (var counter = 0, len = radios.length; counter < len; counter++) {
       if (radios[counter].checked) {
           return true;
       }
  }
  return false;
}

async function formSubmit() {
  const formdata = new FormData()
  formdata.set('target', document.querySelectorAll('[type=radio][name=target]:checked')[0].dataset.value)
  formdata.set('hardness', document.querySelectorAll('[type=radio][name=hardness]:checked')[0].dataset.value)
  formdata.set('size', document.querySelectorAll('[type=radio][name=size]:checked')[0].dataset.value)
  formdata.set('material', document.querySelectorAll('[type=radio][name=material]:checked')[0].dataset.value)
  formdata.set('complaints', document.querySelectorAll('[type=radio][name=target]:checked')[0].dataset.value)

  const allergies = document.querySelectorAll('[type=checkbox][name=allergy]:checked')
  if (allergies.length === 0) {
    formdata.append('allergy[]', '')
  } else {
    allergies.forEach(a=>{
      formdata.append('allergy[]', a.dataset.value)
    })
  }

  const data = new URLSearchParams();
  for (const pair of formdata) {
      data.append(pair[0], pair[1]);
  }

  const response = await fetch('controller.php',{method:'POST',body:data})
  const json = await response.json()

  document.querySelector('#placeholder').remove()
  
if(json.length === 0) {
 document.getElementById('noResults').style.display = "block";
} else {
  document.getElementById("results").style.display = "grid";
  json.forEach(e=>{

    

    price = new Intl.NumberFormat('de-DE', {
    style: 'currency',
    currency: 'EUR'
    }).format(e.price)

   

    let ausgabe = document.createElement('div')
    ausgabe.className = 'mattress'
    let ausgabeID = document.getElementById("resultContainer")
    document.body.insertBefore(ausgabe, ausgabeID)
    ausgabe.innerHTML = `<p class="mattressTitle">${e.name}</p><br><img class="resultImage" src="${e.picture}"><br><p>ab ${price}</p><br><button class="resultButton"><a target="_blank" href="${e.url}">zur Matratze ></a></button>`
    document.querySelector('#results').appendChild(ausgabe)
  })
}
}