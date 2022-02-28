# Parallel Processing on Zorro

This repo contains a minimal working example for doing parallel
processing on American University's High Performance Computing
Machine, [Zorro](https://www.american.edu/cas/hpc/).

This version assumes that you want to use R version 4.0.2.

To run this example, follow these steps:

1. Clone this repo to your home directory.

2. Edit the email address in "install.lsf" and "minimal.lsf" to be
   your email address.
   
3. Edit the `rpath` value in "install.R" and "minimal.R" to use your
   username instead of "username".

4. Submit the install job:

    ``` bash
    bsub < install.lsf
    ```

5. Submit the minimal job:

    ``` bash
    bsub < minimal.lsf
    ```

I also provide an example in "install_bioc.R" for installing
Bioconductor. To use this, replace "install.R" with "install_bioc.R"
in "install.lsf"
