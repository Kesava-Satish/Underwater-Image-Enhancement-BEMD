# Visual Enhancement Techniques for Underwater Images

## 📌 Project Overview
Underwater imagery often suffers from poor visibility due to light absorption, scattering, and color distortion (bluish/greenish cast). This project implements a comprehensive image enhancement algorithm using **Bidirectional Empirical Mode Decomposition (BEMD)** to decompose images into intrinsic mode functions (IMFs) for detail enhancement, combined with color correction techniques.

## 🧠 Key Algorithms Implemented
1.  **Red Channel Compensation:** Corrects the absorption of red light in water.
2.  **Gray World Algorithm:** Balances the color cast (`apply_gray_world.m`).
3.  **BEMD (Bidirectional Empirical Mode Decomposition):** A data-driven method to decompose the image into texture and trend components for local contrast enhancement (`bemd.m`).
4.  **Gamma Correction:** Adjusts luminance for better visibility.

## 📊 Performance Metrics
The system evaluates enhancement quality using standard quantitative metrics:
* **MSE (Mean Squared Error):** Measures the deviation between the original and enhanced image.
* **PSNR (Peak Signal-to-Noise Ratio):** Measures the quality of reconstruction.
* **UCIQE / UIQM:** Underwater Image Quality Measures (referenced in documentation).

## 🚀 How to Run
1.  Clone this repository.
2.  Open MATLAB and navigate to the `/src` folder.
3.  Add your raw underwater images to the folder.
4.  Run the main execution script:
    ```matlab
    proposed_main.m
    ```
5.  The script will output the processed image and display the MSE/PSNR values in the command window.

## 📂 Repository Structure
* `/src`: Contains all MATLAB source codes.
    * `proposed_main.m`: The entry point for the application.
* `/docs`: Project thesis and presentation slides.
* `/results`: Comparison images and test results.

## 📸 Results
![Before vs After](/results/demo_result.jpg)

## 👤 Author
**Kesava Satish Boppana**
