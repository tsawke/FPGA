set ModuleHierarchy {[{
"Name" : "lz4CompressEngineRun","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "lzCompress_6_4_65536_6_1_2048_64_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_dict_flush_fu_138","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "dict_flush","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_lzCompress_6_4_65536_6_1_2048_64_Outline_VITIS_LOOP_82_2_fu_143","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_82_2","ID" : "5","Type" : "no"},]},
		{"Name" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_fu_159","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_compress","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_compress_leftover_fu_179","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_compress_leftover","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_lzCompress_6_4_65536_6_1_2048_64_Pipeline_lz_left_bytes_fu_190","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_left_bytes","ID" : "11","Type" : "pipeline"},]},]},
	{"Name" : "lzBestMatchFilter_6_65536_U0","ID" : "12","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lzBestMatchFilter_6_65536_Pipeline_lz_bestMatchFilter_fu_135","ID" : "13","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_bestMatchFilter","ID" : "14","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "lz_bestMatchFilter_left_over","ID" : "15","Type" : "no"},]},
	{"Name" : "lzBooster_255_16384_64_U0","ID" : "16","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_lzBooster_255_16384_64_Pipeline_lz_booster_fu_106","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "lz_booster","ID" : "18","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "lz_booster_left_bytes","ID" : "19","Type" : "no"},]},
	{"Name" : "lz4Compress_4096_1_U0","ID" : "20","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "lz4CompressPart1_4096_1_U0","ID" : "21","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_lz4CompressPart1_4096_1_Pipeline_lz4_divide_fu_138","ID" : "22","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "lz4_divide","ID" : "23","Type" : "pipeline"},]},]},
		{"Name" : "lz4CompressPart2_U0","ID" : "24","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_lz4CompressPart2_Pipeline_lz4_compress_fu_91","ID" : "25","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "lz4_compress","ID" : "26","Type" : "pipeline"},]},]},]},]
}]}