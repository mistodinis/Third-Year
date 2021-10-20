void output1(unsigned char *x){

	#pragma HLS INTERFACE node=ap_none port=x
	#pragma HLS INTERFACE node=ap_ctl_none port=return


	*x = 0b11110000;
}
