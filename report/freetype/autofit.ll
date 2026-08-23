Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0
@af_khms_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 6624, i32 6655 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_khms_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_lao_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3712, i32 3839 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_lao_nonbase_uniranges = hidden constant [4 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3761, i32 3761 }, %struct.AF_Script_UniRangeRec_ { i32 3764, i32 3772 }, %struct.AF_Script_UniRangeRec_ { i32 3784, i32 3790 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_latn_uniranges = hidden constant [36 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 32, i32 127 }, %struct.AF_Script_UniRangeRec_ { i32 160, i32 169 }, %struct.AF_Script_UniRangeRec_ { i32 171, i32 177 }, %struct.AF_Script_UniRangeRec_ { i32 180, i32 184 }, %struct.AF_Script_UniRangeRec_ { i32 187, i32 255 }, %struct.AF_Script_UniRangeRec_ { i32 256, i32 383 }, %struct.AF_Script_UniRangeRec_ { i32 384, i32 591 }, %struct.AF_Script_UniRangeRec_ { i32 592, i32 687 }, %struct.AF_Script_UniRangeRec_ { i32 697, i32 735 }, %struct.AF_Script_UniRangeRec_ { i32 741, i32 767 }, %struct.AF_Script_UniRangeRec_ { i32 768, i32 879 }, %struct.AF_Script_UniRangeRec_ { i32 6832, i32 6846 }, %struct.AF_Script_UniRangeRec_ { i32 7424, i32 7467 }, %struct.AF_Script_UniRangeRec_ { i32 7531, i32 7543 }, %struct.AF_Script_UniRangeRec_ { i32 7545, i32 7551 }, %struct.AF_Script_UniRangeRec_ { i32 7552, i32 7578 }, %struct.AF_Script_UniRangeRec_ { i32 7616, i32 7679 }, %struct.AF_Script_UniRangeRec_ { i32 7680, i32 7935 }, %struct.AF_Script_UniRangeRec_ { i32 8192, i32 8303 }, %struct.AF_Script_UniRangeRec_ { i32 8352, i32 8376 }, %struct.AF_Script_UniRangeRec_ { i32 8378, i32 8399 }, %struct.AF_Script_UniRangeRec_ { i32 8528, i32 8591 }, %struct.AF_Script_UniRangeRec_ { i32 11360, i32 11387 }, %struct.AF_Script_UniRangeRec_ { i32 11390, i32 11391 }, %struct.AF_Script_UniRangeRec_ { i32 11776, i32 11903 }, %struct.AF_Script_UniRangeRec_ { i32 42784, i32 42863 }, %struct.AF_Script_UniRangeRec_ { i32 42865, i32 42992 }, %struct.AF_Script_UniRangeRec_ { i32 42994, i32 42999 }, %struct.AF_Script_UniRangeRec_ { i32 43002, i32 43007 }, %struct.AF_Script_UniRangeRec_ { i32 43824, i32 43867 }, %struct.AF_Script_UniRangeRec_ { i32 43872, i32 43880 }, %struct.AF_Script_UniRangeRec_ { i32 43882, i32 43887 }, %struct.AF_Script_UniRangeRec_ { i32 64256, i32 64262 }, %struct.AF_Script_UniRangeRec_ { i32 119808, i32 120831 }, %struct.AF_Script_UniRangeRec_ { i32 122624, i32 122879 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_latn_nonbase_uniranges = hidden constant [17 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 94, i32 96 }, %struct.AF_Script_UniRangeRec_ { i32 126, i32 126 }, %struct.AF_Script_UniRangeRec_ { i32 168, i32 169 }, %struct.AF_Script_UniRangeRec_ { i32 174, i32 176 }, %struct.AF_Script_UniRangeRec_ { i32 180, i32 180 }, %struct.AF_Script_UniRangeRec_ { i32 184, i32 184 }, %struct.AF_Script_UniRangeRec_ { i32 188, i32 190 }, %struct.AF_Script_UniRangeRec_ { i32 697, i32 735 }, %struct.AF_Script_UniRangeRec_ { i32 741, i32 767 }, %struct.AF_Script_UniRangeRec_ { i32 768, i32 879 }, %struct.AF_Script_UniRangeRec_ { i32 6832, i32 6891 }, %struct.AF_Script_UniRangeRec_ { i32 7616, i32 7679 }, %struct.AF_Script_UniRangeRec_ { i32 8215, i32 8215 }, %struct.AF_Script_UniRangeRec_ { i32 8254, i32 8254 }, %struct.AF_Script_UniRangeRec_ { i32 42888, i32 42888 }, %struct.AF_Script_UniRangeRec_ { i32 43000, i32 43002 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_latb_uniranges = hidden constant [4 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 7522, i32 7530 }, %struct.AF_Script_UniRangeRec_ { i32 8320, i32 8348 }, %struct.AF_Script_UniRangeRec_ { i32 11388, i32 11388 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_latb_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_latp_uniranges = hidden constant [17 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 170, i32 170 }, %struct.AF_Script_UniRangeRec_ { i32 178, i32 179 }, %struct.AF_Script_UniRangeRec_ { i32 185, i32 186 }, %struct.AF_Script_UniRangeRec_ { i32 688, i32 696 }, %struct.AF_Script_UniRangeRec_ { i32 736, i32 740 }, %struct.AF_Script_UniRangeRec_ { i32 7468, i32 7521 }, %struct.AF_Script_UniRangeRec_ { i32 7544, i32 7544 }, %struct.AF_Script_UniRangeRec_ { i32 7579, i32 7615 }, %struct.AF_Script_UniRangeRec_ { i32 8304, i32 8319 }, %struct.AF_Script_UniRangeRec_ { i32 11389, i32 11389 }, %struct.AF_Script_UniRangeRec_ { i32 42864, i32 42864 }, %struct.AF_Script_UniRangeRec_ { i32 42993, i32 42993 }, %struct.AF_Script_UniRangeRec_ { i32 43000, i32 43001 }, %struct.AF_Script_UniRangeRec_ { i32 43868, i32 43871 }, %struct.AF_Script_UniRangeRec_ { i32 43881, i32 43881 }, %struct.AF_Script_UniRangeRec_ { i32 67456, i32 67579 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_latp_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_lisu_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 42192, i32 42239 }, %struct.AF_Script_UniRangeRec_ { i32 73648, i32 73663 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_lisu_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_mlym_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3328, i32 3455 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_mlym_nonbase_uniranges = hidden constant [5 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3328, i32 3329 }, %struct.AF_Script_UniRangeRec_ { i32 3387, i32 3388 }, %struct.AF_Script_UniRangeRec_ { i32 3405, i32 3406 }, %struct.AF_Script_UniRangeRec_ { i32 3426, i32 3427 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_medf_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 93760, i32 93855 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_medf_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_mong_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 6144, i32 6319 }, %struct.AF_Script_UniRangeRec_ { i32 71264, i32 71295 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_mong_nonbase_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 6277, i32 6278 }, %struct.AF_Script_UniRangeRec_ { i32 6313, i32 6313 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_mymr_uniranges = hidden constant [5 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 4096, i32 4255 }, %struct.AF_Script_UniRangeRec_ { i32 43488, i32 43519 }, %struct.AF_Script_UniRangeRec_ { i32 43616, i32 43647 }, %struct.AF_Script_UniRangeRec_ { i32 71376, i32 71423 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_mymr_nonbase_uniranges = hidden constant [13 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 4141, i32 4144 }, %struct.AF_Script_UniRangeRec_ { i32 4146, i32 4151 }, %struct.AF_Script_UniRangeRec_ { i32 4154, i32 4154 }, %struct.AF_Script_UniRangeRec_ { i32 4157, i32 4158 }, %struct.AF_Script_UniRangeRec_ { i32 4184, i32 4185 }, %struct.AF_Script_UniRangeRec_ { i32 4190, i32 4192 }, %struct.AF_Script_UniRangeRec_ { i32 4209, i32 4212 }, %struct.AF_Script_UniRangeRec_ { i32 4226, i32 4226 }, %struct.AF_Script_UniRangeRec_ { i32 4229, i32 4230 }, %struct.AF_Script_UniRangeRec_ { i32 4237, i32 4237 }, %struct.AF_Script_UniRangeRec_ { i32 43493, i32 43493 }, %struct.AF_Script_UniRangeRec_ { i32 43644, i32 43644 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_nkoo_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 1984, i32 2047 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_nkoo_nonbase_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 2027, i32 2037 }, %struct.AF_Script_UniRangeRec_ { i32 2045, i32 2045 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_none_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_none_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_olck_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 7248, i32 7295 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_olck_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_orkh_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 68608, i32 68687 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_orkh_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_osge_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 66736, i32 66815 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_osge_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_osma_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 66688, i32 66735 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_osma_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_rohg_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 68864, i32 68927 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_rohg_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_saur_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 43136, i32 43231 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_saur_nonbase_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 43136, i32 43137 }, %struct.AF_Script_UniRangeRec_ { i32 43188, i32 43205 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_shaw_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 66640, i32 66687 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_shaw_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_sinh_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3456, i32 3583 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_sinh_nonbase_uniranges = hidden constant [4 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3457, i32 3457 }, %struct.AF_Script_UniRangeRec_ { i32 3530, i32 3530 }, %struct.AF_Script_UniRangeRec_ { i32 3538, i32 3542 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_sund_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 7040, i32 7103 }, %struct.AF_Script_UniRangeRec_ { i32 7360, i32 7375 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_sund_nonbase_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 7040, i32 7042 }, %struct.AF_Script_UniRangeRec_ { i32 7073, i32 7085 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_taml_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 2944, i32 3071 }, %struct.AF_Script_UniRangeRec_ { i32 73664, i32 73727 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_taml_nonbase_uniranges = hidden constant [4 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 2946, i32 2946 }, %struct.AF_Script_UniRangeRec_ { i32 3008, i32 3010 }, %struct.AF_Script_UniRangeRec_ { i32 3021, i32 3021 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_tavt_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 43648, i32 43743 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_tavt_nonbase_uniranges = hidden constant [6 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 43696, i32 43696 }, %struct.AF_Script_UniRangeRec_ { i32 43698, i32 43700 }, %struct.AF_Script_UniRangeRec_ { i32 43703, i32 43704 }, %struct.AF_Script_UniRangeRec_ { i32 43710, i32 43711 }, %struct.AF_Script_UniRangeRec_ { i32 43713, i32 43713 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_telu_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3072, i32 3199 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_telu_nonbase_uniranges = hidden constant [7 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3072, i32 3072 }, %struct.AF_Script_UniRangeRec_ { i32 3076, i32 3076 }, %struct.AF_Script_UniRangeRec_ { i32 3132, i32 3132 }, %struct.AF_Script_UniRangeRec_ { i32 3134, i32 3136 }, %struct.AF_Script_UniRangeRec_ { i32 3142, i32 3158 }, %struct.AF_Script_UniRangeRec_ { i32 3170, i32 3171 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_thai_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3584, i32 3711 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_thai_nonbase_uniranges = hidden constant [4 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3633, i32 3633 }, %struct.AF_Script_UniRangeRec_ { i32 3636, i32 3642 }, %struct.AF_Script_UniRangeRec_ { i32 3655, i32 3662 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_tfng_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 11568, i32 11647 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_tfng_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_vaii_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 42240, i32 42559 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_vaii_nonbase_uniranges = hidden constant [1 x %struct.AF_Script_UniRangeRec_] zeroinitializer, align 4
@af_limb_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 6400, i32 6479 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_limb_nonbase_uniranges = hidden constant [4 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 6432, i32 6434 }, %struct.AF_Script_UniRangeRec_ { i32 6439, i32 6452 }, %struct.AF_Script_UniRangeRec_ { i32 6455, i32 6459 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_orya_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 2816, i32 2943 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_orya_nonbase_uniranges = hidden constant [7 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 2817, i32 2818 }, %struct.AF_Script_UniRangeRec_ { i32 2876, i32 2876 }, %struct.AF_Script_UniRangeRec_ { i32 2879, i32 2879 }, %struct.AF_Script_UniRangeRec_ { i32 2881, i32 2884 }, %struct.AF_Script_UniRangeRec_ { i32 2893, i32 2902 }, %struct.AF_Script_UniRangeRec_ { i32 2914, i32 2915 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_sylo_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 43008, i32 43055 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_sylo_nonbase_uniranges = hidden constant [6 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 43010, i32 43010 }, %struct.AF_Script_UniRangeRec_ { i32 43014, i32 43014 }, %struct.AF_Script_UniRangeRec_ { i32 43019, i32 43019 }, %struct.AF_Script_UniRangeRec_ { i32 43045, i32 43046 }, %struct.AF_Script_UniRangeRec_ { i32 43052, i32 43052 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_tibt_uniranges = hidden constant [2 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3840, i32 4095 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_tibt_nonbase_uniranges = hidden constant [10 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 3864, i32 3865 }, %struct.AF_Script_UniRangeRec_ { i32 3893, i32 3893 }, %struct.AF_Script_UniRangeRec_ { i32 3895, i32 3895 }, %struct.AF_Script_UniRangeRec_ { i32 3897, i32 3897 }, %struct.AF_Script_UniRangeRec_ { i32 3902, i32 3903 }, %struct.AF_Script_UniRangeRec_ { i32 3953, i32 3966 }, %struct.AF_Script_UniRangeRec_ { i32 3968, i32 3972 }, %struct.AF_Script_UniRangeRec_ { i32 3974, i32 3975 }, %struct.AF_Script_UniRangeRec_ { i32 3981, i32 4028 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_hani_uniranges = hidden constant [40 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 4352, i32 4607 }, %struct.AF_Script_UniRangeRec_ { i32 11904, i32 12031 }, %struct.AF_Script_UniRangeRec_ { i32 12032, i32 12255 }, %struct.AF_Script_UniRangeRec_ { i32 12272, i32 12287 }, %struct.AF_Script_UniRangeRec_ { i32 12288, i32 12351 }, %struct.AF_Script_UniRangeRec_ { i32 12352, i32 12447 }, %struct.AF_Script_UniRangeRec_ { i32 12448, i32 12543 }, %struct.AF_Script_UniRangeRec_ { i32 12544, i32 12591 }, %struct.AF_Script_UniRangeRec_ { i32 12592, i32 12687 }, %struct.AF_Script_UniRangeRec_ { i32 12688, i32 12703 }, %struct.AF_Script_UniRangeRec_ { i32 12704, i32 12735 }, %struct.AF_Script_UniRangeRec_ { i32 12736, i32 12783 }, %struct.AF_Script_UniRangeRec_ { i32 12784, i32 12799 }, %struct.AF_Script_UniRangeRec_ { i32 13056, i32 13311 }, %struct.AF_Script_UniRangeRec_ { i32 13312, i32 19903 }, %struct.AF_Script_UniRangeRec_ { i32 19904, i32 19967 }, %struct.AF_Script_UniRangeRec_ { i32 19968, i32 40959 }, %struct.AF_Script_UniRangeRec_ { i32 43360, i32 43391 }, %struct.AF_Script_UniRangeRec_ { i32 44032, i32 55215 }, %struct.AF_Script_UniRangeRec_ { i32 55216, i32 55295 }, %struct.AF_Script_UniRangeRec_ { i32 63744, i32 64255 }, %struct.AF_Script_UniRangeRec_ { i32 65040, i32 65055 }, %struct.AF_Script_UniRangeRec_ { i32 65072, i32 65103 }, %struct.AF_Script_UniRangeRec_ { i32 65280, i32 65519 }, %struct.AF_Script_UniRangeRec_ { i32 110576, i32 110591 }, %struct.AF_Script_UniRangeRec_ { i32 110592, i32 110847 }, %struct.AF_Script_UniRangeRec_ { i32 110848, i32 110895 }, %struct.AF_Script_UniRangeRec_ { i32 110896, i32 110959 }, %struct.AF_Script_UniRangeRec_ { i32 119552, i32 119647 }, %struct.AF_Script_UniRangeRec_ { i32 131072, i32 173791 }, %struct.AF_Script_UniRangeRec_ { i32 173824, i32 177983 }, %struct.AF_Script_UniRangeRec_ { i32 177984, i32 178207 }, %struct.AF_Script_UniRangeRec_ { i32 178208, i32 183983 }, %struct.AF_Script_UniRangeRec_ { i32 183984, i32 191471 }, %struct.AF_Script_UniRangeRec_ { i32 191472, i32 192093 }, %struct.AF_Script_UniRangeRec_ { i32 194560, i32 195103 }, %struct.AF_Script_UniRangeRec_ { i32 196608, i32 201546 }, %struct.AF_Script_UniRangeRec_ { i32 201552, i32 205743 }, %struct.AF_Script_UniRangeRec_ { i32 205744, i32 210041 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_hani_nonbase_uniranges = hidden constant [3 x %struct.AF_Script_UniRangeRec_] [%struct.AF_Script_UniRangeRec_ { i32 12330, i32 12335 }, %struct.AF_Script_UniRangeRec_ { i32 12688, i32 12703 }, %struct.AF_Script_UniRangeRec_ zeroinitializer], align 16
@af_hb_scripts = hidden local_unnamed_addr constant [60 x i32] [i32 1097100397, i32 1098015074, i32 1098018158, i32 1098281844, i32 1113681269, i32 1113943655, i32 1114990692, i32 1130457965, i32 1130458739, i32 1130459753, i32 1130915186, i32 1131376756, i32 1131442804, i32 1132032620, i32 1147500129, i32 1148416628, i32 1165256809, i32 1197830002, i32 0, i32 1198285159, i32 1198486632, i32 1198679403, i32 1198877298, i32 1198879349, i32 1214603890, i32 1264675945, i32 1265134962, i32 0, i32 1265525857, i32 1281453935, i32 1281455214, i32 0, i32 0, i32 1281979253, i32 1298954605, i32 1298490470, i32 1299148391, i32 1299803506, i32 1315663727, i32 0, i32 1332503403, i32 1332898664, i32 1332963173, i32 1332964705, i32 1383032935, i32 1398895986, i32 1399349623, i32 1399418472, i32 1400204900, i32 1415671148, i32 1415673460, i32 1415933045, i32 1415999079, i32 1416126825, i32 1449224553, i32 1281977698, i32 1332902241, i32 1400466543, i32 1416192628, i32 1214344809], align 16
@__const.af_latin_metrics_check_digits.digits = private unnamed_addr constant [20 x i8] c"0 1 2 3 4 5 6 7 8 9\00", align 16
@adjustment_database = internal unnamed_addr constant [935 x %struct.AF_AdjustmentDatabaseEntry_] [%struct.AF_AdjustmentDatabaseEntry_ { i32 33, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 81, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 63, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 105, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 106, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 161, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 166, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 170, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 186, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 191, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 192, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 193, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 194, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 195, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 196, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 197, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 199, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 200, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 201, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 202, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 203, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 204, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 205, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 206, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 207, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 209, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 210, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 211, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 212, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 213, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 214, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 216, i32 768 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 217, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 218, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 219, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 220, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 221, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 224, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 225, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 226, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 227, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 228, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 229, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 231, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 232, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 233, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 234, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 235, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 236, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 237, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 238, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 239, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 241, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 242, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 243, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 244, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 245, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 246, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 248, i32 3072 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 249, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 250, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 251, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 252, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 253, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 255, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 256, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 257, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 258, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 259, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 260, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 261, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 262, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 263, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 264, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 265, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 266, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 267, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 268, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 269, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 270, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 274, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 275, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 276, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 277, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 278, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 279, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 280, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 281, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 282, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 283, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 284, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 285, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 286, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 287, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 288, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 289, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 290, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 291, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 292, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 293, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 296, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 297, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 298, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 299, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 300, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 301, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 302, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 303, i32 2049 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 304, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 307, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 308, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 309, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 310, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 311, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 313, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 314, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 315, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 316, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 323, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 324, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 325, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 326, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 327, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 328, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 332, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 333, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 334, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 335, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 336, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 337, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 340, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 341, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 342, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 343, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 344, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 345, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 346, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 347, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 348, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 349, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 350, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 351, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 352, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 353, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 354, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 355, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 356, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 360, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 361, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 362, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 363, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 364, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 365, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 366, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 367, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 368, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 369, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 370, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 371, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 372, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 373, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 374, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 375, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 376, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 377, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 378, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 379, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 380, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 381, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 382, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 391, i32 256 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 392, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 416, i32 256 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 417, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 421, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 427, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 430, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 431, i32 256 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 432, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 436, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 451, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 452, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 460, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 461, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 462, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 463, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 464, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 465, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 466, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 467, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 468, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 469, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 470, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 471, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 472, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 473, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 474, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 475, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 476, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 478, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 479, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 480, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 481, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 482, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 483, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 486, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 487, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 488, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 489, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 490, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 491, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 492, i32 513 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 493, i32 2049 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 494, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 495, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 496, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 500, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 501, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 504, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 505, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 506, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 507, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 508, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 509, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 510, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 511, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 512, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 513, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 514, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 515, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 516, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 517, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 518, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 519, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 520, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 521, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 522, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 523, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 524, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 525, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 526, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 527, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 528, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 529, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 530, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 531, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 532, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 533, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 534, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 535, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 536, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 537, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 538, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 539, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 542, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 543, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 548, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 549, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 550, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 551, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 552, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 553, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 554, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 555, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 556, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 557, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 558, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 559, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 560, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 561, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 562, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 563, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 570, i32 768 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 571, i32 768 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 575, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 576, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 585, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 598, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 608, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 615, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 616, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 626, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 627, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 635, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 637, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 642, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 648, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 656, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 667, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 672, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 690, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 693, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 912, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 938, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 939, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 940, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 941, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 942, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 943, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 944, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 970, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 971, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 972, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 973, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 974, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 975, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 980, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 983, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 985, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 994, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 995, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1011, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1024, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1025, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1027, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1031, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1036, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1037, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1038, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1039, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1049, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1062, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1065, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1081, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1094, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1097, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1104, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1105, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1107, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1110, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1111, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1112, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1116, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1117, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1118, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1119, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1142, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1143, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1148, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1149, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1150, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1151, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1152, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1153, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1162, i32 513 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1163, i32 2049 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1168, i32 256 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1169, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1174, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1175, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1176, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1177, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1178, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1179, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1186, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1187, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1194, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1195, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1196, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1197, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1202, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1203, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1204, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1205, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1206, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1207, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1214, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1215, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1217, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1218, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1221, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1222, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1225, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1226, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1227, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1228, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1229, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1230, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1232, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1233, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1234, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1235, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1238, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1239, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1242, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1243, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1244, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1245, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1246, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1247, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1250, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1251, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1252, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1253, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1254, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1255, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1258, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1259, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1260, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1261, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1262, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1263, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1264, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1265, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1266, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1267, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1268, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1269, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1270, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1271, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1272, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1273, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1274, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1275, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1286, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1287, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1316, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1317, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1318, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1319, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1326, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 1327, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 5029, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7433, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7502, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7505, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7522, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7552, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7553, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7554, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7556, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7557, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7558, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7559, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7561, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7562, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7564, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7565, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7566, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7567, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7568, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7569, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7570, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7571, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7572, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7573, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7574, i32 2049 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7575, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7576, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7577, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7578, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7588, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7592, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7593, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7594, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7596, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7598, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7599, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7603, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7605, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7612, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7680, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7681, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7682, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7683, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7684, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7685, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7686, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7687, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7688, i32 513 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7689, i32 2049 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7690, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7691, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7692, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7693, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7694, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7695, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7696, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7697, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7698, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7699, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7700, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7701, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7702, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7703, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7704, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7705, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7706, i32 34 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7707, i32 34 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7708, i32 513 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7709, i32 2049 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7710, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7711, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7712, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7713, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7714, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7715, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7716, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7717, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7718, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7719, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7720, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7721, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7722, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7723, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7724, i32 34 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7725, i32 35 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7726, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7727, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7728, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7729, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7730, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7731, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7732, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7733, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7734, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7735, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7736, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7737, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7738, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7739, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7740, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7741, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7742, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7743, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7744, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7745, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7746, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7747, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7748, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7749, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7750, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7751, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7752, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7753, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7754, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7755, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7756, i32 68 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7757, i32 68 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7758, i32 68 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7759, i32 68 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7760, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7761, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7762, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7763, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7764, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7765, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7766, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7767, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7768, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7769, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7770, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7771, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7772, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7773, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7774, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7775, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7776, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7777, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7778, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7779, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7780, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7781, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7782, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7783, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7784, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7785, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7786, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7787, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7788, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7789, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7790, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7791, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7792, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7793, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7794, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7795, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7796, i32 34 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7797, i32 34 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7798, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7799, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7800, i32 68 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7801, i32 68 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7802, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7803, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7804, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7805, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7806, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7807, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7808, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7809, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7810, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7811, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7812, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7813, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7814, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7815, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7816, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7817, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7818, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7819, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7820, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7821, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7822, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7823, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7824, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7825, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7826, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7827, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7828, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7829, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7830, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7831, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7832, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7833, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7834, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7835, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7840, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7841, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7842, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7843, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7844, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7845, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7846, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7847, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7848, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7849, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7850, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7851, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7852, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7853, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7854, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7855, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7856, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7857, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7858, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7859, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7860, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7861, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7862, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7863, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7864, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7865, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7866, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7867, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7868, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7869, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7870, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7871, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7872, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7873, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7874, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7875, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7876, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7877, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7878, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7879, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7880, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7881, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7882, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7883, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7884, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7885, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7886, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7887, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7888, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7889, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7890, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7891, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7892, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7893, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7894, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7895, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7896, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7897, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7898, i32 257 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7899, i32 1025 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7900, i32 257 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7901, i32 1025 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7902, i32 257 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7903, i32 1025 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7904, i32 273 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7905, i32 1041 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7906, i32 258 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7907, i32 1026 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7908, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7909, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7910, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7911, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7912, i32 257 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7913, i32 1025 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7914, i32 257 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7915, i32 1025 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7916, i32 257 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7917, i32 1025 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7918, i32 273 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7919, i32 1041 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7920, i32 258 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7921, i32 1026 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7922, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7923, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7924, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7925, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7926, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7927, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7928, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7929, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7936, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7937, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7938, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7939, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7940, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7941, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7942, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7943, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7952, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7953, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7954, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7955, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7956, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7957, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7968, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7969, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7970, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7971, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7972, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7973, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7974, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7975, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7984, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7985, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7986, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7987, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7988, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7989, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7990, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 7991, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8000, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8001, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8002, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8003, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8004, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8005, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8016, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8017, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8018, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8019, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8020, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8021, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8022, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8023, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8032, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8033, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8034, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8035, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8036, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8037, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8038, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8039, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8048, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8049, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8050, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8051, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8052, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8053, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8054, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8055, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8056, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8057, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8058, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8059, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8060, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8061, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8064, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8065, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8066, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8067, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8068, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8069, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8070, i32 22 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8071, i32 22 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8072, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8073, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8074, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8075, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8076, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8077, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8078, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8079, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8080, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8081, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8082, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8083, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8084, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8085, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8086, i32 22 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8087, i32 22 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8088, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8089, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8090, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8091, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8092, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8093, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8094, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8095, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8096, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8097, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8098, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8099, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8100, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8101, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8102, i32 22 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8103, i32 22 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8104, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8105, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8106, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8107, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8108, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8109, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8110, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8111, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8112, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8113, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8114, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8115, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8116, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8118, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8119, i32 19 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8120, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8121, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8124, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8130, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8131, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8132, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8134, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8135, i32 19 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8140, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8144, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8145, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8146, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8147, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8150, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8151, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8152, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8153, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8160, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8161, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8162, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8163, i32 4 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8164, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8165, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8166, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8167, i32 20 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8168, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8169, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8178, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8179, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8180, i32 3 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8182, i32 17 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8183, i32 19 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8188, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8252, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8253, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8263, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8264, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8265, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8305, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8363, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8384, i32 2 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8560, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8561, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8562, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8563, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8565, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8566, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8567, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8568, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8570, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 8571, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11364, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11367, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11368, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11369, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11370, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11371, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11372, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11374, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11388, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11390, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11391, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11458, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11459, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11800, i32 1 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 11822, i32 4097 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42560, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42561, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42562, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42563, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42624, i32 256 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42625, i32 1024 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42632, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42633, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42634, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42635, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42638, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42639, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42640, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42641, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42646, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42647, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42790, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42791, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42838, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42840, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42865, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42866, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42867, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42868, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42870, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42896, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42897, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42900, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42901, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42944, i32 768 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42945, i32 3072 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42948, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42949, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42950, i32 512 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42956, i32 768 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 42957, i32 3072 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 43836, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 43846, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 43868, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 43878, i32 2048 }, %struct.AF_AdjustmentDatabaseEntry_ { i32 43879, i32 2048 }], align 16
@__const.af_loader_embolden_glyph_in_slot.scale_down_matrix = private unnamed_addr constant %struct.FT_Matrix_ { i64 65536, i64 0, i64 0, i64 65536 }, align 8
@.str.180 = private unnamed_addr constant [19 x i8] c"hb_version_atleast\00", align 1
@.str.181 = private unnamed_addr constant [17 x i8] c"libharfbuzz.so.0\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"hb_blob_create\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"hb_blob_destroy\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"hb_buffer_add_utf8\00", align 1
@.str.185 = private unnamed_addr constant [25 x i8] c"hb_buffer_clear_contents\00", align 1
@.str.186 = private unnamed_addr constant [17 x i8] c"hb_buffer_create\00", align 1
@.str.187 = private unnamed_addr constant [18 x i8] c"hb_buffer_destroy\00", align 1
@.str.188 = private unnamed_addr constant [26 x i8] c"hb_buffer_get_glyph_infos\00", align 1
@.str.189 = private unnamed_addr constant [30 x i8] c"hb_buffer_get_glyph_positions\00", align 1
@.str.190 = private unnamed_addr constant [21 x i8] c"hb_buffer_get_length\00", align 1
@.str.191 = private unnamed_addr constant [35 x i8] c"hb_buffer_guess_segment_properties\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"hb_face_create\00", align 1
@.str.193 = private unnamed_addr constant [26 x i8] c"hb_face_create_for_tables\00", align 1
@.str.194 = private unnamed_addr constant [16 x i8] c"hb_face_destroy\00", align 1
@.str.195 = private unnamed_addr constant [18 x i8] c"hb_face_set_index\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"hb_face_set_upem\00", align 1
@.str.197 = private unnamed_addr constant [15 x i8] c"hb_font_create\00", align 1
@.str.198 = private unnamed_addr constant [16 x i8] c"hb_font_destroy\00", align 1
@.str.199 = private unnamed_addr constant [17 x i8] c"hb_font_get_face\00", align 1
@.str.200 = private unnamed_addr constant [18 x i8] c"hb_font_set_scale\00", align 1
@.str.201 = private unnamed_addr constant [29 x i8] c"hb_ot_layout_collect_lookups\00", align 1
@.str.202 = private unnamed_addr constant [35 x i8] c"hb_ot_layout_lookup_collect_glyphs\00", align 1
@.str.203 = private unnamed_addr constant [37 x i8] c"hb_ot_layout_lookup_would_substitute\00", align 1
@.str.204 = private unnamed_addr constant [36 x i8] c"hb_ot_tags_from_script_and_language\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"hb_set_add\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"hb_set_clear\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"hb_set_create\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"hb_set_destroy\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"hb_set_del\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"hb_set_has\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"hb_set_is_empty\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"hb_set_next\00", align 1
@.str.213 = private unnamed_addr constant [16 x i8] c"hb_set_subtract\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"hb_shape\00", align 1
@af_services = internal constant [2 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.215, ptr @af_service_properties }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.215 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@af_service_properties = internal constant %struct.FT_Service_PropertiesRec_ { ptr @af_property_set, ptr @af_property_get }, align 8
@.str.216 = private unnamed_addr constant [16 x i8] c"fallback-script\00", align 1
@.str.217 = private unnamed_addr constant [15 x i8] c"default-script\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"increase-x-height\00", align 1
@.str.219 = private unnamed_addr constant [21 x i8] c"darkening-parameters\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"no-stem-darkening\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"glyph-to-script-map\00", align 1
@coverages = internal unnamed_addr constant [11 x ptr] [ptr @petite_capitals_from_capitals_coverage, ptr @small_capitals_from_capitals_coverage, ptr @ordinals_coverage, ptr @petite_capitals_coverage, ptr @ruby_coverage, ptr @scientific_inferiors_coverage, ptr @small_capitals_coverage, ptr @subscript_coverage, ptr @superscript_coverage, ptr @titling_coverage, ptr null], align 16
@petite_capitals_from_capitals_coverage = internal constant [2 x i32] [i32 1664246640, i32 0], align 4
@small_capitals_from_capitals_coverage = internal constant [2 x i32] [i32 1664250723, i32 0], align 4
@ordinals_coverage = internal constant [2 x i32] [i32 1869767790, i32 0], align 4
@petite_capitals_coverage = internal constant [2 x i32] [i32 1885561200, i32 0], align 4
@ruby_coverage = internal constant [2 x i32] [i32 1920295545, i32 0], align 4
@scientific_inferiors_coverage = internal constant [2 x i32] [i32 1936289382, i32 0], align 4
@small_capitals_coverage = internal constant [2 x i32] [i32 1936548720, i32 0], align 4
@subscript_coverage = internal constant [2 x i32] [i32 1937072755, i32 0], align 4
@superscript_coverage = internal constant [2 x i32] [i32 1937076339, i32 0], align 4
@titling_coverage = internal constant [2 x i32] [i32 1953068140, i32 0], align 4
@features = internal unnamed_addr constant [11 x ptr] [ptr @petite_capitals_from_capitals_feature, ptr @small_capitals_from_capitals_feature, ptr @ordinals_feature, ptr @petite_capitals_feature, ptr @ruby_feature, ptr @scientific_inferiors_feature, ptr @small_capitals_feature, ptr @subscript_feature, ptr @superscript_feature, ptr @titling_feature, ptr null], align 16
@petite_capitals_from_capitals_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1664246640, i32 1, i32 0, i32 -1 }], align 16
@small_capitals_from_capitals_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1664250723, i32 1, i32 0, i32 -1 }], align 16
@ordinals_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1869767790, i32 1, i32 0, i32 -1 }], align 16
@petite_capitals_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1885561200, i32 1, i32 0, i32 -1 }], align 16
@ruby_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1920295545, i32 1, i32 0, i32 -1 }], align 16
@scientific_inferiors_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1936289382, i32 1, i32 0, i32 -1 }], align 16
@small_capitals_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1936548720, i32 1, i32 0, i32 -1 }], align 16
@subscript_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1937072755, i32 1, i32 0, i32 -1 }], align 16
@superscript_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1937076339, i32 1, i32 0, i32 -1 }], align 16
@titling_feature = internal constant [1 x %struct.hb_feature_t] [%struct.hb_feature_t { i32 1953068140, i32 1, i32 0, i32 -1 }], align 16

; Function Attrs: nounwind uwtable
define internal noundef i32 @af_cjk_metrics_init(ptr nofree noundef captures(none) initializes((80, 84)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [51 x i64], align 16              ; 14 uses
  %i.c = alloca [51 x i64], align 16              ; 14 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load i16, ptr %i.h, align 8, !tbaa !28
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.j, ptr %i.k, align 8, !tbaa !29
  %i.l = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @af_cjk_metrics_init_widths(ptr noundef nonnull %0, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.m = load ptr, ptr %0, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !38
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @af_blue_stringsets, i64 %i.p ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.t = getelementptr i8, ptr %i.s, i64 816
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr i8, ptr %.val.i, i64 72
  %.val.val.i = load ptr, ptr %i.u, align 8, !tbaa !48 ; 2 uses
  %.not199.i = icmp eq ptr %.val.val.i, null
  br i1 %.not199.i, label %af_shaper_buf_create.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %.val.val.i, i64 32
  %.val4.val.val.i.i = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.w = tail call ptr %.val4.val.val.i.i() #18, !inline_history !56
  br label %af_shaper_buf_create.exit.i

af_shaper_buf_create.exit.i:                      ; preds = %bb.c, %bb.b
  %.0147.i = phi ptr [ %i.d, %bb.b ], [ %i.w, %bb.c ] ; 5 uses
  %i.x = load i32, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %.not165260.i = icmp eq i32 %i.x, 5531
  br i1 %.not165260.i, label %._crit_edge263.i, label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %af_shaper_buf_create.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge257.thread.i, %.lr.ph262.i
  %i.z = phi i32 [ %i.x, %.lr.ph262.i ], [ %i.gx, %._crit_edge257.thread.i ]
  %.0148261.i = phi ptr [ %i.q, %.lr.ph262.i ], [ %i.gw, %._crit_edge257.thread.i ] ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @af_blue_strings, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0148261.i, i64 4
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !59
  %.fr.i = freeze i16 %i.ad                       ; 4 uses
  %i.ae = and i16 %.fr.i, 2
  %.not166.i = icmp eq i16 %i.ae, 0
  %.0149.v.i = select i1 %.not166.i, i64 984, i64 88
  %.0149.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0149.v.i ; 2 uses
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !60
  %.not167250.i = icmp eq i8 %i.af, 0
  br i1 %.not167250.i, label %._crit_edge257.thread.i, label %.lr.ph256.i

.lr.ph256.i:                                      ; preds = %bb.d
  %i.ag = zext i16 %.fr.i to i32                  ; 2 uses
  %i.ah = and i32 %i.ag, 2
  %.not173.i = icmp eq i32 %i.ah, 0
  %i.ai = and i32 %i.ag, 1
  %.not177.i = icmp eq i32 %i.ai, 0               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.q, %.lr.ph256.i
  %.0144254.i = phi ptr [ %i.ab, %.lr.ph256.i ], [ %.2146.i, %bb.q ]
  %.0150253.i = phi i8 [ 1, %.lr.ph256.i ], [ %.1151.i, %bb.q ] ; 4 uses
  %.0152252.i = phi i32 [ 0, %.lr.ph256.i ], [ %.2154.i, %bb.q ] ; 7 uses
  %.0155251.i = phi i32 [ 0, %.lr.ph256.i ], [ %.2157.i, %bb.q ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.1145.i = phi ptr [ %.0144254.i, %bb.e ], [ %i.ak, %bb.g ] ; 4 uses
  %i.aj = load i8, ptr %.1145.i, align 1, !tbaa !60
  switch i8 %i.aj, label %bb.i [
    i8 32, label %bb.g
    i8 124, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.1145.i, i64 1
  br label %bb.f, !llvm.loop !61

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.1145.i, i64 1
  br label %bb.q, !llvm.loop !63

bb.i:                                             ; preds = %bb.f
  %i.am = call ptr @af_shaper_get_cluster(ptr noundef nonnull %.1145.i, ptr noundef nonnull %0, ptr noundef %.0147.i, ptr noundef nonnull %i.e) ; 5 uses
  %i.an = load i32, ptr %i.e, align 4, !tbaa !64
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %bb.q, label %bb.j, !llvm.loop !63

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.aq = getelementptr i8, ptr %i.ap, i64 816    ; 2 uses
  %.val.i180.i = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.ar = getelementptr i8, ptr %.val.i180.i, i64 72
  %.val.val.i181.i = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %.not14.i.i = icmp eq ptr %.val.val.i181.i, null
  br i1 %.not14.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.as = getelementptr inbounds nuw i8, ptr %.val.val.i181.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = call ptr %i.at(ptr noundef %.0147.i, ptr noundef nonnull %i.a) #18, !inline_history !67
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !68
  %i.ba = call ptr %i.az(ptr noundef %.0147.i, ptr noundef nonnull %i.a) #18, !inline_history !67 ; 0 uses
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !64
  %.not.i.i.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.not.i, label %af_shaper_get_elem_hb.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %i.au, align 4, !tbaa !69
  %i.bd = zext i32 %i.bc to i64
  br label %af_shaper_get_elem_hb.exit.i.i

af_shaper_get_elem_hb.exit.i.i:                   ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.bd, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %af_shaper_get_elem.exit.i

bb.m:                                             ; preds = %bb.j
  %.val12.i.i = load i64, ptr %.0147.i, align 8, !tbaa !71
  br label %af_shaper_get_elem.exit.i

af_shaper_get_elem.exit.i:                        ; preds = %bb.m, %af_shaper_get_elem_hb.exit.i.i
  %.0.i182.i = phi i64 [ %.0.i.i.i, %af_shaper_get_elem_hb.exit.i.i ], [ %.val12.i.i, %bb.m ] ; 2 uses
  %i.be = icmp eq i64 %.0.i182.i, 0
  br i1 %i.be, label %bb.q, label %bb.n, !llvm.loop !63

bb.n:                                             ; preds = %af_shaper_get_elem.exit.i
  %i.bf = trunc i64 %.0.i182.i to i32
  %i.bg = call i32 @FT_Load_Glyph(ptr noundef nonnull %1, i32 noundef %i.bf, i32 noundef 1) #18
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !72  ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 202
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !73
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %.sroa.595.0.copyload.i = load ptr, ptr %.sroa.595.0..sroa_idx.i, align 8, !tbaa !74 ; 12 uses
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 224
  %.sroa.696.0.copyload.i = load ptr, ptr %.sroa.696.0..sroa_idx.i, align 8, !tbaa !76 ; 4 uses
  %i.bi = icmp ne i32 %i.bg, 0
  %i.bj = icmp ult i16 %.sroa.4.0.copyload.i, 3
  %or.cond.i = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond.i, label %bb.q, label %.preheader206.i, !llvm.loop !63

.preheader206.i:                                  ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %.sroa.0.0.copyload.i = load i16, ptr %i.bk, align 8, !tbaa !73 ; 2 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %.preheader206.i
  %wide.trip.count303.i = zext i16 %.sroa.0.0.copyload.i to i64 ; 4 uses
  br i1 %.not173.i, label %.lr.ph238.split.us.i, label %.lr.ph238.split.i

.lr.ph238.split.us.i:                             ; preds = %.lr.ph238.i
  br i1 %.not177.i, label %.lr.ph238.split.us.split.us.i, label %.lr.ph238.split.us.split.i

.lr.ph238.split.us.split.us.i:                    ; preds = %.lr.ph238.split.us.i, %..loopexit_crit_edge.us.us.i
  %indvars.iv300.i = phi i64 [ %indvars.iv.next301.i, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph238.split.us.i ] ; 2 uses
  %.0237.us.us.i = phi i32 [ %i.bo, %..loopexit_crit_edge.us.us.i ], [ -1, %.lr.ph238.split.us.i ]
  %.0130235.us.us.i = phi i32 [ %.9.us.us.i, %..loopexit_crit_edge.us.us.i ], [ -1, %.lr.ph238.split.us.i ] ; 4 uses
  %.0134234.us.us.i = phi i64 [ %.9143.us.us.i, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph238.split.us.i ] ; 4 uses
  %i.bl = add nsw i32 %.0237.us.us.i, 1           ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv300.i
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !73 ; 2 uses
  %i.bo = zext i16 %i.bn to i32                   ; 3 uses
  %.not172.us.us.i = icmp slt i32 %i.bl, %i.bo
  br i1 %.not172.us.us.i, label %.lr.ph231.us.us.preheader.i, label %..loopexit_crit_edge.us.us.i

.lr.ph231.us.us.preheader.i:                      ; preds = %.lr.ph238.split.us.split.us.i
  %i.bp = zext i32 %i.bl to i64                   ; 5 uses
  %i.bq = add nuw nsw i32 %i.bo, 1
  %wide.trip.count298.i = zext nneg i32 %i.bq to i64
  %i.br = zext i16 %i.bn to i64                   ; 2 uses
  %i.bs = add nuw nsw i64 %i.br, %i.bp
  %i.bt = and i64 %i.bs, 1
  %lcmp.mod53.not.not = icmp eq i64 %i.bt, 0
  br i1 %lcmp.mod53.not.not, label %.lr.ph231.us.us.i.prol, label %.lr.ph231.us.us.i.prol.loopexit

.lr.ph231.us.us.i.prol:                           ; preds = %.lr.ph231.us.us.preheader.i
  %i.bu = icmp slt i32 %.0130235.us.us.i, 0
  %.phi.trans.insert322.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.bp
  %.phi.trans.insert323.i.prol = getelementptr inbounds nuw i8, ptr %.phi.trans.insert322.i.prol, i64 8
  %.pre324.i.prol = load i64, ptr %.phi.trans.insert323.i.prol, align 8, !tbaa !77 ; 2 uses
  %i.bv = icmp slt i64 %.pre324.i.prol, %.0134234.us.us.i
  %or.cond378.i.prol = select i1 %i.bu, i1 true, i1 %i.bv ; 2 uses
  %.8142.us.us.i.prol = select i1 %or.cond378.i.prol, i64 %.pre324.i.prol, i64 %.0134234.us.us.i ; 2 uses
  %.8.us.us.i.prol = select i1 %or.cond378.i.prol, i32 %i.bl, i32 %.0130235.us.us.i ; 2 uses
  %indvars.iv.next296.i.prol = add nuw nsw i64 %i.bp, 1
  br label %.lr.ph231.us.us.i.prol.loopexit

.lr.ph231.us.us.i.prol.loopexit:                  ; preds = %.lr.ph231.us.us.i.prol, %.lr.ph231.us.us.preheader.i
  %.8142.us.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph231.us.us.preheader.i ], [ %.8142.us.us.i.prol, %.lr.ph231.us.us.i.prol ]
  %.8.us.us.i.lcssa.unr = phi i32 [ poison, %.lr.ph231.us.us.preheader.i ], [ %.8.us.us.i.prol, %.lr.ph231.us.us.i.prol ]
  %indvars.iv295.i.unr = phi i64 [ %i.bp, %.lr.ph231.us.us.preheader.i ], [ %indvars.iv.next296.i.prol, %.lr.ph231.us.us.i.prol ]
  %.7229.us.us.i.unr = phi i32 [ %.0130235.us.us.i, %.lr.ph231.us.us.preheader.i ], [ %.8.us.us.i.prol, %.lr.ph231.us.us.i.prol ]
  %.7141228.us.us.i.unr = phi i64 [ %.0134234.us.us.i, %.lr.ph231.us.us.preheader.i ], [ %.8142.us.us.i.prol, %.lr.ph231.us.us.i.prol ]
  %i.bw = icmp eq i64 %i.br, %i.bp
  br i1 %i.bw, label %..loopexit_crit_edge.us.us.i, label %.lr.ph231.us.us.i

.lr.ph231.us.us.i:                                ; preds = %.lr.ph231.us.us.i.prol.loopexit, %.lr.ph231.us.us.i
  %indvars.iv295.i = phi i64 [ %indvars.iv.next296.i.1, %.lr.ph231.us.us.i ], [ %indvars.iv295.i.unr, %.lr.ph231.us.us.i.prol.loopexit ] ; 4 uses
  %.7229.us.us.i = phi i32 [ %.8.us.us.i.1, %.lr.ph231.us.us.i ], [ %.7229.us.us.i.unr, %.lr.ph231.us.us.i.prol.loopexit ] ; 2 uses
  %.7141228.us.us.i = phi i64 [ %.8142.us.us.i.1, %.lr.ph231.us.us.i ], [ %.7141228.us.us.i.unr, %.lr.ph231.us.us.i.prol.loopexit ] ; 2 uses
  %i.bx = icmp slt i32 %.7229.us.us.i, 0
  %.phi.trans.insert322.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv295.i
  %.phi.trans.insert323.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert322.i, i64 8
  %.pre324.i = load i64, ptr %.phi.trans.insert323.i, align 8, !tbaa !77 ; 2 uses
  %i.by = icmp slt i64 %.pre324.i, %.7141228.us.us.i
  %or.cond378.i = select i1 %i.bx, i1 true, i1 %i.by ; 2 uses
  %i.bz = trunc nsw i64 %indvars.iv295.i to i32
  %.8142.us.us.i = select i1 %or.cond378.i, i64 %.pre324.i, i64 %.7141228.us.us.i ; 2 uses
  %.8.us.us.i = select i1 %or.cond378.i, i32 %i.bz, i32 %.7229.us.us.i ; 2 uses
  %indvars.iv.next296.i = add nuw nsw i64 %indvars.iv295.i, 1 ; 2 uses
  %i.ca = icmp slt i32 %.8.us.us.i, 0
  %.phi.trans.insert322.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next296.i
  %.phi.trans.insert323.i.1 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert322.i.1, i64 8
  %.pre324.i.1 = load i64, ptr %.phi.trans.insert323.i.1, align 8, !tbaa !77 ; 2 uses
  %i.cb = icmp slt i64 %.pre324.i.1, %.8142.us.us.i
  %or.cond378.i.1 = select i1 %i.ca, i1 true, i1 %i.cb ; 2 uses
  %i.cc = trunc nsw i64 %indvars.iv.next296.i to i32
  %.8142.us.us.i.1 = select i1 %or.cond378.i.1, i64 %.pre324.i.1, i64 %.8142.us.us.i ; 2 uses
  %.8.us.us.i.1 = select i1 %or.cond378.i.1, i32 %i.cc, i32 %.8.us.us.i ; 2 uses
  %indvars.iv.next296.i.1 = add nuw nsw i64 %indvars.iv295.i, 2 ; 2 uses
  %exitcond299.not.i.1 = icmp eq i64 %indvars.iv.next296.i.1, %wide.trip.count298.i
  br i1 %exitcond299.not.i.1, label %..loopexit_crit_edge.us.us.i, label %.lr.ph231.us.us.i, !llvm.loop !79

..loopexit_crit_edge.us.us.i:                     ; preds = %.lr.ph231.us.us.i.prol.loopexit, %.lr.ph231.us.us.i, %.lr.ph238.split.us.split.us.i
  %.9143.us.us.i = phi i64 [ %.0134234.us.us.i, %.lr.ph238.split.us.split.us.i ], [ %.8142.us.us.i.lcssa.unr, %.lr.ph231.us.us.i.prol.loopexit ], [ %.8142.us.us.i.1, %.lr.ph231.us.us.i ] ; 2 uses
  %.9.us.us.i = phi i32 [ %.0130235.us.us.i, %.lr.ph238.split.us.split.us.i ], [ %.8.us.us.i.lcssa.unr, %.lr.ph231.us.us.i.prol.loopexit ], [ %.8.us.us.i.1, %.lr.ph231.us.us.i ]
  %indvars.iv.next301.i = add nuw nsw i64 %indvars.iv300.i, 1 ; 2 uses
  %exitcond304.not.i = icmp eq i64 %indvars.iv.next301.i, %wide.trip.count303.i
  br i1 %exitcond304.not.i, label %._crit_edge.i, label %.lr.ph238.split.us.split.us.i, !llvm.loop !80

.lr.ph238.split.us.split.i:                       ; preds = %.lr.ph238.split.us.i, %..loopexit201_crit_edge.us.i
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %..loopexit201_crit_edge.us.i ], [ 0, %.lr.ph238.split.us.i ] ; 2 uses
  %.0237.us.i = phi i32 [ %i.cg, %..loopexit201_crit_edge.us.i ], [ -1, %.lr.ph238.split.us.i ]
  %.0130235.us.i = phi i32 [ %.9.us.i, %..loopexit201_crit_edge.us.i ], [ -1, %.lr.ph238.split.us.i ] ; 4 uses
  %.0134234.us.i = phi i64 [ %.9143.us.i, %..loopexit201_crit_edge.us.i ], [ 0, %.lr.ph238.split.us.i ] ; 4 uses
  %i.cd = add nsw i32 %.0237.us.i, 1              ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv290.i
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !73 ; 2 uses
  %i.cg = zext i16 %i.cf to i32                   ; 3 uses
  %.not172.us.i = icmp slt i32 %i.cd, %i.cg
end_hunk_0
begin_hunk_1_@af_cjk_metrics_init:bb.a
  %.phi.trans.insert320.i.1 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert319.i.1, i64 8
  %.pre321.i.1 = load i64, ptr %.phi.trans.insert320.i.1, align 8, !tbaa !77 ; 2 uses
  %i.ct = icmp sgt i64 %.pre321.i.1, %.6140.us.i
  %or.cond379.i.1 = select i1 %i.cs, i1 true, i1 %i.ct ; 2 uses
  %i.cu = trunc nsw i64 %indvars.iv.next286.i to i32
  %.6140.us.i.1 = select i1 %or.cond379.i.1, i64 %.pre321.i.1, i64 %.6140.us.i ; 2 uses
  %.6.us.i.1 = select i1 %or.cond379.i.1, i32 %i.cu, i32 %.6.us.i ; 2 uses
  %indvars.iv.next286.i.1 = add nuw nsw i64 %indvars.iv285.i, 2 ; 2 uses
  %exitcond289.not.i.1 = icmp eq i64 %indvars.iv.next286.i.1, %wide.trip.count288.i
  br i1 %exitcond289.not.i.1, label %..loopexit201_crit_edge.us.i, label %.lr.ph224.us.i, !llvm.loop !81

..loopexit201_crit_edge.us.i:                     ; preds = %.lr.ph224.us.i.prol.loopexit, %.lr.ph224.us.i, %.lr.ph238.split.us.split.i
  %.9143.us.i = phi i64 [ %.0134234.us.i, %.lr.ph238.split.us.split.i ], [ %.6140.us.i.lcssa.unr, %.lr.ph224.us.i.prol.loopexit ], [ %.6140.us.i.1, %.lr.ph224.us.i ] ; 2 uses
  %.9.us.i = phi i32 [ %.0130235.us.i, %.lr.ph238.split.us.split.i ], [ %.6.us.i.lcssa.unr, %.lr.ph224.us.i.prol.loopexit ], [ %.6.us.i.1, %.lr.ph224.us.i ]
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 2 uses
  %exitcond294.not.i = icmp eq i64 %indvars.iv.next291.i, %wide.trip.count303.i
  br i1 %exitcond294.not.i, label %._crit_edge.i, label %.lr.ph238.split.us.split.i, !llvm.loop !80

.lr.ph238.split.i:                                ; preds = %.lr.ph238.i
  br i1 %.not177.i, label %.lr.ph238.split.split.us.i, label %.lr.ph238.split.split.i

.lr.ph238.split.split.us.i:                       ; preds = %.lr.ph238.split.i, %..loopexit203_crit_edge.us.i
  %indvars.iv280.i = phi i64 [ %indvars.iv.next281.i, %..loopexit203_crit_edge.us.i ], [ 0, %.lr.ph238.split.i ] ; 2 uses
  %.0237.us240.i = phi i32 [ %i.cy, %..loopexit203_crit_edge.us.i ], [ -1, %.lr.ph238.split.i ]
  %.0130235.us242.i = phi i32 [ %.9.us246.i, %..loopexit203_crit_edge.us.i ], [ -1, %.lr.ph238.split.i ] ; 4 uses
  %.0134234.us243.i = phi i64 [ %.9143.us245.i, %..loopexit203_crit_edge.us.i ], [ 0, %.lr.ph238.split.i ] ; 4 uses
  %i.cv = add nsw i32 %.0237.us240.i, 1           ; 3 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv280.i
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !73 ; 2 uses
  %i.cy = zext i16 %i.cx to i32                   ; 3 uses
  %.not172.us244.i = icmp slt i32 %i.cv, %i.cy
  br i1 %.not172.us244.i, label %.lr.ph217.us.preheader.i, label %..loopexit203_crit_edge.us.i

.lr.ph217.us.preheader.i:                         ; preds = %.lr.ph238.split.split.us.i
  %i.cz = zext i32 %i.cv to i64                   ; 5 uses
  %i.da = add nuw nsw i32 %i.cy, 1
  %wide.trip.count278.i = zext nneg i32 %i.da to i64
  %i.db = zext i16 %i.cx to i64                   ; 2 uses
  %i.dc = add nuw nsw i64 %i.db, %i.cz
  %i.dd = and i64 %i.dc, 1
  %lcmp.mod49.not.not = icmp eq i64 %i.dd, 0
  br i1 %lcmp.mod49.not.not, label %.lr.ph217.us.i.prol, label %.lr.ph217.us.i.prol.loopexit

.lr.ph217.us.i.prol:                              ; preds = %.lr.ph217.us.preheader.i
  %i.de = icmp slt i32 %.0130235.us242.i, 0
  %.phi.trans.insert317.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.cz
  %.pre318.i.prol = load i64, ptr %.phi.trans.insert317.i.prol, align 8, !tbaa !82 ; 2 uses
  %i.df = icmp slt i64 %.pre318.i.prol, %.0134234.us243.i
  %or.cond380.i.prol = select i1 %i.de, i1 true, i1 %i.df ; 2 uses
  %.4138.us.i.prol = select i1 %or.cond380.i.prol, i64 %.pre318.i.prol, i64 %.0134234.us243.i ; 2 uses
  %.4.us.i.prol = select i1 %or.cond380.i.prol, i32 %i.cv, i32 %.0130235.us242.i ; 2 uses
  %indvars.iv.next276.i.prol = add nuw nsw i64 %i.cz, 1
  br label %.lr.ph217.us.i.prol.loopexit

.lr.ph217.us.i.prol.loopexit:                     ; preds = %.lr.ph217.us.i.prol, %.lr.ph217.us.preheader.i
  %.4138.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph217.us.preheader.i ], [ %.4138.us.i.prol, %.lr.ph217.us.i.prol ]
  %.4.us.i.lcssa.unr = phi i32 [ poison, %.lr.ph217.us.preheader.i ], [ %.4.us.i.prol, %.lr.ph217.us.i.prol ]
  %indvars.iv275.i.unr = phi i64 [ %i.cz, %.lr.ph217.us.preheader.i ], [ %indvars.iv.next276.i.prol, %.lr.ph217.us.i.prol ]
  %.3133215.us.i.unr = phi i32 [ %.0130235.us242.i, %.lr.ph217.us.preheader.i ], [ %.4.us.i.prol, %.lr.ph217.us.i.prol ]
  %.3137214.us.i.unr = phi i64 [ %.0134234.us243.i, %.lr.ph217.us.preheader.i ], [ %.4138.us.i.prol, %.lr.ph217.us.i.prol ]
  %i.dg = icmp eq i64 %i.db, %i.cz
  br i1 %i.dg, label %..loopexit203_crit_edge.us.i, label %.lr.ph217.us.i

.lr.ph217.us.i:                                   ; preds = %.lr.ph217.us.i.prol.loopexit, %.lr.ph217.us.i
  %indvars.iv275.i = phi i64 [ %indvars.iv.next276.i.1, %.lr.ph217.us.i ], [ %indvars.iv275.i.unr, %.lr.ph217.us.i.prol.loopexit ] ; 4 uses
  %.3133215.us.i = phi i32 [ %.4.us.i.1, %.lr.ph217.us.i ], [ %.3133215.us.i.unr, %.lr.ph217.us.i.prol.loopexit ] ; 2 uses
  %.3137214.us.i = phi i64 [ %.4138.us.i.1, %.lr.ph217.us.i ], [ %.3137214.us.i.unr, %.lr.ph217.us.i.prol.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.3133215.us.i, 0
  %.phi.trans.insert317.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv275.i
  %.pre318.i = load i64, ptr %.phi.trans.insert317.i, align 8, !tbaa !82 ; 2 uses
  %i.di = icmp slt i64 %.pre318.i, %.3137214.us.i
  %or.cond380.i = select i1 %i.dh, i1 true, i1 %i.di ; 2 uses
  %i.dj = trunc nsw i64 %indvars.iv275.i to i32
  %.4138.us.i = select i1 %or.cond380.i, i64 %.pre318.i, i64 %.3137214.us.i ; 2 uses
  %.4.us.i = select i1 %or.cond380.i, i32 %i.dj, i32 %.3133215.us.i ; 2 uses
  %indvars.iv.next276.i = add nuw nsw i64 %indvars.iv275.i, 1 ; 2 uses
  %i.dk = icmp slt i32 %.4.us.i, 0
  %.phi.trans.insert317.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next276.i
  %.pre318.i.1 = load i64, ptr %.phi.trans.insert317.i.1, align 8, !tbaa !82 ; 2 uses
  %i.dl = icmp slt i64 %.pre318.i.1, %.4138.us.i
  %or.cond380.i.1 = select i1 %i.dk, i1 true, i1 %i.dl ; 2 uses
  %i.dm = trunc nsw i64 %indvars.iv.next276.i to i32
  %.4138.us.i.1 = select i1 %or.cond380.i.1, i64 %.pre318.i.1, i64 %.4138.us.i ; 2 uses
  %.4.us.i.1 = select i1 %or.cond380.i.1, i32 %i.dm, i32 %.4.us.i ; 2 uses
  %indvars.iv.next276.i.1 = add nuw nsw i64 %indvars.iv275.i, 2 ; 2 uses
  %exitcond279.not.i.1 = icmp eq i64 %indvars.iv.next276.i.1, %wide.trip.count278.i
  br i1 %exitcond279.not.i.1, label %..loopexit203_crit_edge.us.i, label %.lr.ph217.us.i, !llvm.loop !83

..loopexit203_crit_edge.us.i:                     ; preds = %.lr.ph217.us.i.prol.loopexit, %.lr.ph217.us.i, %.lr.ph238.split.split.us.i
  %.9143.us245.i = phi i64 [ %.0134234.us243.i, %.lr.ph238.split.split.us.i ], [ %.4138.us.i.lcssa.unr, %.lr.ph217.us.i.prol.loopexit ], [ %.4138.us.i.1, %.lr.ph217.us.i ] ; 2 uses
  %.9.us246.i = phi i32 [ %.0130235.us242.i, %.lr.ph238.split.split.us.i ], [ %.4.us.i.lcssa.unr, %.lr.ph217.us.i.prol.loopexit ], [ %.4.us.i.1, %.lr.ph217.us.i ]
  %indvars.iv.next281.i = add nuw nsw i64 %indvars.iv280.i, 1 ; 2 uses
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next281.i, %wide.trip.count303.i
  br i1 %exitcond284.not.i, label %._crit_edge.i, label %.lr.ph238.split.split.us.i, !llvm.loop !80

.lr.ph238.split.split.i:                          ; preds = %.lr.ph238.split.i, %.loopexit205.i
  %indvars.iv270.i = phi i64 [ %indvars.iv.next271.i, %.loopexit205.i ], [ 0, %.lr.ph238.split.i ] ; 2 uses
  %.0237.i = phi i32 [ %i.dq, %.loopexit205.i ], [ -1, %.lr.ph238.split.i ]
  %.0130235.i = phi i32 [ %.9.i, %.loopexit205.i ], [ -1, %.lr.ph238.split.i ] ; 4 uses
  %.0134234.i = phi i64 [ %.9143.i, %.loopexit205.i ], [ 0, %.lr.ph238.split.i ] ; 4 uses
  %i.dn = add nsw i32 %.0237.i, 1                 ; 3 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv270.i
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !73 ; 2 uses
  %i.dq = zext i16 %i.dp to i32                   ; 3 uses
  %.not172.i = icmp slt i32 %i.dn, %i.dq
  br i1 %.not172.i, label %.lr.ph.preheader.i, label %.loopexit205.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph238.split.split.i
  %i.dr = zext i32 %i.dn to i64                   ; 5 uses
  %i.ds = add nuw nsw i32 %i.dq, 1
  %wide.trip.count.i = zext nneg i32 %i.ds to i64
  %i.dt = zext i16 %i.dp to i64                   ; 2 uses
  %i.du = add nuw nsw i64 %i.dt, %i.dr
  %i.dv = and i64 %i.du, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dv, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.dw = icmp slt i32 %.0130235.i, 0
  %.phi.trans.insert.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.dr
  %.pre.i.prol = load i64, ptr %.phi.trans.insert.i.prol, align 8, !tbaa !82 ; 2 uses
  %i.dx = icmp sgt i64 %.pre.i.prol, %.0134234.i
  %or.cond381.i.prol = select i1 %i.dw, i1 true, i1 %i.dx ; 2 uses
  %.2136.i.prol = select i1 %or.cond381.i.prol, i64 %.pre.i.prol, i64 %.0134234.i ; 2 uses
  %.2132.i.prol = select i1 %or.cond381.i.prol, i32 %i.dn, i32 %.0130235.i ; 2 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.dr, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.2136.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %.2136.i.prol, %.lr.ph.i.prol ]
  %.2132.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.2132.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.dr, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.1131210.i.unr = phi i32 [ %.0130235.i, %.lr.ph.preheader.i ], [ %.2132.i.prol, %.lr.ph.i.prol ]
  %.1135209.i.unr = phi i64 [ %.0134234.i, %.lr.ph.preheader.i ], [ %.2136.i.prol, %.lr.ph.i.prol ]
  %i.dy = icmp eq i64 %i.dt, %i.dr
  br i1 %i.dy, label %.loopexit205.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.1131210.i = phi i32 [ %.2132.i.1, %.lr.ph.i ], [ %.1131210.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.1135209.i = phi i64 [ %.2136.i.1, %.lr.ph.i ], [ %.1135209.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.dz = icmp slt i32 %.1131210.i, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.i
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !82 ; 2 uses
  %i.ea = icmp sgt i64 %.pre.i, %.1135209.i
  %or.cond381.i = select i1 %i.dz, i1 true, i1 %i.ea ; 2 uses
  %i.eb = trunc nsw i64 %indvars.iv.i to i32
  %.2136.i = select i1 %or.cond381.i, i64 %.pre.i, i64 %.1135209.i ; 2 uses
  %.2132.i = select i1 %or.cond381.i, i32 %i.eb, i32 %.1131210.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ec = icmp slt i32 %.2132.i, 0
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next.i
  %.pre.i.1 = load i64, ptr %.phi.trans.insert.i.1, align 8, !tbaa !82 ; 2 uses
  %i.ed = icmp sgt i64 %.pre.i.1, %.2136.i
  %or.cond381.i.1 = select i1 %i.ec, i1 true, i1 %i.ed ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next.i to i32
  %.2136.i.1 = select i1 %or.cond381.i.1, i64 %.pre.i.1, i64 %.2136.i ; 2 uses
  %.2132.i.1 = select i1 %or.cond381.i.1, i32 %i.ee, i32 %.2132.i ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit205.i, label %.lr.ph.i, !llvm.loop !84

.loopexit205.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph238.split.split.i
  %.9143.i = phi i64 [ %.0134234.i, %.lr.ph238.split.split.i ], [ %.2136.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.2136.i.1, %.lr.ph.i ] ; 2 uses
  %.9.i = phi i32 [ %.0130235.i, %.lr.ph238.split.split.i ], [ %.2132.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.2132.i.1, %.lr.ph.i ]
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 2 uses
  %exitcond274.not.i = icmp eq i64 %indvars.iv.next271.i, %wide.trip.count303.i
  br i1 %exitcond274.not.i, label %._crit_edge.i, label %.lr.ph238.split.split.i, !llvm.loop !80

._crit_edge.i:                                    ; preds = %.loopexit205.i, %..loopexit203_crit_edge.us.i, %..loopexit201_crit_edge.us.i, %..loopexit_crit_edge.us.us.i, %.preheader206.i
  %.0134.lcssa.i = phi i64 [ 0, %.preheader206.i ], [ %.9143.us245.i, %..loopexit203_crit_edge.us.i ], [ %.9143.us.i, %..loopexit201_crit_edge.us.i ], [ %.9143.us.us.i, %..loopexit_crit_edge.us.us.i ], [ %.9143.i, %.loopexit205.i ] ; 2 uses
  %.not171.i = icmp eq i8 %.0150253.i, 0
  br i1 %.not171.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ef = add i32 %.0155251.i, 1
  %i.eg = zext i32 %.0155251.i to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eg
  store i64 %.0134.lcssa.i, ptr %i.eh, align 8, !tbaa !71
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i
  %i.ei = add i32 %.0152252.i, 1
  %i.ej = zext i32 %.0152252.i to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ej
  store i64 %.0134.lcssa.i, ptr %i.ek, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %af_shaper_get_elem.exit.i, %bb.i, %bb.h
  %.2157.i = phi i32 [ %.0155251.i, %bb.h ], [ %.0155251.i, %bb.n ], [ %.0155251.i, %bb.i ], [ %.0155251.i, %af_shaper_get_elem.exit.i ], [ %i.ef, %bb.o ], [ %.0155251.i, %bb.p ] ; 7 uses
  %.2154.i = phi i32 [ %.0152252.i, %bb.h ], [ %.0152252.i, %bb.n ], [ %.0152252.i, %bb.i ], [ %.0152252.i, %af_shaper_get_elem.exit.i ], [ %.0152252.i, %bb.o ], [ %i.ei, %bb.p ] ; 7 uses
  %.1151.i = phi i8 [ 0, %bb.h ], [ %.0150253.i, %bb.n ], [ %.0150253.i, %bb.i ], [ %.0150253.i, %af_shaper_get_elem.exit.i ], [ 1, %bb.o ], [ 0, %bb.p ]
  %.2146.i = phi ptr [ %i.al, %bb.h ], [ %i.am, %bb.n ], [ %i.am, %bb.i ], [ %i.am, %af_shaper_get_elem.exit.i ], [ %i.am, %bb.o ], [ %i.am, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.el = load i8, ptr %.2146.i, align 1, !tbaa !60
  %.not167.i = icmp eq i8 %i.el, 0
  br i1 %.not167.i, label %._crit_edge257.i, label %bb.e

._crit_edge257.i:                                 ; preds = %bb.q
  %i.em = icmp eq i32 %.2154.i, 0                 ; 2 uses
  %i.en = icmp eq i32 %.2157.i, 0                 ; 2 uses
  %or.cond5.i = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond5.i, label %._crit_edge257.thread.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge257.i
  %i.eo = icmp ugt i32 %.2157.i, 1
  br i1 %i.eo, label %.lr.ph.preheader.i.preheader.i, label %af_sort_pos.exit.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %bb.r
  %i.ep = zext i32 %.2157.i to i64
  %i.eq = add nsw i64 %i.ep, -1                   ; 3 uses
  %xtraiter54 = and i64 %i.eq, 1
  %i.er = icmp eq i32 %.2157.i, 2
  br i1 %i.er, label %.lr.ph.preheader.i.i.epil.preheader, label %.lr.ph.preheader.i.preheader.i.new

.lr.ph.preheader.i.preheader.i.new:               ; preds = %.lr.ph.preheader.i.preheader.i
  %unroll_iter = and i64 %i.eq, -2
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i.1, %.lr.ph.preheader.i.preheader.i.new
  %indvars.iv305.i = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i.new ], [ %indvars.iv.next306.i.1, %._crit_edge.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.i.1 ]
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i
  %.pre.i.i = load i64, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.preheader.i.i
  %indvars.iv307.i = phi i64 [ %indvars.iv305.i, %.lr.ph.preheader.i.i ], [ %i.es, %bb.s ] ; 2 uses
  %i.es = add nsw i64 %indvars.iv307.i, -1        ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i = icmp slt i64 %.pre.i.i, %i.eu
  br i1 %.not21.i.i, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !71
  store i64 %.pre.i.i, ptr %i.et, align 8, !tbaa !71
  %.not.i.wide.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.wide.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.next306.i = add nuw nsw i64 %indvars.iv305.i, 1 ; 2 uses
  %.phi.trans.insert27.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next306.i
  %.pre.i.i.1 = load i64, ptr %.phi.trans.insert27.i.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.t, %._crit_edge.i.i
  %indvars.iv307.i.1 = phi i64 [ %indvars.iv.next306.i, %._crit_edge.i.i ], [ %i.ew, %bb.t ] ; 2 uses
  %i.ew = add nsw i64 %indvars.iv307.i.1, -1      ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ew ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.1 = icmp slt i64 %.pre.i.i.1, %i.ey
  br i1 %.not21.i.i.1, label %bb.t, label %._crit_edge.i.i.1

bb.t:                                             ; preds = %.lr.ph.i.i.1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i.1
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !71
  store i64 %.pre.i.i.1, ptr %i.ex, align 8, !tbaa !71
  %.not.i.wide.i.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.i.wide.i.1, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !85

._crit_edge.i.i.1:                                ; preds = %bb.t, %.lr.ph.i.i.1
  %indvars.iv.next306.i.1 = add nuw nsw i64 %indvars.iv305.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %af_sort_pos.exit.i.loopexit.unr-lcssa, label %.lr.ph.preheader.i.i, !llvm.loop !86

af_sort_pos.exit.i.loopexit.unr-lcssa:            ; preds = %._crit_edge.i.i.1
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %af_sort_pos.exit.i, label %.lr.ph.preheader.i.i.epil.preheader

.lr.ph.preheader.i.i.epil.preheader:              ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader.i
  %indvars.iv305.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next306.i.1, %af_sort_pos.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.eq to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %.phi.trans.insert27.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i.epil.init
  %.pre.i.i.epil = load i64, ptr %.phi.trans.insert27.i.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.u, %.lr.ph.preheader.i.i.epil.preheader
  %indvars.iv307.i.epil = phi i64 [ %indvars.iv305.i.epil.init, %.lr.ph.preheader.i.i.epil.preheader ], [ %i.fa, %bb.u ] ; 2 uses
  %i.fa = add nsw i64 %indvars.iv307.i.epil, -1   ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.epil = icmp slt i64 %.pre.i.i.epil, %i.fc
  br i1 %.not21.i.i.epil, label %bb.u, label %af_sort_pos.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i.epil
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv307.i.epil
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !71
  store i64 %.pre.i.i.epil, ptr %i.fb, align 8, !tbaa !71
  %.not.i.wide.i.epil = icmp eq i64 %i.fa, 0
  br i1 %.not.i.wide.i.epil, label %af_sort_pos.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !85

af_sort_pos.exit.i:                               ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %bb.u, %.lr.ph.i.i.epil, %bb.r
  %i.fe = icmp ugt i32 %.2154.i, 1
  br i1 %i.fe, label %.lr.ph.preheader.i183.preheader.i, label %af_sort_pos.exit194.i

.lr.ph.preheader.i183.preheader.i:                ; preds = %af_sort_pos.exit.i
  %i.ff = zext i32 %.2154.i to i64
  %i.fg = add nsw i64 %i.ff, -1                   ; 3 uses
  %xtraiter57 = and i64 %i.fg, 1
  %i.fh = icmp eq i32 %.2154.i, 2
  br i1 %i.fh, label %.lr.ph.preheader.i183.i.epil.preheader, label %.lr.ph.preheader.i183.preheader.i.new

.lr.ph.preheader.i183.preheader.i.new:            ; preds = %.lr.ph.preheader.i183.preheader.i
  %unroll_iter60 = and i64 %i.fg, -2
  br label %.lr.ph.preheader.i183.i

.lr.ph.preheader.i183.i:                          ; preds = %._crit_edge.i191.i.1, %.lr.ph.preheader.i183.preheader.i.new
  %indvars.iv311.i = phi i64 [ 1, %.lr.ph.preheader.i183.preheader.i.new ], [ %indvars.iv.next312.i.1, %._crit_edge.i191.i.1 ] ; 4 uses
  %niter61 = phi i64 [ 0, %.lr.ph.preheader.i183.preheader.i.new ], [ %niter61.next.1, %._crit_edge.i191.i.1 ]
  %.phi.trans.insert27.i186.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i
  %.pre.i187.i = load i64, ptr %.phi.trans.insert27.i186.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i188.i

.lr.ph.i188.i:                                    ; preds = %bb.v, %.lr.ph.preheader.i183.i
  %indvars.iv313.i = phi i64 [ %indvars.iv311.i, %.lr.ph.preheader.i183.i ], [ %i.fi, %bb.v ] ; 2 uses
  %i.fi = add nsw i64 %indvars.iv313.i, -1        ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fi ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !71 ; 2 uses
  %.not21.i190.i = icmp slt i64 %.pre.i187.i, %i.fk
  br i1 %.not21.i190.i, label %bb.v, label %._crit_edge.i191.i

bb.v:                                             ; preds = %.lr.ph.i188.i
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !71
  store i64 %.pre.i187.i, ptr %i.fj, align 8, !tbaa !71
  %.not.i193.wide.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i193.wide.i, label %._crit_edge.i191.i, label %.lr.ph.i188.i, !llvm.loop !85

._crit_edge.i191.i:                               ; preds = %bb.v, %.lr.ph.i188.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %.phi.trans.insert27.i186.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next312.i
  %.pre.i187.i.1 = load i64, ptr %.phi.trans.insert27.i186.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i188.i.1

.lr.ph.i188.i.1:                                  ; preds = %bb.w, %._crit_edge.i191.i
  %indvars.iv313.i.1 = phi i64 [ %indvars.iv.next312.i, %._crit_edge.i191.i ], [ %i.fm, %bb.w ] ; 2 uses
  %i.fm = add nsw i64 %indvars.iv313.i.1, -1      ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !71 ; 2 uses
  %.not21.i190.i.1 = icmp slt i64 %.pre.i187.i.1, %i.fo
  br i1 %.not21.i190.i.1, label %bb.w, label %._crit_edge.i191.i.1

bb.w:                                             ; preds = %.lr.ph.i188.i.1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i.1
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !71
  store i64 %.pre.i187.i.1, ptr %i.fn, align 8, !tbaa !71
  %.not.i193.wide.i.1 = icmp eq i64 %i.fm, 0
  br i1 %.not.i193.wide.i.1, label %._crit_edge.i191.i.1, label %.lr.ph.i188.i.1, !llvm.loop !85

._crit_edge.i191.i.1:                             ; preds = %bb.w, %.lr.ph.i188.i.1
  %indvars.iv.next312.i.1 = add nuw nsw i64 %indvars.iv311.i, 2 ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %af_sort_pos.exit194.thread.i.unr-lcssa, label %.lr.ph.preheader.i183.i, !llvm.loop !86

af_sort_pos.exit194.thread.i.unr-lcssa:           ; preds = %._crit_edge.i191.i.1
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %af_sort_pos.exit194.i, label %.lr.ph.preheader.i183.i.epil.preheader

.lr.ph.preheader.i183.i.epil.preheader:           ; preds = %af_sort_pos.exit194.thread.i.unr-lcssa, %.lr.ph.preheader.i183.preheader.i
  %indvars.iv311.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i183.preheader.i ], [ %indvars.iv.next312.i.1, %af_sort_pos.exit194.thread.i.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.fg to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %.phi.trans.insert27.i186.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i.epil.init
  %.pre.i187.i.epil = load i64, ptr %.phi.trans.insert27.i186.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i188.i.epil

.lr.ph.i188.i.epil:                               ; preds = %bb.x, %.lr.ph.preheader.i183.i.epil.preheader
  %indvars.iv313.i.epil = phi i64 [ %indvars.iv311.i.epil.init, %.lr.ph.preheader.i183.i.epil.preheader ], [ %i.fq, %bb.x ] ; 2 uses
  %i.fq = add nsw i64 %indvars.iv313.i.epil, -1   ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fq ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !71 ; 2 uses
  %.not21.i190.i.epil = icmp slt i64 %.pre.i187.i.epil, %i.fs
  br i1 %.not21.i190.i.epil, label %bb.x, label %af_sort_pos.exit194.i

bb.x:                                             ; preds = %.lr.ph.i188.i.epil
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv313.i.epil
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !71
  store i64 %.pre.i187.i.epil, ptr %i.fr, align 8, !tbaa !71
  %.not.i193.wide.i.epil = icmp eq i64 %i.fq, 0
  br i1 %.not.i193.wide.i.epil, label %af_sort_pos.exit194.i, label %.lr.ph.i188.i.epil, !llvm.loop !85

af_sort_pos.exit194.i:                            ; preds = %af_sort_pos.exit194.thread.i.unr-lcssa, %bb.x, %.lr.ph.i188.i.epil, %af_sort_pos.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.0149.i, i64 432
  %i.fv = getelementptr inbounds nuw i8, ptr %.0149.i, i64 428 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !87 ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [56 x i8], ptr %i.fu, i64 %i.fx ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = add i32 %i.fw, 1
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !87
  br i1 %i.em, label %bb.y, label %bb.z

bb.y:                                             ; preds = %af_sort_pos.exit194.i
  %i.gb = lshr i32 %.2157.i, 1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !71
  br label %bb.ac

bb.z:                                             ; preds = %af_sort_pos.exit194.i
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gf = lshr i32 %.2154.i, 1
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !71
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gj = lshr i32 %.2157.i, 1
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !71 ; 4 uses
  store i64 %i.gm, ptr %i.fy, align 8, !tbaa !71
  %i.gn = lshr i32 %.2154.i, 1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !71 ; 4 uses
  store i64 %i.gq, ptr %i.fz, align 8, !tbaa !71
  %.not168.i = icmp eq i64 %i.gq, %i.gm
  %i.gr = trunc i16 %.fr.i to i1
  %i.gs = icmp sge i64 %i.gq, %i.gm
  %.not169.i = xor i1 %i.gs, %i.gr
  %or.cond198.i = or i1 %.not168.i, %.not169.i
  br i1 %or.cond198.i, label %.thread370.i, label %2

2:                                                ; preds = %bb.ab
  %3 = add nsw i64 %i.gq, %i.gm
  %4 = sdiv i64 %3, 2
  br label %bb.ac

bb.ac:                                            ; preds = %2, %bb.aa, %bb.y
  %.sink363.i = phi i64 [ %i.ge, %bb.y ], [ %i.gi, %bb.aa ], [ %4, %2 ] ; 2 uses
  store i64 %.sink363.i, ptr %i.fz, align 8, !tbaa !71
  store i64 %.sink363.i, ptr %i.fy, align 8, !tbaa !71
  br label %.thread370.i

.thread370.i:                                     ; preds = %bb.ac, %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gu = shl i16 %.fr.i, 1
  %i.gv = and i16 %i.gu, 2
  %spec.store.select.i = zext nneg i16 %i.gv to i32
  store i32 %spec.store.select.i, ptr %i.gt, align 8
  br label %._crit_edge257.thread.i

._crit_edge257.thread.i:                          ; preds = %.thread370.i, %._crit_edge257.i, %bb.d
  %i.gw = getelementptr inbounds nuw i8, ptr %.0148261.i, i64 8 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !57 ; 2 uses
  %.not165.i = icmp eq i32 %i.gx, 5531
  br i1 %.not165.i, label %._crit_edge263.i, label %bb.d, !llvm.loop !89

._crit_edge263.i:                                 ; preds = %._crit_edge257.thread.i, %af_shaper_buf_create.exit.i
  %i.gy = load ptr, ptr %i.r, align 8, !tbaa !40
  %i.gz = getelementptr i8, ptr %i.gy, i64 816
  %.val.i195.i = load ptr, ptr %i.gz, align 8, !tbaa !41
  %i.ha = getelementptr i8, ptr %.val.i195.i, i64 72
  %.val.val.i196.i = load ptr, ptr %i.ha, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.val.i196.i, null
  br i1 %.not6.i.i, label %af_cjk_metrics_init_blues.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge263.i
  %i.hb = getelementptr i8, ptr %.val.val.i196.i, i64 40
  %.val5.val.val.i.i = load ptr, ptr %i.hb, align 8, !tbaa !90
  call void %.val5.val.val.i.i(ptr noundef %.0147.i) #18, !inline_history !91
  br label %af_cjk_metrics_init_blues.exit

af_cjk_metrics_init_blues.exit:                   ; preds = %._crit_edge263.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call fastcc void @af_cjk_metrics_check_digits(ptr noundef nonnull %0)
  br label %bb.ae

bb.ae:                                            ; preds = %af_cjk_metrics_init_blues.exit, %bb.a
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @af_cjk_metrics_scale(ptr nofree noundef captures(none) initializes((8, 56)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !92
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @af_cjk_get_standard_widths(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94
  store i64 %i.b, ptr %1, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  store i64 %i.d, ptr %2, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_cjk_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5160, 5176)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %1, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !71
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !71
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !103  ; 4 uses
  %i.m = icmp eq i32 %i.l, 2                      ; 2 uses
  %i.n = and i32 %i.l, -2
  %or.cond = icmp eq i32 %i.n, 2
  %spec.select = zext i1 %or.cond to i32          ; 2 uses
  %i.o = icmp eq i32 %i.l, 4
  %or.cond3 = or i1 %i.m, %i.o
  %i.p = or disjoint i32 %spec.select, 2
  %.1 = select i1 %or.cond3, i32 %i.p, i32 %spec.select ; 2 uses
  %i.q = and i32 %i.l, -3
  %or.cond5.not = icmp eq i32 %i.q, 1
  %i.r = or disjoint i32 %.1, 4
  %.2 = select i1 %or.cond5.not, i32 %.1, i32 %i.r ; 2 uses
  %i.s = or disjoint i32 %.2, 8
  %.3 = select i1 %i.m, i32 %i.s, i32 %.2
  %i.t = or i32 %i.c, 4
  store i32 %i.t, ptr %i.d, align 8, !tbaa !104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5164
  store i32 %.3, ptr %i.u, align 4, !tbaa !105
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_cjk_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (88, 92), (104, 108), (2624, 2628), (2640, 2644)) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @af_glyph_hints_reload(ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %af_glyph_hints_save.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5160 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not40 = icmp eq i32 %i.d, 0
  br i1 %.not40, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @af_cjk_hints_detect_features(ptr noundef nonnull %1, i32 noundef 0) ; 2 uses
  %.not41 = icmp eq i32 %i.e, 0
  br i1 %.not41, label %bb.d, label %af_glyph_hints_save.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @af_cjk_hints_compute_blue_edges(ptr noundef nonnull %1, ptr noundef %3, i32 noundef 0)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.f = phi i32 [ %.pre, %bb.d ], [ %i.c, %bb.b ]
  %i.g = and i32 %i.f, 2
  %.not42 = icmp eq i32 %i.g, 0
  br i1 %.not42, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = tail call fastcc i32 @af_cjk_hints_detect_features(ptr noundef nonnull %1, i32 noundef 1) ; 2 uses
  %.not43 = icmp eq i32 %i.h, 0
  br i1 %.not43, label %bb.g, label %af_glyph_hints_save.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @af_cjk_hints_compute_blue_edges(ptr noundef nonnull %1, ptr noundef %3, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2648
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2640
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5164 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load i32, ptr %i.b, align 8, !tbaa !104
  %i.n = and i32 %i.m, 1
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %.split, label %bb.k

.split:                                           ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call fastcc void @af_cjk_hint_edges(ptr noundef nonnull %1, i32 noundef 0)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106  ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %af_cjk_align_edge_points.exit, label %.thread.i

.thread.i:                                        ; preds = %.split
  %i.q = load i32, ptr %i.l, align 8, !tbaa !111  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx59 = mul nuw nsw i64 %i.r, 88
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx59 ; 2 uses
  %.not60 = icmp eq i32 %i.q, 0
  br i1 %.not60, label %af_cjk_align_edge_points.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i
  %i.t = load i32, ptr %i.k, align 4, !tbaa !105
  %i.u = and i32 %i.t, 1
  %.not53.i = icmp eq i32 %i.u, 0
  br i1 %.not53.i, label %.split63.us.us.us.i, label %.preheader.us.i

.split63.us.us.us.i:                              ; preds = %.lr.ph.i, %.loopexit.split.us.us.us.i
  %.04764.us.us.i = phi ptr [ %i.am, %.loopexit.split.us.us.us.i ], [ %i.p, %.lr.ph.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04764.us.us.i, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !112  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04764.us.us.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !115
  %i.z = getelementptr inbounds nuw i8, ptr %.04764.us.us.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !116
  %i.ab = sub i64 %i.y, %i.aa
  br label %.split60.us.us.us.us.i

.split60.us.us.us.us.i:                           ; preds = %.split62.us.us.us.us.i, %.split63.us.us.us.i
  %.1.us.us.us.i = phi ptr [ %i.w, %.split63.us.us.us.i ], [ %i.al, %.split62.us.us.us.us.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.us.us.us.i, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117
  br label %bb.i
end_hunk_1
begin_hunk_2_@af_cjk_hints_apply:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_dummy_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5160, 5164), (5168, 5176)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %1, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5160
  store i32 %i.c, ptr %i.d, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !71
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !137
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_dummy_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (88, 92), (104, 108), (2624, 2628), (2640, 2644)) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc i32 @af_glyph_hints_reload(ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %af_glyph_hints_save.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 44
  %.val = load i32, ptr %i.b, align 4, !tbaa !128 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 48
  %.val7 = load ptr, ptr %i.c, align 8, !tbaa !129 ; 2 uses
  %i.d = sext i32 %.val to i64
  %.idx.i = mul nuw nsw i64 %i.d, 80
  %i.e = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i
  %i.f = icmp sgt i32 %.val, 0
  br i1 %i.f, label %.lr.ph.i.preheader, label %af_glyph_hints_save.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 16
  %.val9 = load ptr, ptr %i.g, align 8, !tbaa !130
  %i.h = getelementptr i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !132
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.03.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.val9, %.lr.ph.i.preheader ] ; 2 uses
  %.0192.i = phi ptr [ %i.p, %.lr.ph.i ], [ %.val8, %.lr.ph.i.preheader ] ; 2 uses
  %.0201.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.val7, %.lr.ph.i.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0201.i, i64 32
  %i.j = load <2 x i64>, ptr %i.i, align 8, !tbaa !71
  store <2 x i64> %i.j, ptr %.0192.i, align 8, !tbaa !71
  %i.k = load i16, ptr %.0201.i, align 8, !tbaa !122
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 1
  %.not.i = icmp eq i32 %i.m, 0
  %i.n = and i32 %i.l, 2
  %.not21.i = icmp eq i32 %i.n, 0
  %..i = select i1 %.not21.i, i8 1, i8 2
  %.sink.i = select i1 %.not.i, i8 %..i, i8 0
  store i8 %.sink.i, ptr %.03.i, align 1, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %.0201.i, i64 80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0192.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.r = icmp ult ptr %i.o, %i.e
  br i1 %i.r, label %.lr.ph.i, label %af_glyph_hints_save.exit, !llvm.loop !133

af_glyph_hints_save.exit:                         ; preds = %.lr.ph.i, %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @af_indic_metrics_init(ptr nofree noundef captures(none) initializes((80, 84)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load i16, ptr %i.c, align 8, !tbaa !28
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.e, ptr %i.f, align 8, !tbaa !29
  %i.g = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @af_cjk_metrics_init_widths(ptr noundef nonnull %0, ptr noundef nonnull %1)
  tail call fastcc void @af_cjk_metrics_check_digits(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @af_indic_metrics_scale(ptr nofree noundef captures(none) initializes((8, 56)) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !92
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull readonly %1, i32 noundef 0)
  tail call fastcc void @af_cjk_metrics_scale_dim(ptr noundef %0, ptr noundef nonnull readonly %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @af_indic_get_standard_widths(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) #1 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.b = load i64, ptr %i.a, align 8, !tbaa !94
  store i64 %i.b, ptr %1, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %2, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  store i64 %i.d, ptr %2, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @af_indic_hints_init(ptr nofree noundef writeonly captures(none) initializes((8, 40), (5160, 5176)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5168
  store ptr %1, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5160
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load <2 x i64>, ptr %i.e, align 8, !tbaa !71
  store <2 x i64> %i.g, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load <2 x i64>, ptr %i.h, align 8, !tbaa !71
  store <2 x i64> %i.j, ptr %i.i, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !103  ; 4 uses
  %i.m = icmp eq i32 %i.l, 2                      ; 2 uses
  %i.n = and i32 %i.l, -2
  %or.cond.i = icmp eq i32 %i.n, 2
  %spec.select.i = zext i1 %or.cond.i to i32      ; 2 uses
  %i.o = icmp eq i32 %i.l, 4
  %or.cond3.i = or i1 %i.m, %i.o
  %i.p = or disjoint i32 %spec.select.i, 2
  %.1.i = select i1 %or.cond3.i, i32 %i.p, i32 %spec.select.i ; 2 uses
  %i.q = and i32 %i.l, -3
  %or.cond5.not.i = icmp eq i32 %i.q, 1
  %i.r = or disjoint i32 %.1.i, 4
  %.2.i = select i1 %or.cond5.not.i, i32 %.1.i, i32 %i.r ; 2 uses
  %i.s = or disjoint i32 %.2.i, 8
  %.3.i = select i1 %i.m, i32 %i.s, i32 %.2.i
  %i.t = or i32 %i.c, 4
  store i32 %i.t, ptr %i.d, align 8, !tbaa !104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5164
  store i32 %.3.i, ptr %i.u, align 4, !tbaa !105
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @af_indic_hints_apply(i32 %0, ptr noundef initializes((44, 48), (60, 64), (88, 92), (104, 108), (2624, 2628), (2640, 2644)) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = tail call i32 @af_cjk_hints_apply(i32 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @af_latin_metrics_init(ptr noundef initializes((80, 84)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [2 x i32], align 8                ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 3 uses
  %i.k = alloca [20 x i8], align 16               ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca [51 x i64], align 16              ; 14 uses
  %i.o = alloca [51 x i64], align 16              ; 15 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca [8 x ptr], align 16               ; 9 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %2 = alloca [1 x %struct.AF_GlyphHintsRec_], align 16 ; 16 uses
  %3 = alloca [1 x %struct.AF_LatinMetricsRec_], align 16 ; 9 uses
  %i.t = alloca i64, align 8                      ; 3 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = load i16, ptr %i.y, align 8, !tbaa !28
  %i.aa = zext i16 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !138
  %i.ac = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.cx

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !140
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5168) %i.af, i8 0, i64 5168, i1 false)
  store ptr %i.ae, ptr %2, align 16, !tbaa !141
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !142
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load ptr, ptr %0, align 8, !tbaa !144
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !145
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @af_script_classes, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !148 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.at = getelementptr i8, ptr %i.as, i64 816
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr i8, ptr %.val.i, i64 72
  %.val.val.i = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  %.not112.i = icmp eq ptr %.val.val.i, null
  br i1 %.not112.i, label %af_shaper_buf_create.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr i8, ptr %.val.val.i, i64 32
  %.val4.val.val.i.i = load ptr, ptr %i.av, align 8, !tbaa !54
  %i.aw = tail call ptr %.val4.val.val.i.i() #18, !inline_history !152
  br label %af_shaper_buf_create.exit.i

af_shaper_buf_create.exit.i:                      ; preds = %bb.c, %bb.b
  %.081.i = phi ptr [ %i.t, %bb.b ], [ %i.aw, %bb.c ] ; 5 uses
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !60  ; 2 uses
  %.not93115.i = icmp eq i8 %i.ax, 0
  br i1 %.not93115.i, label %.loopexit113.i, label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %af_shaper_buf_create.exit.i, %select.unfold.i
  %i.ay = phi i8 [ %i.bu, %select.unfold.i ], [ %i.ax, %af_shaper_buf_create.exit.i ]
  %.079116.i = phi ptr [ %i.bc, %select.unfold.i ], [ %i.aq, %af_shaper_buf_create.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  %i.az = icmp eq i8 %i.ay, 32
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph117.i, %.lr.ph.i
  %.180114.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.079116.i, %.lr.ph117.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.180114.i, i64 1 ; 3 uses
  %.pr.i = load i8, ptr %i.ba, align 1, !tbaa !60
  %i.bb = icmp eq i8 %.pr.i, 32
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !153

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph117.i
  %.180.lcssa.i = phi ptr [ %.079116.i, %.lr.ph117.i ], [ %i.ba, %.lr.ph.i ]
  %i.bc = call ptr @af_shaper_get_cluster(ptr noundef nonnull %.180.lcssa.i, ptr noundef nonnull %0, ptr noundef %.081.i, ptr noundef nonnull %i.u) ; 2 uses
  %i.bd = load i32, ptr %i.u, align 4, !tbaa !64
  %i.be = icmp ugt i32 %i.bd, 1
  br i1 %i.be, label %select.unfold.i, label %bb.d, !llvm.loop !154

bb.d:                                             ; preds = %._crit_edge.i
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.bg = getelementptr i8, ptr %i.bf, i64 816    ; 2 uses
  %.val.i103.i = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bh = getelementptr i8, ptr %.val.i103.i, i64 72
  %.val.val.i104.i = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not14.i.i = icmp eq ptr %.val.val.i104.i, null
  br i1 %.not14.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.val.i104.i, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !66
  %i.bk = call ptr %i.bj(ptr noundef %.081.i, ptr noundef nonnull %i.s) #18, !inline_history !155
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !68
  %i.bq = call ptr %i.bp(ptr noundef %.081.i, ptr noundef nonnull %i.s) #18, !inline_history !155 ; 0 uses
  %i.br = load i32, ptr %i.s, align 4, !tbaa !64
  %.not.i.i.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.not.i, label %af_shaper_get_elem_hb.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.bk, align 4, !tbaa !69
  %i.bt = zext i32 %i.bs to i64
  br label %af_shaper_get_elem_hb.exit.i.i

af_shaper_get_elem_hb.exit.i.i:                   ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.bt, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  br label %af_shaper_get_elem.exit.i

bb.g:                                             ; preds = %bb.d
  %.val12.i.i = load i64, ptr %.081.i, align 8, !tbaa !71
  br label %af_shaper_get_elem.exit.i

af_shaper_get_elem.exit.i:                        ; preds = %bb.g, %af_shaper_get_elem_hb.exit.i.i
  %.0.i105.i = phi i64 [ %.0.i.i.i, %af_shaper_get_elem_hb.exit.i.i ], [ %.val12.i.i, %bb.g ] ; 2 uses
  %.not94.i = icmp eq i64 %.0.i105.i, 0
  br i1 %.not94.i, label %select.unfold.i, label %.thread.i

.thread.i:                                        ; preds = %af_shaper_get_elem.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  br label %.loopexit113.i

select.unfold.i:                                  ; preds = %af_shaper_get_elem.exit.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  %i.bu = load i8, ptr %i.bc, align 1, !tbaa !60  ; 2 uses
  %.not93.i = icmp eq i8 %i.bu, 0
  br i1 %.not93.i, label %.loopexit113.i, label %.lr.ph117.i

.loopexit113.i:                                   ; preds = %select.unfold.i, %.thread.i, %af_shaper_buf_create.exit.i
  %.2.i = phi i64 [ %.0.i105.i, %.thread.i ], [ 0, %af_shaper_buf_create.exit.i ], [ 0, %select.unfold.i ] ; 2 uses
  %i.bv = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.bw = getelementptr i8, ptr %i.bv, i64 816
  %.val.i106.i = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.bx = getelementptr i8, ptr %.val.i106.i, i64 72
  %.val.val.i107.i = load ptr, ptr %i.bx, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.val.i107.i, null
  br i1 %.not6.i.i, label %af_shaper_buf_destroy.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit113.i
  %i.by = getelementptr i8, ptr %.val.val.i107.i, i64 40
  %.val5.val.val.i.i = load ptr, ptr %i.by, align 8, !tbaa !90
  call void %.val5.val.val.i.i(ptr noundef %.081.i) #18, !inline_history !156
  br label %af_shaper_buf_destroy.exit.i

af_shaper_buf_destroy.exit.i:                     ; preds = %bb.h, %.loopexit113.i
  %.not95.i = icmp eq i64 %.2.i, 0
  br i1 %.not95.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %af_shaper_buf_destroy.exit.i
  %i.bz = trunc i64 %.2.i to i32
  %i.ca = call i32 @FT_Load_Glyph(ptr noundef %1, i32 noundef %i.bz, i32 noundef 1) #18
  %.not96.i = icmp eq i32 %i.ca, 0
  br i1 %.not96.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !72 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 202
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !157
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2136) %3, i8 0, i64 2136, i1 false)
  %i.cg = load i32, ptr %i.ab, align 8, !tbaa !138
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  store i32 %i.cg, ptr %i.ch, align 16, !tbaa !138
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 65536, ptr %i.ci, align 16, !tbaa !163
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 65536, ptr %i.cj, align 8, !tbaa !164
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.ai, align 8, !tbaa !165
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 5168
  store ptr %3, ptr %i.cl, align 16, !tbaa !95
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 5160
  store i32 0, ptr %i.cm, align 8, !tbaa !104
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 200
  %i.co = call fastcc i32 @af_glyph_hints_reload(ptr noundef nonnull %2, ptr noundef nonnull %i.cn)
  %.not97.i = icmp eq i32 %i.co, 0
  br i1 %.not97.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  %i.cq = call fastcc i32 @af_latin_hints_compute_segments(ptr noundef nonnull %2, i32 noundef 0)
  %.not98.i = icmp eq i32 %i.cq, 0
  br i1 %.not98.i, label %bb.l, label %.loopexit.sink.split.i

end_hunk_2
begin_hunk_3_@af_latin_metrics_init:bb.a
bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %.077118.i, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !169
  %i.dh = sext i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !169
  %i.dk = sext i16 %i.dj to i64
  %i.dl = sub nsw i64 %i.dh, %i.dk
  %spec.select.i = call i64 @llvm.abs.i64(i64 %i.dl, i1 true)
  %i.dm = add nuw nsw i32 %i.cx, 1
  %i.dn = zext nneg i32 %i.cx to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %i.dn
  store i64 %spec.select.i, ptr %i.do, align 8, !tbaa !170
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dp = phi i32 [ %i.cx, %bb.o ], [ %i.dm, %bb.p ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.077118.i, i64 80 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.cv
  br i1 %i.dr, label %bb.n, label %._crit_edge121.i, !llvm.loop !172

._crit_edge121.i:                                 ; preds = %bb.q, %bb.m, %bb.l
  %.lcssa.i = phi i32 [ 0, %bb.m ], [ 0, %bb.l ], [ %i.dp, %bb.q ]
  store i32 %.lcssa.i, ptr %i.v, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dt = load i32, ptr %i.ch, align 16, !tbaa !138
  %i.du = udiv i32 %i.dt, 100
  %i.dv = zext nneg i32 %i.du to i64
  call fastcc void @af_sort_and_quantize_widths(ptr noundef %i.v, ptr noundef nonnull %i.ds, i64 noundef %i.dv)
  %i.dw = load i32, ptr %i.v, align 4, !tbaa !64
  store i32 %i.dw, ptr %i.ag, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 2624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  %i.dy = call fastcc i32 @af_latin_hints_compute_segments(ptr noundef nonnull %2, i32 noundef 1)
  %.not98.1.i = icmp eq i32 %i.dy, 0
  br i1 %.not98.1.i, label %bb.r, label %.loopexit.sink.split.i

bb.r:                                             ; preds = %._crit_edge121.i
  call fastcc void @af_latin_hints_link_segments(ptr noundef nonnull %2, i32 noundef 0, ptr noundef null, i32 noundef 1)
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 2632
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !166 ; 3 uses
  %.not99.1.i = icmp eq ptr %i.ea, null
  br i1 %.not99.1.i, label %._crit_edge121.1.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = load i32, ptr %i.dx, align 16, !tbaa !167 ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %.idx147.i = mul nuw nsw i64 %i.ec, 80
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx147.i
  %.not148.i = icmp eq i32 %i.eb, 0
  br i1 %.not148.i, label %._crit_edge121.1.i, label %.lr.ph120.1.i

.lr.ph120.1.i:                                    ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1136
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph120.1.i
  %.077118.1.i = phi ptr [ %i.ea, %.lr.ph120.1.i ], [ %i.ey, %bb.w ] ; 5 uses
  %i.ef = phi i32 [ 0, %.lr.ph120.1.i ], [ %i.ex, %bb.w ] ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.077118.1.i, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !168 ; 4 uses
  %.not100.1.i = icmp eq ptr %i.eh, null
  br i1 %.not100.1.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !168
  %i.ek = icmp eq ptr %i.ej, %.077118.1.i
  %i.el = icmp ugt ptr %i.eh, %.077118.1.i
  %or.cond.1.i = and i1 %i.el, %i.ek
  %i.em = icmp ult i32 %i.ef, 16
  %or.cond125.1.i = select i1 %or.cond.1.i, i1 %i.em, i1 false
  br i1 %or.cond125.1.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %.077118.1.i, i64 2
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !169
  %i.ep = sext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !169
  %i.es = sext i16 %i.er to i64
  %i.et = sub nsw i64 %i.ep, %i.es
  %spec.select.1.i = call i64 @llvm.abs.i64(i64 %i.et, i1 true)
  %i.eu = add nuw nsw i32 %i.ef, 1
  %i.ev = zext nneg i32 %i.ef to i64
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ev
  store i64 %spec.select.1.i, ptr %i.ew, align 8, !tbaa !170
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ex = phi i32 [ %i.ef, %bb.u ], [ %i.eu, %bb.v ], [ %i.ef, %bb.t ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.077118.1.i, i64 80 ; 2 uses
  %i.ez = icmp ult ptr %i.ey, %i.ed
  br i1 %i.ez, label %bb.t, label %._crit_edge121.1.i, !llvm.loop !172

._crit_edge121.1.i:                               ; preds = %bb.w, %bb.s, %bb.r
  %.lcssa.1.i = phi i32 [ 0, %bb.s ], [ 0, %bb.r ], [ %i.ex, %bb.w ]
  store i32 %.lcssa.1.i, ptr %i.v, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.fb = load i32, ptr %i.ch, align 16, !tbaa !138
  %i.fc = udiv i32 %i.fb, 100
  %i.fd = zext nneg i32 %i.fc to i64
  call fastcc void @af_sort_and_quantize_widths(ptr noundef %i.v, ptr noundef nonnull %i.fa, i64 noundef %i.fd)
  %i.fe = load i32, ptr %i.v, align 4, !tbaa !64
  store i32 %i.fe, ptr %i.ah, align 8, !tbaa !142
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge121.1.i, %._crit_edge121.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.sink.split.i, %bb.k, %bb.j, %bb.i, %af_shaper_buf_destroy.exit.i
  %i.ff = load i32, ptr %i.ag, align 8, !tbaa !142
  %.not101.i = icmp eq i32 %i.ff, 0
  br i1 %.not101.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !170
  br label %bb.z

bb.y:                                             ; preds = %.loopexit.i
  %i.fi = load i32, ptr %i.ab, align 8, !tbaa !138
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul nuw nsw i64 %i.fj, 25
  %i.fl = lshr i64 %i.fk, 10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fm = phi i64 [ %i.fh, %bb.x ], [ %i.fl, %bb.y ] ; 2 uses
  %i.fn = sdiv i64 %i.fm, 5
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !173
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 %i.fm, ptr %i.fp, align 8, !tbaa !174
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 0, ptr %i.fq, align 8, !tbaa !175
  %i.fr = load i32, ptr %i.ah, align 8, !tbaa !142
  %.not101.1.i = icmp eq i32 %i.fr, 0
  br i1 %.not101.1.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !170
  br label %af_latin_metrics_init_widths.exit

bb.ab:                                            ; preds = %bb.z
  %i.fu = load i32, ptr %i.ab, align 8, !tbaa !138
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul nuw nsw i64 %i.fv, 25
  %i.fx = lshr i64 %i.fw, 10
  br label %af_latin_metrics_init_widths.exit

af_latin_metrics_init_widths.exit:                ; preds = %bb.aa, %bb.ab
  %i.fy = phi i64 [ %i.ft, %bb.aa ], [ %i.fx, %bb.ab ] ; 2 uses
  %i.fz = sdiv i64 %i.fy, 5
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !173
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i64 %i.fy, ptr %i.gb, align 8, !tbaa !174
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1536
  store i8 0, ptr %i.gc, align 8, !tbaa !175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call fastcc void @af_glyph_hints_done(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  %i.gd = load ptr, ptr %0, align 8, !tbaa !144   ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !38
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @af_blue_stringsets, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.ab, align 8, !tbaa !138
  %i.gj = udiv i32 %i.gi, 14
  %i.gk = zext nneg i32 %i.gj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %i.gl = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.gm = getelementptr i8, ptr %i.gl, i64 816
  %.val.i16 = load ptr, ptr %i.gm, align 8, !tbaa !41
  %i.gn = getelementptr i8, ptr %.val.i16, i64 72
  %.val.val.i17 = load ptr, ptr %i.gn, align 8, !tbaa !48 ; 2 uses
  %.not780.i = icmp eq ptr %.val.val.i17, null
  br i1 %.not780.i, label %af_shaper_buf_create.exit.i19, label %bb.ac

bb.ac:                                            ; preds = %af_latin_metrics_init_widths.exit
  %i.go = getelementptr i8, ptr %.val.val.i17, i64 32
  %.val4.val.val.i.i18 = load ptr, ptr %i.go, align 8, !tbaa !54
  %i.gp = call ptr %.val4.val.val.i.i18() #18, !inline_history !176
  br label %af_shaper_buf_create.exit.i19

af_shaper_buf_create.exit.i19:                    ; preds = %bb.ac, %af_latin_metrics_init_widths.exit
  %.0587.i = phi ptr [ %i.p, %af_latin_metrics_init_widths.exit ], [ %i.gp, %bb.ac ] ; 5 uses
  %i.gq = load i32, ptr %i.gh, align 8, !tbaa !57 ; 2 uses
  %.not636866.i = icmp eq i32 %i.gq, 5531
  br i1 %.not636866.i, label %._crit_edge869.i, label %.lr.ph868.i

.lr.ph868.i:                                      ; preds = %af_shaper_buf_create.exit.i19
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1540 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge861.thread.i, %.lr.ph868.i
  %i.gu = phi i32 [ %i.gq, %.lr.ph868.i ], [ %i.rc, %._crit_edge861.thread.i ]
  %.0588867.i = phi ptr [ %i.gh, %.lr.ph868.i ], [ %i.rb, %._crit_edge861.thread.i ] ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr @af_blue_strings, i64 %i.gv ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !60  ; 2 uses
  %.not640853.i = icmp eq i8 %i.gx, 0
  br i1 %.not640853.i, label %._crit_edge861.thread.i, label %.lr.ph860.i

.lr.ph860.i:                                      ; preds = %bb.ad
  %i.gy = getelementptr inbounds nuw i8, ptr %.0588867.i, i64 4 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.bs, %.lr.ph860.i
  %i.gz = phi i8 [ %i.gx, %.lr.ph860.i ], [ %i.op, %bb.bs ]
  %.0563858.i = phi i64 [ 0, %.lr.ph860.i ], [ %.10573.i, %bb.bs ] ; 2 uses
  %.0574857.i = phi i64 [ 0, %.lr.ph860.i ], [ %.10584.i, %bb.bs ] ; 2 uses
  %.0585856.i = phi ptr [ %i.gw, %.lr.ph860.i ], [ %i.hd, %bb.bs ] ; 2 uses
  %.0589855.i = phi i32 [ 0, %.lr.ph860.i ], [ %.2591.i, %bb.bs ] ; 5 uses
  %.0592854.i = phi i32 [ 0, %.lr.ph860.i ], [ %.2594.i, %bb.bs ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  %i.ha = icmp eq i8 %i.gz, 32
  br i1 %i.ha, label %.lr.ph.i34, label %._crit_edge.i20

.lr.ph.i34:                                       ; preds = %bb.ae, %.lr.ph.i34
  %.1586800.i = phi ptr [ %i.hb, %.lr.ph.i34 ], [ %.0585856.i, %bb.ae ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.1586800.i, i64 1 ; 3 uses
  %.pr.i35 = load i8, ptr %i.hb, align 1, !tbaa !60
  %i.hc = icmp eq i8 %.pr.i35, 32
  br i1 %i.hc, label %.lr.ph.i34, label %._crit_edge.i20, !llvm.loop !177

._crit_edge.i20:                                  ; preds = %.lr.ph.i34, %bb.ae
  %.1586.lcssa.i = phi ptr [ %.0585856.i, %bb.ae ], [ %i.hb, %.lr.ph.i34 ]
  %i.hd = call ptr @af_shaper_get_cluster(ptr noundef nonnull %.1586.lcssa.i, ptr noundef nonnull %0, ptr noundef %.0587.i, ptr noundef nonnull %i.q) ; 2 uses
  %i.he = load i32, ptr %i.q, align 4, !tbaa !64  ; 2 uses
  %.not650.i = icmp eq i32 %i.he, 0
  br i1 %.not650.i, label %bb.bs, label %.lr.ph847.i, !llvm.loop !178

.lr.ph847.i:                                      ; preds = %._crit_edge.i20
  %i.hf = load i16, ptr %i.gy, align 4, !tbaa !59 ; 4 uses
  %i.hg = and i16 %i.hf, 1
  %.not651.i = icmp eq i16 %i.hg, 0               ; 2 uses
  %..i = select i1 %.not651.i, i64 9223372036854775807, i64 -9223372036854775808
  %i.hh = and i16 %i.hf, 3
  %or.cond677.i = icmp eq i16 %i.hh, 0
  %i.hi = and i16 %i.hf, 16
  %.not657.i = icmp eq i16 %i.hi, 0
  %i.hj = and i16 %i.hf, 4
  %.not670.i = icmp eq i16 %i.hj, 0               ; 2 uses
  %wide.trip.count909.i = zext i32 %i.he to i64
  br label %bb.af

bb.af:                                            ; preds = %.thread759.i, %.lr.ph847.i
  %indvars.iv907.i = phi i64 [ 0, %.lr.ph847.i ], [ %indvars.iv.next908.i, %.thread759.i ] ; 4 uses
  %.0545843.i = phi i8 [ 0, %.lr.ph847.i ], [ %.2547.i, %.thread759.i ] ; 7 uses
  %.1549842.i = phi i64 [ %..i, %.lr.ph847.i ], [ %.3551.i, %.thread759.i ] ; 9 uses
  %.1564841.i = phi i64 [ %.0563858.i, %.lr.ph847.i ], [ %.9572.i, %.thread759.i ] ; 4 uses
  %.1575840.i = phi i64 [ %.0574857.i, %.lr.ph847.i ], [ %.9583.i, %.thread759.i ] ; 4 uses
  %.0722839.i = phi i64 [ undef, %.lr.ph847.i ], [ %.2724.i, %.thread759.i ]
  %i.hk = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.hl = getelementptr i8, ptr %i.hk, i64 816    ; 2 uses
  %.val.i693.i = load ptr, ptr %i.hl, align 8, !tbaa !41
  %i.hm = getelementptr i8, ptr %.val.i693.i, i64 72
  %.val.val.i694.i = load ptr, ptr %i.hm, align 8, !tbaa !48 ; 2 uses
  %.not14.i.i21 = icmp eq ptr %.val.val.i694.i, null
  br i1 %.not14.i.i21, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.val.i694.i, i64 48
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !66
  %i.hp = call ptr %i.ho(ptr noundef %.0587.i, ptr noundef nonnull %i.m) #18, !inline_history !179
  %i.hq = load ptr, ptr %i.hl, align 8, !tbaa !41
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 72
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !48
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !68
  %i.hv = call ptr %i.hu(ptr noundef %.0587.i, ptr noundef nonnull %i.m) #18, !inline_history !179
  %i.hw = load i32, ptr %i.m, align 4, !tbaa !64
  %i.hx = zext i32 %i.hw to i64
  %.not.i.i.i = icmp samesign ult i64 %indvars.iv907.i, %i.hx
  br i1 %.not.i.i.i, label %bb.ah, label %af_shaper_get_elem_hb.exit.i.i22

bb.ah:                                            ; preds = %bb.ag
  %i.hy = getelementptr inbounds nuw [20 x i8], ptr %i.hv, i64 %indvars.iv907.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !180
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [20 x i8], ptr %i.hp, i64 %indvars.iv907.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !69
  %i.ie = zext i32 %i.id to i64
  br label %af_shaper_get_elem_hb.exit.i.i22

af_shaper_get_elem_hb.exit.i.i22:                 ; preds = %bb.ah, %bb.ag
  %.1723.i = phi i64 [ %i.ib, %bb.ah ], [ %.0722839.i, %bb.ag ]
  %.0.i.i.i23 = phi i64 [ %i.ie, %bb.ah ], [ 0, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  br label %af_shaper_get_elem.exit.i24

bb.ai:                                            ; preds = %bb.af
  %.val12.i.i33 = load i64, ptr %.0587.i, align 8, !tbaa !71
  br label %af_shaper_get_elem.exit.i24

af_shaper_get_elem.exit.i24:                      ; preds = %bb.ai, %af_shaper_get_elem_hb.exit.i.i22
  %.2724.i = phi i64 [ 0, %bb.ai ], [ %.1723.i, %af_shaper_get_elem_hb.exit.i.i22 ] ; 4 uses
  %.0.i695.i = phi i64 [ %.val12.i.i33, %bb.ai ], [ %.0.i.i.i23, %af_shaper_get_elem_hb.exit.i.i22 ] ; 2 uses
  %i.if = icmp eq i64 %.0.i695.i, 0
  br i1 %i.if, label %.thread759.i, label %bb.aj

bb.aj:                                            ; preds = %af_shaper_get_elem.exit.i24
  %i.ig = trunc i64 %.0.i695.i to i32
  %i.ih = call i32 @FT_Load_Glyph(ptr noundef %1, i32 noundef %i.ig, i32 noundef 1) #18
  %i.ii = load ptr, ptr %i.gr, align 8, !tbaa !72 ; 5 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 202
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !73
  %.sroa.5399.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 208
  %.sroa.5399.0.copyload.i = load ptr, ptr %.sroa.5399.0..sroa_idx.i, align 8, !tbaa !74 ; 13 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 216
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !182 ; 8 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 224
  %.sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !76
  %i.ij = icmp ne i32 %i.ih, 0
  %i.ik = icmp ult i16 %.sroa.4.0.copyload.i, 3
  %or.cond.i25 = select i1 %i.ij, i1 true, i1 %i.ik
  br i1 %or.cond.i25, label %.thread759.i, label %.preheader789.i

.preheader789.i:                                  ; preds = %bb.aj
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 200
  %.sroa.0.0.copyload.i = load i16, ptr %i.il, align 8, !tbaa !73 ; 2 uses
  %.not878.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not878.i, label %.thread776.i, label %.lr.ph831.preheader.i

.lr.ph831.preheader.i:                            ; preds = %.preheader789.i
  %wide.trip.count905.i = zext i16 %.sroa.0.0.copyload.i to i64
  br label %.lr.ph831.i

.lr.ph831.i:                                      ; preds = %bb.ap, %.lr.ph831.preheader.i
  %indvars.iv902.i = phi i64 [ 0, %.lr.ph831.preheader.i ], [ %indvars.iv.next903.i, %bb.ap ] ; 2 uses
  %.0520830.i = phi i32 [ -1, %.lr.ph831.preheader.i ], [ %i.ip, %bb.ap ]
  %.0527828.i = phi i64 [ 0, %.lr.ph831.preheader.i ], [ %.6533.i, %bb.ap ] ; 3 uses
  %.0552827.i = phi i32 [ -1, %.lr.ph831.preheader.i ], [ %.1553.i, %bb.ap ] ; 3 uses
  %.0554826.i = phi i32 [ -1, %.lr.ph831.preheader.i ], [ %.1555.i, %bb.ap ] ; 2 uses
  %.0556825.i = phi i32 [ -1, %.lr.ph831.preheader.i ], [ %.6562.i, %bb.ap ] ; 3 uses
  %.2565824.i = phi i64 [ %.1564841.i, %.lr.ph831.preheader.i ], [ %.8571.i, %bb.ap ] ; 3 uses
  %.2576823.i = phi i64 [ %.1575840.i, %.lr.ph831.preheader.i ], [ %.8582.i, %bb.ap ] ; 3 uses
  %i.im = add nsw i32 %.0520830.i, 1              ; 3 uses
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.sroa.14.0.copyload.i, i64 %indvars.iv902.i
  %i.io = load i16, ptr %i.in, align 2, !tbaa !73
  %i.ip = zext i16 %i.io to i32                   ; 4 uses
  %.not672.i = icmp slt i32 %i.im, %i.ip
  br i1 %.not672.i, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %.lr.ph831.i
  %i.iq = zext nneg i32 %i.im to i64              ; 2 uses
  %i.ir = add nuw nsw i32 %i.ip, 1
  %wide.trip.count900.i = zext nneg i32 %i.ir to i64 ; 2 uses
  br i1 %or.cond677.i, label %.lr.ph818.i, label %.lr.ph807.i

.lr.ph807.i:                                      ; preds = %bb.ak, %bb.am
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.am ], [ %i.iq, %bb.ak ] ; 3 uses
  %.1528805.i = phi i64 [ %.2529.i, %bb.am ], [ %.0527828.i, %bb.ak ] ; 2 uses
  %.1557804.i = phi i32 [ %.2558.i, %bb.am ], [ %.0556825.i, %bb.ak ] ; 2 uses
  %.3566803.i = phi i64 [ %.4567.i, %bb.am ], [ %.2565824.i, %bb.ak ] ; 2 uses
  %.3577802.i = phi i64 [ %.4578.i, %bb.am ], [ %.2576823.i, %bb.ak ] ; 2 uses
  %i.is = icmp slt i32 %.1557804.i, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %indvars.iv.i
  %.phi.trans.insert944.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert944.i, align 8, !tbaa !77 ; 3 uses
  %i.it = icmp sgt i64 %.pre.i, %.1528805.i
  %or.cond1069.i = select i1 %i.is, i1 true, i1 %i.it
  %i.iu = add nsw i64 %.pre.i, %.2724.i           ; 2 uses
  br i1 %or.cond1069.i, label %.lr.ph807._crit_edge.i, label %bb.al

.lr.ph807._crit_edge.i:                           ; preds = %.lr.ph807.i
  %i.iv = call i64 @llvm.smax.i64(i64 %.3577802.i, i64 %i.iu)
  %i.iw = trunc nsw i64 %indvars.iv.i to i32
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph807.i
  %.3566..i = call i64 @llvm.smin.i64(i64 %.3566803.i, i64 %i.iu)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph807._crit_edge.i
  %.4578.i = phi i64 [ %i.iv, %.lr.ph807._crit_edge.i ], [ %.3577802.i, %bb.al ] ; 2 uses
  %.4567.i = phi i64 [ %.3566803.i, %.lr.ph807._crit_edge.i ], [ %.3566..i, %bb.al ] ; 2 uses
  %.2558.i = phi i32 [ %i.iw, %.lr.ph807._crit_edge.i ], [ %.1557804.i, %bb.al ] ; 2 uses
  %.2529.i = phi i64 [ %.pre.i, %.lr.ph807._crit_edge.i ], [ %.1528805.i, %bb.al ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count900.i
  br i1 %exitcond.not.i, label %.loopexit783.i, label %.lr.ph807.i, !llvm.loop !183

.lr.ph818.i:                                      ; preds = %bb.ak, %bb.ao
  %indvars.iv897.i = phi i64 [ %indvars.iv.next898.i, %bb.ao ], [ %i.iq, %bb.ak ] ; 3 uses
  %.3530816.i = phi i64 [ %.4531.i, %bb.ao ], [ %.0527828.i, %bb.ak ] ; 2 uses
  %.3559815.i = phi i32 [ %.4560.i, %bb.ao ], [ %.0556825.i, %bb.ak ] ; 2 uses
  %.5568814.i = phi i64 [ %.6569.i, %bb.ao ], [ %.2565824.i, %bb.ak ] ; 2 uses
  %.5579813.i = phi i64 [ %.6580.i, %bb.ao ], [ %.2576823.i, %bb.ak ] ; 2 uses
  %i.ix = icmp slt i32 %.3559815.i, 0
  %.phi.trans.insert945.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %indvars.iv897.i
  %.phi.trans.insert946.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert945.i, i64 8
  %.pre947.i.a = load i64, ptr %.phi.trans.insert946.i, align 8, !tbaa !77 ; 3 uses
  %i.iy = icmp slt i64 %.pre947.i.a, %.3530816.i
  %or.cond1070.i = select i1 %i.ix, i1 true, i1 %i.iy
  %i.iz = add nsw i64 %.pre947.i.a, %.2724.i      ; 2 uses
  br i1 %or.cond1070.i, label %.lr.ph818._crit_edge.i, label %bb.an

.lr.ph818._crit_edge.i:                           ; preds = %.lr.ph818.i
  %i.ja = call i64 @llvm.smin.i64(i64 %.5568814.i, i64 %i.iz)
  %i.jb = trunc nsw i64 %indvars.iv897.i to i32
  br label %bb.ao

end_hunk_3
begin_hunk_4_@af_latin_metrics_init:bb.a
bb.be:                                            ; preds = %bb.bd, %._crit_edge957.i
  %.pre-phi.i = phi i64 [ %.pre958.i, %._crit_edge957.i ], [ %i.lt, %bb.bd ]
  %.1476.i = phi i32 [ %.0475.i, %._crit_edge957.i ], [ %.0469.i, %bb.bd ] ; 3 uses
  %.2460.i = phi i32 [ %.0458.i, %._crit_edge957.i ], [ %.0469..i, %bb.bd ] ; 4 uses
  %.2.i31 = phi i32 [ %.0456.i, %._crit_edge957.i ], [ %.0469..i, %bb.bd ] ; 3 uses
  %i.ly = icmp slt i32 %.0469.i, %.1553.i
  %i.lz = add nsw i32 %.0469.i, 1
  %.1470.i = select i1 %i.ly, i32 %i.lz, i32 %.1555.i ; 6 uses
  %i.ma = getelementptr inbounds [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %.pre-phi.i ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !77 ; 5 uses
  %i.md = sub nsw i64 %.6533.i, %i.mc
  %i.me = call i64 @llvm.abs.i64(i64 %i.md, i1 true)
  %i.mf = icmp samesign ugt i64 %i.me, %i.lr
  br i1 %i.mf, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mg = sext i32 %.1470.i to i64                ; 2 uses
  %i.mh = getelementptr inbounds [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %i.mg ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !77
  %i.mk = sub nsw i64 %i.mj, %i.mc
  %i.ml = call i64 @llvm.abs.i64(i64 %i.mk, i1 true) ; 2 uses
  %i.mm = icmp samesign ult i64 %i.ml, 6
  %.pre948.i = load i64, ptr %i.ma, align 8, !tbaa !82 ; 3 uses
  %.pre949.i = load i64, ptr %i.mh, align 8, !tbaa !82 ; 2 uses
  %i.mn = sub nsw i64 %.pre949.i, %.pre948.i
  %i.mo = call i64 @llvm.abs.i64(i64 %i.mn, i1 true) ; 2 uses
  %i.mp = mul nuw nsw i64 %i.ml, 20               ; 2 uses
  %.not662.i = icmp samesign ugt i64 %i.mo, %i.mp
  %or.cond1071.i = select i1 %i.mm, i1 true, i1 %.not662.i
  br i1 %or.cond1071.i, label %._crit_edge956.i, label %bb.bj

._crit_edge956.i:                                 ; preds = %bb.bf
  %i.mq = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i, i64 %i.mg
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !60
  %i.ms = and i8 %i.mr, 3
  %i.mt = icmp eq i8 %i.ms, 1                     ; 2 uses
  %i.mu = icmp slt i32 %.2460.i, 0
  %i.mv = select i1 %i.mt, i1 %i.mu, i1 false
  %.3461.i = select i1 %i.mv, i32 %.1470.i, i32 %.2460.i ; 2 uses
  %.3.i = select i1 %i.mt, i32 %.1470.i, i32 %.2.i31 ; 2 uses
  %i.mw = icmp slt i64 %.pre948.i, %.pre949.i
  %.not683.i = xor i1 %i.ls, %i.mw
  %.not663.i = icmp samesign ult i64 %i.mo, %i.kz
  %or.cond684.i = select i1 %.not683.i, i1 true, i1 %.not663.i
  br i1 %or.cond684.i, label %bb.bj, label %.preheader786.i.preheader

.preheader786.i.preheader:                        ; preds = %._crit_edge956.i
  %invariant.op = sub i64 -6, %i.mc
  br label %.preheader786.i

.preheader786.i:                                  ; preds = %.preheader786.i.preheader, %bb.bi
  %.2471.i = phi i32 [ %.3472.i, %bb.bi ], [ %.1470.i, %.preheader786.i.preheader ] ; 2 uses
  %.4462.i = phi i32 [ %.5463.i, %bb.bi ], [ %.3461.i, %.preheader786.i.preheader ] ; 3 uses
  %.4.i = phi i32 [ %.3472.i, %bb.bi ], [ %.3.i, %.preheader786.i.preheader ]
  %i.mx = icmp slt i32 %.2471.i, %.1553.i
  %i.my = add nsw i32 %.2471.i, 1
  %.3472.i = select i1 %i.mx, i32 %i.my, i32 %.1555.i ; 7 uses
  %i.mz = sext i32 %.3472.i to i64                ; 2 uses
  %i.na = getelementptr inbounds [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !77
  %.reass.i.reass.reass = add i64 %i.nc, %invariant.op
  %i.nd = icmp ult i64 %.reass.i.reass.reass, -11
  br i1 %i.nd, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %.preheader786.i
  %i.ne = load i64, ptr %i.kh, align 8, !tbaa !82
  %i.nf = sub nsw i64 %i.ne, %.pre948.i
  %i.ng = call i64 @llvm.abs.i64(i64 %i.nf, i1 true)
  %.not664.i = icmp samesign ugt i64 %i.ng, %i.mp
  br i1 %.not664.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nh = icmp sgt i32 %.3472.i, %.1555.i
  %i.ni = add nsw i32 %.3472.i, -1
  %spec.select691.i = select i1 %i.nh, i32 %i.ni, i32 %.1553.i
  br label %.thread738.i

bb.bi:                                            ; preds = %bb.bg, %.preheader786.i
  %i.nj = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i, i64 %i.mz
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !60
  %i.nl = and i8 %i.nk, 3
  %i.nm = icmp eq i8 %i.nl, 1
  %i.nn = icmp slt i32 %.4462.i, 0
  %or.cond685.i = select i1 %i.nm, i1 %i.nn, i1 false
  %.5463.i = select i1 %or.cond685.i, i32 %.3472.i, i32 %.4462.i ; 2 uses
  %.not665.i = icmp eq i32 %.3472.i, %.1507.i
  br i1 %.not665.i, label %.thread738.i, label %.preheader786.i, !llvm.loop !189

bb.bj:                                            ; preds = %._crit_edge956.i, %bb.bf, %bb.be
  %.2468.i = phi i8 [ 0, %bb.bf ], [ 0, %bb.be ], [ 1, %._crit_edge956.i ]
  %.7465.i = phi i32 [ %.2460.i, %bb.bf ], [ %.2460.i, %bb.be ], [ %.3461.i, %._crit_edge956.i ]
  %.7.i = phi i32 [ %.2.i31, %bb.bf ], [ %.2.i31, %bb.be ], [ %.3.i, %._crit_edge956.i ]
  %.not666.i = icmp eq i32 %.1470.i, %.1507.i
  br i1 %.not666.i, label %.thread738.i, label %bb.bc, !llvm.loop !190

.thread738.i:                                     ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.ba, %bb.az, %bb.ay
  %.12539.i = phi i64 [ %.6533.i, %bb.ba ], [ %.6533.i, %bb.ay ], [ %.6533.i, %bb.az ], [ %i.mc, %bb.bi ], [ %i.mc, %bb.bh ], [ %.6533.i, %bb.bj ]
  %.7513.i = phi i32 [ %.1507.i, %bb.ba ], [ %.1507.i, %bb.ay ], [ %.1507.i, %bb.az ], [ %.1476.i, %bb.bi ], [ %.1476.i, %bb.bh ], [ %.1507.i, %bb.bj ]
  %.7505.i = phi i32 [ %.1499.i, %bb.ba ], [ %.1499.i, %bb.ay ], [ %.1499.i, %bb.az ], [ %.1507.i, %bb.bi ], [ %spec.select691.i, %bb.bh ], [ %.1499.i, %bb.bj ]
  %.12497.i = phi i32 [ %.6491.i, %bb.ba ], [ %.6491.i, %bb.ay ], [ %.6491.i, %bb.az ], [ %.5463.i, %bb.bi ], [ %.4462.i, %bb.bh ], [ %.6491.i, %bb.bj ] ; 2 uses
  %.12.i = phi i32 [ %.6483.i, %bb.ba ], [ %.6483.i, %bb.ay ], [ %.6483.i, %bb.az ], [ %.1507.i, %bb.bi ], [ %.4.i, %bb.bh ], [ %.6483.i, %bb.bj ] ; 2 uses
  %i.no = add nsw i64 %.12539.i, %.2724.i         ; 3 uses
  %i.np = icmp sgt i32 %.12497.i, -1
  %i.nq = icmp sgt i32 %.12.i, -1
  %or.cond7.i = select i1 %i.np, i1 %i.nq, i1 false
  br i1 %or.cond7.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread738.i
  %i.nr = zext nneg i32 %.12.i to i64
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %i.nr
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !82
  %i.nu = zext nneg i32 %.12497.i to i64
  %i.nv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5399.0.copyload.i, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !82
  %i.nx = sub nsw i64 %i.nt, %i.nw
  %i.ny = call i64 @llvm.abs.i64(i64 %i.nx, i1 true)
  %i.nz = icmp samesign ugt i64 %i.ny, %i.gk
  br i1 %i.nz, label %.thread776.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread738.i
  %i.oa = sext i32 %.7513.i to i64
  %i.ob = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !60
  %i.od = and i8 %i.oc, 3
  %.not668.i = icmp eq i8 %i.od, 1
  br i1 %.not668.i, label %bb.bm, label %.thread771.i

bb.bm:                                            ; preds = %bb.bl
  %i.oe = sext i32 %.7505.i to i64
  %i.of = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !60
  %i.oh = and i8 %i.og, 3
  %.not.i30 = icmp eq i8 %i.oh, 1                 ; 2 uses
  %brmerge.i = select i1 %.not.i30, i1 true, i1 %.not670.i
  %not..not.i = xor i1 %.not.i30, true
  %.mux.i = zext i1 %not..not.i to i8
  br i1 %brmerge.i, label %.thread776.i, label %.thread759.i

.thread771.i:                                     ; preds = %bb.bl
  br i1 %.not670.i, label %.thread776.i, label %.thread759.i

.thread776.i:                                     ; preds = %.thread771.i, %bb.bm, %bb.bk, %._crit_edge832.i, %.preheader789.i
  %.2565.lcssa996.i = phi i64 [ %.8571.i, %._crit_edge832.i ], [ %.8571.i, %bb.bm ], [ %.8571.i, %bb.bk ], [ %.8571.i, %.thread771.i ], [ %.1564841.i, %.preheader789.i ] ; 2 uses
  %.2576.lcssa995.i = phi i64 [ %.8582.i, %._crit_edge832.i ], [ %.8582.i, %bb.bm ], [ %.8582.i, %bb.bk ], [ %.8582.i, %.thread771.i ], [ %.1575840.i, %.preheader789.i ] ; 2 uses
  %.14.i = phi i64 [ %.6533.i, %._crit_edge832.i ], [ %i.no, %bb.bm ], [ %i.no, %bb.bk ], [ %i.no, %.thread771.i ], [ 0, %.preheader789.i ] ; 4 uses
  %.2526.i = phi i8 [ 0, %._crit_edge832.i ], [ %.mux.i, %bb.bm ], [ 0, %bb.bk ], [ 1, %.thread771.i ], [ 0, %.preheader789.i ] ; 2 uses
  br i1 %.not651.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.thread776.i
  %i.oi = icmp sgt i64 %.14.i, %.1549842.i
  %spec.select687.i = call i64 @llvm.smax.i64(i64 %.14.i, i64 %.1549842.i)
  %spec.select688.i = select i1 %i.oi, i8 %.2526.i, i8 %.0545843.i
  br label %.thread759.i

bb.bo:                                            ; preds = %.thread776.i
  %i.oj = icmp slt i64 %.14.i, %.1549842.i
  %spec.select689.i = call i64 @llvm.smin.i64(i64 %.14.i, i64 %.1549842.i)
  %spec.select690.i = select i1 %i.oj, i8 %.2526.i, i8 %.0545843.i
  br label %.thread759.i

.thread759.i:                                     ; preds = %bb.bo, %bb.bn, %.thread771.i, %bb.bm, %bb.bb, %bb.aj, %af_shaper_get_elem.exit.i24
  %.9583.i = phi i64 [ %.2576.lcssa995.i, %bb.bn ], [ %.1575840.i, %af_shaper_get_elem.exit.i24 ], [ %.1575840.i, %bb.aj ], [ %.2576.lcssa995.i, %bb.bo ], [ %.8582.i, %.thread771.i ], [ %.8582.i, %bb.bb ], [ %.8582.i, %bb.bm ] ; 3 uses
  %.9572.i = phi i64 [ %.2565.lcssa996.i, %bb.bn ], [ %.1564841.i, %af_shaper_get_elem.exit.i24 ], [ %.1564841.i, %bb.aj ], [ %.2565.lcssa996.i, %bb.bo ], [ %.8571.i, %.thread771.i ], [ %.8571.i, %bb.bb ], [ %.8571.i, %bb.bm ] ; 3 uses
  %.3551.i = phi i64 [ %spec.select687.i, %bb.bn ], [ %.1549842.i, %af_shaper_get_elem.exit.i24 ], [ %.1549842.i, %bb.aj ], [ %spec.select689.i, %bb.bo ], [ %.1549842.i, %.thread771.i ], [ %.1549842.i, %bb.bb ], [ %.1549842.i, %bb.bm ] ; 3 uses
  %.2547.i = phi i8 [ %spec.select688.i, %bb.bn ], [ %.0545843.i, %af_shaper_get_elem.exit.i24 ], [ %.0545843.i, %bb.aj ], [ %spec.select690.i, %bb.bo ], [ %.0545843.i, %.thread771.i ], [ %.0545843.i, %bb.bb ], [ %.0545843.i, %bb.bm ] ; 2 uses
  %indvars.iv.next908.i = add nuw nsw i64 %indvars.iv907.i, 1 ; 2 uses
  %exitcond910.not.i = icmp eq i64 %indvars.iv.next908.i, %wide.trip.count909.i
  br i1 %exitcond910.not.i, label %._crit_edge848.i, label %bb.af, !llvm.loop !191

._crit_edge848.i:                                 ; preds = %.thread759.i
  %i.ok = add i64 %.3551.i, -9223372036854775807
  %or.cond9.i = icmp ult i64 %i.ok, 2
  br i1 %or.cond9.i, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %._crit_edge848.i
  %.not652.i = icmp eq i8 %.2547.i, 0
  br i1 %.not652.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ol = add i32 %.0589855.i, 1
  br label %.sink.split.i

bb.br:                                            ; preds = %bb.bp
  %i.om = add i32 %.0592854.i, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.br, %bb.bq
  %.0592854.sink.i = phi i32 [ %.0592854.i, %bb.br ], [ %.0589855.i, %bb.bq ]
  %.sink1072.i = phi ptr [ %i.n, %bb.br ], [ %i.o, %bb.bq ]
  %.2594.ph.i = phi i32 [ %i.om, %bb.br ], [ %.0592854.i, %bb.bq ]
  %.2591.ph.i = phi i32 [ %.0589855.i, %bb.br ], [ %i.ol, %bb.bq ]
  %i.on = zext i32 %.0592854.sink.i to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %.sink1072.i, i64 %i.on
  store i64 %.3551.i, ptr %i.oo, align 8, !tbaa !71
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split.i, %._crit_edge848.i, %._crit_edge.i20
  %.2594.i = phi i32 [ %.0592854.i, %._crit_edge.i20 ], [ %.0592854.i, %._crit_edge848.i ], [ %.2594.ph.i, %.sink.split.i ] ; 6 uses
  %.2591.i = phi i32 [ %.0589855.i, %._crit_edge.i20 ], [ %.0589855.i, %._crit_edge848.i ], [ %.2591.ph.i, %.sink.split.i ] ; 7 uses
  %.10584.i = phi i64 [ %.0574857.i, %._crit_edge.i20 ], [ %.9583.i, %._crit_edge848.i ], [ %.9583.i, %.sink.split.i ] ; 2 uses
  %.10573.i = phi i64 [ %.0563858.i, %._crit_edge.i20 ], [ %.9572.i, %._crit_edge848.i ], [ %.9572.i, %.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  %i.op = load i8, ptr %i.hd, align 1, !tbaa !60  ; 2 uses
  %.not640.i = icmp eq i8 %i.op, 0
  br i1 %.not640.i, label %._crit_edge861.i, label %bb.ae

._crit_edge861.i:                                 ; preds = %bb.bs
  %i.oq = icmp eq i32 %.2594.i, 0                 ; 2 uses
  %i.or = icmp eq i32 %.2591.i, 0                 ; 2 uses
  %or.cond11.i = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond11.i, label %._crit_edge861.thread.i, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge861.i
  %i.os = icmp ugt i32 %.2591.i, 1
  br i1 %i.os, label %.lr.ph.preheader.i.preheader.i, label %af_sort_pos.exit.i

.lr.ph.preheader.i.preheader.i:                   ; preds = %bb.bt
  %i.ot = zext i32 %.2591.i to i64
  %i.ou = add nsw i64 %i.ot, -1                   ; 3 uses
  %xtraiter = and i64 %i.ou, 1
  %i.ov = icmp eq i32 %.2591.i, 2
  br i1 %i.ov, label %.lr.ph.preheader.i.i.epil.preheader, label %.lr.ph.preheader.i.preheader.i.new

.lr.ph.preheader.i.preheader.i.new:               ; preds = %.lr.ph.preheader.i.preheader.i
  %unroll_iter = and i64 %i.ou, -2
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i.i.1, %.lr.ph.preheader.i.preheader.i.new
  %indvars.iv911.i = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i.new ], [ %indvars.iv.next912.i.1, %._crit_edge.i.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.i.1 ]
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv911.i
  %.pre.i696.i = load i64, ptr %.phi.trans.insert27.i.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %.lr.ph.preheader.i.i
  %indvars.iv913.i = phi i64 [ %indvars.iv911.i, %.lr.ph.preheader.i.i ], [ %i.ow, %bb.bu ] ; 2 uses
  %i.ow = add nsw i64 %indvars.iv913.i, -1        ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ow ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i = icmp slt i64 %.pre.i696.i, %i.oy
  br i1 %.not21.i.i, label %bb.bu, label %._crit_edge.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !71
  store i64 %.pre.i696.i, ptr %i.ox, align 8, !tbaa !71
  %.not.i.wide.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i.wide.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !85

._crit_edge.i.i:                                  ; preds = %bb.bu, %.lr.ph.i.i
  %indvars.iv.next912.i = add nuw nsw i64 %indvars.iv911.i, 1 ; 2 uses
  %.phi.trans.insert27.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next912.i
  %.pre.i696.i.1 = load i64, ptr %.phi.trans.insert27.i.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bv, %._crit_edge.i.i
  %indvars.iv913.i.1 = phi i64 [ %indvars.iv.next912.i, %._crit_edge.i.i ], [ %i.pa, %bb.bv ] ; 2 uses
  %i.pa = add nsw i64 %indvars.iv913.i.1, -1      ; 3 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.pa ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.1 = icmp slt i64 %.pre.i696.i.1, %i.pc
  br i1 %.not21.i.i.1, label %bb.bv, label %._crit_edge.i.i.1

bb.bv:                                            ; preds = %.lr.ph.i.i.1
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i.1
  store i64 %i.pc, ptr %i.pd, align 8, !tbaa !71
  store i64 %.pre.i696.i.1, ptr %i.pb, align 8, !tbaa !71
  %.not.i.wide.i.1 = icmp eq i64 %i.pa, 0
  br i1 %.not.i.wide.i.1, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1, !llvm.loop !85

._crit_edge.i.i.1:                                ; preds = %bb.bv, %.lr.ph.i.i.1
  %indvars.iv.next912.i.1 = add nuw nsw i64 %indvars.iv911.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %af_sort_pos.exit.i.loopexit.unr-lcssa, label %.lr.ph.preheader.i.i, !llvm.loop !86

af_sort_pos.exit.i.loopexit.unr-lcssa:            ; preds = %._crit_edge.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %af_sort_pos.exit.i, label %.lr.ph.preheader.i.i.epil.preheader

.lr.ph.preheader.i.i.epil.preheader:              ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.preheader.i
  %indvars.iv911.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.preheader.i ], [ %indvars.iv.next912.i.1, %af_sort_pos.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod295 = trunc i64 %i.ou to i1
  call void @llvm.assume(i1 %lcmp.mod295)
  %.phi.trans.insert27.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv911.i.epil.init
  %.pre.i696.i.epil = load i64, ptr %.phi.trans.insert27.i.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.bw, %.lr.ph.preheader.i.i.epil.preheader
  %indvars.iv913.i.epil = phi i64 [ %indvars.iv911.i.epil.init, %.lr.ph.preheader.i.i.epil.preheader ], [ %i.pe, %bb.bw ] ; 2 uses
  %i.pe = add nsw i64 %indvars.iv913.i.epil, -1   ; 3 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.pe ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !71 ; 2 uses
  %.not21.i.i.epil = icmp slt i64 %.pre.i696.i.epil, %i.pg
  br i1 %.not21.i.i.epil, label %bb.bw, label %af_sort_pos.exit.i

bb.bw:                                            ; preds = %.lr.ph.i.i.epil
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv913.i.epil
  store i64 %i.pg, ptr %i.ph, align 8, !tbaa !71
  store i64 %.pre.i696.i.epil, ptr %i.pf, align 8, !tbaa !71
  %.not.i.wide.i.epil = icmp eq i64 %i.pe, 0
  br i1 %.not.i.wide.i.epil, label %af_sort_pos.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !85

af_sort_pos.exit.i:                               ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %bb.bw, %.lr.ph.i.i.epil, %bb.bt
  %i.pi = icmp ugt i32 %.2594.i, 1
  br i1 %i.pi, label %.lr.ph.preheader.i697.preheader.i, label %af_sort_pos.exit708.i

.lr.ph.preheader.i697.preheader.i:                ; preds = %af_sort_pos.exit.i
  %i.pj = zext i32 %.2594.i to i64
  %i.pk = add nsw i64 %i.pj, -1                   ; 3 uses
  %xtraiter296 = and i64 %i.pk, 1
  %i.pl = icmp eq i32 %.2594.i, 2
  br i1 %i.pl, label %.lr.ph.preheader.i697.i.epil.preheader, label %.lr.ph.preheader.i697.preheader.i.new

.lr.ph.preheader.i697.preheader.i.new:            ; preds = %.lr.ph.preheader.i697.preheader.i
  %unroll_iter299 = and i64 %i.pk, -2
  br label %.lr.ph.preheader.i697.i

.lr.ph.preheader.i697.i:                          ; preds = %._crit_edge.i705.i.1, %.lr.ph.preheader.i697.preheader.i.new
  %indvars.iv917.i = phi i64 [ 1, %.lr.ph.preheader.i697.preheader.i.new ], [ %indvars.iv.next918.i.1, %._crit_edge.i705.i.1 ] ; 4 uses
  %niter300 = phi i64 [ 0, %.lr.ph.preheader.i697.preheader.i.new ], [ %niter300.next.1, %._crit_edge.i705.i.1 ]
  %.phi.trans.insert27.i700.i = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv917.i
  %.pre.i701.i = load i64, ptr %.phi.trans.insert27.i700.i, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i702.i

.lr.ph.i702.i:                                    ; preds = %bb.bx, %.lr.ph.preheader.i697.i
  %indvars.iv919.i = phi i64 [ %indvars.iv917.i, %.lr.ph.preheader.i697.i ], [ %i.pm, %bb.bx ] ; 2 uses
  %i.pm = add nsw i64 %indvars.iv919.i, -1        ; 3 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pm ; 2 uses
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !71 ; 2 uses
  %.not21.i704.i = icmp slt i64 %.pre.i701.i, %i.po
  br i1 %.not21.i704.i, label %bb.bx, label %._crit_edge.i705.i

bb.bx:                                            ; preds = %.lr.ph.i702.i
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i
  store i64 %i.po, ptr %i.pp, align 8, !tbaa !71
  store i64 %.pre.i701.i, ptr %i.pn, align 8, !tbaa !71
  %.not.i707.wide.i = icmp eq i64 %i.pm, 0
  br i1 %.not.i707.wide.i, label %._crit_edge.i705.i, label %.lr.ph.i702.i, !llvm.loop !85

._crit_edge.i705.i:                               ; preds = %bb.bx, %.lr.ph.i702.i
  %indvars.iv.next918.i = add nuw nsw i64 %indvars.iv917.i, 1 ; 2 uses
  %.phi.trans.insert27.i700.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next918.i
  %.pre.i701.i.1 = load i64, ptr %.phi.trans.insert27.i700.i.1, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i702.i.1

.lr.ph.i702.i.1:                                  ; preds = %bb.by, %._crit_edge.i705.i
  %indvars.iv919.i.1 = phi i64 [ %indvars.iv.next918.i, %._crit_edge.i705.i ], [ %i.pq, %bb.by ] ; 2 uses
  %i.pq = add nsw i64 %indvars.iv919.i.1, -1      ; 3 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pq ; 2 uses
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !71 ; 2 uses
  %.not21.i704.i.1 = icmp slt i64 %.pre.i701.i.1, %i.ps
  br i1 %.not21.i704.i.1, label %bb.by, label %._crit_edge.i705.i.1

bb.by:                                            ; preds = %.lr.ph.i702.i.1
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i.1
  store i64 %i.ps, ptr %i.pt, align 8, !tbaa !71
  store i64 %.pre.i701.i.1, ptr %i.pr, align 8, !tbaa !71
  %.not.i707.wide.i.1 = icmp eq i64 %i.pq, 0
  br i1 %.not.i707.wide.i.1, label %._crit_edge.i705.i.1, label %.lr.ph.i702.i.1, !llvm.loop !85

._crit_edge.i705.i.1:                             ; preds = %bb.by, %.lr.ph.i702.i.1
  %indvars.iv.next918.i.1 = add nuw nsw i64 %indvars.iv917.i, 2 ; 2 uses
  %niter300.next.1 = add i64 %niter300, 2         ; 2 uses
  %niter300.ncmp.1 = icmp eq i64 %niter300.next.1, %unroll_iter299
  br i1 %niter300.ncmp.1, label %af_sort_pos.exit708.thread.i.unr-lcssa, label %.lr.ph.preheader.i697.i, !llvm.loop !86

af_sort_pos.exit708.thread.i.unr-lcssa:           ; preds = %._crit_edge.i705.i.1
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %af_sort_pos.exit708.i, label %.lr.ph.preheader.i697.i.epil.preheader

.lr.ph.preheader.i697.i.epil.preheader:           ; preds = %af_sort_pos.exit708.thread.i.unr-lcssa, %.lr.ph.preheader.i697.preheader.i
  %indvars.iv917.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i697.preheader.i ], [ %indvars.iv.next918.i.1, %af_sort_pos.exit708.thread.i.unr-lcssa ] ; 2 uses
  %lcmp.mod298 = trunc i64 %i.pk to i1
  call void @llvm.assume(i1 %lcmp.mod298)
  %.phi.trans.insert27.i700.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv917.i.epil.init
  %.pre.i701.i.epil = load i64, ptr %.phi.trans.insert27.i700.i.epil, align 8, !tbaa !71 ; 2 uses
  br label %.lr.ph.i702.i.epil

.lr.ph.i702.i.epil:                               ; preds = %bb.bz, %.lr.ph.preheader.i697.i.epil.preheader
  %indvars.iv919.i.epil = phi i64 [ %indvars.iv917.i.epil.init, %.lr.ph.preheader.i697.i.epil.preheader ], [ %i.pu, %bb.bz ] ; 2 uses
  %i.pu = add nsw i64 %indvars.iv919.i.epil, -1   ; 3 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.pu ; 2 uses
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !71 ; 2 uses
  %.not21.i704.i.epil = icmp slt i64 %.pre.i701.i.epil, %i.pw
  br i1 %.not21.i704.i.epil, label %bb.bz, label %af_sort_pos.exit708.i

bb.bz:                                            ; preds = %.lr.ph.i702.i.epil
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv919.i.epil
  store i64 %i.pw, ptr %i.px, align 8, !tbaa !71
  store i64 %.pre.i701.i.epil, ptr %i.pv, align 8, !tbaa !71
  %.not.i707.wide.i.epil = icmp eq i64 %i.pu, 0
  br i1 %.not.i707.wide.i.epil, label %af_sort_pos.exit708.i, label %.lr.ph.i702.i.epil, !llvm.loop !85

af_sort_pos.exit708.i:                            ; preds = %af_sort_pos.exit708.thread.i.unr-lcssa, %bb.bz, %.lr.ph.i702.i.epil, %af_sort_pos.exit.i
  %i.py = load i32, ptr %i.gt, align 4, !tbaa !192 ; 2 uses
  %i.pz = zext i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw [72 x i8], ptr %i.gs, i64 %i.pz ; 6 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 24 ; 2 uses
  %i.qc = add i32 %i.py, 1
  store i32 %i.qc, ptr %i.gt, align 4, !tbaa !192
  %.pre941.i.pre.pre = load i16, ptr %i.gy, align 4, !tbaa !59 ; 4 uses
  br i1 %i.oq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %af_sort_pos.exit708.i
  %i.qd = lshr i32 %.2591.i, 1
  %i.qe = zext nneg i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !71
  br label %bb.ce

bb.cb:                                            ; preds = %af_sort_pos.exit708.i
  %i.qh = lshr i32 %.2594.i, 1
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.qi
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !71 ; 5 uses
  br i1 %i.or, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i64 %i.qk, ptr %i.qa, align 8, !tbaa !71
  %i.ql = lshr i32 %.2591.i, 1
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.qm
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !71 ; 4 uses
  store i64 %i.qo, ptr %i.qb, align 8, !tbaa !71
  %.not641.i = icmp eq i64 %i.qo, %i.qk
  br i1 %.not641.i, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qp = and i16 %.pre941.i.pre.pre, 3
  %i.qq = icmp ne i16 %i.qp, 0
  %i.qr = icmp sle i64 %i.qo, %i.qk
  %.not643.i = xor i1 %i.qr, %i.qq
  br i1 %.not643.i, label %bb.cf, label %4

4:                                                ; preds = %bb.cd
  %5 = add nsw i64 %i.qo, %i.qk
  %6 = sdiv i64 %5, 2
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ca, %bb.cb, %4
  %.sink1046.i.sink189 = phi i64 [ %6, %4 ], [ %i.qg, %bb.ca ], [ %i.qk, %bb.cb ] ; 2 uses
  store i64 %.sink1046.i.sink189, ptr %i.qb, align 8, !tbaa !71
  store i64 %.sink1046.i.sink189, ptr %i.qa, align 8, !tbaa !71
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc, %bb.cd
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  store i64 %.10584.i, ptr %i.qs, align 8, !tbaa !193
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qa, i64 56
  store i64 %.10573.i, ptr %i.qt, align 8, !tbaa !195
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qa, i64 64 ; 2 uses
  %i.qv = shl i16 %.pre941.i.pre.pre, 1
  %spec.select10741076.i = and i16 %i.qv, 14
  %i.qw = and i16 %.pre941.i.pre.pre, 96
  %i.qx = or disjoint i16 %spec.select10741076.i, %i.qw
  %i.qy = zext nneg i16 %i.qx to i32              ; 2 uses
  store i32 %i.qy, ptr %i.qu, align 8
  %i.qz = and i16 %.pre941.i.pre.pre, 8
  %.not649.i = icmp eq i16 %i.qz, 0
  br i1 %.not649.i, label %._crit_edge861.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ra = or disjoint i32 %i.qy, 16
  store i32 %i.ra, ptr %i.qu, align 8, !tbaa !196
  br label %._crit_edge861.thread.i

._crit_edge861.thread.i:                          ; preds = %bb.cg, %bb.cf, %._crit_edge861.i, %bb.ad
  %i.rb = getelementptr inbounds nuw i8, ptr %.0588867.i, i64 8 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !57 ; 2 uses
  %.not636.i = icmp eq i32 %i.rc, 5531
  br i1 %.not636.i, label %._crit_edge869.i, label %bb.ad, !llvm.loop !197

._crit_edge869.i:                                 ; preds = %._crit_edge861.thread.i, %af_shaper_buf_create.exit.i19
  %i.rd = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.re = getelementptr i8, ptr %i.rd, i64 816
  %.val.i709.i = load ptr, ptr %i.re, align 8, !tbaa !41
  %i.rf = getelementptr i8, ptr %.val.i709.i, i64 72
  %.val.val.i710.i = load ptr, ptr %i.rf, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i26 = icmp eq ptr %.val.val.i710.i, null
  br i1 %.not6.i.i26, label %af_shaper_buf_destroy.exit.i28, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge869.i
  %i.rg = getelementptr i8, ptr %.val.val.i710.i, i64 40
  %.val5.val.val.i.i27 = load ptr, ptr %i.rg, align 8, !tbaa !90
  call void %.val5.val.val.i.i27(ptr noundef %.0587.i) #18, !inline_history !198
  br label %af_shaper_buf_destroy.exit.i28

af_shaper_buf_destroy.exit.i28:                   ; preds = %bb.ch, %._crit_edge869.i
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 1540
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !192 ; 5 uses
  %.not637.i = icmp eq i32 %i.ri, 0
  br i1 %.not637.i, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %af_shaper_buf_destroy.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 3 uses
  %wide.trip.count926.i.a = zext i32 %i.ri to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.ri, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ci
  %n.vec = and i64 %wide.trip.count926.i.a, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [72 x i8], ptr %i.rj, <2 x i64> %vec.ind
  %wide.gep212 = getelementptr inbounds nuw [72 x i8], ptr %i.rj, <2 x i64> %step.add
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store <2 x ptr> %wide.gep, ptr %i.rk, align 16, !tbaa !199
  store <2 x ptr> %wide.gep212, ptr %i.rl, align 16, !tbaa !199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.rm = icmp eq i64 %index.next, %n.vec
  br i1 %i.rm, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count926.i.a
  br i1 %cmp.n, label %.loopexit270, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.ci, %middle.block
  %indvars.iv923.i.ph = phi i64 [ 0, %bb.ci ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv923.i.a = phi i64 [ %indvars.iv.next924.i.a, %scalar.ph ], [ %indvars.iv923.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.rn = getelementptr inbounds nuw [72 x i8], ptr %i.rj, i64 %indvars.iv923.i.a
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv923.i.a
  store ptr %i.rn, ptr %i.ro, align 8, !tbaa !199
  %indvars.iv.next924.i.a = add nuw nsw i64 %indvars.iv923.i.a, 1 ; 2 uses
  %exitcond927.not.i.a = icmp eq i64 %indvars.iv.next924.i.a, %wide.trip.count926.i.a
  br i1 %exitcond927.not.i.a, label %.loopexit270, label %scalar.ph, !llvm.loop !204

.loopexit270:                                     ; preds = %scalar.ph, %middle.block
  %.not781.i = icmp eq i32 %i.ri, 1
  br i1 %.not781.i, label %.loopexit, label %.lr.ph.preheader.i711.i

.lr.ph.preheader.i711.i:                          ; preds = %.loopexit270, %._crit_edge.i715.i
  %indvars.iv928.i.a = phi i64 [ %indvars.iv.next929.i.a, %._crit_edge.i715.i ], [ 1, %.loopexit270 ] ; 3 uses
  %.phi.trans.insert42.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv928.i.a
  %.pre.i713.i = load ptr, ptr %.phi.trans.insert42.i.i, align 8, !tbaa !199 ; 3 uses
  %.phi.trans.insert43.i.i = getelementptr inbounds nuw i8, ptr %.pre.i713.i, i64 64
  %.pre44.i.i = load i32, ptr %.phi.trans.insert43.i.i, align 8, !tbaa !196
  %i.rp = and i32 %.pre44.i.i, 6
  %.not34.i.i = icmp eq i32 %i.rp, 0
  %.029.in.idx.i.i = select i1 %.not34.i.i, i64 24, i64 0
  %.029.in.i.i = getelementptr inbounds nuw i8, ptr %.pre.i713.i, i64 %.029.in.idx.i.i
  %.029.i.i = load i64, ptr %.029.in.i.i, align 8, !tbaa !71
  br label %.lr.ph.i714.i

.lr.ph.i714.i:                                    ; preds = %bb.cj, %.lr.ph.preheader.i711.i
  %indvars.iv930.i = phi i64 [ %indvars.iv928.i.a, %.lr.ph.preheader.i711.i ], [ %i.rq, %bb.cj ] ; 2 uses
  %i.rq = add nsw i64 %indvars.iv930.i, -1        ; 3 uses
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.rq ; 2 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !199 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 64
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !196
  %i.rv = and i32 %i.ru, 6
  %.not33.i.i = icmp eq i32 %i.rv, 0
  %.030.in.idx.i.i = select i1 %.not33.i.i, i64 24, i64 0
  %.030.in.i.i = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.030.in.idx.i.i
  %.030.i.i = load i64, ptr %.030.in.i.i, align 8, !tbaa !71
  %.not35.i.i = icmp slt i64 %.029.i.i, %.030.i.i
  br i1 %.not35.i.i, label %bb.cj, label %._crit_edge.i715.i

bb.cj:                                            ; preds = %.lr.ph.i714.i
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv930.i
  store ptr %i.rs, ptr %i.rw, align 8, !tbaa !199
  store ptr %.pre.i713.i, ptr %i.rr, align 8, !tbaa !199
  %.not.i717.wide.i = icmp eq i64 %i.rq, 0
  br i1 %.not.i717.wide.i, label %._crit_edge.i715.i, label %.lr.ph.i714.i, !llvm.loop !205

._crit_edge.i715.i:                               ; preds = %bb.cj, %.lr.ph.i714.i
  %indvars.iv.next929.i.a = add nuw nsw i64 %indvars.iv928.i.a, 1 ; 2 uses
  %exitcond.not.i716.i = icmp eq i64 %indvars.iv.next929.i.a, %wide.trip.count926.i.a
  br i1 %exitcond.not.i716.i, label %af_latin_sort_blue.exit.i, label %.lr.ph.preheader.i711.i, !llvm.loop !206

af_latin_sort_blue.exit.i:                        ; preds = %._crit_edge.i715.i
  %i.rx = add i32 %i.ri, -1
  %wide.trip.count937.i = zext i32 %i.rx to i64
  %.pre953.i = load ptr, ptr %i.r, align 16, !tbaa !199 ; 2 uses
  %.phi.trans.insert954.i = getelementptr inbounds nuw i8, ptr %.pre953.i, i64 64
  %.pre955.i = load i32, ptr %.phi.trans.insert954.i, align 8, !tbaa !196
  br label %.lr.ph872.i

.lr.ph872.i:                                      ; preds = %bb.cl, %af_latin_sort_blue.exit.i
  %i.ry = phi i32 [ %.pre955.i, %af_latin_sort_blue.exit.i ], [ %i.se, %bb.cl ]
  %i.rz = phi ptr [ %.pre953.i, %af_latin_sort_blue.exit.i ], [ %i.sc, %bb.cl ]
  %indvars.iv934.i = phi i64 [ 0, %af_latin_sort_blue.exit.i ], [ %indvars.iv.next935.i, %bb.cl ]
  %i.sa = and i32 %i.ry, 6
  %.not638.i = icmp eq i32 %i.sa, 0
  %.0454.idx.i = select i1 %.not638.i, i64 0, i64 24
  %.0454.i = getelementptr inbounds nuw i8, ptr %i.rz, i64 %.0454.idx.i ; 2 uses
  %indvars.iv.next935.i = add nuw nsw i64 %indvars.iv934.i, 1 ; 3 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next935.i
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !199 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 64
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !196 ; 2 uses
  %i.sf = and i32 %i.se, 6
  %.not639.i = icmp eq i32 %i.sf, 0
  %.0453.idx.i = select i1 %.not639.i, i64 0, i64 24
  %.0453.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 %.0453.idx.i
  %i.sg = load i64, ptr %.0454.i, align 8, !tbaa !71
  %i.sh = load i64, ptr %.0453.i, align 8, !tbaa !71 ; 2 uses
  %i.si = icmp sgt i64 %i.sg, %i.sh
  br i1 %i.si, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph872.i
  store i64 %i.sh, ptr %.0454.i, align 8, !tbaa !71
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph872.i
  %exitcond938.not.i = icmp eq i64 %indvars.iv.next935.i, %wide.trip.count937.i
  br i1 %exitcond938.not.i, label %.loopexit, label %.lr.ph872.i, !llvm.loop !207

bb.cm:                                            ; preds = %af_shaper_buf_destroy.exit.i28
  %i.sj = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !208 ; 21 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !209 ; 4 uses
  %.not882.i = icmp eq i32 %i.sn, 0
  br i1 %.not882.i, label %af_latin_metrics_init_blues.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.cm
  %i.so = load i32, ptr %i.gd, align 4, !tbaa !210 ; 3 uses
  %wide.trip.count942.i = zext i32 %i.sn to i64   ; 6 uses
  %min.iters.check214 = icmp ult i32 %i.sn, 4
  br i1 %min.iters.check214, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check215 = icmp ult i32 %i.sn, 16
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check
  %i.sp = and i64 %wide.trip.count942.i, 12
  %n.vec217 = and i64 %wide.trip.count942.i, 4294967280 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.so, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %pred.store.continue250, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next251, %pred.store.continue250 ] ; 17 uses
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219 ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %wide.load = load <8 x i16>, ptr %i.sq, align 2, !tbaa !73
  %wide.load220 = load <8 x i16>, ptr %i.sr, align 2, !tbaa !73
  %i.ss = and <8 x i16> %wide.load, splat (i16 8191)
  %i.st = and <8 x i16> %wide.load220, splat (i16 8191)
  %i.su = zext nneg <8 x i16> %i.ss to <8 x i32>
  %i.sv = zext nneg <8 x i16> %i.st to <8 x i32>
  %i.sw = icmp eq <8 x i32> %broadcast.splat, %i.su ; 8 uses
  %i.sx = icmp eq <8 x i32> %broadcast.splat, %i.sv ; 8 uses
  %i.sy = extractelement <8 x i1> %i.sw, i64 0
  br i1 %i.sy, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body218
  store i16 66, ptr %i.sq, align 2, !tbaa !73
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body218
  %i.sz = extractelement <8 x i1> %i.sw, i64 1
  br i1 %i.sz, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 2
  store i16 66, ptr %i.tb, align 2, !tbaa !73
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue
  %i.tc = extractelement <8 x i1> %i.sw, i64 2
  br i1 %i.tc, label %pred.store.if223, label %pred.store.continue224

pred.store.if223:                                 ; preds = %pred.store.continue222
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  store i16 66, ptr %i.te, align 2, !tbaa !73
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.if223, %pred.store.continue222
  %i.tf = extractelement <8 x i1> %i.sw, i64 3
  br i1 %i.tf, label %pred.store.if225, label %pred.store.continue226

pred.store.if225:                                 ; preds = %pred.store.continue224
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 6
  store i16 66, ptr %i.th, align 2, !tbaa !73
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.if225, %pred.store.continue224
  %i.ti = extractelement <8 x i1> %i.sw, i64 4
  br i1 %i.ti, label %pred.store.if227, label %pred.store.continue228

pred.store.if227:                                 ; preds = %pred.store.continue226
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i16 66, ptr %i.tk, align 2, !tbaa !73
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.if227, %pred.store.continue226
  %i.tl = extractelement <8 x i1> %i.sw, i64 5
  br i1 %i.tl, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue228
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 10
  store i16 66, ptr %i.tn, align 2, !tbaa !73
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue228
  %i.to = extractelement <8 x i1> %i.sw, i64 6
  br i1 %i.to, label %pred.store.if231, label %pred.store.continue232

pred.store.if231:                                 ; preds = %pred.store.continue230
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  store i16 66, ptr %i.tq, align 2, !tbaa !73
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.if231, %pred.store.continue230
  %i.tr = extractelement <8 x i1> %i.sw, i64 7
  br i1 %i.tr, label %pred.store.if233, label %pred.store.continue234

pred.store.if233:                                 ; preds = %pred.store.continue232
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 14
  store i16 66, ptr %i.tt, align 2, !tbaa !73
  br label %pred.store.continue234

pred.store.continue234:                           ; preds = %pred.store.if233, %pred.store.continue232
  %i.tu = extractelement <8 x i1> %i.sx, i64 0
  br i1 %i.tu, label %pred.store.if235, label %pred.store.continue236

pred.store.if235:                                 ; preds = %pred.store.continue234
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store i16 66, ptr %i.tw, align 2, !tbaa !73
  br label %pred.store.continue236

pred.store.continue236:                           ; preds = %pred.store.if235, %pred.store.continue234
  %i.tx = extractelement <8 x i1> %i.sx, i64 1
  br i1 %i.tx, label %pred.store.if237, label %pred.store.continue238

pred.store.if237:                                 ; preds = %pred.store.continue236
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.sl, i64 %index219
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 18
  store i16 66, ptr %i.tz, align 2, !tbaa !73
  br label %pred.store.continue238

pred.store.continue238:                           ; preds = %pred.store.if237, %pred.store.continue236
  %i.ua = extractelement <8 x i1> %i.sx, i64 2
end_hunk_4
begin_hunk_5_@af_latin_hints_link_segments:bb.a

bb.f:                                             ; preds = %bb.l, %.preheader103.us.us
  %.078104.us.us.us = phi ptr [ %i.e, %.preheader103.us.us ], [ %i.bk, %bb.l ] ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !169 ; 2 uses
  %i.an = sext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !465
  %i.aq = sext i8 %i.ap to i32
  %i.ar = sub nsw i32 0, %i.aq
  %i.as = icmp eq i32 %i.y, %i.ar
  %i.at = icmp sgt i16 %i.am, %i.af
  %or.cond.us.us.us = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond.us.us.us, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.au = load i16, ptr %i.ah, align 2, !tbaa !457
  %i.av = load i16, ptr %i.ai, align 8, !tbaa !458
  %i.aw = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 6
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !457
  %spec.select.us.us.us = tail call i16 @llvm.smax.i16(i16 %i.au, i16 %i.ax)
  %.077.us.us.us = sext i16 %spec.select.us.us.us to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 8
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !458
  %.076.in.us.us.us = tail call i16 @llvm.smin.i16(i16 %i.av, i16 %i.az)
  %.076.us.us.us = sext i16 %.076.in.us.us.us to i64
  %i.ba = sub nsw i64 %.076.us.us.us, %.077.us.us.us ; 2 uses
  %.not101.us.us.us = icmp slt i64 %i.ba, %spec.store.select
  br i1 %.not101.us.us.us, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = sub nsw i64 %i.an, %i.ag
  %i.bc = udiv i64 %i.v, %i.ba
  %i.bd = add nsw i64 %i.bc, %i.bb                ; 4 uses
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !469
  %i.bf = icmp slt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !469
  store ptr %.078104.us.us.us, ptr %i.ak, align 8, !tbaa !168
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 48 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !469
  %i.bi = icmp slt i64 %i.bd, %i.bh
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !469
  %i.bj = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 32
  store ptr %.079105.us.us, ptr %i.bj, align 8, !tbaa !168
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 80 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.i
  br i1 %i.bl, label %bb.f, label %..loopexit_crit_edge.split.us.us.us, !llvm.loop !470

.lr.ph108.split.us.split:                         ; preds = %.lr.ph108.split.us, %..loopexit_crit_edge.split.us116
  %.079105.us = phi ptr [ %i.cx, %..loopexit_crit_edge.split.us116 ], [ %i.e, %.lr.ph108.split.us ] ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.079105.us, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !465
  %i.bo = sext i8 %i.bn to i32
  %.not100.us = icmp eq i32 %i.y, %i.bo
  br i1 %.not100.us, label %.preheader103.us, label %..loopexit_crit_edge.split.us116

bb.m:                                             ; preds = %.preheader103.us, %bb.v
  %.078104.us109 = phi ptr [ %i.e, %.preheader103.us ], [ %i.cv, %bb.v ] ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !169 ; 2 uses
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !465
  %i.bu = sext i8 %i.bt to i32
  %i.bv = sub nsw i32 0, %i.bu
  %i.bw = icmp eq i32 %i.y, %i.bv
  %i.bx = icmp sgt i16 %i.bq, %i.da
  %or.cond.us110 = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.us110, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.by = load i16, ptr %i.dc, align 2, !tbaa !457
  %i.bz = load i16, ptr %i.dd, align 8, !tbaa !458
  %i.ca = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 6
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !457
  %spec.select.us111 = tail call i16 @llvm.smax.i16(i16 %i.by, i16 %i.cb)
  %.077.us112 = sext i16 %spec.select.us111 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 8
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !458
  %.076.in.us113 = tail call i16 @llvm.smin.i16(i16 %i.bz, i16 %i.cd)
  %.076.us114 = sext i16 %.076.in.us113 to i64
  %i.ce = sub nsw i64 %.076.us114, %.077.us112    ; 2 uses
  %.not101.us115 = icmp slt i64 %i.ce, %spec.store.select
  br i1 %.not101.us115, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = sub nsw i64 %i.br, %i.db
  %i.cg = shl nsw i64 %i.cf, 10
  %i.ch = sdiv i64 %i.cg, %.081                   ; 3 uses
  %i.ci = add nsw i64 %i.ch, -1024                ; 2 uses
  %i.cj = icmp sgt i64 %i.ch, 11024
  br i1 %i.cj, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp sgt i64 %i.ch, 1024
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = mul nuw nsw i64 %i.ci, %i.ci
  %.lhs.trunc.us = trunc nuw nsw i64 %i.cl to i32
  %i.cm = udiv i32 %.lhs.trunc.us, 3000
  %.zext.us = zext nneg i32 %i.cm to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.1.us = phi i64 [ 0, %bb.p ], [ 32000, %bb.o ], [ %.zext.us, %bb.q ]
  %i.cn = udiv i64 %i.v, %i.ce
  %i.co = add nuw nsw i64 %i.cn, %.1.us           ; 4 uses
  %i.cp = load i64, ptr %i.de, align 8, !tbaa !469
  %i.cq = icmp slt i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 %i.co, ptr %i.de, align 8, !tbaa !469
  store ptr %.078104.us109, ptr %i.df, align 8, !tbaa !168
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 48 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !469
  %i.ct = icmp slt i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !469
  %i.cu = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 32
  store ptr %.079105.us, ptr %i.cu, align 8, !tbaa !168
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.n, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 80 ; 2 uses
  %i.cw = icmp ult ptr %i.cv, %i.i
  br i1 %i.cw, label %bb.m, label %..loopexit_crit_edge.split.us116, !llvm.loop !470

..loopexit_crit_edge.split.us116:                 ; preds = %bb.v, %.lr.ph108.split.us.split
  %i.cx = getelementptr inbounds nuw i8, ptr %.079105.us, i64 80 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %i.i
  br i1 %i.cy, label %.lr.ph108.split.us.split, label %.lr.ph.preheader, !llvm.loop !468

.preheader103.us:                                 ; preds = %.lr.ph108.split.us.split
  %i.cz = getelementptr inbounds nuw i8, ptr %.079105.us, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !169 ; 2 uses
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.079105.us, i64 6
  %i.dd = getelementptr inbounds nuw i8, ptr %.079105.us, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.079105.us, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.079105.us, i64 32
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.180118 = phi ptr [ %i.dm, %bb.y ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.180118, i64 32 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !168 ; 2 uses
  %.not98 = icmp eq ptr %i.dh, null
  br i1 %.not98, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !168
  %.not99 = icmp eq ptr %i.dj, %.180118
  br i1 %.not99, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.dg, align 8, !tbaa !168
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !168
  %i.dl = getelementptr inbounds nuw i8, ptr %.180118, i64 40
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !471
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.x, %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %.180118, i64 80 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.i
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !472

._crit_edge:                                      ; preds = %bb.y, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @af_sort_and_quantize_widths(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 0, 42949673) %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !64
  switch i32 %i.a, label %.lr.ph.preheader [
    i32 1, label %bb.i
    i32 0, label %._crit_edge101
  ]

.lr.ph.preheader:                                 ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 1, %bb.a ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv106 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next107, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv106 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1 ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next107 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !170
  %.not77 = icmp slt i64 %i.c, %i.e
  br i1 %.not77, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load <3 x i64>, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !473
  store <3 x i64> %.sroa.0.0.copyload, ptr %i.d, align 8
  %.not76 = icmp eq i64 %indvars.iv.next107, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph, !llvm.loop !474

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.pre = load i32, ptr %0, align 4, !tbaa !64    ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %3 = icmp ugt i32 %.pre, %indvars
  br i1 %3, label %.lr.ph.preheader, label %._crit_edge85, !llvm.loop !475

._crit_edge85:                                    ; preds = %._crit_edge
  %i.f = icmp ugt i32 %.pre, 1
  br i1 %i.f, label %.lr.ph97, label %._crit_edge101

.lr.ph97:                                         ; preds = %._crit_edge85
  %i.g = load i64, ptr %1, align 8, !tbaa !170
  %i.h = add i32 %.pre, -1                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph97, %bb.f
  %.06595 = phi i64 [ %i.g, %.lr.ph97 ], [ %.1, %bb.f ] ; 3 uses
  %.06694 = phi i32 [ 0, %.lr.ph97 ], [ %.167, %bb.f ] ; 4 uses
  %.17193 = phi i32 [ 1, %.lr.ph97 ], [ %i.as, %bb.f ] ; 4 uses
  %i.i = zext i32 %.17193 to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !170
  %i.l = sub nsw i64 %i.k, %.06595
  %i.m = icmp sgt i64 %i.l, %2                    ; 2 uses
  %i.n = icmp eq i32 %.17193, %i.h                ; 2 uses
  %or.cond = or i1 %i.n, %i.m
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %i.m, true
  %narrow = and i1 %i.n, %not.
  %spec.select = zext i1 %narrow to i32
  %.272 = add nuw i32 %.17193, %spec.select       ; 6 uses
  %i.o = icmp ult i32 %.06694, %.272
  %i.p = zext i32 %.06694 to i64                  ; 6 uses
  br i1 %i.o, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.d
  %wide.trip.count = zext i32 %.272 to i64        ; 4 uses
  %i.q = sub nsw i64 %wide.trip.count, %i.p       ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.r = sub nsw i64 %i.p, %wide.trip.count
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter = and i64 %i.q, -4
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv.a = phi i64 [ %i.p, %.lr.ph89.preheader.new ], [ %indvars.iv.next.3, %.lr.ph89 ] ; 5 uses
  %.087 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %i.ah, %.lr.ph89 ]
  %niter = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter.next.3, %.lr.ph89 ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.a ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !170
  %i.v = add nsw i64 %i.u, %.087
  store i64 0, ptr %i.t, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !170
  %i.z = add nsw i64 %i.y, %i.v
  store i64 0, ptr %i.x, align 8, !tbaa !170
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !170
  %i.ad = add nsw i64 %i.ac, %i.z
  store i64 0, ptr %i.ab, align 8, !tbaa !170
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !170
  %i.ah = add nsw i64 %i.ag, %i.ad                ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !170
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.a, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge90.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !476

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %.lr.ph89
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge90, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv.epil.init = phi i64 [ %i.p, %.lr.ph89.preheader ], [ %indvars.iv.next.3, %._crit_edge90.loopexit.unr-lcssa ]
  %.087.epil.init = phi i64 [ 0, %.lr.ph89.preheader ], [ %i.ah, %._crit_edge90.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph89.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph89.epil ] ; 2 uses
  %.087.epil = phi i64 [ %.087.epil.init, %.lr.ph89.epil.preheader ], [ %i.ak, %.lr.ph89.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph89.epil.preheader ], [ %epil.iter.next, %.lr.ph89.epil ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.epil ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !170
  %i.ak = add nsw i64 %i.aj, %.087.epil           ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !170
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge90, label %.lr.ph89.epil, !llvm.loop !477

._crit_edge90:                                    ; preds = %._crit_edge90.loopexit.unr-lcssa, %.lr.ph89.epil, %bb.d
  %.pre-phi = phi i64 [ %i.p, %bb.d ], [ %wide.trip.count, %.lr.ph89.epil ], [ %wide.trip.count, %._crit_edge90.loopexit.unr-lcssa ]
  %.0.lcssa = phi i64 [ 0, %bb.d ], [ %i.ah, %._crit_edge90.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph89.epil ]
  %i.al = sdiv i64 %.0.lcssa, %.pre-phi
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.p
  store i64 %i.al, ptr %i.am, align 8, !tbaa !170
  %i.an = icmp ult i32 %.272, %i.h
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge90
  %i.ao = add nuw i32 %.272, 1                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %._crit_edge90
  %.373 = phi i32 [ %.272, %bb.e ], [ %.272, %._crit_edge90 ], [ %.17193, %bb.c ]
  %.167 = phi i32 [ %i.ao, %bb.e ], [ %.06694, %._crit_edge90 ], [ %.06694, %bb.c ]
  %.1 = phi i64 [ %i.ar, %bb.e ], [ %.06595, %._crit_edge90 ], [ %.06595, %bb.c ]
  %i.as = add i32 %.373, 1                        ; 2 uses
  %i.at = icmp ult i32 %i.as, %.pre
  br i1 %i.at, label %bb.c, label %.lr.ph100, !llvm.loop !478

.lr.ph100:                                        ; preds = %bb.f, %bb.h
  %i.au = phi i32 [ %i.ba, %bb.h ], [ %.pre, %bb.f ]
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.299 = phi i32 [ %.3, %bb.h ], [ 1, %bb.f ]    ; 3 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv107 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !170
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph100
  %i.ax = add i32 %.299, 1
  %i.ay = zext i32 %.299 to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !473
  %.pre110 = load i32, ptr %0, align 4, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph100, %bb.g
  %i.ba = phi i32 [ %.pre110, %bb.g ], [ %i.au, %.lr.ph100 ] ; 2 uses
  %.3 = phi i32 [ %i.ax, %bb.g ], [ %.299, %.lr.ph100 ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next108, %i.bb
  br i1 %i.bc, label %.lr.ph100, label %._crit_edge101, !llvm.loop !479

._crit_edge101:                                   ; preds = %bb.h, %bb.a, %._crit_edge85
  %.2.lcssa = phi i32 [ 1, %._crit_edge85 ], [ 1, %bb.a ], [ %.3, %bb.h ]
  store i32 %.2.lcssa, ptr %0, align 4, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge101
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @af_glyph_hints_done(ptr nofree noundef nonnull captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141    ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.b, align 8, !tbaa !167
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.c, align 4, !tbaa !463
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.not57 = icmp eq ptr %i.e, %i.f
  br i1 %.not57, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.e) #18
  store ptr null, ptr %i.d, align 8, !tbaa !166
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.g, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.h, align 4, !tbaa !480
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %.not58 = icmp eq ptr %i.j, %i.k
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ft_mem_free(ptr noundef nonnull %i.a, ptr noundef %i.j) #18
  store ptr null, ptr %i.i, align 8, !tbaa !106
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2624
  store i32 0, ptr %i.l, align 8, !tbaa !167
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2628
  store i32 0, ptr %i.m, align 4, !tbaa !463
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2632 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166  ; 2 uses
end_hunk_5
