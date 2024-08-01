document.getElementById('skull').addEventListener('click', function() {
    updateInfo('Skull', 'The skull is a bony structure that forms the head in vertebrates. It supports the structures of the face and provides a protective cavity for the brain.');
});

document.getElementById('teeth').addEventListener('click', function() {
    updateInfo('Teeth', 'Teeth are hard, mineralized structures located in the mouth of many vertebrates. They are essential for breaking down food, and they function in cutting, tearing, and grinding. Humans have four types of teeth: incisors for cutting, canines for tearing, premolars for grinding, and molars for chewing. Teeth also play a crucial role in speech and give shape to the face. Proper care of teeth through regular brushing and dental checkups is vital for maintaining oral health.');
});

document.getElementById('interclavicular_Ligament').addEventListener('click', function() {
    updateInfo('Interclavicular Ligament', 'The interclavicular ligament is a fibrous band that connects the sternal ends of the two clavicles. Situated above the upper part of the sternum, this ligament helps to stabilize the clavicles and maintain the integrity of the upper part of the chest. It plays an important role in facilitating shoulder movements and serves as a protective barrier for underlying vessels and nerves.');
});

document.getElementById('Clavicle').addEventListener('click', function() {
    document.getElementById('name').textContent = 'Clavicle';
    document.querySelector('.bone-description').textContent = "The clavicle, or collarbone, is a slender, S-shaped bone that connects the arm to the body, located near the throat. It provides structural support to the shoulder and acts as a brace for the arms.";
});

document.getElementById('Articular_Capsule').addEventListener('click', function() {
    document.getElementById('name').textContent = 'Articular Capsule';
    document.querySelector('.bone-description').textContent = "The articular capsule is a thick, fibrous membrane that surrounds a joint, enclosing the cavity. It maintains stability, allows for movement, and contains the synovial fluid that lubricates the joint.";
});

document.getElementById('Sternum').addEventListener('click', function() {
    document.getElementById('name').textContent = 'Sternum';
    document.querySelector('.bone-description').textContent = "The sternum, or breastbone, is a flat bone located in the center of the chest, connecting to the rib bones with cartilage to form the rib cage. It consists of three parts: the manubrium, the body, and the xiphoid process. The sternum provides vital protection for the heart, lungs, and major blood vessels. It also serves as an anchor point for several muscles and aids in respiration by allowing the rib cage to expand and contract. Disorders or injuries to the sternum can affect respiration and other functions, highlighting its critical role in the human body.";
});

document.getElementById("Costal_Cartilage").addEventListener("click", function() {
    document.getElementById("name").textContent = "Costal Cartilage";
    document.querySelector(".bone-description").textContent = "The costal cartilages are bars of hyaline cartilage that serve to prolong the ribs forward and contribute to the elasticity of the walls of the thorax. Costal cartilages connect the ends of the ribs to the sternum, allowing some flexibility and movement. This aids in the expansion and contraction of the chest cavity during respiration.  ";
});

document.getElementById("Public_Symphysis").addEventListener("click", function() {
    document.getElementById("name").innerText = "Pubic Symphysis";
    document.querySelector(".bone-description").innerText = "The pubic symphysis is a cartilaginous joint that connects the two sides of the pelvis. It's located at the front, where the pubic bones meet, and helps maintain the stability and flexibility of the pelvic region.";
});

document.getElementById("Ischium").addEventListener("click", function() {
    document.getElementById("name").innerText = "Ischium";
    document.querySelector(".bone-description").innerText = "The ischium is one of the three major bones that make up the pelvis. It's situated at the lower and back part of the hip bone. The ischium supports the body's weight when sitting.";
});

document.getElementById("Pubofemoral_ligament").addEventListener("click", function() {
    document.getElementById("name").innerText = "Pubofemoral Ligament";
    document.querySelector(".bone-description").innerText = "The pubofemoral ligament is a band of connective tissue that extends from the pubic portion of the hip bone to the femur. It strengthens the capsule of the hip joint and helps restrict excessive abduction and extension.";
});

document.getElementById("Femur").addEventListener("click", function() {
    document.getElementById("name").innerText = "Femur";
    document.querySelector(".bone-description").innerText = "The femur, or thigh bone, is the longest and strongest bone in the human body. It runs from the hip to the knee and plays a vital role in supporting the body's weight and allowing movement of the leg.";
});

document.getElementById("Patella").addEventListener("click", function() {
    document.getElementById("name").innerText = "Patella";
    document.querySelector(".bone-description").innerText = "The patella, or kneecap, is a small, triangular bone that protects the knee joint. It's embedded in the tendon of the quadriceps muscles and improves the leverage of the tendon, enhancing the muscle's ability to extend the knee.";
});

document.getElementById("Tibia").addEventListener("click", function() {
    document.getElementById("name").innerText = "Tibia";
    document.querySelector(".bone-description").innerText = "The tibia, or shinbone, is the larger of the two bones in the lower leg. It's located medial to the fibula and helps support the body's weight. The tibia plays a key role in the formation of the knee and ankle joints.";
});

document.getElementById("Fibula").addEventListener("click", function() {
    document.getElementById("name").innerText = "Fibula";
    document.querySelector(".bone-description").innerText = "The fibula is the slender and smaller bone of the lower leg. It runs parallel to the tibia and helps stabilize the ankle and support the muscles of the lower leg.";
});

document.getElementById("Talus").addEventListener("click", function() {
    document.getElementById("name").innerText = "Talus";
    document.querySelector(".bone-description").innerText = "The talus is one of the seven tarsal bones in the foot. It's situated between the tibia and fibula at the ankle and the calcaneus at the heel. The talus is integral to the foot's ability to bear weight and move in different directions.";
});

document.getElementById("Humerus").addEventListener("click", function() {
    document.getElementById("name").innerText = "Humerus";
    document.quetySelector(".bone-description").innerText = "The humerus is the long bone in the upper arm. It is located between the elbow joint and the shoulder. At the elbow, it connects primarily to the ulna, as the forearm's radial bone connects to the wrist.";
});

document.getElementById("Transverse_Ligament_of_Humerus").addEventListener("click", function() {
    document.getElementById("name").innerText = "Transverse Ligament of Humerus";
    document.quetySelector(".bone-description").innerText = "The transverse ligament of the humerus is a narrow band that stretches across the intertubercular sulcus. It keeps the tendon from the long head of the biceps brachii in place during movement of the arm.";
});

document.getElementById("Spine").addEventListener("click", function() {
    document.getElementById("name").innerText = "Spine";
    document.quetySelector(".bone-description").innerText = "The human spine is a complex structure that consists of 24 individual vertebrae along with the sacrum and coccyx. It serves as the main support system for the upper body, allowing for movement and flexibility, while also protecting the spinal cord.";
});

document.getElementById("False_Ribs").addEventListener("click", function() {
    document.getElementById("name").innerText = "False Ribs";
    document.quetySelector(".bone-description").innerText = "False ribs are the lower five ribs, numbered 8–12, that are not directly attached to the sternum. Ribs 8–10 are connected to the sternum through cartilage, while ribs 11–12 are referred to as floating ribs because they are not connected to the sternum at all.";
});

document.getElementById("Sacrum").addEventListener("click", function() {
    document.getElementById("name").innerText = "Sacrum";
    document.quetySelector(".bone-description").innerText = "The sacrum is a large, triangular bone at the base of the spine that forms the upper, back part of the pelvic cavity. It connects the spine to the two hip bones and helps support the weight of the upper body.";
});

document.getElementById('Interosseous_Membrane_Of_The_leg').addEventListener('click', function() {
    document.getElementById('name').textContent = 'Interosseous Membrane Of The Leg';
    document.querySelector('.bone-description').textContent = 'The interosseous membrane of the leg is a fibrous sheet that connects the tibia and fibula, the two bones of the lower leg. It helps stabilize the bones, allowing them to function together in bearing weight and facilitating movement. The membrane also serves as a site for muscle attachment and plays a vital role in transmitting forces between the leg bones.';
});


function updateInfo(name, description) {
    var nameElement = document.getElementById('name');
    var descriptionElement = document.querySelector('.bone-description');
    nameElement.innerHTML = name;
    descriptionElement.innerHTML = 'Description: ' + description;
}

document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 4];

    quizButton.addEventListener('click', () => {
        window.location.href = 'index.html';
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 2];

    quizButton.addEventListener('click', () => {
        window.location.href = 'more_info.html';
    });
});
