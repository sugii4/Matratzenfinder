var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

const validateDefinition = {
  0: 'min1',
  1: 'min1',
  2: 'min1',
  3: 'any',
  4: 'min1',
  5: 'any'
}

function showTab(tab) {
  var allTabs = document.getElementsByClassName("tab"); //enthält alle divs die zur Klasse "tab" gehören
  allTabs[tab].style.display = "grid"; //alle divs "tabs" werden als block displayed
  if (tab === 0) { //wenn wir uns beim allerersten Tab (siehe var currentTab) befinden ...
    document.getElementById("prevBtn").style.display = "none"; // ... wird der "Zurück"-Button nicht gezeigt
  } else { //bei allen weiteren Tabs ...
    document.getElementById("prevBtn").style.display = "block"; // ... wird der Zurück-Button als inline displayed
  }
  if (tab === (allTabs.length - 2)) { //wenn wir uns beim letzten Tab befinden ...
    document.getElementById("nextBtn").innerHTML = "Fertig"; // ... steht im "Weiter"-Button "Fertig"
  } else { // bei allen davor ...
    document.getElementById("nextBtn").innerHTML = "Weiter"; // ... steht im Weiter-Button "Weiter"
  }

  if (tab === (allTabs.length - 1)) {
    document.getElementById("nextBtn").style.display = "none";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(tab)
}

function nextPrev(nextTab) {
  // This function will figure out which tab to display
  var allTabs = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (nextTab === 1 && !validateForm()) return false;
  // Hide the current tab:
  allTabs[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + nextTab;

  if (currentTab === 2) { // wenn Tab 2 aktiv ist
    const sizes = document.querySelectorAll('[data-size]'); //Variable die alle html-Elemente mit "data-size" enthalten enthält
    sizes.forEach(s=>{ //für jedes dieser data-size Elemente ...
      s.removeAttribute('disabled') //... entferne "disabled" Attribut
      if (document.querySelectorAll('[type=radio][name=target]:checked')[0].dataset.value === '1' && s.dataset.size === '2') { //wenn bei der 1, Auswahl (siehe const validateDefinition) die data-value === 1 UND bei den data-size === 2 ...
        s.setAttribute('disabled','') // ... setze "disabled" Attribut für jedes Element, das die Bedinung erfüllt
      }
      //Hintergrundfarbe ändern???
    })
  }

  if (currentTab === 4) {
    const allergies2 = document.querySelectorAll('[data-size]');
    allergies2.forEach(a=>{
      a.removeAttribute('disabled')
      if (document.querySelectorAll('[type=checkbox][name=allergy]:checked')[0].dataset.value === '1' && a.dataset.size === 'latex') {
        a.setAttribute('disabled', '')
      }
    })
  }

  // if you have reached the end of the form...
  if (currentTab >= allTabs.length) {
    // ... the form gets submitted:
    formSubmit()
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var allTabs, tabInputs, i, valid = true;
  allTabs = document.getElementsByClassName("tab");
  tabInputs = allTabs[currentTab].getElementsByTagName('input');
  // A loop that checks every input field in the current tab:
  for (i = 0, l=tabInputs.length; i<l; i++) {
    if (validateDefinition[currentTab] === 'min1') { //wenn der aktuelle Tab min1 entspricht ...
      if(!checkRadio(document.getElementsByClassName("tab")[currentTab].querySelectorAll('[type=radio]'))){ // ???
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
  formdata.set('target', document.querySelectorAll('[type=radio][name=target]:checked')[0].dataset.value)
  formdata.set('hardness', document.querySelectorAll('[type=radio][name=hardness]:checked')[0].dataset.value)
  formdata.set('size', document.querySelectorAll('[type=radio][name=size]:checked')[0].dataset.value)
  formdata.set('material', document.querySelectorAll('[type=radio][name=material]:checked')[0].dataset.value)

  const allergies = document.querySelectorAll('[type=checkbox][name=allergy]:checked')
  if (allergies.length === 0) {
    formdata.append('allergy[]', '')
  } else {
    allergies.forEach(a=>{
      formdata.append('allergy[]', a.dataset.value)
    })
  }

  const beschwerden = document.querySelectorAll('[type=checkbox][name=complaints]:checked')
  if (beschwerden.length === 0) {
    formdata.append('complaints[]', '')
  } else {
    beschwerden.forEach(a=>{
      formdata.append('complaints[]', a.dataset.value)
    })
  }

  const data = new URLSearchParams();
  for (const pair of formdata) {
      data.append(pair[0], pair[1]);
  }

  const response = await fetch('controller.php',{method:'POST',body:data})
  const json = await response.json()


if(json.length === 0) {
  let c = document.createElement('p')
  c.innerText = "sorry nix gefunden! loser"
  document.body.appendChild(c)
} else {
  json.forEach(e=>{

    price = new Intl.NumberFormat('de-DE', {
    style: 'currency',
    currency: 'EUR'
    }).format(e.price)

    let ausgabe = document.createElement('div')
    ausgabe.innerHTML = `<h2>${e.name}</h2><br><p>${price}</p><br><img style="height:200px;width:200px" src="${e.picture}"><br><p><a target="_blank" href="${e.url}">${e.url}</a></p>`
    document.querySelector('#resultsID').appendChild(ausgabe)
  })
}
}