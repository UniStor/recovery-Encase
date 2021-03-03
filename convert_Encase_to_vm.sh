https://www.reddit.com/r/computerforensics/comments/7c35ty/encase_disk_image_to_virtual_machine/


```
I don't utilise image-to-VM conversions much myself, but on Linux you can install the libewf package (I think it comes installed on SIFT workstations). Mount your EnCase image using the ewfmount command:

      #    ewfmount <your_image>.E01 /mnt/

Then you can convert it using the qemu-img command (Also on SIFT) to convert it to a virtual machine format (VMWare .vmdk in this case)

      #   qemu-img convert /mnt/<your_image> -O vmdk <name>.vmdk

I think qemu-img supports other conversions such as VirtualBox .vbox files as well
```

init(){
sudo apt install ewf-tools
}

mount(){
ewfmount windows_Lenovo_broken.E01 /mnt
}

convert(){
qemu-img convert /mnt/ewf1 -O qcow2 Lenovo-Broken.qcow2
}
