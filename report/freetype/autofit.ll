Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0
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
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.i = load i16, ptr %i.h, align 8, !tbaa !37
  %i.j = zext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.j, ptr %i.k, align 8, !tbaa !45
  %i.l = tail call i32 @FT_Select_Charmap(ptr noundef %1, i32 noundef 1970170211) #18
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @af_cjk_metrics_init_widths(ptr noundef nonnull %0, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.m = load ptr, ptr %0, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @af_blue_stringsets, i64 %i.p ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = getelementptr i8, ptr %i.s, i64 816
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !56
  %i.u = getelementptr i8, ptr %.val.i, i64 72
  %.val.val.i = load ptr, ptr %i.u, align 8, !tbaa !62 ; 2 uses
  %.not197.i = icmp eq ptr %.val.val.i, null
  br i1 %.not197.i, label %af_shaper_buf_create.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %.val.val.i, i64 32
  %.val4.val.val.i.i = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.w = tail call ptr %.val4.val.val.i.i() #18, !inline_history !294
  br label %af_shaper_buf_create.exit.i

af_shaper_buf_create.exit.i:                      ; preds = %bb.c, %bb.b
  %.0147.i = phi ptr [ %i.d, %bb.b ], [ %i.w, %bb.c ] ; 5 uses
  %i.x = load i32, ptr %i.q, align 8, !tbaa !66   ; 2 uses
  %.not165258.i = icmp eq i32 %i.x, 5531
  br i1 %.not165258.i, label %._crit_edge261.i, label %.lr.ph260.i

.lr.ph260.i:                                      ; preds = %af_shaper_buf_create.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge255.thread.i, %.lr.ph260.i
  %i.z = phi i32 [ %i.x, %.lr.ph260.i ], [ %i.hk, %._crit_edge255.thread.i ]
  %.0148259.i = phi ptr [ %i.q, %.lr.ph260.i ], [ %i.hj, %._crit_edge255.thread.i ] ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @af_blue_strings, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0148259.i, i64 4
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !67
  %.fr.i = freeze i16 %i.ad                       ; 4 uses
  %i.ae = and i16 %.fr.i, 2
  %.not166.i = icmp eq i16 %i.ae, 0
  %.0149.v.i = select i1 %.not166.i, i64 984, i64 88
  %.0149.i = getelementptr inbounds nuw i8, ptr %0, i64 %.0149.v.i ; 4 uses
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !68
  %.not167248.i = icmp eq i8 %i.af, 0
  br i1 %.not167248.i, label %._crit_edge255.thread.i, label %.lr.ph254.i

.lr.ph254.i:                                      ; preds = %bb.d
  %i.ag = zext i16 %.fr.i to i32                  ; 2 uses
  %i.ah = and i32 %i.ag, 2
  %.not173.i = icmp eq i32 %i.ah, 0
  %i.ai = and i32 %i.ag, 1
  %.not177.i = icmp eq i32 %i.ai, 0               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.q, %.lr.ph254.i
  %.0144252.i = phi ptr [ %i.ab, %.lr.ph254.i ], [ %.2146.i, %bb.q ]
  %.0150251.i = phi i8 [ 1, %.lr.ph254.i ], [ %.1151.i, %bb.q ] ; 4 uses
  %.0152250.i = phi i32 [ 0, %.lr.ph254.i ], [ %.2154.i, %bb.q ] ; 7 uses
  %.0155249.i = phi i32 [ 0, %.lr.ph254.i ], [ %.2157.i, %bb.q ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.1145.i = phi ptr [ %.0144252.i, %bb.e ], [ %i.aj, %bb.g ] ; 4 uses
  %2 = load i8, ptr %.1145.i, align 1, !tbaa !68
  switch i8 %2, label %bb.i [
    i8 32, label %bb.g
    i8 124, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.1145.i, i64 1
  br label %bb.f, !llvm.loop !295

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.1145.i, i64 1
  br label %bb.q, !llvm.loop !296

bb.i:                                             ; preds = %bb.f
  %i.al = call ptr @af_shaper_get_cluster(ptr noundef nonnull %.1145.i, ptr noundef nonnull %0, ptr noundef %.0147.i, ptr noundef nonnull %i.e) ; 5 uses
  %i.am = load i32, ptr %i.e, align 4, !tbaa !70
  %i.an = icmp ugt i32 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.j, !llvm.loop !296

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.ap = getelementptr i8, ptr %i.ao, i64 816    ; 2 uses
  %.val.i180.i = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.aq = getelementptr i8, ptr %.val.i180.i, i64 72
  %.val.val.i181.i = load ptr, ptr %i.aq, align 8, !tbaa !62 ; 2 uses
  %.not14.i.i = icmp eq ptr %.val.val.i181.i, null
  br i1 %.not14.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.val.i181.i, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72
  %i.at = call ptr %i.as(ptr noundef %.0147.i, ptr noundef nonnull %i.a) #18, !inline_history !297
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !73
  %i.az = call ptr %i.ay(ptr noundef %.0147.i, ptr noundef nonnull %i.a) #18, !inline_history !297 ; 0 uses
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !70
  %.not.i.i.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.not.i, label %af_shaper_get_elem_hb.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.at, align 4, !tbaa !75
  %i.bc = zext i32 %i.bb to i64
  br label %af_shaper_get_elem_hb.exit.i.i

af_shaper_get_elem_hb.exit.i.i:                   ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.bc, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %af_shaper_get_elem.exit.i

bb.m:                                             ; preds = %bb.j
  %.val12.i.i = load i64, ptr %.0147.i, align 8, !tbaa !76
  br label %af_shaper_get_elem.exit.i

af_shaper_get_elem.exit.i:                        ; preds = %bb.m, %af_shaper_get_elem_hb.exit.i.i
  %.0.i182.i = phi i64 [ %.0.i.i.i, %af_shaper_get_elem_hb.exit.i.i ], [ %.val12.i.i, %bb.m ] ; 2 uses
  %i.bd = icmp eq i64 %.0.i182.i, 0
  br i1 %i.bd, label %bb.q, label %bb.n, !llvm.loop !296

bb.n:                                             ; preds = %af_shaper_get_elem.exit.i
  %i.be = trunc i64 %.0.i182.i to i32
  %i.bf = call i32 @FT_Load_Glyph(ptr noundef nonnull %1, i32 noundef %i.be, i32 noundef 1) #18
  %i.bg = load ptr, ptr %i.y, align 8, !tbaa !77  ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 202
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2, !tbaa !78
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %.sroa.595.0.copyload.i = load ptr, ptr %.sroa.595.0..sroa_idx.i, align 8, !tbaa !80 ; 12 uses
  %.sroa.696.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %.sroa.696.0.copyload.i = load ptr, ptr %.sroa.696.0..sroa_idx.i, align 8, !tbaa !81 ; 4 uses
  %i.bh = icmp ne i32 %i.bf, 0
  %i.bi = icmp ult i16 %.sroa.4.0.copyload.i, 3
  %or.cond.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.i, label %bb.q, label %.preheader204.i, !llvm.loop !296

.preheader204.i:                                  ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %.sroa.0.0.copyload.i = load i16, ptr %i.bj, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph236.i

.lr.ph236.i:                                      ; preds = %.preheader204.i
  %wide.trip.count301.i = zext i16 %.sroa.0.0.copyload.i to i64 ; 4 uses
  br i1 %.not173.i, label %.lr.ph236.split.us.i, label %.lr.ph236.split.i

.lr.ph236.split.us.i:                             ; preds = %.lr.ph236.i
  br i1 %.not177.i, label %.lr.ph236.split.us.split.us.i, label %.lr.ph236.split.us.split.i

.lr.ph236.split.us.split.us.i:                    ; preds = %.lr.ph236.split.us.i, %.loopexit.us.us.i
  %indvars.iv298.i = phi i64 [ %indvars.iv.next299.i, %.loopexit.us.us.i ], [ 0, %.lr.ph236.split.us.i ] ; 2 uses
  %.0235.us.us.i = phi i32 [ %i.bn, %.loopexit.us.us.i ], [ -1, %.lr.ph236.split.us.i ]
  %.0130233.us.us.i = phi i32 [ %.9.us.us.i, %.loopexit.us.us.i ], [ -1, %.lr.ph236.split.us.i ] ; 4 uses
  %.0134232.us.us.i = phi i64 [ %.9143.us.us.i, %.loopexit.us.us.i ], [ 0, %.lr.ph236.split.us.i ] ; 4 uses
  %i.bk = add nsw i32 %.0235.us.us.i, 1           ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv298.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !78 ; 2 uses
  %i.bn = zext i16 %i.bm to i32                   ; 3 uses
  %.not172.us.us.i = icmp slt i32 %i.bk, %i.bn
  br i1 %.not172.us.us.i, label %.lr.ph229.us.us.preheader.i, label %.loopexit.us.us.i

.lr.ph229.us.us.preheader.i:                      ; preds = %.lr.ph236.split.us.split.us.i
  %i.bo = zext i32 %i.bk to i64                   ; 5 uses
  %i.bp = add nuw nsw i32 %i.bn, 1
  %wide.trip.count296.i = zext nneg i32 %i.bp to i64
  %i.bq = zext i16 %i.bm to i64                   ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, %i.bo
  %i.bs = and i64 %i.br, 1
  %lcmp.mod53.not.not.a = icmp eq i64 %i.bs, 0
  br i1 %lcmp.mod53.not.not.a, label %.lr.ph229.us.us.i.prol, label %.lr.ph229.us.us.i.prol.loopexit

.lr.ph229.us.us.i.prol:                           ; preds = %.lr.ph229.us.us.preheader.i
  %i.bt = icmp slt i32 %.0130233.us.us.i, 0
  %.phi.trans.insert320.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.bo
  %.phi.trans.insert321.i.prol = getelementptr inbounds nuw i8, ptr %.phi.trans.insert320.i.prol, i64 8
  %.pre322.i.prol = load i64, ptr %.phi.trans.insert321.i.prol, align 8, !tbaa !83 ; 2 uses
  %i.bu = icmp slt i64 %.pre322.i.prol, %.0134232.us.us.i
  %or.cond376.i.prol = select i1 %i.bt, i1 true, i1 %i.bu ; 2 uses
  %.8142.us.us.i.prol = select i1 %or.cond376.i.prol, i64 %.pre322.i.prol, i64 %.0134232.us.us.i ; 2 uses
  %.8.us.us.i.prol = select i1 %or.cond376.i.prol, i32 %i.bk, i32 %.0130233.us.us.i ; 2 uses
  %indvars.iv.next294.i.prol = add nuw nsw i64 %i.bo, 1
  br label %.lr.ph229.us.us.i.prol.loopexit

.lr.ph229.us.us.i.prol.loopexit:                  ; preds = %.lr.ph229.us.us.i.prol, %.lr.ph229.us.us.preheader.i
  %.8142.us.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph229.us.us.preheader.i ], [ %.8142.us.us.i.prol, %.lr.ph229.us.us.i.prol ]
  %.8.us.us.i.lcssa.unr = phi i32 [ poison, %.lr.ph229.us.us.preheader.i ], [ %.8.us.us.i.prol, %.lr.ph229.us.us.i.prol ]
  %indvars.iv293.i.unr = phi i64 [ %i.bo, %.lr.ph229.us.us.preheader.i ], [ %indvars.iv.next294.i.prol, %.lr.ph229.us.us.i.prol ]
  %.7227.us.us.i.unr = phi i32 [ %.0130233.us.us.i, %.lr.ph229.us.us.preheader.i ], [ %.8.us.us.i.prol, %.lr.ph229.us.us.i.prol ]
  %.7141226.us.us.i.unr = phi i64 [ %.0134232.us.us.i, %.lr.ph229.us.us.preheader.i ], [ %.8142.us.us.i.prol, %.lr.ph229.us.us.i.prol ]
  %i.bv = icmp eq i64 %i.bq, %i.bo
  br i1 %i.bv, label %.loopexit.us.us.i, label %.lr.ph229.us.us.i

.lr.ph229.us.us.i:                                ; preds = %.lr.ph229.us.us.i.prol.loopexit, %.lr.ph229.us.us.i
  %indvars.iv293.i = phi i64 [ %indvars.iv.next294.i.1, %.lr.ph229.us.us.i ], [ %indvars.iv293.i.unr, %.lr.ph229.us.us.i.prol.loopexit ] ; 4 uses
  %.7227.us.us.i = phi i32 [ %.8.us.us.i.1, %.lr.ph229.us.us.i ], [ %.7227.us.us.i.unr, %.lr.ph229.us.us.i.prol.loopexit ] ; 2 uses
  %.7141226.us.us.i = phi i64 [ %.8142.us.us.i.1, %.lr.ph229.us.us.i ], [ %.7141226.us.us.i.unr, %.lr.ph229.us.us.i.prol.loopexit ] ; 2 uses
  %i.bw = icmp slt i32 %.7227.us.us.i, 0
  %.phi.trans.insert320.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv293.i
  %.phi.trans.insert321.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert320.i, i64 8
  %.pre322.i = load i64, ptr %.phi.trans.insert321.i, align 8, !tbaa !83 ; 2 uses
  %i.bx = icmp slt i64 %.pre322.i, %.7141226.us.us.i
  %or.cond376.i = select i1 %i.bw, i1 true, i1 %i.bx ; 2 uses
  %i.by = trunc nsw i64 %indvars.iv293.i to i32
  %.8142.us.us.i = select i1 %or.cond376.i, i64 %.pre322.i, i64 %.7141226.us.us.i ; 2 uses
  %.8.us.us.i = select i1 %or.cond376.i, i32 %i.by, i32 %.7227.us.us.i ; 2 uses
  %indvars.iv.next294.i = add nuw nsw i64 %indvars.iv293.i, 1 ; 2 uses
  %i.bz = icmp slt i32 %.8.us.us.i, 0
  %.phi.trans.insert320.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next294.i
  %.phi.trans.insert321.i.1 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert320.i.1, i64 8
  %.pre322.i.1 = load i64, ptr %.phi.trans.insert321.i.1, align 8, !tbaa !83 ; 2 uses
  %i.ca = icmp slt i64 %.pre322.i.1, %.8142.us.us.i
  %or.cond376.i.1 = select i1 %i.bz, i1 true, i1 %i.ca ; 2 uses
  %i.cb = trunc nsw i64 %indvars.iv.next294.i to i32
  %.8142.us.us.i.1 = select i1 %or.cond376.i.1, i64 %.pre322.i.1, i64 %.8142.us.us.i ; 2 uses
  %.8.us.us.i.1 = select i1 %or.cond376.i.1, i32 %i.cb, i32 %.8.us.us.i ; 2 uses
  %indvars.iv.next294.i.1 = add nuw nsw i64 %indvars.iv293.i, 2 ; 2 uses
  %exitcond297.not.i.1 = icmp eq i64 %indvars.iv.next294.i.1, %wide.trip.count296.i
  br i1 %exitcond297.not.i.1, label %.loopexit.us.us.i, label %.lr.ph229.us.us.i, !llvm.loop !298

.loopexit.us.us.i:                                ; preds = %.lr.ph229.us.us.i.prol.loopexit, %.lr.ph229.us.us.i, %.lr.ph236.split.us.split.us.i
  %.9143.us.us.i = phi i64 [ %.0134232.us.us.i, %.lr.ph236.split.us.split.us.i ], [ %.8142.us.us.i.lcssa.unr, %.lr.ph229.us.us.i.prol.loopexit ], [ %.8142.us.us.i.1, %.lr.ph229.us.us.i ] ; 2 uses
  %.9.us.us.i = phi i32 [ %.0130233.us.us.i, %.lr.ph236.split.us.split.us.i ], [ %.8.us.us.i.lcssa.unr, %.lr.ph229.us.us.i.prol.loopexit ], [ %.8.us.us.i.1, %.lr.ph229.us.us.i ]
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 1 ; 2 uses
  %exitcond302.not.i = icmp eq i64 %indvars.iv.next299.i, %wide.trip.count301.i
  br i1 %exitcond302.not.i, label %._crit_edge.i, label %.lr.ph236.split.us.split.us.i, !llvm.loop !299

.lr.ph236.split.us.split.i:                       ; preds = %.lr.ph236.split.us.i, %..loopexit199_crit_edge.us.i
  %indvars.iv288.i = phi i64 [ %indvars.iv.next289.i, %..loopexit199_crit_edge.us.i ], [ 0, %.lr.ph236.split.us.i ] ; 2 uses
  %.0235.us.i = phi i32 [ %i.cf, %..loopexit199_crit_edge.us.i ], [ -1, %.lr.ph236.split.us.i ]
  %.0130233.us.i = phi i32 [ %.9.us.i, %..loopexit199_crit_edge.us.i ], [ -1, %.lr.ph236.split.us.i ] ; 4 uses
  %.0134232.us.i = phi i64 [ %.9143.us.i, %..loopexit199_crit_edge.us.i ], [ 0, %.lr.ph236.split.us.i ] ; 4 uses
  %i.cc = add nsw i32 %.0235.us.i, 1              ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv288.i
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !78 ; 2 uses
  %i.cf = zext i16 %i.ce to i32                   ; 3 uses
  %.not172.us.i = icmp slt i32 %i.cc, %i.cf
  br i1 %.not172.us.i, label %.lr.ph222.us.preheader.i, label %..loopexit199_crit_edge.us.i

.lr.ph222.us.preheader.i:                         ; preds = %.lr.ph236.split.us.split.i
  %i.cg = zext i32 %i.cc to i64                   ; 5 uses
  %i.ch = add nuw nsw i32 %i.cf, 1
  %wide.trip.count286.i = zext nneg i32 %i.ch to i64
  %i.ci = zext i16 %i.ce to i64                   ; 2 uses
  %i.cj = add nuw nsw i64 %i.ci, %i.cg
  %i.ck = and i64 %i.cj, 1
  %lcmp.mod51.not.not.a = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod51.not.not.a, label %.lr.ph222.us.i.prol, label %.lr.ph222.us.i.prol.loopexit

.lr.ph222.us.i.prol:                              ; preds = %.lr.ph222.us.preheader.i
  %i.cl = icmp slt i32 %.0130233.us.i, 0
  %.phi.trans.insert317.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.cg
  %.phi.trans.insert318.i.prol = getelementptr inbounds nuw i8, ptr %.phi.trans.insert317.i.prol, i64 8
  %.pre319.i.prol = load i64, ptr %.phi.trans.insert318.i.prol, align 8, !tbaa !83 ; 2 uses
  %i.cm = icmp sgt i64 %.pre319.i.prol, %.0134232.us.i
  %or.cond377.i.prol = select i1 %i.cl, i1 true, i1 %i.cm ; 2 uses
  %.6140.us.i.prol = select i1 %or.cond377.i.prol, i64 %.pre319.i.prol, i64 %.0134232.us.i ; 2 uses
  %.6.us.i.prol = select i1 %or.cond377.i.prol, i32 %i.cc, i32 %.0130233.us.i ; 2 uses
  %indvars.iv.next284.i.prol = add nuw nsw i64 %i.cg, 1
  br label %.lr.ph222.us.i.prol.loopexit

.lr.ph222.us.i.prol.loopexit:                     ; preds = %.lr.ph222.us.i.prol, %.lr.ph222.us.preheader.i
  %.6140.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph222.us.preheader.i ], [ %.6140.us.i.prol, %.lr.ph222.us.i.prol ]
  %.6.us.i.lcssa.unr = phi i32 [ poison, %.lr.ph222.us.preheader.i ], [ %.6.us.i.prol, %.lr.ph222.us.i.prol ]
  %indvars.iv283.i.unr = phi i64 [ %i.cg, %.lr.ph222.us.preheader.i ], [ %indvars.iv.next284.i.prol, %.lr.ph222.us.i.prol ]
  %.5220.us.i.unr = phi i32 [ %.0130233.us.i, %.lr.ph222.us.preheader.i ], [ %.6.us.i.prol, %.lr.ph222.us.i.prol ]
  %.5139219.us.i.unr = phi i64 [ %.0134232.us.i, %.lr.ph222.us.preheader.i ], [ %.6140.us.i.prol, %.lr.ph222.us.i.prol ]
end_hunk_0
begin_hunk_1_@af_cjk_metrics_init:bb.a
  %i.cq = trunc nsw i64 %indvars.iv283.i to i32
  %.6140.us.i = select i1 %or.cond377.i, i64 %.pre319.i, i64 %.5139219.us.i ; 2 uses
  %.6.us.i = select i1 %or.cond377.i, i32 %i.cq, i32 %.5220.us.i ; 2 uses
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %i.cr = icmp slt i32 %.6.us.i, 0
  %.phi.trans.insert317.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next284.i
  %.phi.trans.insert318.i.1 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert317.i.1, i64 8
  %.pre319.i.1 = load i64, ptr %.phi.trans.insert318.i.1, align 8, !tbaa !83 ; 2 uses
  %i.cs = icmp sgt i64 %.pre319.i.1, %.6140.us.i
  %or.cond377.i.1 = select i1 %i.cr, i1 true, i1 %i.cs ; 2 uses
  %i.ct = trunc nsw i64 %indvars.iv.next284.i to i32
  %.6140.us.i.1 = select i1 %or.cond377.i.1, i64 %.pre319.i.1, i64 %.6140.us.i ; 2 uses
  %.6.us.i.1 = select i1 %or.cond377.i.1, i32 %i.ct, i32 %.6.us.i ; 2 uses
  %indvars.iv.next284.i.1 = add nuw nsw i64 %indvars.iv283.i, 2 ; 2 uses
  %exitcond287.not.i.1 = icmp eq i64 %indvars.iv.next284.i.1, %wide.trip.count286.i
  br i1 %exitcond287.not.i.1, label %..loopexit199_crit_edge.us.i, label %.lr.ph222.us.i, !llvm.loop !300

..loopexit199_crit_edge.us.i:                     ; preds = %.lr.ph222.us.i.prol.loopexit, %.lr.ph222.us.i, %.lr.ph236.split.us.split.i
  %.9143.us.i = phi i64 [ %.0134232.us.i, %.lr.ph236.split.us.split.i ], [ %.6140.us.i.lcssa.unr, %.lr.ph222.us.i.prol.loopexit ], [ %.6140.us.i.1, %.lr.ph222.us.i ] ; 2 uses
  %.9.us.i = phi i32 [ %.0130233.us.i, %.lr.ph236.split.us.split.i ], [ %.6.us.i.lcssa.unr, %.lr.ph222.us.i.prol.loopexit ], [ %.6.us.i.1, %.lr.ph222.us.i ]
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond292.not.i = icmp eq i64 %indvars.iv.next289.i, %wide.trip.count301.i
  br i1 %exitcond292.not.i, label %._crit_edge.i, label %.lr.ph236.split.us.split.i, !llvm.loop !299

.lr.ph236.split.i:                                ; preds = %.lr.ph236.i
  br i1 %.not177.i, label %.lr.ph236.split.split.us.i, label %.lr.ph236.split.split.i

.lr.ph236.split.split.us.i:                       ; preds = %.lr.ph236.split.i, %.loopexit201.us.i
  %indvars.iv278.i = phi i64 [ %indvars.iv.next279.i, %.loopexit201.us.i ], [ 0, %.lr.ph236.split.i ] ; 2 uses
  %.0235.us238.i = phi i32 [ %i.cx, %.loopexit201.us.i ], [ -1, %.lr.ph236.split.i ]
  %.0130233.us240.i = phi i32 [ %.9.us244.i, %.loopexit201.us.i ], [ -1, %.lr.ph236.split.i ] ; 4 uses
  %.0134232.us241.i = phi i64 [ %.9143.us243.i, %.loopexit201.us.i ], [ 0, %.lr.ph236.split.i ] ; 4 uses
  %i.cu = add nsw i32 %.0235.us238.i, 1           ; 3 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv278.i
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !78 ; 2 uses
  %i.cx = zext i16 %i.cw to i32                   ; 3 uses
  %.not172.us242.i = icmp slt i32 %i.cu, %i.cx
  br i1 %.not172.us242.i, label %.lr.ph215.us.preheader.i, label %.loopexit201.us.i

.lr.ph215.us.preheader.i:                         ; preds = %.lr.ph236.split.split.us.i
  %i.cy = zext i32 %i.cu to i64                   ; 5 uses
  %i.cz = add nuw nsw i32 %i.cx, 1
  %wide.trip.count276.i = zext nneg i32 %i.cz to i64
  %i.da = zext i16 %i.cw to i64                   ; 2 uses
  %i.db = add nuw nsw i64 %i.da, %i.cy
  %i.dc = and i64 %i.db, 1
  %lcmp.mod49.not.not = icmp eq i64 %i.dc, 0
  br i1 %lcmp.mod49.not.not, label %.lr.ph215.us.i.prol, label %.lr.ph215.us.i.prol.loopexit

.lr.ph215.us.i.prol:                              ; preds = %.lr.ph215.us.preheader.i
  %i.dd = icmp slt i32 %.0130233.us240.i, 0
  %.phi.trans.insert315.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.cy
  %.pre316.i.prol = load i64, ptr %.phi.trans.insert315.i.prol, align 8, !tbaa !84 ; 2 uses
  %i.de = icmp slt i64 %.pre316.i.prol, %.0134232.us241.i
  %or.cond378.i.prol = select i1 %i.dd, i1 true, i1 %i.de ; 2 uses
  %.4138.us.i.prol = select i1 %or.cond378.i.prol, i64 %.pre316.i.prol, i64 %.0134232.us241.i ; 2 uses
  %.4.us.i.prol = select i1 %or.cond378.i.prol, i32 %i.cu, i32 %.0130233.us240.i ; 2 uses
  %indvars.iv.next274.i.prol = add nuw nsw i64 %i.cy, 1
  br label %.lr.ph215.us.i.prol.loopexit

.lr.ph215.us.i.prol.loopexit:                     ; preds = %.lr.ph215.us.i.prol, %.lr.ph215.us.preheader.i
  %.4138.us.i.lcssa.unr = phi i64 [ poison, %.lr.ph215.us.preheader.i ], [ %.4138.us.i.prol, %.lr.ph215.us.i.prol ]
  %.4.us.i.lcssa.unr = phi i32 [ poison, %.lr.ph215.us.preheader.i ], [ %.4.us.i.prol, %.lr.ph215.us.i.prol ]
  %indvars.iv273.i.unr = phi i64 [ %i.cy, %.lr.ph215.us.preheader.i ], [ %indvars.iv.next274.i.prol, %.lr.ph215.us.i.prol ]
  %.3133213.us.i.unr = phi i32 [ %.0130233.us240.i, %.lr.ph215.us.preheader.i ], [ %.4.us.i.prol, %.lr.ph215.us.i.prol ]
  %.3137212.us.i.unr = phi i64 [ %.0134232.us241.i, %.lr.ph215.us.preheader.i ], [ %.4138.us.i.prol, %.lr.ph215.us.i.prol ]
  %i.df = icmp eq i64 %i.da, %i.cy
  br i1 %i.df, label %.loopexit201.us.i, label %.lr.ph215.us.i

.lr.ph215.us.i:                                   ; preds = %.lr.ph215.us.i.prol.loopexit, %.lr.ph215.us.i
  %indvars.iv273.i = phi i64 [ %indvars.iv.next274.i.1, %.lr.ph215.us.i ], [ %indvars.iv273.i.unr, %.lr.ph215.us.i.prol.loopexit ] ; 4 uses
  %.3133213.us.i = phi i32 [ %.4.us.i.1, %.lr.ph215.us.i ], [ %.3133213.us.i.unr, %.lr.ph215.us.i.prol.loopexit ] ; 2 uses
  %.3137212.us.i = phi i64 [ %.4138.us.i.1, %.lr.ph215.us.i ], [ %.3137212.us.i.unr, %.lr.ph215.us.i.prol.loopexit ] ; 2 uses
  %i.dg = icmp slt i32 %.3133213.us.i, 0
  %.phi.trans.insert315.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv273.i
  %.pre316.i = load i64, ptr %.phi.trans.insert315.i, align 8, !tbaa !84 ; 2 uses
  %i.dh = icmp slt i64 %.pre316.i, %.3137212.us.i
  %or.cond378.i = select i1 %i.dg, i1 true, i1 %i.dh ; 2 uses
  %i.di = trunc nsw i64 %indvars.iv273.i to i32
  %.4138.us.i = select i1 %or.cond378.i, i64 %.pre316.i, i64 %.3137212.us.i ; 2 uses
  %.4.us.i = select i1 %or.cond378.i, i32 %i.di, i32 %.3133213.us.i ; 2 uses
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %i.dj = icmp slt i32 %.4.us.i, 0
  %.phi.trans.insert315.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next274.i
  %.pre316.i.1 = load i64, ptr %.phi.trans.insert315.i.1, align 8, !tbaa !84 ; 2 uses
  %i.dk = icmp slt i64 %.pre316.i.1, %.4138.us.i
  %or.cond378.i.1 = select i1 %i.dj, i1 true, i1 %i.dk ; 2 uses
  %i.dl = trunc nsw i64 %indvars.iv.next274.i to i32
  %.4138.us.i.1 = select i1 %or.cond378.i.1, i64 %.pre316.i.1, i64 %.4138.us.i ; 2 uses
  %.4.us.i.1 = select i1 %or.cond378.i.1, i32 %i.dl, i32 %.4.us.i ; 2 uses
  %indvars.iv.next274.i.1 = add nuw nsw i64 %indvars.iv273.i, 2 ; 2 uses
  %exitcond277.not.i.1 = icmp eq i64 %indvars.iv.next274.i.1, %wide.trip.count276.i
  br i1 %exitcond277.not.i.1, label %.loopexit201.us.i, label %.lr.ph215.us.i, !llvm.loop !301

.loopexit201.us.i:                                ; preds = %.lr.ph215.us.i.prol.loopexit, %.lr.ph215.us.i, %.lr.ph236.split.split.us.i
  %.9143.us243.i = phi i64 [ %.0134232.us241.i, %.lr.ph236.split.split.us.i ], [ %.4138.us.i.lcssa.unr, %.lr.ph215.us.i.prol.loopexit ], [ %.4138.us.i.1, %.lr.ph215.us.i ] ; 2 uses
  %.9.us244.i = phi i32 [ %.0130233.us240.i, %.lr.ph236.split.split.us.i ], [ %.4.us.i.lcssa.unr, %.lr.ph215.us.i.prol.loopexit ], [ %.4.us.i.1, %.lr.ph215.us.i ]
  %indvars.iv.next279.i = add nuw nsw i64 %indvars.iv278.i, 1 ; 2 uses
  %exitcond282.not.i = icmp eq i64 %indvars.iv.next279.i, %wide.trip.count301.i
  br i1 %exitcond282.not.i, label %._crit_edge.i, label %.lr.ph236.split.split.us.i, !llvm.loop !299

.lr.ph236.split.split.i:                          ; preds = %.lr.ph236.split.i, %.loopexit203.i
  %indvars.iv268.i = phi i64 [ %indvars.iv.next269.i, %.loopexit203.i ], [ 0, %.lr.ph236.split.i ] ; 2 uses
  %.0235.i = phi i32 [ %i.dp, %.loopexit203.i ], [ -1, %.lr.ph236.split.i ]
  %.0130233.i = phi i32 [ %.9.i, %.loopexit203.i ], [ -1, %.lr.ph236.split.i ] ; 4 uses
  %.0134232.i = phi i64 [ %.9143.i, %.loopexit203.i ], [ 0, %.lr.ph236.split.i ] ; 4 uses
  %i.dm = add nsw i32 %.0235.i, 1                 ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.696.0.copyload.i, i64 %indvars.iv268.i
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !78 ; 2 uses
  %i.dp = zext i16 %i.do to i32                   ; 3 uses
  %.not172.i = icmp slt i32 %i.dm, %i.dp
  br i1 %.not172.i, label %.lr.ph.preheader.i, label %.loopexit203.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph236.split.split.i
  %i.dq = zext i32 %i.dm to i64                   ; 5 uses
  %i.dr = add nuw nsw i32 %i.dp, 1
  %wide.trip.count.i = zext nneg i32 %i.dr to i64
  %i.ds = zext i16 %i.do to i64                   ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, %i.dq
  %i.du = and i64 %i.dt, 1
  %lcmp.mod.not.not = icmp eq i64 %i.du, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.dv = icmp slt i32 %.0130233.i, 0
  %.phi.trans.insert.i.prol = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %i.dq
  %.pre.i.prol = load i64, ptr %.phi.trans.insert.i.prol, align 8, !tbaa !84 ; 2 uses
  %i.dw = icmp sgt i64 %.pre.i.prol, %.0134232.i
  %or.cond379.i.prol = select i1 %i.dv, i1 true, i1 %i.dw ; 2 uses
  %.2136.i.prol = select i1 %or.cond379.i.prol, i64 %.pre.i.prol, i64 %.0134232.i ; 2 uses
  %.2132.i.prol = select i1 %or.cond379.i.prol, i32 %i.dm, i32 %.0130233.i ; 2 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.dq, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.2136.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %.2136.i.prol, %.lr.ph.i.prol ]
  %.2132.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.2132.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.dq, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.1131208.i.unr = phi i32 [ %.0130233.i, %.lr.ph.preheader.i ], [ %.2132.i.prol, %.lr.ph.i.prol ]
  %.1135207.i.unr = phi i64 [ %.0134232.i, %.lr.ph.preheader.i ], [ %.2136.i.prol, %.lr.ph.i.prol ]
  %i.dx = icmp eq i64 %i.ds, %i.dq
  br i1 %i.dx, label %.loopexit203.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.1131208.i = phi i32 [ %.2132.i.1, %.lr.ph.i ], [ %.1131208.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.1135207.i = phi i64 [ %.2136.i.1, %.lr.ph.i ], [ %.1135207.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.dy = icmp slt i32 %.1131208.i, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.i
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !84 ; 2 uses
  %i.dz = icmp sgt i64 %.pre.i, %.1135207.i
  %or.cond379.i = select i1 %i.dy, i1 true, i1 %i.dz ; 2 uses
  %i.ea = trunc nsw i64 %indvars.iv.i to i32
  %.2136.i = select i1 %or.cond379.i, i64 %.pre.i, i64 %.1135207.i ; 2 uses
  %.2132.i = select i1 %or.cond379.i, i32 %i.ea, i32 %.1131208.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eb = icmp slt i32 %.2132.i, 0
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.595.0.copyload.i, i64 %indvars.iv.next.i
  %.pre.i.1 = load i64, ptr %.phi.trans.insert.i.1, align 8, !tbaa !84 ; 2 uses
  %i.ec = icmp sgt i64 %.pre.i.1, %.2136.i
  %or.cond379.i.1 = select i1 %i.eb, i1 true, i1 %i.ec ; 2 uses
  %i.ed = trunc nsw i64 %indvars.iv.next.i to i32
  %.2136.i.1 = select i1 %or.cond379.i.1, i64 %.pre.i.1, i64 %.2136.i ; 2 uses
  %.2132.i.1 = select i1 %or.cond379.i.1, i32 %i.ed, i32 %.2132.i ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit203.i, label %.lr.ph.i, !llvm.loop !302

.loopexit203.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph236.split.split.i
  %.9143.i = phi i64 [ %.0134232.i, %.lr.ph236.split.split.i ], [ %.2136.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.2136.i.1, %.lr.ph.i ] ; 2 uses
  %.9.i = phi i32 [ %.0130233.i, %.lr.ph236.split.split.i ], [ %.2132.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.2132.i.1, %.lr.ph.i ]
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %exitcond272.not.i = icmp eq i64 %indvars.iv.next269.i, %wide.trip.count301.i
  br i1 %exitcond272.not.i, label %._crit_edge.i, label %.lr.ph236.split.split.i, !llvm.loop !299

._crit_edge.i:                                    ; preds = %.loopexit203.i, %.loopexit201.us.i, %..loopexit199_crit_edge.us.i, %.loopexit.us.us.i, %.preheader204.i
  %.0134.lcssa.i = phi i64 [ 0, %.preheader204.i ], [ %.9143.us243.i, %.loopexit201.us.i ], [ %.9143.us.i, %..loopexit199_crit_edge.us.i ], [ %.9143.us.us.i, %.loopexit.us.us.i ], [ %.9143.i, %.loopexit203.i ] ; 2 uses
  %.not171.i = icmp eq i8 %.0150251.i, 0
  br i1 %.not171.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ee = add nuw i32 %.0155249.i, 1
  %i.ef = zext i32 %.0155249.i to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ef
  store i64 %.0134.lcssa.i, ptr %i.eg, align 8, !tbaa !76
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i
  %i.eh = add nuw i32 %.0152250.i, 1
  %i.ei = zext i32 %.0152250.i to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ei
  store i64 %.0134.lcssa.i, ptr %i.ej, align 8, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %af_shaper_get_elem.exit.i, %bb.i, %bb.h
  %.2157.i = phi i32 [ %.0155249.i, %bb.h ], [ %.0155249.i, %bb.n ], [ %.0155249.i, %bb.i ], [ %.0155249.i, %af_shaper_get_elem.exit.i ], [ %i.ee, %bb.o ], [ %.0155249.i, %bb.p ] ; 7 uses
  %.2154.i = phi i32 [ %.0152250.i, %bb.h ], [ %.0152250.i, %bb.n ], [ %.0152250.i, %bb.i ], [ %.0152250.i, %af_shaper_get_elem.exit.i ], [ %.0152250.i, %bb.o ], [ %i.eh, %bb.p ] ; 7 uses
  %.1151.i = phi i8 [ 0, %bb.h ], [ %.0150251.i, %bb.n ], [ %.0150251.i, %bb.i ], [ %.0150251.i, %af_shaper_get_elem.exit.i ], [ 1, %bb.o ], [ 0, %bb.p ]
  %.2146.i = phi ptr [ %i.ak, %bb.h ], [ %i.al, %bb.n ], [ %i.al, %bb.i ], [ %i.al, %af_shaper_get_elem.exit.i ], [ %i.al, %bb.o ], [ %i.al, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.ek = load i8, ptr %.2146.i, align 1, !tbaa !68
  %.not167.i = icmp eq i8 %i.ek, 0
  br i1 %.not167.i, label %._crit_edge255.i, label %bb.e

._crit_edge255.i:                                 ; preds = %bb.q
  %i.el = icmp eq i32 %.2154.i, 0                 ; 2 uses
  %i.em = icmp eq i32 %.2157.i, 0                 ; 3 uses
  %or.cond5.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond5.i, label %._crit_edge255.thread.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge255.i
  %i.en = icmp ugt i32 %.2157.i, 1
  br i1 %i.en, label %.preheader.i.preheader.i, label %af_sort_pos.exit.i

.preheader.i.preheader.i:                         ; preds = %bb.r
  %i.eo = zext i32 %.2157.i to i64
  %i.ep = add nsw i64 %i.eo, -1                   ; 3 uses
  %xtraiter54 = and i64 %i.ep, 1
  %i.eq = icmp eq i32 %.2157.i, 2
  br i1 %i.eq, label %.preheader.i.i.epil.preheader, label %.preheader.i.preheader.i.new

.preheader.i.preheader.i.new:                     ; preds = %.preheader.i.preheader.i
  %unroll_iter = and i64 %i.ep, -2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.preheader.i.new
  %indvars.iv303.i = phi i64 [ 1, %.preheader.i.preheader.i.new ], [ %indvars.iv.next304.i.1, %bb.w ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.i.new ], [ %niter.next.1, %bb.w ]
  %.phi.trans.insert24.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv303.i
  %.pre.i.i = load i64, ptr %.phi.trans.insert24.i.i, align 8, !tbaa !76 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.preheader.i.i
  %indvars.iv305.i = phi i64 [ %i.er, %bb.t ], [ %indvars.iv303.i, %.preheader.i.i ] ; 2 uses
  %i.er = add nsw i64 %indvars.iv305.i, -1        ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.er ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i = icmp slt i64 %.pre.i.i, %i.et
  br i1 %.not21.i.i, label %bb.t, label %.preheader.i.i.1

bb.t:                                             ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !76
  store i64 %.pre.i.i, ptr %i.es, align 8, !tbaa !76
  %.not.i.wide.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.wide.i, label %.preheader.i.i.1, label %bb.s, !llvm.loop !0

.preheader.i.i.1:                                 ; preds = %bb.t, %bb.s
  %indvars.iv.next304.i = add nuw nsw i64 %indvars.iv303.i, 1 ; 2 uses
  %.phi.trans.insert24.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next304.i
  %.pre.i.i.1 = load i64, ptr %.phi.trans.insert24.i.i.1, align 8, !tbaa !76 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.preheader.i.i.1
  %indvars.iv305.i.1 = phi i64 [ %i.ev, %bb.v ], [ %indvars.iv.next304.i, %.preheader.i.i.1 ] ; 2 uses
  %i.ev = add nsw i64 %indvars.iv305.i.1, -1      ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i.1 = icmp slt i64 %.pre.i.i.1, %i.ex
  br i1 %.not21.i.i.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i.1
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !76
  store i64 %.pre.i.i.1, ptr %i.ew, align 8, !tbaa !76
  %.not.i.wide.i.1 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.wide.i.1, label %bb.w, label %bb.u, !llvm.loop !0

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next304.i.1 = add nuw nsw i64 %indvars.iv303.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %af_sort_pos.exit.i.loopexit.unr-lcssa, label %.preheader.i.i, !llvm.loop !1

af_sort_pos.exit.i.loopexit.unr-lcssa:            ; preds = %bb.w
  %lcmp.mod55.not = icmp eq i64 %xtraiter54, 0
  br i1 %lcmp.mod55.not, label %af_sort_pos.exit.i, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader.i
  %indvars.iv303.i.epil.init = phi i64 [ 1, %.preheader.i.preheader.i ], [ %indvars.iv.next304.i.1, %af_sort_pos.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.ep to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %.phi.trans.insert24.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv303.i.epil.init
  %.pre.i.i.epil = load i64, ptr %.phi.trans.insert24.i.i.epil, align 8, !tbaa !76 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.preheader.i.i.epil.preheader
  %indvars.iv305.i.epil = phi i64 [ %i.ez, %bb.y ], [ %indvars.iv303.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %i.ez = add nsw i64 %indvars.iv305.i.epil, -1   ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !76 ; 2 uses
  %.not21.i.i.epil = icmp slt i64 %.pre.i.i.epil, %i.fb
  br i1 %.not21.i.i.epil, label %bb.y, label %af_sort_pos.exit.i

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv305.i.epil
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !76
  store i64 %.pre.i.i.epil, ptr %i.fa, align 8, !tbaa !76
  %.not.i.wide.i.epil = icmp eq i64 %i.ez, 0
  br i1 %.not.i.wide.i.epil, label %af_sort_pos.exit.i, label %bb.x, !llvm.loop !0

af_sort_pos.exit.i:                               ; preds = %af_sort_pos.exit.i.loopexit.unr-lcssa, %bb.y, %bb.x, %bb.r
  %i.fd = icmp ugt i32 %.2154.i, 1
  br i1 %i.fd, label %.preheader.i183.preheader.i, label %af_sort_pos.exit192.i

.preheader.i183.preheader.i:                      ; preds = %af_sort_pos.exit.i
  %i.fe = zext i32 %.2154.i to i64
  %i.ff = add nsw i64 %i.fe, -1                   ; 3 uses
  %xtraiter57 = and i64 %i.ff, 1
  %i.fg = icmp eq i32 %.2154.i, 2
  br i1 %i.fg, label %.preheader.i183.i.epil.preheader, label %.preheader.i183.preheader.i.new

.preheader.i183.preheader.i.new:                  ; preds = %.preheader.i183.preheader.i
  %unroll_iter60 = and i64 %i.ff, -2
  br label %.preheader.i183.i

.preheader.i183.i:                                ; preds = %bb.ad, %.preheader.i183.preheader.i.new
  %indvars.iv309.i = phi i64 [ 1, %.preheader.i183.preheader.i.new ], [ %indvars.iv.next310.i.1, %bb.ad ] ; 4 uses
  %niter61 = phi i64 [ 0, %.preheader.i183.preheader.i.new ], [ %niter61.next.1, %bb.ad ]
  %.phi.trans.insert24.i186.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv309.i
  %.pre.i187.i = load i64, ptr %.phi.trans.insert24.i186.i, align 8, !tbaa !76 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %.preheader.i183.i
  %indvars.iv311.i = phi i64 [ %i.fh, %bb.aa ], [ %indvars.iv309.i, %.preheader.i183.i ] ; 2 uses
  %i.fh = add nsw i64 %indvars.iv311.i, -1        ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fh ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !76 ; 2 uses
  %.not21.i189.i = icmp slt i64 %.pre.i187.i, %i.fj
  br i1 %.not21.i189.i, label %bb.aa, label %.preheader.i183.i.1

bb.aa:                                            ; preds = %bb.z
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !76
  store i64 %.pre.i187.i, ptr %i.fi, align 8, !tbaa !76
  %.not.i191.wide.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i191.wide.i, label %.preheader.i183.i.1, label %bb.z, !llvm.loop !0

.preheader.i183.i.1:                              ; preds = %bb.aa, %bb.z
  %indvars.iv.next310.i = add nuw nsw i64 %indvars.iv309.i, 1 ; 2 uses
  %.phi.trans.insert24.i186.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next310.i
  %.pre.i187.i.1 = load i64, ptr %.phi.trans.insert24.i186.i.1, align 8, !tbaa !76 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %.preheader.i183.i.1
  %indvars.iv311.i.1 = phi i64 [ %i.fl, %bb.ac ], [ %indvars.iv.next310.i, %.preheader.i183.i.1 ] ; 2 uses
  %i.fl = add nsw i64 %indvars.iv311.i.1, -1      ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fl ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !76 ; 2 uses
  %.not21.i189.i.1 = icmp slt i64 %.pre.i187.i.1, %i.fn
  br i1 %.not21.i189.i.1, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i.1
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !76
  store i64 %.pre.i187.i.1, ptr %i.fm, align 8, !tbaa !76
  %.not.i191.wide.i.1 = icmp eq i64 %i.fl, 0
  br i1 %.not.i191.wide.i.1, label %bb.ad, label %bb.ab, !llvm.loop !0

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next310.i.1 = add nuw nsw i64 %indvars.iv309.i, 2 ; 2 uses
  %niter61.next.1 = add i64 %niter61, 2           ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %af_sort_pos.exit192.thread.i.unr-lcssa, label %.preheader.i183.i, !llvm.loop !1

af_sort_pos.exit192.thread.i.unr-lcssa:           ; preds = %bb.ad
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %af_sort_pos.exit192.thread.i, label %.preheader.i183.i.epil.preheader

.preheader.i183.i.epil.preheader:                 ; preds = %af_sort_pos.exit192.thread.i.unr-lcssa, %.preheader.i183.preheader.i
  %indvars.iv309.i.epil.init = phi i64 [ 1, %.preheader.i183.preheader.i ], [ %indvars.iv.next310.i.1, %af_sort_pos.exit192.thread.i.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod59)
  %.phi.trans.insert24.i186.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv309.i.epil.init
  %.pre.i187.i.epil = load i64, ptr %.phi.trans.insert24.i186.i.epil, align 8, !tbaa !76 ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.preheader.i183.i.epil.preheader
  %indvars.iv311.i.epil = phi i64 [ %i.fp, %bb.af ], [ %indvars.iv309.i.epil.init, %.preheader.i183.i.epil.preheader ] ; 2 uses
  %i.fp = add nsw i64 %indvars.iv311.i.epil, -1   ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !76 ; 2 uses
  %.not21.i189.i.epil = icmp slt i64 %.pre.i187.i.epil, %i.fr
  br i1 %.not21.i189.i.epil, label %bb.af, label %af_sort_pos.exit192.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311.i.epil
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !76
  store i64 %.pre.i187.i.epil, ptr %i.fq, align 8, !tbaa !76
  %.not.i191.wide.i.epil = icmp eq i64 %i.fp, 0
  br i1 %.not.i191.wide.i.epil, label %af_sort_pos.exit192.thread.i, label %bb.ae, !llvm.loop !0

af_sort_pos.exit192.thread.i:                     ; preds = %bb.ae, %bb.af, %af_sort_pos.exit192.thread.i.unr-lcssa
  %i.ft = getelementptr inbounds nuw i8, ptr %.0149.i, i64 432
  %i.fu = getelementptr inbounds nuw i8, ptr %.0149.i, i64 428 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !86 ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [56 x i8], ptr %i.ft, i64 %i.fw ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 2 uses
  %i.fz = add i32 %i.fv, 1
  store i32 %i.fz, ptr %i.fu, align 4, !tbaa !86
end_hunk_1
