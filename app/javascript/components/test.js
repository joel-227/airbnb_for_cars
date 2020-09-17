const justTesting = () => {
  document.addEventListener('keyup', (event) => {
    if (event.key === 'p') {
      document.getElementById('car_price').value = 3;
      document.getElementById('car_model').value = "Ford Puma";
      document.getElementById('car_license').value = "SFX9301D";
      document.getElementById('car_age').value = 7;
      document.getElementById('car_image_url').value = "https://upload.wikimedia.org/wikipedia/commons/e/e1/English_Ford_Puma.jpg";
    }
  });
}

export default justTesting;