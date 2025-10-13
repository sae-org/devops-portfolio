const phrases=["DevOps Engineer","Cloud & IaC Specialist","Automation Enthusiast"];
const typedEl=document.getElementById("typed");
let i=0,j=0,deleting=false,pause=0;
function typeLoop(){
  if(!typedEl) return;
  const current=phrases[i%phrases.length];
  if(pause>0){ pause--; return requestAnimationFrame(typeLoop);}
  if(!deleting){
    typedEl.textContent=current.slice(0,j++);
    if(j>current.length){ deleting=true; pause=40; }
  } else {
    typedEl.textContent=current.slice(0,j--);
    if(j<0){ deleting=false; i++; pause=10; }
  }
  const speed=deleting?30:45;
  setTimeout(()=>requestAnimationFrame(typeLoop),speed);
}
typeLoop();

// tabs
const tabs=document.querySelectorAll(".tab");
const panels=document.querySelectorAll(".panel");
tabs.forEach(tab=>{
  tab.addEventListener("click",()=>{
    tabs.forEach(t=>t.classList.remove("active"));
    panels.forEach(p=>p.classList.remove("show"));
    tab.classList.add("active");
    document.getElementById(tab.dataset.tab).classList.add("show");
  });
});

// year
document.getElementById("year").textContent=new Date().getFullYear();
