inline.NumInlined: 305
inline.NumDeleted: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Cannot allocate cblk->decoded_data\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate Tier 1 handle\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to set t1 handle as TLS\0A\00", align 1
@lut_ctxno_zc = internal constant [2048 x i8] c"\00\01\03\03\01\02\03\03\05\06\07\07\06\06\07\07\00\01\03\03\01\02\03\03\05\06\07\07\06\06\07\07\05\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\05\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\02\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\02\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\00\01\05\06\01\02\06\06\03\03\07\07\03\03\07\07\00\01\05\06\01\02\06\06\03\03\07\07\03\03\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\01\02\06\06\02\02\06\06\03\03\07\07\03\03\07\07\01\02\06\06\02\02\06\06\03\03\07\07\03\03\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\05\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\05\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\06\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\06\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\01\02\06\06\02\02\06\06\03\03\07\07\03\03\07\07\01\02\06\06\02\02\06\06\03\03\07\07\03\03\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\02\02\06\06\02\02\06\06\03\03\07\07\03\03\07\07\02\02\06\06\02\02\06\06\03\03\07\07\03\03\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\03\03\07\07\03\03\07\07\04\04\07\07\04\04\07\07\06\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\06\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\06\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\06\06\08\08\06\06\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\07\07\08\08\00\01\03\03\01\02\03\03\05\06\07\07\06\06\07\07\00\01\03\03\01\02\03\03\05\06\07\07\06\06\07\07\05\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\05\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\01\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\02\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\02\02\03\03\02\02\03\03\06\06\07\07\06\06\07\07\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\06\06\07\07\06\06\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\03\03\04\04\03\03\04\04\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\00\03\01\04\03\06\04\07\01\04\02\05\04\07\05\07\00\03\01\04\03\06\04\07\01\04\02\05\04\07\05\07\01\04\02\05\04\07\05\07\02\05\02\05\05\07\05\07\01\04\02\05\04\07\05\07\02\05\02\05\05\07\05\07\03\06\04\07\06\08\07\08\04\07\05\07\07\08\07\08\03\06\04\07\06\08\07\08\04\07\05\07\07\08\07\08\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\01\04\02\05\04\07\05\07\02\05\02\05\05\07\05\07\01\04\02\05\04\07\05\07\02\05\02\05\05\07\05\07\02\05\02\05\05\07\05\07\02\05\02\05\05\07\05\07\02\05\02\05\05\07\05\07\02\05\02\05\05\07\05\07\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\03\06\04\07\06\08\07\08\04\07\05\07\07\08\07\08\03\06\04\07\06\08\07\08\04\07\05\07\07\08\07\08\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\06\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\06\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\04\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\05\07\05\07\07\08\07\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08\07\08\07\08\08\08\08\08", align 16
@.str.3 = private unnamed_addr constant [60 x i8] c"opj_t1_decode_cblk(): unsupported bpno_plus_one = %d >= 31\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"PTERM check failure: %d remaining bytes in code block (%d used / %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"PTERM check failure: %d synthesized 0xFF markers read\0A\00", align 1
@lut_ctxno_sc = internal unnamed_addr constant [256 x i8] c"\09\09\0A\0A\09\09\0A\0A\0C\0C\0D\0B\0C\0C\0D\0B\09\09\0A\0A\09\09\0A\0A\0C\0C\0B\0D\0C\0C\0B\0D\0C\0C\0D\0D\0C\0C\0B\0B\0C\09\0D\0A\09\0C\0A\0B\0C\0C\0B\0B\0C\0C\0D\0D\0C\09\0B\0A\09\0C\0A\0D\09\09\0A\0A\09\09\0A\0A\0C\0C\0D\0B\0C\0C\0D\0B\09\09\0A\0A\09\09\0A\0A\0C\0C\0B\0D\0C\0C\0B\0D\0C\0C\0D\0D\0C\0C\0B\0B\0C\09\0D\0A\09\0C\0A\0B\0C\0C\0B\0B\0C\0C\0D\0D\0C\09\0B\0A\09\0C\0A\0D\0A\0A\0A\0A\0A\0A\0A\0A\0D\0B\0D\0B\0D\0B\0D\0B\0A\0A\09\09\0A\0A\09\09\0D\0B\0C\0C\0D\0B\0C\0C\0D\0D\0D\0D\0B\0B\0B\0B\0D\0A\0D\0A\0A\0B\0A\0B\0D\0D\0C\0C\0B\0B\0C\0C\0D\0A\0C\09\0A\0B\09\0C\0A\0A\09\09\0A\0A\09\09\0B\0D\0C\0C\0B\0D\0C\0C\0A\0A\0A\0A\0A\0A\0A\0A\0B\0D\0B\0D\0B\0D\0B\0D\0B\0B\0C\0C\0D\0D\0C\0C\0B\0A\0C\09\0A\0D\09\0C\0B\0B\0B\0B\0D\0D\0D\0D\0B\0A\0B\0A\0A\0D\0A\0D", align 16
@lut_spb = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\01\00\01\00\01\00\01\00\00\01\01\00\00\01\01\00\01\00\01\00\01\00\01\00\00\00\00\01\01\01\01\00\00\00\00\00\01\00\01\00\00\00\00\01\01\01\01\00\00\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\01\00\01\00\01\00\01\00\00\01\01\00\00\01\01\00\01\00\01\00\01\00\01\00\00\00\00\01\01\01\01\00\00\00\00\00\01\00\01\00\00\00\00\01\01\01\01\00\00\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\01\00\01\00\01\00\01\00\00\00\00\00\00\00\00\00\01\00\01\00\01\00\01\00\00\00\00\01\01\01\01\00\00\00\00\00\01\00\01\00\00\00\00\01\01\01\01\00\00\00\00\00\01\00\01\01\01\00\00\01\01\00\00\00\01\00\01\00\01\00\01\01\01\01\01\01\01\01\01\00\01\00\01\00\01\00\01\00\00\00\00\01\01\01\01\00\01\00\00\01\01\00\01\00\00\00\00\01\01\01\01\00\01\00\01\01\01\01\01", align 16
@lut_nmsedec_sig = internal unnamed_addr constant [128 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 384, i16 768, i16 1152, i16 1536, i16 1920, i16 2304, i16 2688, i16 3072, i16 3456, i16 3840, i16 4224, i16 4608, i16 4992, i16 5376, i16 5760, i16 6144, i16 6528, i16 6912, i16 7296, i16 7680, i16 8064, i16 8448, i16 8832, i16 9216, i16 9600, i16 9984, i16 10368, i16 10752, i16 11136, i16 11520, i16 11904, i16 12288, i16 12672, i16 13056, i16 13440, i16 13824, i16 14208, i16 14592, i16 14976, i16 15360, i16 15744, i16 16128, i16 16512, i16 16896, i16 17280, i16 17664, i16 18048, i16 18432, i16 18816, i16 19200, i16 19584, i16 19968, i16 20352, i16 20736, i16 21120, i16 21504, i16 21888, i16 22272, i16 22656, i16 23040, i16 23424, i16 23808, i16 24192, i16 24576, i16 24960, i16 25344, i16 25728, i16 26112, i16 26496, i16 26880, i16 27264, i16 27648, i16 28032, i16 28416, i16 28800, i16 29184, i16 29568, i16 29952, i16 30336], align 16
@lut_nmsedec_sig0 = internal unnamed_addr constant [128 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 128, i16 128, i16 128, i16 256, i16 256, i16 256, i16 384, i16 384, i16 512, i16 512, i16 640, i16 640, i16 768, i16 768, i16 896, i16 1024, i16 1024, i16 1152, i16 1280, i16 1408, i16 1408, i16 1536, i16 1664, i16 1792, i16 1920, i16 2048, i16 2176, i16 2304, i16 2432, i16 2560, i16 2688, i16 2944, i16 3072, i16 3200, i16 3328, i16 3584, i16 3712, i16 3840, i16 4096, i16 4224, i16 4480, i16 4608, i16 4864, i16 4992, i16 5248, i16 5376, i16 5632, i16 5888, i16 6016, i16 6272, i16 6528, i16 6784, i16 6912, i16 7168, i16 7424, i16 7680, i16 7936, i16 8192, i16 8448, i16 8704, i16 8960, i16 9216, i16 9472, i16 9856, i16 10112, i16 10368, i16 10624, i16 11008, i16 11264, i16 11520, i16 11904, i16 12160, i16 12544, i16 12800, i16 13184, i16 13440, i16 13824, i16 14080, i16 14464, i16 14848, i16 15104, i16 15488, i16 15872, i16 16256, i16 16512, i16 16896, i16 17280, i16 17664, i16 18048, i16 18432, i16 18816, i16 19200, i16 19584, i16 19968, i16 20352, i16 20864, i16 21248, i16 21632, i16 22016, i16 22528, i16 22912, i16 23296, i16 23808, i16 24192, i16 24704, i16 25088, i16 25600, i16 25984, i16 26496, i16 26880, i16 27392, i16 27904, i16 28288, i16 28800, i16 29312, i16 29824, i16 30208, i16 30720, i16 31232, i16 31744, i16 32256], align 16
@lut_nmsedec_ref = internal unnamed_addr constant [128 x i16] [i16 6144, i16 6016, i16 5888, i16 5760, i16 5632, i16 5504, i16 5376, i16 5248, i16 5120, i16 4992, i16 4864, i16 4736, i16 4608, i16 4480, i16 4352, i16 4224, i16 4096, i16 3968, i16 3840, i16 3712, i16 3584, i16 3456, i16 3328, i16 3200, i16 3072, i16 2944, i16 2816, i16 2688, i16 2560, i16 2432, i16 2304, i16 2176, i16 2048, i16 1920, i16 1792, i16 1664, i16 1536, i16 1408, i16 1280, i16 1152, i16 1024, i16 896, i16 768, i16 640, i16 512, i16 384, i16 256, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 256, i16 384, i16 512, i16 640, i16 768, i16 896, i16 1024, i16 1152, i16 1280, i16 1408, i16 1536, i16 1664, i16 1792, i16 1920, i16 2048, i16 2176, i16 2304, i16 2432, i16 2560, i16 2688, i16 2816, i16 2944, i16 3072, i16 3200, i16 3328, i16 3456, i16 3584, i16 3712, i16 3840, i16 3968, i16 4096, i16 4224, i16 4352, i16 4480, i16 4608, i16 4736, i16 4864, i16 4992, i16 5120, i16 5248, i16 5376, i16 5504, i16 5632, i16 5760, i16 5888, i16 6016], align 16
@lut_nmsedec_ref0 = internal unnamed_addr constant [128 x i16] [i16 8192, i16 7936, i16 7680, i16 7424, i16 7168, i16 6912, i16 6784, i16 6528, i16 6272, i16 6016, i16 5888, i16 5632, i16 5376, i16 5248, i16 4992, i16 4864, i16 4608, i16 4480, i16 4224, i16 4096, i16 3840, i16 3712, i16 3584, i16 3328, i16 3200, i16 3072, i16 2944, i16 2688, i16 2560, i16 2432, i16 2304, i16 2176, i16 2048, i16 1920, i16 1792, i16 1664, i16 1536, i16 1408, i16 1408, i16 1280, i16 1152, i16 1024, i16 1024, i16 896, i16 768, i16 768, i16 640, i16 640, i16 512, i16 512, i16 384, i16 384, i16 256, i16 256, i16 256, i16 128, i16 128, i16 128, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 128, i16 128, i16 128, i16 256, i16 256, i16 256, i16 384, i16 384, i16 512, i16 512, i16 640, i16 640, i16 768, i16 768, i16 896, i16 1024, i16 1024, i16 1152, i16 1280, i16 1408, i16 1408, i16 1536, i16 1664, i16 1792, i16 1920, i16 2048, i16 2176, i16 2304, i16 2432, i16 2560, i16 2688, i16 2944, i16 3072, i16 3200, i16 3328, i16 3584, i16 3712, i16 3840, i16 4096, i16 4224, i16 4480, i16 4608, i16 4864, i16 4992, i16 5248, i16 5376, i16 5632, i16 5888, i16 6016, i16 6272, i16 6528, i16 6784, i16 6912, i16 7168, i16 7424, i16 7680, i16 7936], align 16

; Function Attrs: nounwind uwtable
define ptr @opj_t1_create(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @opj_calloc(i64 noundef 1, i64 noundef 272) #12 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i32 %0, ptr %i.b, align 8, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @opj_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @opj_t1_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opj_aligned_free(ptr noundef nonnull %i.b) #12
  store ptr null, ptr %i.a, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @opj_aligned_free(ptr noundef nonnull %i.d) #12
  store ptr null, ptr %i.c, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void @opj_free(ptr noundef %i.f) #12
  tail call void @opj_free(ptr noundef nonnull %0) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare void @opj_aligned_free(ptr noundef) local_unnamed_addr #2

declare void @opj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @opj_t1_decode_cblks(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not144 = icmp eq i32 %i.d, 0
  br i1 %.not144, label %.thread126, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph143, %.critedge
  %i.h = phi i32 [ %i.d, %.lr.ph143 ], [ %i.de, %.critedge ]
  %indvars.iv160 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next161, %.critedge ] ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw [192 x i8], ptr %i.i, i64 %indvars.iv160 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %.not108139.not = icmp eq i32 %i.l, 0
  br i1 %.not108139.not, label %.critedge, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  %.pre = load i32, ptr %i.n, align 8, !tbaa !32
  %.pre163 = load i32, ptr %i.o, align 4, !tbaa !33
  %i.p = trunc nuw i64 %indvars.iv160 to i32      ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph141, %.thread123
  %i.q = phi i32 [ %i.l, %.lr.ph141 ], [ %i.da, %.thread123 ]
  %i.r = phi i32 [ %.pre163, %.lr.ph141 ], [ %i.db, %.thread123 ] ; 2 uses
  %i.s = phi i32 [ %.pre, %.lr.ph141 ], [ %i.dc, %.thread123 ] ; 2 uses
  %indvars.iv157 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next158, %.thread123 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %indvars.iv157 ; 3 uses
  %i.u = mul i32 %i.r, %i.s
  %.not145 = icmp eq i32 %i.u, 0
  br i1 %.not145, label %.thread123, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph138, %.thread119
  %indvars.iv154 = phi i64 [ 0, %.lr.ph138 ], [ %indvars.iv.next155, %.thread119 ] ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %indvars.iv154 ; 8 uses
  %i.z = load i32, ptr %i.f, align 8, !tbaa !38
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !39
  %i.ab = load i32, ptr %i.y, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !45
  %i.ai = tail call i32 @opj_tcd_is_subband_area_of_interest(ptr noundef %0, i32 noundef %i.z, i32 noundef %i.p, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.ah) #12
  %.not = icmp eq i32 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 3 uses
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !47 ; 2 uses
  %i.an = mul i32 %i.am, %i.al
  %.not147 = icmp eq i32 %i.an, 0                 ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader131

.preheader131:                                    ; preds = %bb.d
  br i1 %.not147, label %.thread119, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader131
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.h

.preheader:                                       ; preds = %bb.d
  br i1 %.not147, label %.thread119, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph136, %bb.g
  %i.aq = phi i32 [ %i.am, %.lr.ph136 ], [ %i.aw, %bb.g ]
  %i.ar = phi i32 [ %i.al, %.lr.ph136 ], [ %i.ax, %bb.g ]
  %indvars.iv151 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next152, %bb.g ] ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw [88 x i8], ptr %i.as, i64 %indvars.iv151
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49 ; 2 uses
  %.not101 = icmp eq ptr %i.av, null
  br i1 %.not101, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @opj_aligned_free(ptr noundef nonnull %i.av) #12
  store ptr null, ptr %i.au, align 8, !tbaa !49
  %.pre164 = load i32, ptr %i.aj, align 8, !tbaa !46
  %.pre165 = load i32, ptr %i.ak, align 4, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi i32 [ %.pre165, %bb.f ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ax = phi i32 [ %.pre164, %bb.f ], [ %i.ar, %bb.e ] ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.ay = mul i32 %i.aw, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next152, %i.az
  br i1 %i.ba, label %bb.e, label %.thread119, !llvm.loop !53

bb.h:                                             ; preds = %.lr.ph, %.thread113
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread113 ] ; 2 uses
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw [88 x i8], ptr %i.bb, i64 %indvars.iv ; 7 uses
  %i.bd = load i32, ptr %i.f, align 8, !tbaa !38
  %i.be = load i32, ptr %i.w, align 8, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 20 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 28 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !58
  %i.bn = tail call i32 @opj_tcd_is_subband_area_of_interest(ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.p, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm) #12
  %.not102 = icmp eq i32 %i.bn, 0
  br i1 %.not102, label %bb.i, label %bb.k

end_hunk_0
begin_hunk_1_@opj_t1_cblk_encode_processor:bb.a
  %i.jm = icmp slt <4 x i32> %wide.load, zeroinitializer ; 5 uses
  %i.jn = icmp slt <4 x i32> %wide.load788, zeroinitializer ; 5 uses
  %i.jo = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> splat (i32 -2147483647))
  %i.jp = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load788, <4 x i32> splat (i32 -2147483647))
  %i.jq = sub nsw <4 x i32> zeroinitializer, %i.jo ; 5 uses
  %i.jr = sub nsw <4 x i32> zeroinitializer, %i.jp ; 5 uses
  %i.js = extractelement <4 x i1> %i.jm, i64 0
  br i1 %i.js, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.jt = extractelement <4 x i32> %i.jq, i64 0
  %i.ju = or disjoint i32 %i.jt, -2147483648
  store i32 %i.ju, ptr %next.gep, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.jv = extractelement <4 x i1> %i.jm, i64 1
  br i1 %i.jv, label %pred.store.if789, label %pred.store.continue790

pred.store.if789:                                 ; preds = %pred.store.continue
  %i.jw = extractelement <4 x i32> %i.jq, i64 1
  %i.jx = or disjoint i32 %i.jw, -2147483648
  store i32 %i.jx, ptr %next.gep781, align 4
  br label %pred.store.continue790

pred.store.continue790:                           ; preds = %pred.store.if789, %pred.store.continue
  %i.jy = extractelement <4 x i1> %i.jm, i64 2
  br i1 %i.jy, label %pred.store.if791, label %pred.store.continue792

pred.store.if791:                                 ; preds = %pred.store.continue790
  %i.jz = extractelement <4 x i32> %i.jq, i64 2
  %i.ka = or disjoint i32 %i.jz, -2147483648
  store i32 %i.ka, ptr %next.gep782, align 4
  br label %pred.store.continue792

pred.store.continue792:                           ; preds = %pred.store.if791, %pred.store.continue790
  %i.kb = extractelement <4 x i1> %i.jm, i64 3
  br i1 %i.kb, label %pred.store.if793, label %pred.store.continue794

pred.store.if793:                                 ; preds = %pred.store.continue792
  %i.kc = extractelement <4 x i32> %i.jq, i64 3
  %i.kd = or disjoint i32 %i.kc, -2147483648
  store i32 %i.kd, ptr %next.gep783, align 4
  br label %pred.store.continue794

pred.store.continue794:                           ; preds = %pred.store.if793, %pred.store.continue792
  %i.ke = extractelement <4 x i1> %i.jn, i64 0
  br i1 %i.ke, label %pred.store.if795, label %pred.store.continue796

pred.store.if795:                                 ; preds = %pred.store.continue794
  %i.kf = extractelement <4 x i32> %i.jr, i64 0
  %i.kg = or disjoint i32 %i.kf, -2147483648
  store i32 %i.kg, ptr %next.gep784, align 4
  br label %pred.store.continue796

pred.store.continue796:                           ; preds = %pred.store.if795, %pred.store.continue794
  %i.kh = extractelement <4 x i1> %i.jn, i64 1
  br i1 %i.kh, label %pred.store.if797, label %pred.store.continue798

pred.store.if797:                                 ; preds = %pred.store.continue796
  %i.ki = extractelement <4 x i32> %i.jr, i64 1
  %i.kj = or disjoint i32 %i.ki, -2147483648
  store i32 %i.kj, ptr %next.gep785, align 4
  br label %pred.store.continue798

pred.store.continue798:                           ; preds = %pred.store.if797, %pred.store.continue796
  %i.kk = extractelement <4 x i1> %i.jn, i64 2
  br i1 %i.kk, label %pred.store.if799, label %pred.store.continue800

pred.store.if799:                                 ; preds = %pred.store.continue798
  %i.kl = extractelement <4 x i32> %i.jr, i64 2
  %i.km = or disjoint i32 %i.kl, -2147483648
  store i32 %i.km, ptr %next.gep786, align 4
  br label %pred.store.continue800

pred.store.continue800:                           ; preds = %pred.store.if799, %pred.store.continue798
  %i.kn = extractelement <4 x i1> %i.jn, i64 3
  br i1 %i.kn, label %pred.store.if801, label %pred.store.continue802

pred.store.if801:                                 ; preds = %pred.store.continue800
  %i.ko = extractelement <4 x i32> %i.jr, i64 3
  %i.kp = or disjoint i32 %i.ko, -2147483648
  store i32 %i.kp, ptr %next.gep787, align 4
  br label %pred.store.continue802

pred.store.continue802:                           ; preds = %pred.store.if801, %pred.store.continue800
  %minmaxop = select <4 x i1> %i.jm, <4 x i32> %i.jq, <4 x i32> %wide.load
  %predphi = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %minmaxop, <4 x i32> %vec.phi) ; 2 uses
  %minmaxop805 = select <4 x i1> %i.jn, <4 x i32> %i.jr, <4 x i32> %wide.load788
  %predphi803 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %minmaxop805, <4 x i32> %vec.phi780) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kq = icmp eq i64 %index.next, %n.vec
  br i1 %i.kq, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %pred.store.continue802
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %predphi, <4 x i32> %predphi803)
  %i.kr = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.iz
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader900

.lr.ph.i.preheader900:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.1138389.i.ph = phi ptr [ %.0137393.i, %.lr.ph.i.preheader ], [ %i.jb, %middle.block ]
  %.1140388.i.ph = phi i32 [ %.0139392.i, %.lr.ph.i.preheader ], [ %i.kr, %middle.block ]
  %.0143387.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.jc, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader900, %bb.s
  %.1138389.i = phi ptr [ %i.la, %bb.s ], [ %.1138389.i.ph, %.lr.ph.i.preheader900 ] ; 3 uses
  %.1140388.i = phi i32 [ %.2141.i, %bb.s ], [ %.1140388.i.ph, %.lr.ph.i.preheader900 ] ; 2 uses
  %.0143387.i = phi i32 [ %i.kz, %bb.s ], [ %.0143387.i.ph, %.lr.ph.i.preheader900 ]
  %i.ks = load i32, ptr %.1138389.i, align 4, !tbaa !3 ; 3 uses
  %i.kt = icmp slt i32 %i.ks, 0
  br i1 %i.kt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.ku = tail call i32 @llvm.umax.i32(i32 %i.ks, i32 -2147483647)
  %i.kv = sub nsw i32 0, %i.ku                    ; 2 uses
  %i.kw = tail call range(i32 0, -2147483648) i32 @llvm.umax.i32(i32 range(i32 0, -2147483648) %.1140388.i, i32 range(i32 0, -2147483648) %i.kv)
  %i.kx = or disjoint i32 %i.kv, -2147483648
  store i32 %i.kx, ptr %.1138389.i, align 4
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.ky = tail call range(i32 0, -2147483648) i32 @llvm.umax.i32(i32 range(i32 0, -2147483648) %.1140388.i, i32 range(i32 0, -2147483648) %i.ks)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2141.i = phi i32 [ %i.kw, %bb.q ], [ %i.ky, %bb.r ] ; 2 uses
  %i.kz = add nuw i32 %.0143387.i, 1              ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.1138389.i, i64 4 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.kz, %i.ix
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !234

._crit_edge.loopexit.i:                           ; preds = %bb.s, %middle.block
  %.2141.i.lcssa = phi i32 [ %i.kr, %middle.block ], [ %.2141.i, %bb.s ]
  %.lcssa773 = phi ptr [ %i.jb, %middle.block ], [ %i.la, %bb.s ]
  %.pre.i = load i32, ptr %i.bq, align 4, !tbaa !108
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph395.split.i
  %i.lb = phi i32 [ %i.iy, %.lr.ph395.split.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1140.lcssa.i = phi i32 [ %.0139392.i, %.lr.ph395.split.i ], [ %.2141.i.lcssa, %._crit_edge.loopexit.i ] ; 3 uses
  %.1138.lcssa.i = phi ptr [ %.0137393.i, %.lr.ph395.split.i ], [ %.lcssa773, %._crit_edge.loopexit.i ]
  %i.lc = add nuw i32 %.0142391.i, 1              ; 2 uses
  %i.ld = icmp ult i32 %i.lc, %i.lb
  br i1 %i.ld, label %.lr.ph395.splitthread-pre-split.i, label %._crit_edge396.i, !llvm.loop !235

._crit_edge396.i:                                 ; preds = %._crit_edge.i
  switch i32 %.1140.lcssa.i, label %.lr.ph.i.i [
    i32 0, label %.thread.i
    i32 1, label %.thread288.i
  ]

.thread.i:                                        ; preds = %._crit_edge396.i, %.lr.ph395.i, %.loopexit
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %i.le, align 8, !tbaa !237
  br label %.loopexit.sink.split.i

.thread288.i:                                     ; preds = %._crit_edge396.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 -5, ptr %i.lf, align 8, !tbaa !237
  br label %bb.u

.lr.ph.i.i:                                       ; preds = %._crit_edge396.i, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.lh, %.lr.ph.i.i ], [ 0, %._crit_edge396.i ] ; 2 uses
  %.045.i.i = phi i32 [ %i.lg, %.lr.ph.i.i ], [ %.1140.lcssa.i, %._crit_edge396.i ] ; 2 uses
  %i.lg = lshr i32 %.045.i.i, 1
  %i.lh = add nuw nsw i32 %.06.i.i, 1
  %i.li = icmp samesign ugt i32 %.045.i.i, 3
  br i1 %i.li, label %.lr.ph.i.i, label %bb.t, !llvm.loop !238

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.lj = add nsw i32 %.06.i.i, -4                ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i32 %i.lj, ptr %i.lk, align 8, !tbaa !237
  %i.ll = icmp eq i32 %i.lj, 0
  br i1 %i.ll, label %.loopexit.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread288.i
  %i.lm = phi ptr [ %i.lf, %.thread288.i ], [ %i.lk, %bb.t ] ; 2 uses
  %i.ln = phi i32 [ -5, %.thread288.i ], [ %i.lj, %bb.t ]
  %.fr423.i = freeze i32 %i.ln
  %i.lo = add i32 %.fr423.i, -1                   ; 2 uses
  tail call void @opj_mqc_resetstates(ptr noundef nonnull %.0) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0, i32 noundef 18, i32 noundef 0, i32 noundef 46) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0, i32 noundef 17, i32 noundef 0, i32 noundef 3) #12
  tail call void @opj_mqc_setstate(ptr noundef nonnull %.0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #12
  %i.lp = load ptr, ptr %i.b, align 8, !tbaa !239
  tail call void @opj_mqc_init_enc(ptr noundef nonnull %.0, ptr noundef %i.lp) #12
  %i.lq = icmp sgt i32 %i.lo, -1
  br i1 %i.lq, label %.lr.ph409.i, label %.loopexit.sink.split.i

.lr.ph409.i:                                      ; preds = %bb.u
  %i.lr = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ls = trunc i32 %i.ik to i1
  %i.lt = getelementptr inbounds nuw i8, ptr %.0, i64 192 ; 6 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 6 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 50 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0, i64 224 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0, i64 176 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0, i64 184 ; 11 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 21 uses
  %i.ma = and i32 %i.ik, 8                        ; 2 uses
  %i.mb = icmp ne i32 %i.ma, 0                    ; 3 uses
  %i.mc = and i32 %i.ik, 32
  %.not153.i = icmp eq i32 %i.mc, 0
  %i.md = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 48 uses
  %or.cond.not.i.i.i = icmp eq i32 %i.ma, 0
  %.not.i267.i = icmp ne ptr %i.in, null
  %i.me = icmp ult i32 %i.ia, %i.ip
  %or.cond.i268.i = and i1 %.not.i267.i, %i.me
  %i.mf = zext i32 %i.ia to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.mf
  %i.mh = icmp eq i32 %i.if, 1
  %i.mi = icmp eq i32 %i.hz, 0
  %i.mj = icmp eq i32 %i.hz, 3
  %i.mk = select i1 %i.mj, i32 4, i32 2
  %i.ml = select i1 %i.mi, i32 1, i32 %i.mk
  %i.mm = uitofp nneg i32 %i.ml to double
  %i.mn = fdiv double %i.ii, %i.mm
  %i.mo = and i32 %i.ik, 4
  %.not.i270.i = icmp ne i32 %i.mo, 0
  %i.mp = and i32 %i.ik, 1
  %.not15.i.i = icmp eq i32 %i.mp, 0
  %i.mq = and i32 %i.ik, 16                       ; 3 uses
  %.not155.i = icmp eq i32 %i.mq, 0
  %i.mr = and i32 %i.ik, 2
  %.not156.i = icmp eq i32 %i.mr, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.np, %.lr.ph409.i
  %.0128407.i = phi double [ 0.000000e+00, %.lr.ph409.i ], [ %i.cgo, %bb.np ]
  %.0131406.i = phi i32 [ 0, %.lr.ph409.i ], [ %i.chk, %bb.np ] ; 4 uses
  %.0133405.i = phi i32 [ %i.lo, %.lr.ph409.i ], [ %spec.select157.i, %bb.np ] ; 26 uses
  %.0135403.i = phi i32 [ 2, %.lr.ph409.i ], [ %spec.select.i, %bb.np ] ; 5 uses
  %i.ms = load ptr, ptr %i.lr, align 8, !tbaa !240 ; 2 uses
  %i.mt = zext i32 %.0131406.i to i64
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %i.mt ; 4 uses
  %i.mv = load i32, ptr %i.lm, align 8, !tbaa !237
  %i.mw = add nsw i32 %i.mv, -4
  %i.mx = icmp slt i32 %.0133405.i, %i.mw
  %i.my = icmp ult i32 %.0135403.i, 2
  %or.cond.i = and i1 %i.my, %i.mx
  %i.mz = and i1 %or.cond.i, %i.ls                ; 18 uses
  %.not151.i = icmp eq i32 %.0131406.i, 0
  br i1 %.not151.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.na = add i32 %.0131406.i, -1
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %i.nb
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 20
  %i.ne = load i8, ptr %i.nd, align 4
  %i.nf = and i8 %i.ne, 1
  %.not152.i = icmp eq i8 %i.nf, 0
  br i1 %.not152.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.mz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @opj_mqc_bypass_init_enc(ptr noundef nonnull %.0) #12
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @opj_mqc_restart_init_enc(ptr noundef nonnull %.0) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %i.ng = shl nuw i32 64, %.0133405.i             ; 10 uses
  %i.nh = load i32, ptr %i.bq, align 4, !tbaa !108 ; 10 uses
  %.not1184.i.i = icmp ult i32 %i.nh, 4           ; 3 uses
  switch i32 %.0135403.i, label %default.unreachable.i [
    i32 0, label %bb.ab
    i32 1, label %bb.gd
    i32 2, label %bb.jl
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ni = load ptr, ptr %i.lw, align 8, !tbaa !16 ; 2 uses
  %i.nj = load i32, ptr %i.bo, align 8, !tbaa !107 ; 2 uses
  %i.nk = add i32 %i.nj, 3
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nl ; 2 uses
  %i.nn = load ptr, ptr %i.lt, align 8, !tbaa !120 ; 3 uses
  %i.no = load i32, ptr %.0, align 8, !tbaa !110  ; 3 uses
  %i.np = load i32, ptr %i.lu, align 4, !tbaa !121 ; 3 uses
  %i.nq = load i32, ptr %i.lv, align 8, !tbaa !109 ; 3 uses
  %i.nr = load ptr, ptr %i.iu, align 8, !tbaa !15 ; 3 uses
  br i1 %.not1184.i.i, label %._crit_edge1142.i.i, label %.lr.ph1141.i.i

.lr.ph1141.i.i:                                   ; preds = %bb.ab
  %i.ns = and i32 %i.ng, 2147483584               ; 4 uses
  %.not.i.i.i = icmp eq i32 %.0133405.i, 0        ; 4 uses
  %.not1185.i.i = icmp eq i32 %i.nj, 0
  br i1 %.not1185.i.i, label %.lr.ph1141.split.us.i.i, label %.lr.ph1141.split.i.i

.lr.ph1141.split.us.i.i:                          ; preds = %.lr.ph1141.i.i
  %i.nt = and i32 %i.nh, -4
  %i.nu = add i32 %i.nh, -4
  %i.nv = lshr i32 %i.nu, 2
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = shl nuw nsw i64 %i.nw, 3
  %i.ny = getelementptr i8, ptr %i.ni, i64 %i.nx
  %scevgep.i.i = getelementptr i8, ptr %i.ny, i64 20
  br label %._crit_edge1142.i.i

.lr.ph1141.split.i.i:                             ; preds = %.lr.ph1141.i.i, %._crit_edge.i.i
  %.1286.i = phi i32 [ %.11.i, %._crit_edge.i.i ], [ 0, %.lr.ph1141.i.i ] ; 2 uses
  %i.nz = phi i32 [ %i.amk, %._crit_edge.i.i ], [ %i.nh, %.lr.ph1141.i.i ]
  %.07461139.i.i = phi i32 [ %i.aml, %._crit_edge.i.i ], [ 0, %.lr.ph1141.i.i ]
  %.07471138.i.i = phi ptr [ %i.amm, %._crit_edge.i.i ], [ %i.nm, %.lr.ph1141.i.i ] ; 2 uses
  %.07491137.i.i = phi ptr [ %.1750.lcssa.i.i, %._crit_edge.i.i ], [ %i.nn, %.lr.ph1141.i.i ] ; 2 uses
  %.07521136.i.i = phi i32 [ %.1753.lcssa.i.i, %._crit_edge.i.i ], [ %i.no, %.lr.ph1141.i.i ] ; 2 uses
  %.07691135.i.i = phi i32 [ %.1770.lcssa.i.i, %._crit_edge.i.i ], [ %i.np, %.lr.ph1141.i.i ] ; 2 uses
  %.08411134.i.i = phi i32 [ %.1842.lcssa.i.i, %._crit_edge.i.i ], [ %i.nq, %.lr.ph1141.i.i ] ; 2 uses
  %.09231133.i.i = phi ptr [ %.1924.lcssa.i.i, %._crit_edge.i.i ], [ %i.nr, %.lr.ph1141.i.i ] ; 2 uses
  %i.oa = load i32, ptr %i.bo, align 8, !tbaa !107 ; 2 uses
  %.not1186.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not1186.i.i, label %._crit_edge.i.i, label %.lr.ph.i158.i

.lr.ph.i158.i:                                    ; preds = %.lr.ph1141.split.i.i, %bb.es
  %.2287.i = phi i32 [ %.10.i, %bb.es ], [ %.1286.i, %.lr.ph1141.split.i.i ] ; 4 uses
  %.01127.i.i = phi i32 [ %i.amh, %bb.es ], [ 0, %.lr.ph1141.split.i.i ]
  %.17481125.i.i = phi ptr [ %i.ami, %bb.es ], [ %.07471138.i.i, %.lr.ph1141.split.i.i ] ; 28 uses
  %.17501124.i.i = phi ptr [ %.10.i.i, %bb.es ], [ %.07491137.i.i, %.lr.ph1141.split.i.i ] ; 2 uses
  %.17531123.i.i = phi i32 [ %.70.i.i, %bb.es ], [ %.07521136.i.i, %.lr.ph1141.split.i.i ] ; 6 uses
  %.17701122.i.i = phi i32 [ %.54823.i.i, %bb.es ], [ %.07691135.i.i, %.lr.ph1141.split.i.i ] ; 5 uses
  %.18421121.i.i = phi i32 [ %.62903.i.i, %bb.es ], [ %.08411134.i.i, %.lr.ph1141.split.i.i ] ; 7 uses
  %.19241120.i.i = phi ptr [ %i.amj, %bb.es ], [ %.09231133.i.i, %.lr.ph1141.split.i.i ] ; 6 uses
  %i.ob = load i32, ptr %.17481125.i.i, align 4, !tbaa !3 ; 4 uses
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.es, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i158.i
  %i.od = and i32 %i.ob, 2097168
  %i.oe = icmp ne i32 %i.od, 0
  %i.of = and i32 %i.ob, 495                      ; 2 uses
  %.not1022.i.i = icmp eq i32 %i.of, 0
  %or.cond.i.i = or i1 %i.oe, %.not1022.i.i
  br i1 %or.cond.i.i, label %bb.bg, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val1049.i.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %.val1049.i.i, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !48
  %i.oj = load i32, ptr %.19241120.i.i, align 4, !tbaa !3
  %i.ok = and i32 %i.oj, %i.ns
  %.not1023.i.i = icmp ne i32 %i.ok, 0            ; 2 uses
  %i.ol = zext i1 %.not1023.i.i to i32            ; 2 uses
  %i.om = zext i8 %i.oi to i64
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.om ; 4 uses
  br i1 %i.mz, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.oo = icmp eq i32 %.18421121.i.i, -559038737
  %i.op = add i32 %.18421121.i.i, -1
  %i.oq = select i1 %i.oo, i32 7, i32 %i.op       ; 3 uses
  %i.or = shl nuw i32 %i.ol, %i.oq
  %i.os = add i32 %i.or, %.17531123.i.i           ; 2 uses
  %i.ot = icmp eq i32 %i.oq, 0
  br i1 %i.ot, label %bb.af, label %.loopexit1097.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ou = trunc i32 %i.os to i8
  %i.ov = load ptr, ptr %i.md, align 8, !tbaa !111
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !48
  %i.ow = load ptr, ptr %i.md, align 8, !tbaa !111 ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !48
  %i.oy = icmp eq i8 %i.ox, -1
  %spec.store.select.i.i = select i1 %i.oy, i32 7, i32 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 1
  store ptr %i.oz, ptr %i.md, align 8, !tbaa !111
  br label %.loopexit1097.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.pa = load ptr, ptr %i.on, align 8, !tbaa !122 ; 4 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !126
  %i.pd = icmp eq i32 %i.pc, %i.ol
  %i.pe = load i32, ptr %i.pa, align 8, !tbaa !124 ; 8 uses
  %i.pf = sub i32 %.17701122.i.i, %i.pe           ; 6 uses
  br i1 %i.pd, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.pg = and i32 %i.pf, 32768
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.pi = icmp ult i32 %i.pf, %i.pe
  %.2771.i.i = tail call i32 @llvm.umax.i32(i32 %i.pf, i32 %i.pe)
  %i.pj = select i1 %i.pi, i32 0, i32 %i.pe
  %.2754.i.i = add i32 %i.pj, %.17531123.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !241
  store ptr %i.pl, ptr %i.on, align 8, !tbaa !122
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
end_hunk_1
begin_hunk_2_@opj_t1_cblk_encode_processor:bb.a
  %i.bkg = zext nneg i32 %i.bkf to i64
  %i.bkh = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_ref0, i64 %i.bkg
  %.0.i568.us666.i.us.i = load i16, ptr %i.bkh, align 2, !tbaa !245
  %i.bki = sext i16 %.0.i568.us666.i.us.i to i32
  %i.bkj = add nsw i32 %.29.us.i, %i.bki
  %.reass.i = lshr i32 %i.bke, 6
  %.reass.lobit.i = and i32 %.reass.i, 1
  %i.bkk = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.bkd
  %i.bkl = icmp eq i32 %.28474627.us661.i.us.i, -559038737
  %i.bkm = add i32 %.28474627.us661.i.us.i, -1
  %i.bkn = select i1 %i.bkl, i32 7, i32 %i.bkm    ; 3 uses
  %i.bko = shl nuw i32 %.reass.lobit.i, %i.bkn
  %i.bkp = add i32 %i.bko, %.36630.us659.i.us.i   ; 2 uses
  %i.bkq = icmp eq i32 %i.bkn, 0
  br i1 %i.bkq, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.bkr = trunc i32 %i.bkp to i8
  %i.bks = load ptr, ptr %i.md, align 8, !tbaa !111
  store i8 %i.bkr, ptr %i.bks, align 1, !tbaa !48
  %i.bkt = load ptr, ptr %i.md, align 8, !tbaa !111 ; 2 uses
  %i.bku = load i8, ptr %i.bkt, align 1, !tbaa !48
  %i.bkv = icmp eq i8 %i.bku, -1
  %spec.store.select9.us.i.us.i = select i1 %i.bkv, i32 7, i32 8
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkt, i64 1
  store ptr %i.bkw, ptr %i.md, align 8, !tbaa !111
  %.pre527.i = load i32, ptr %.2648.us.i.i, align 4, !tbaa !3
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.bkx = phi i32 [ %.pre527.i, %bb.jd ], [ %i.bjt, %bb.jc ]
  %.33479.us668.i.us.i = phi i32 [ %spec.store.select9.us.i.us.i, %bb.jd ], [ %i.bkn, %bb.jc ]
  %.43.us669.i.us.i = phi i32 [ 0, %bb.jd ], [ %i.bkp, %bb.jc ]
  %i.bky = shl i32 1048576, %i.bju
  %i.bkz = or i32 %i.bkx, %i.bky                  ; 2 uses
  store i32 %i.bkz, ptr %.2648.us.i.i, align 4, !tbaa !3
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %.preheader.us.i.us.i
  %.30.us.i = phi i32 [ %i.bkj, %bb.je ], [ %.29.us.i, %.preheader.us.i.us.i ] ; 2 uses
  %i.bla = phi i32 [ %i.bkz, %bb.je ], [ %i.bjt, %.preheader.us.i.us.i ]
  %.34480.us670.i.us.i = phi i32 [ %.33479.us668.i.us.i, %bb.je ], [ %.28474627.us661.i.us.i, %.preheader.us.i.us.i ] ; 2 uses
  %.44.us671.i.us.i = phi i32 [ %.43.us669.i.us.i, %bb.je ], [ %.36630.us659.i.us.i, %.preheader.us.i.us.i ] ; 2 uses
  %.9.us672.i.us.i = phi ptr [ %i.bkk, %bb.je ], [ %.8631.us658.i.us.i, %.preheader.us.i.us.i ] ; 2 uses
  %i.blb = add nuw i32 %.0408629.us660.i.us.i, 1  ; 2 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %.3486626.us662.i.us.i, i64 4 ; 2 uses
  %exitcond.not.i174.us.i = icmp eq i32 %i.blb, %i.bgs
  br i1 %exitcond.not.i174.us.i, label %..loopexit570_crit_edge.split.us673.loopexit.i.i, label %.preheader.us.i.us.i, !llvm.loop !282

.preheader.us.i.i:                                ; preds = %.preheader.us.i.preheader.i, %bb.jj
  %.29.i = phi i32 [ %.30.i, %bb.jj ], [ %.28.i, %.preheader.us.i.preheader.i ] ; 2 uses
  %i.bld = phi i32 [ %i.bmo, %bb.jj ], [ %i.bjq, %.preheader.us.i.preheader.i ] ; 4 uses
  %.8631.us658.i.i = phi ptr [ %.9.us672.i.i, %bb.jj ], [ %.7647.us.i.i, %.preheader.us.i.preheader.i ]
  %.36630.us659.i.i = phi i32 [ %.44.us671.i.i, %bb.jj ], [ %.35646.us.i.i, %.preheader.us.i.preheader.i ] ; 2 uses
  %.0408629.us660.i.i = phi i32 [ %i.bmp, %bb.jj ], [ 0, %.preheader.us.i.preheader.i ] ; 2 uses
  %.28474627.us661.i.i = phi i32 [ %.34480.us670.i.i, %bb.jj ], [ %.27473644.us.i.i, %.preheader.us.i.preheader.i ] ; 3 uses
  %.3486626.us662.i.i = phi ptr [ %i.bmq, %bb.jj ], [ %.2485643.us.i.i, %.preheader.us.i.preheader.i ] ; 2 uses
  %i.ble = mul i32 %.0408629.us660.i.i, 3         ; 4 uses
  %i.blf = shl i32 2097168, %i.ble
  %i.blg = and i32 %i.blf, %i.bld
  %i.blh = shl i32 16, %i.ble
  %i.bli = icmp eq i32 %i.blg, %i.blh
  br i1 %i.bli, label %bb.jg, label %bb.jj

bb.jg:                                            ; preds = %.preheader.us.i.i
  %i.blj = lshr i32 %i.bld, %i.ble                ; 2 uses
  %i.blk = and i32 %i.blj, 495
  %.not.i564.us663.i.i = icmp eq i32 %i.blk, 0
  %i.bll = select i1 %.not.i564.us663.i.i, i64 14, i64 15
  %i.blm = and i32 %i.blj, 1048576
  %.not4.i565.us664.i.i = icmp eq i32 %i.blm, 0
  %i.bln = select i1 %.not4.i565.us664.i.i, i64 %i.bll, i64 16
  %i.blo = load i32, ptr %.3486626.us662.i.i, align 4, !tbaa !3
  %i.blp = and i32 %i.blo, 2147483647             ; 2 uses
  %i.blq = lshr i32 %i.blp, %.0133405.i
  %i.blr = and i32 %i.blq, 127
  %i.bls = zext nneg i32 %i.blr to i64
  %i.blt = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_ref, i64 %i.bls
  %.0.i568.us666.i.i = load i16, ptr %i.blt, align 2, !tbaa !245
  %i.blu = sext i16 %.0.i568.us666.i.i to i32
  %i.blv = add nsw i32 %.29.i, %i.blu
  %i.blw = and i32 %i.blp, %i.ng
  %.not.us667.i.i = icmp ne i32 %i.blw, 0
  %i.blx = zext i1 %.not.us667.i.i to i32
  %i.bly = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.bln
  %i.blz = icmp eq i32 %.28474627.us661.i.i, -559038737
  %i.bma = add i32 %.28474627.us661.i.i, -1
  %i.bmb = select i1 %i.blz, i32 7, i32 %i.bma    ; 3 uses
  %i.bmc = shl nuw i32 %i.blx, %i.bmb
  %i.bmd = add i32 %i.bmc, %.36630.us659.i.i      ; 2 uses
  %i.bme = icmp eq i32 %i.bmb, 0
  br i1 %i.bme, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.bmf = trunc i32 %i.bmd to i8
  %i.bmg = load ptr, ptr %i.md, align 8, !tbaa !111
  store i8 %i.bmf, ptr %i.bmg, align 1, !tbaa !48
  %i.bmh = load ptr, ptr %i.md, align 8, !tbaa !111 ; 2 uses
  %i.bmi = load i8, ptr %i.bmh, align 1, !tbaa !48
  %i.bmj = icmp eq i8 %i.bmi, -1
  %spec.store.select9.us.i.i = select i1 %i.bmj, i32 7, i32 8
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmh, i64 1
  store ptr %i.bmk, ptr %i.md, align 8, !tbaa !111
  %.pre526.i = load i32, ptr %.2648.us.i.i, align 4, !tbaa !3
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.bml = phi i32 [ %.pre526.i, %bb.jh ], [ %i.bld, %bb.jg ]
  %.33479.us668.i.i = phi i32 [ %spec.store.select9.us.i.i, %bb.jh ], [ %i.bmb, %bb.jg ]
  %.43.us669.i.i = phi i32 [ 0, %bb.jh ], [ %i.bmd, %bb.jg ]
  %i.bmm = shl i32 1048576, %i.ble
  %i.bmn = or i32 %i.bml, %i.bmm                  ; 2 uses
  store i32 %i.bmn, ptr %.2648.us.i.i, align 4, !tbaa !3
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %.preheader.us.i.i
  %.30.i = phi i32 [ %i.blv, %bb.ji ], [ %.29.i, %.preheader.us.i.i ] ; 2 uses
  %i.bmo = phi i32 [ %i.bmn, %bb.ji ], [ %i.bld, %.preheader.us.i.i ]
  %.34480.us670.i.i = phi i32 [ %.33479.us668.i.i, %bb.ji ], [ %.28474627.us661.i.i, %.preheader.us.i.i ] ; 2 uses
  %.44.us671.i.i = phi i32 [ %.43.us669.i.i, %bb.ji ], [ %.36630.us659.i.i, %.preheader.us.i.i ] ; 2 uses
  %.9.us672.i.i = phi ptr [ %i.bly, %bb.ji ], [ %.8631.us658.i.i, %.preheader.us.i.i ] ; 2 uses
  %i.bmp = add nuw i32 %.0408629.us660.i.i, 1     ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %.3486626.us662.i.i, i64 4 ; 2 uses
  %exitcond.not.i174.i = icmp eq i32 %i.bmp, %i.bgs
  br i1 %exitcond.not.i174.i, label %..loopexit570_crit_edge.split.us673.loopexit.i.i, label %.preheader.us.i.i, !llvm.loop !282

bb.jk:                                            ; preds = %.lr.ph653.split.us.split.i.i
  %i.bmr = getelementptr inbounds nuw [4 x i8], ptr %.2485643.us.i.i, i64 %i.bgt
  br label %..loopexit570_crit_edge.split.us673.i.i

..loopexit570_crit_edge.split.us673.loopexit.i.i: ; preds = %bb.jj, %bb.jf
  %.us-phi398.i = phi i32 [ %.30.us.i, %bb.jf ], [ %.30.i, %bb.jj ]
  %.us-phi399.i = phi i32 [ %.34480.us670.i.us.i, %bb.jf ], [ %.34480.us670.i.i, %bb.jj ]
  %.us-phi400.i = phi i32 [ %.44.us671.i.us.i, %bb.jf ], [ %.44.us671.i.i, %bb.jj ]
  %.us-phi401.i = phi ptr [ %.9.us672.i.us.i, %bb.jf ], [ %.9.us672.i.i, %bb.jj ]
  %.us-phi402.i = phi ptr [ %i.blc, %bb.jf ], [ %i.bmq, %bb.jj ]
  %.pre718.i.i = load i32, ptr %i.bo, align 8, !tbaa !107
  br label %..loopexit570_crit_edge.split.us673.i.i

..loopexit570_crit_edge.split.us673.i.i:          ; preds = %..loopexit570_crit_edge.split.us673.loopexit.i.i, %bb.jk
  %.31.i = phi i32 [ %.28.i, %bb.jk ], [ %.us-phi398.i, %..loopexit570_crit_edge.split.us673.loopexit.i.i ] ; 2 uses
  %i.bms = phi i32 [ %i.bjp, %bb.jk ], [ %.pre718.i.i, %..loopexit570_crit_edge.split.us673.loopexit.i.i ] ; 2 uses
  %.4487.us.i.i = phi ptr [ %i.bmr, %bb.jk ], [ %.us-phi402.i, %..loopexit570_crit_edge.split.us673.loopexit.i.i ]
  %.35481.us.i.i = phi i32 [ %.27473644.us.i.i, %bb.jk ], [ %.us-phi399.i, %..loopexit570_crit_edge.split.us673.loopexit.i.i ] ; 2 uses
  %.45.us.i.i = phi i32 [ %.35646.us.i.i, %bb.jk ], [ %.us-phi400.i, %..loopexit570_crit_edge.split.us673.loopexit.i.i ] ; 2 uses
  %.10.us.i.i = phi ptr [ %.7647.us.i.i, %bb.jk ], [ %.us-phi401.i, %..loopexit570_crit_edge.split.us673.loopexit.i.i ] ; 2 uses
  %i.bmt = add nuw i32 %.1651.us.i.i, 1           ; 2 uses
  %i.bmu = getelementptr inbounds nuw i8, ptr %.2648.us.i.i, i64 4
  %i.bmv = icmp ult i32 %i.bmt, %i.bms
  br i1 %i.bmv, label %.lr.ph653.split.us.split.i.i, label %opj_t1_enc_refpass.exit.i, !llvm.loop !279

opj_t1_enc_refpass.exit.i:                        ; preds = %..loopexit570_crit_edge.split.us.us.us.i.i, %..loopexit570_crit_edge.split.us673.i.i, %bb.io, %._crit_edge610.i.i, %.preheader580.lr.ph.i.i
  %.36.i = phi i32 [ %.27.i, %bb.io ], [ 0, %.preheader580.lr.ph.i.i ], [ %.27.i, %._crit_edge610.i.i ], [ %.31.i, %..loopexit570_crit_edge.split.us673.i.i ], [ %.35.i, %..loopexit570_crit_edge.split.us.us.us.i.i ]
  %.36482.i.i = phi i32 [ %.0446.lcssa.i.i, %bb.io ], [ %i.avm, %.preheader580.lr.ph.i.i ], [ %.0446.lcssa.i.i, %._crit_edge610.i.i ], [ %.35481.us.i.i, %..loopexit570_crit_edge.split.us673.i.i ], [ %.35481.us.us.i.i, %..loopexit570_crit_edge.split.us.us.us.i.i ]
  %.36445.i.i = phi i32 [ %.0409.lcssa.i.i, %bb.io ], [ %i.avl, %.preheader580.lr.ph.i.i ], [ %.0409.lcssa.i.i, %._crit_edge610.i.i ], [ %.0409.lcssa.i.i, %..loopexit570_crit_edge.split.us673.i.i ], [ %.35444.us.us.i.i, %..loopexit570_crit_edge.split.us.us.us.i.i ]
  %.46.i173.i = phi i32 [ %.0396.lcssa.i.i, %bb.io ], [ %i.avk, %.preheader580.lr.ph.i.i ], [ %.0396.lcssa.i.i, %._crit_edge610.i.i ], [ %.45.us.i.i, %..loopexit570_crit_edge.split.us673.i.i ], [ %.45.us.us.i.i, %..loopexit570_crit_edge.split.us.us.us.i.i ]
  %.11.i.i = phi ptr [ %.0393.lcssa.i.i, %bb.io ], [ %i.avj, %.preheader580.lr.ph.i.i ], [ %.0393.lcssa.i.i, %._crit_edge610.i.i ], [ %.10.us.i.i, %..loopexit570_crit_edge.split.us673.i.i ], [ %.10.us.us.i.i, %..loopexit570_crit_edge.split.us.us.us.i.i ]
  store ptr %.11.i.i, ptr %i.lt, align 8, !tbaa !120
  store i32 %.46.i173.i, ptr %.0, align 8, !tbaa !110
  store i32 %.36445.i.i, ptr %i.lu, align 4, !tbaa !121
  store i32 %.36482.i.i, ptr %i.lv, align 8, !tbaa !109
  br label %bb.mx

bb.jl:                                            ; preds = %bb.aa
  %i.bmw = load ptr, ptr %i.lt, align 8, !tbaa !120 ; 3 uses
  %i.bmx = load i32, ptr %.0, align 8, !tbaa !110 ; 3 uses
  %i.bmy = load i32, ptr %i.lu, align 4, !tbaa !121 ; 3 uses
  %i.bmz = load i32, ptr %i.lv, align 8, !tbaa !109 ; 3 uses
  %i.bna = load ptr, ptr %i.iu, align 8, !tbaa !15 ; 2 uses
  %i.bnb = load ptr, ptr %i.lw, align 8, !tbaa !16
  %i.bnc = load i32, ptr %i.bo, align 8, !tbaa !107 ; 4 uses
  %i.bnd = add i32 %i.bnc, 3
  %i.bne = zext i32 %i.bnd to i64
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %i.bnb, i64 %i.bne ; 2 uses
  br i1 %.not1184.i.i, label %._crit_edge735.i.i, label %.preheader685.lr.ph.i.i

.preheader685.lr.ph.i.i:                          ; preds = %bb.jl
  %i.bng = and i32 %i.ng, 2147483584              ; 5 uses
  %.not.i.i200.i = icmp eq i32 %.0133405.i, 0
  %.not777.i.i = icmp eq i32 %i.bnc, 0
  br i1 %.not777.i.i, label %opj_t1_enc_clnpass.exit.i, label %.preheader685.i.i

.preheader685.i.i:                                ; preds = %.preheader685.lr.ph.i.i, %._crit_edge.i213.i
  %i.bnh = phi i32 [ %i.byo, %._crit_edge.i213.i ], [ %i.bnc, %.preheader685.lr.ph.i.i ]
  %.37.i = phi i32 [ %.43.i, %._crit_edge.i213.i ], [ 0, %.preheader685.lr.ph.i.i ] ; 2 uses
  %i.bni = phi i32 [ %i.byp, %._crit_edge.i213.i ], [ %i.nh, %.preheader685.lr.ph.i.i ]
  %i.bnj = phi i32 [ %i.byq, %._crit_edge.i213.i ], [ 1, %.preheader685.lr.ph.i.i ]
  %.0440734.i.i = phi i32 [ %i.byr, %._crit_edge.i213.i ], [ 0, %.preheader685.lr.ph.i.i ]
  %.0441733.i.i = phi ptr [ %.1442.lcssa.i.i, %._crit_edge.i213.i ], [ %i.bmw, %.preheader685.lr.ph.i.i ] ; 2 uses
  %.0443732.i.i = phi i32 [ %.1444.lcssa.i.i, %._crit_edge.i213.i ], [ %i.bmx, %.preheader685.lr.ph.i.i ] ; 2 uses
  %.0457731.i.i = phi i32 [ %.1458.lcssa.i.i, %._crit_edge.i213.i ], [ %i.bmy, %.preheader685.lr.ph.i.i ] ; 2 uses
  %.0507730.i.i = phi i32 [ %.1508.lcssa.i.i, %._crit_edge.i213.i ], [ %i.bmz, %.preheader685.lr.ph.i.i ] ; 2 uses
  %.0556729.i.i = phi ptr [ %.1557.lcssa.i.i, %._crit_edge.i213.i ], [ %i.bna, %.preheader685.lr.ph.i.i ] ; 2 uses
  %.0563728.i.i = phi ptr [ %i.bys, %._crit_edge.i213.i ], [ %i.bnf, %.preheader685.lr.ph.i.i ] ; 2 uses
  %.not778.i.i = icmp eq i32 %i.bnj, 0
  br i1 %.not778.i.i, label %._crit_edge.i213.i, label %.lr.ph721.i.i

.lr.ph721.i.i:                                    ; preds = %.preheader685.i.i, %bb.lt
  %.38.i = phi i32 [ %.42.i, %bb.lt ], [ %.37.i, %.preheader685.i.i ] ; 3 uses
  %.0720.i.i = phi i32 [ %i.byk, %bb.lt ], [ 0, %.preheader685.i.i ]
  %.1442719.i.i = phi ptr [ %.7.i211.i, %bb.lt ], [ %.0441733.i.i, %.preheader685.i.i ] ; 2 uses
  %.1444718.i.i = phi i32 [ %.41.i210.i, %bb.lt ], [ %.0443732.i.i, %.preheader685.i.i ] ; 5 uses
  %.1458717.i.i = phi i32 [ %.31488.i.i, %bb.lt ], [ %.0457731.i.i, %.preheader685.i.i ] ; 3 uses
  %.1508716.i.i = phi i32 [ %.31538.i.i, %bb.lt ], [ %.0507730.i.i, %.preheader685.i.i ] ; 5 uses
  %.1557715.i.i = phi ptr [ %.4560.i.i, %bb.lt ], [ %.0556729.i.i, %.preheader685.i.i ] ; 8 uses
  %.1564712.i.i = phi ptr [ %i.byl, %bb.lt ], [ %.0563728.i.i, %.preheader685.i.i ] ; 13 uses
  %i.bnk = load i32, ptr %.1564712.i.i, align 4, !tbaa !3 ; 4 uses
  %.not630.i.i = icmp eq i32 %i.bnk, 0            ; 2 uses
  br i1 %.not630.i.i, label %.preheader684.preheader.i.i, label %.loopexit678.jt0.i.i

.preheader684.preheader.i.i:                      ; preds = %.lr.ph721.i.i
  %scevgep.i258.i = getelementptr i8, ptr %.1557715.i.i, i64 16
  %i.bnl = load i32, ptr %.1557715.i.i, align 4, !tbaa !3
  %i.bnm = and i32 %i.bnl, %i.bng
  %.not631.i.i = icmp eq i32 %i.bnm, 0
  br i1 %.not631.i.i, label %.preheader684.1.i.i, label %bb.jn

.preheader684.1.i.i:                              ; preds = %.preheader684.preheader.i.i
  %i.bnn = getelementptr inbounds nuw i8, ptr %.1557715.i.i, i64 4 ; 2 uses
  %i.bno = load i32, ptr %i.bnn, align 4, !tbaa !3
  %i.bnp = and i32 %i.bno, %i.bng
  %.not631.1.i.i = icmp eq i32 %i.bnp, 0
  br i1 %.not631.1.i.i, label %.preheader684.2.i.i, label %bb.jn

.preheader684.2.i.i:                              ; preds = %.preheader684.1.i.i
  %i.bnq = getelementptr inbounds nuw i8, ptr %.1557715.i.i, i64 8 ; 2 uses
  %i.bnr = load i32, ptr %i.bnq, align 4, !tbaa !3
  %i.bns = and i32 %i.bnr, %i.bng
  %.not631.2.i.i = icmp eq i32 %i.bns, 0
  br i1 %.not631.2.i.i, label %.preheader684.3.i.i, label %bb.jn

.preheader684.3.i.i:                              ; preds = %.preheader684.2.i.i
  %i.bnt = getelementptr inbounds nuw i8, ptr %.1557715.i.i, i64 12 ; 2 uses
  %i.bnu = load i32, ptr %i.bnt, align 4, !tbaa !3
  %i.bnv = and i32 %i.bnu, %i.bng
  %.not631.3.i.i = icmp eq i32 %i.bnv, 0
  br i1 %.not631.3.i.i, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %.preheader684.3.i.i
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.preheader684.3.i.i, %.preheader684.2.i.i, %.preheader684.1.i.i, %.preheader684.preheader.i.i
  %i.bnw = phi i32 [ 1, %.preheader684.preheader.i.i ], [ 0, %bb.jm ], [ 1, %.preheader684.1.i.i ], [ 1, %.preheader684.3.i.i ], [ 1, %.preheader684.2.i.i ]
  %i.bnx = phi i1 [ false, %.preheader684.preheader.i.i ], [ true, %bb.jm ], [ false, %.preheader684.1.i.i ], [ false, %.preheader684.3.i.i ], [ false, %.preheader684.2.i.i ]
  %.0566.lcssa.i.i = phi i32 [ 0, %.preheader684.preheader.i.i ], [ 4, %bb.jm ], [ 1, %.preheader684.1.i.i ], [ 3, %.preheader684.3.i.i ], [ 2, %.preheader684.2.i.i ] ; 4 uses
  %.2558.lcssa.i.i = phi ptr [ %.1557715.i.i, %.preheader684.preheader.i.i ], [ %scevgep.i258.i, %bb.jm ], [ %i.bnn, %.preheader684.1.i.i ], [ %i.bnt, %.preheader684.3.i.i ], [ %i.bnq, %.preheader684.2.i.i ] ; 6 uses
  %i.bny = load ptr, ptr %i.lx, align 8, !tbaa !122 ; 4 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 4
  %i.boa = load i32, ptr %i.bnz, align 4, !tbaa !126
  %i.bob = icmp eq i32 %i.boa, %i.bnw
  %i.boc = load i32, ptr %i.bny, align 8, !tbaa !124 ; 8 uses
  %i.bod = sub i32 %.1458717.i.i, %i.boc          ; 6 uses
  br i1 %i.bob, label %bb.jo, label %bb.ju

bb.jo:                                            ; preds = %bb.jn
  %i.boe = and i32 %i.bod, 32768
  %i.bof = icmp eq i32 %i.boe, 0
  br i1 %i.bof, label %bb.jp, label %bb.jt

bb.jp:                                            ; preds = %bb.jo
  %i.bog = icmp ult i32 %i.bod, %i.boc
  %.2459.i.i = tail call i32 @llvm.umax.i32(i32 %i.bod, i32 %i.boc)
  %i.boh = select i1 %i.bog, i32 0, i32 %i.boc
  %.2445.i.i = add i32 %i.boh, %.1444718.i.i
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bny, i64 8
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !241
  store ptr %i.boj, ptr %i.lx, align 8, !tbaa !122
  br label %bb.jq

bb.jq:                                            ; preds = %bb.js, %bb.jp
  %.2509.i.i = phi i32 [ %.1508716.i.i, %bb.jp ], [ %.3510.i.i, %bb.js ]
  %.3460.i.i = phi i32 [ %.2459.i.i, %bb.jp ], [ %i.bok, %bb.js ] ; 2 uses
  %.3446.i.i = phi i32 [ %.2445.i.i, %bb.jp ], [ %.4447.i.i, %bb.js ]
  %i.bok = shl i32 %.3460.i.i, 1                  ; 2 uses
  %i.bol = shl i32 %.3446.i.i, 1                  ; 2 uses
  %i.bom = add i32 %.2509.i.i, -1                 ; 2 uses
  %i.bon = icmp eq i32 %i.bom, 0
  br i1 %i.bon, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  store i32 %i.bol, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.boo = load i32, ptr %.0, align 8, !tbaa !110
  %i.bop = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %.3510.i.i = phi i32 [ %i.bop, %bb.jr ], [ %i.bom, %bb.jq ] ; 2 uses
  %.4447.i.i = phi i32 [ %i.boo, %bb.jr ], [ %i.bol, %bb.jq ] ; 2 uses
  %i.boq = and i32 %.3460.i.i, 16384
  %i.bor = icmp eq i32 %i.boq, 0
  br i1 %i.bor, label %bb.jq, label %.loopexit682.i.i, !llvm.loop !283

bb.jt:                                            ; preds = %bb.jo
  %i.bos = add i32 %i.boc, %.1444718.i.i
  br label %.loopexit682.i.i

bb.ju:                                            ; preds = %bb.jn
  %i.bot = icmp ult i32 %i.bod, %i.boc
  %.4461.i.i = tail call i32 @llvm.umin.i32(i32 %i.bod, i32 %i.boc)
  %i.bou = select i1 %i.bot, i32 %i.boc, i32 0
  %.5448.i.i = add i32 %i.bou, %.1444718.i.i
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bny, i64 16
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !243
  store ptr %i.bow, ptr %i.lx, align 8, !tbaa !122
  br label %bb.jv

bb.jv:                                            ; preds = %bb.jx, %bb.ju
  %.4511.i.i = phi i32 [ %.1508716.i.i, %bb.ju ], [ %.5512.i.i, %bb.jx ]
  %.5462.i.i = phi i32 [ %.4461.i.i, %bb.ju ], [ %i.box, %bb.jx ] ; 2 uses
  %.6449.i.i = phi i32 [ %.5448.i.i, %bb.ju ], [ %.7450.i.i, %bb.jx ]
  %i.box = shl i32 %.5462.i.i, 1                  ; 2 uses
  %i.boy = shl i32 %.6449.i.i, 1                  ; 2 uses
  %i.boz = add i32 %.4511.i.i, -1                 ; 2 uses
  %i.bpa = icmp eq i32 %i.boz, 0
  br i1 %i.bpa, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  store i32 %i.boy, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.bpb = load i32, ptr %.0, align 8, !tbaa !110
  %i.bpc = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %.5512.i.i = phi i32 [ %i.bpc, %bb.jw ], [ %i.boz, %bb.jv ] ; 2 uses
  %.7450.i.i = phi i32 [ %i.bpb, %bb.jw ], [ %i.boy, %bb.jv ] ; 2 uses
  %i.bpd = and i32 %.5462.i.i, 16384
  %i.bpe = icmp eq i32 %i.bpd, 0
  br i1 %i.bpe, label %bb.jv, label %.loopexit682.i.i, !llvm.loop !284

.loopexit682.i.i:                                 ; preds = %bb.jx, %bb.js, %bb.jt
  %.6513.i.i = phi i32 [ %.3510.i.i, %bb.js ], [ %.1508716.i.i, %bb.jt ], [ %.5512.i.i, %bb.jx ] ; 4 uses
  %.6463.i.i = phi i32 [ %i.bok, %bb.js ], [ %i.bod, %bb.jt ], [ %i.box, %bb.jx ] ; 2 uses
  %.8451.i.i = phi i32 [ %.4447.i.i, %bb.js ], [ %i.bos, %bb.jt ], [ %.7450.i.i, %bb.jx ] ; 4 uses
  br i1 %i.bnx, label %bb.lt, label %bb.jy

bb.jy:                                            ; preds = %.loopexit682.i.i
  %i.bpf = load ptr, ptr %i.ly, align 8, !tbaa !122 ; 4 uses
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bpf, i64 4
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !126
  %i.bpi = lshr i32 %.0566.lcssa.i.i, 1
  %i.bpj = icmp eq i32 %i.bph, %i.bpi
  %i.bpk = load i32, ptr %i.bpf, align 8, !tbaa !124 ; 8 uses
  %i.bpl = sub i32 %.6463.i.i, %i.bpk             ; 6 uses
  br i1 %i.bpj, label %bb.jz, label %bb.kf

bb.jz:                                            ; preds = %bb.jy
  %i.bpm = and i32 %i.bpl, 32768
  %i.bpn = icmp eq i32 %i.bpm, 0
  br i1 %i.bpn, label %bb.ka, label %bb.ke

bb.ka:                                            ; preds = %bb.jz
  %i.bpo = icmp ult i32 %i.bpl, %i.bpk
  %.7464.i.i = tail call i32 @llvm.umax.i32(i32 %i.bpl, i32 %i.bpk)
  %i.bpp = select i1 %i.bpo, i32 0, i32 %i.bpk
  %.9452.i.i = add i32 %i.bpp, %.8451.i.i
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpf, i64 8
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !241
  store ptr %i.bpr, ptr %i.ly, align 8, !tbaa !122
  br label %bb.kb

bb.kb:                                            ; preds = %bb.kd, %bb.ka
  %.7514.i.i = phi i32 [ %.6513.i.i, %bb.ka ], [ %.8515.i.i, %bb.kd ]
  %.8465.i.i = phi i32 [ %.7464.i.i, %bb.ka ], [ %i.bps, %bb.kd ] ; 2 uses
  %.10453.i.i = phi i32 [ %.9452.i.i, %bb.ka ], [ %.11454.i.i, %bb.kd ]
  %i.bps = shl i32 %.8465.i.i, 1                  ; 2 uses
  %i.bpt = shl i32 %.10453.i.i, 1                 ; 2 uses
  %i.bpu = add i32 %.7514.i.i, -1                 ; 2 uses
  %i.bpv = icmp eq i32 %i.bpu, 0
  br i1 %i.bpv, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  store i32 %i.bpt, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.bpw = load i32, ptr %.0, align 8, !tbaa !110
  %i.bpx = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kc, %bb.kb
  %.8515.i.i = phi i32 [ %i.bpx, %bb.kc ], [ %i.bpu, %bb.kb ] ; 2 uses
  %.11454.i.i = phi i32 [ %i.bpw, %bb.kc ], [ %i.bpt, %bb.kb ] ; 2 uses
  %i.bpy = and i32 %.8465.i.i, 16384
  %i.bpz = icmp eq i32 %i.bpy, 0
  br i1 %i.bpz, label %bb.kb, label %.loopexit680.i.i, !llvm.loop !285

bb.ke:                                            ; preds = %bb.jz
  %i.bqa = add i32 %i.bpk, %.8451.i.i
  br label %.loopexit680.i.i

bb.kf:                                            ; preds = %bb.jy
  %i.bqb = icmp ult i32 %i.bpl, %i.bpk
  %.9466.i.i = tail call i32 @llvm.umin.i32(i32 %i.bpl, i32 %i.bpk)
  %i.bqc = select i1 %i.bqb, i32 %i.bpk, i32 0
  %.12455.i.i = add i32 %i.bqc, %.8451.i.i
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpf, i64 16
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !243
  store ptr %i.bqe, ptr %i.ly, align 8, !tbaa !122
  br label %bb.kg

bb.kg:                                            ; preds = %bb.ki, %bb.kf
  %.9516.i.i = phi i32 [ %.6513.i.i, %bb.kf ], [ %.10517.i.i, %bb.ki ]
  %.10467.i.i = phi i32 [ %.9466.i.i, %bb.kf ], [ %i.bqf, %bb.ki ] ; 2 uses
  %.13456.i.i = phi i32 [ %.12455.i.i, %bb.kf ], [ %.14.i259.i, %bb.ki ]
  %i.bqf = shl i32 %.10467.i.i, 1                 ; 2 uses
  %i.bqg = shl i32 %.13456.i.i, 1                 ; 2 uses
  %i.bqh = add i32 %.9516.i.i, -1                 ; 2 uses
  %i.bqi = icmp eq i32 %i.bqh, 0
  br i1 %i.bqi, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  store i32 %i.bqg, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.bqj = load i32, ptr %.0, align 8, !tbaa !110
  %i.bqk = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.10517.i.i = phi i32 [ %i.bqk, %bb.kh ], [ %i.bqh, %bb.kg ] ; 2 uses
  %.14.i259.i = phi i32 [ %i.bqj, %bb.kh ], [ %i.bqg, %bb.kg ] ; 2 uses
  %i.bql = and i32 %.10467.i.i, 16384
  %i.bqm = icmp eq i32 %i.bql, 0
  br i1 %i.bqm, label %bb.kg, label %.loopexit680.i.i, !llvm.loop !286

.loopexit680.i.i:                                 ; preds = %bb.ki, %bb.kd, %bb.ke
  %.11518.i.i = phi i32 [ %.8515.i.i, %bb.kd ], [ %.6513.i.i, %bb.ke ], [ %.10517.i.i, %bb.ki ] ; 3 uses
  %.11468.i.i = phi i32 [ %i.bps, %bb.kd ], [ %i.bpl, %bb.ke ], [ %i.bqf, %bb.ki ]
  %.15.i260.i = phi i32 [ %.11454.i.i, %bb.kd ], [ %i.bqa, %bb.ke ], [ %.14.i259.i, %bb.ki ] ; 3 uses
  %i.bqn = load ptr, ptr %i.ly, align 8, !tbaa !122 ; 4 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %i.bqn, i64 4
  %i.bqp = load i32, ptr %i.bqo, align 4, !tbaa !126
  %i.bqq = and i32 %.0566.lcssa.i.i, 1
  %i.bqr = icmp eq i32 %i.bqp, %i.bqq
  %i.bqs = load i32, ptr %i.bqn, align 8, !tbaa !124 ; 8 uses
  %i.bqt = sub i32 %.11468.i.i, %i.bqs            ; 6 uses
  br i1 %i.bqr, label %bb.kj, label %bb.kp

bb.kj:                                            ; preds = %.loopexit680.i.i
  %i.bqu = and i32 %i.bqt, 32768
  %i.bqv = icmp eq i32 %i.bqu, 0
  br i1 %i.bqv, label %bb.kk, label %bb.ko

bb.kk:                                            ; preds = %bb.kj
  %i.bqw = icmp ult i32 %i.bqt, %i.bqs
  %.12469.i.i = tail call i32 @llvm.umax.i32(i32 %i.bqt, i32 %i.bqs)
  %i.bqx = select i1 %i.bqw, i32 0, i32 %i.bqs
  %.16.i264.i = add i32 %i.bqx, %.15.i260.i
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqn, i64 8
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !241
  store ptr %i.bqz, ptr %i.ly, align 8, !tbaa !122
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kn, %bb.kk
  %.12519.i.i = phi i32 [ %.11518.i.i, %bb.kk ], [ %.13520.i.i, %bb.kn ]
  %.13470.i.i = phi i32 [ %.12469.i.i, %bb.kk ], [ %i.bra, %bb.kn ] ; 2 uses
  %.17.i265.i = phi i32 [ %.16.i264.i, %bb.kk ], [ %.18.i266.i, %bb.kn ]
  %i.bra = shl i32 %.13470.i.i, 1                 ; 2 uses
  %i.brb = shl i32 %.17.i265.i, 1                 ; 2 uses
  %i.brc = add i32 %.12519.i.i, -1                ; 2 uses
  %i.brd = icmp eq i32 %i.brc, 0
  br i1 %i.brd, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  store i32 %i.brb, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.bre = load i32, ptr %.0, align 8, !tbaa !110
  %i.brf = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %.13520.i.i = phi i32 [ %i.brf, %bb.km ], [ %i.brc, %bb.kl ] ; 2 uses
  %.18.i266.i = phi i32 [ %i.bre, %bb.km ], [ %i.brb, %bb.kl ] ; 2 uses
  %i.brg = and i32 %.13470.i.i, 16384
  %i.brh = icmp eq i32 %i.brg, 0
  br i1 %i.brh, label %bb.kl, label %.loopexit678.i.i, !llvm.loop !287

bb.ko:                                            ; preds = %bb.kj
  %i.bri = add i32 %i.bqs, %.15.i260.i
  br label %.loopexit678.i.i

bb.kp:                                            ; preds = %.loopexit680.i.i
  %i.brj = icmp ult i32 %i.bqt, %i.bqs
  %.14471.i.i = tail call i32 @llvm.umin.i32(i32 %i.bqt, i32 %i.bqs)
  %i.brk = select i1 %i.brj, i32 %i.bqs, i32 0
  %.19.i261.i = add i32 %i.brk, %.15.i260.i
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bqn, i64 16
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !243
  store ptr %i.brm, ptr %i.ly, align 8, !tbaa !122
  br label %bb.kq

bb.kq:                                            ; preds = %bb.ks, %bb.kp
  %.14521.i.i = phi i32 [ %.11518.i.i, %bb.kp ], [ %.15522.i.i, %bb.ks ]
  %.15472.i.i = phi i32 [ %.14471.i.i, %bb.kp ], [ %i.brn, %bb.ks ] ; 2 uses
  %.20.i262.i = phi i32 [ %.19.i261.i, %bb.kp ], [ %.21.i263.i, %bb.ks ]
  %i.brn = shl i32 %.15472.i.i, 1                 ; 2 uses
  %i.bro = shl i32 %.20.i262.i, 1                 ; 2 uses
  %i.brp = add i32 %.14521.i.i, -1                ; 2 uses
  %i.brq = icmp eq i32 %i.brp, 0
  br i1 %i.brq, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  store i32 %i.bro, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.brr = load i32, ptr %.0, align 8, !tbaa !110
  %i.brs = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %.15522.i.i = phi i32 [ %i.brs, %bb.kr ], [ %i.brp, %bb.kq ] ; 2 uses
  %.21.i263.i = phi i32 [ %i.brr, %bb.kr ], [ %i.bro, %bb.kq ] ; 2 uses
  %i.brt = and i32 %.15472.i.i, 16384
  %i.bru = icmp eq i32 %i.brt, 0
  br i1 %i.bru, label %bb.kq, label %.loopexit678.i.i, !llvm.loop !288

.loopexit678.i.i:                                 ; preds = %bb.ks, %bb.kn, %bb.ko
  %.16523.i.i = phi i32 [ %.13520.i.i, %bb.kn ], [ %.11518.i.i, %bb.ko ], [ %.15522.i.i, %bb.ks ] ; 5 uses
  %.16473.i.i = phi i32 [ %i.bra, %bb.kn ], [ %i.bqt, %bb.ko ], [ %i.brn, %bb.ks ] ; 5 uses
  %.22.i263.i = phi i32 [ %.18.i266.i, %bb.kn ], [ %i.bri, %bb.ko ], [ %.21.i263.i, %bb.ks ] ; 5 uses
  %2 = load i32, ptr %.1564712.i.i, align 4, !tbaa !3 ; 6 uses
  %3 = and i32 %2, 1226843280
  %4 = icmp eq i32 %3, 1226843280
  br i1 %4, label %10, label %.loopexit678.i.i.a

.loopexit678.jt0.i.i:                             ; preds = %.lr.ph721.i.i
  %5 = and i32 %i.bnk, 1226843280
  %6 = icmp eq i32 %5, 1226843280
  br i1 %6, label %.lr.ph.i202.i, label %.loopexit678.i.i.a

.loopexit678.i.i.a:                               ; preds = %.loopexit678.jt0.i.i, %.loopexit678.i.i
  %7 = phi i32 [ %i.bnk, %.loopexit678.jt0.i.i ], [ %2, %.loopexit678.i.i ]
  %.2847.i.i = phi ptr [ %.1442719.i.i, %.loopexit678.jt0.i.i ], [ %i.ly, %.loopexit678.i.i ]
  %.22845.i.i = phi i32 [ %.1444718.i.i, %.loopexit678.jt0.i.i ], [ %.22.i263.i, %.loopexit678.i.i ]
  %.16473843.i.i = phi i32 [ %.1458717.i.i, %.loopexit678.jt0.i.i ], [ %.16473.i.i, %.loopexit678.i.i ]
  %.16523841.i.i = phi i32 [ %.1508716.i.i, %.loopexit678.jt0.i.i ], [ %.16523.i.i, %.loopexit678.i.i ]
  %.3559838.i.i = phi ptr [ %.1557715.i.i, %.loopexit678.jt0.i.i ], [ %.2558.lcssa.i.i, %.loopexit678.i.i ] ; 2 uses
  %.1567835.i.i = phi i32 [ 0, %.loopexit678.jt0.i.i ], [ %.0566.lcssa.i.i, %.loopexit678.i.i ] ; 3 uses
  %8 = getelementptr inbounds i8, ptr %.1564712.i.i, i64 -4 ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %.1564712.i.i, i64 4 ; 3 uses
  br label %bb.kt

10:                                               ; preds = %.loopexit678.i.i
  switch i32 %.0566.lcssa.i.i, label %default.unreachable.i.i [
    i32 0, label %.lr.ph.i202.i
    i32 1, label %13
    i32 2, label %15
    i32 3, label %17
  ]

.lr.ph.i202.i:                                    ; preds = %10, %.loopexit678.jt0.i.i
  %11 = phi i32 [ %2, %10 ], [ %i.bnk, %.loopexit678.jt0.i.i ]
  %.2848.i.i = phi ptr [ %i.ly, %10 ], [ %.1442719.i.i, %.loopexit678.jt0.i.i ]
  %.22846.i.i = phi i32 [ %.22.i263.i, %10 ], [ %.1444718.i.i, %.loopexit678.jt0.i.i ]
  %.16473844.i.i = phi i32 [ %.16473.i.i, %10 ], [ %.1458717.i.i, %.loopexit678.jt0.i.i ]
  %.16523842.i.i = phi i32 [ %.16523.i.i, %10 ], [ %.1508716.i.i, %.loopexit678.jt0.i.i ]
  %.3559839.i.i = phi ptr [ %.2558.lcssa.i.i, %10 ], [ %.1557715.i.i, %.loopexit678.jt0.i.i ]
  %12 = and i32 %11, -1226833921
  br label %switch.lookup

13:                                               ; preds = %10
  %14 = and i32 %2, -1224736769
  br label %switch.lookup

15:                                               ; preds = %10
  %16 = and i32 %2, -1207959553
  br label %switch.lookup

17:                                               ; preds = %10
  %18 = and i32 %2, -1073741825
  br label %switch.lookup

bb.kt:                                            ; preds = %opj_t1_update_flags.exit.i204.i, %.loopexit678.i.i.a
  %.39.i = phi i32 [ %.38.i, %.loopexit678.i.i.a ], [ %.40.i, %opj_t1_update_flags.exit.i204.i ] ; 3 uses
  %i.brv = phi i32 [ %7, %.loopexit678.i.i.a ], [ %i.bye, %opj_t1_update_flags.exit.i204.i ] ; 3 uses
  %.3708.i.i = phi ptr [ %.2847.i.i, %.loopexit678.i.i.a ], [ %.5.i206.i, %opj_t1_update_flags.exit.i204.i ]
  %.23707.i.i = phi i32 [ %.22845.i.i, %.loopexit678.i.i.a ], [ %.39.i205.i, %opj_t1_update_flags.exit.i204.i ] ; 5 uses
  %.17474706.i.i = phi i32 [ %.16473843.i.i, %.loopexit678.i.i.a ], [ %.29486.i.i, %opj_t1_update_flags.exit.i204.i ] ; 3 uses
  %.17524705.i.i = phi i32 [ %.16523841.i.i, %.loopexit678.i.i.a ], [ %.29536.i.i, %opj_t1_update_flags.exit.i204.i ] ; 5 uses
  %.0568704.i.i = phi i32 [ %.1567835.i.i, %.loopexit678.i.i.a ], [ %i.byg, %opj_t1_update_flags.exit.i204.i ] ; 6 uses
  %.0569703.i.i = phi ptr [ %.3559838.i.i, %.loopexit678.i.i.a ], [ %i.byf, %opj_t1_update_flags.exit.i204.i ] ; 3 uses
  %i.brw = icmp eq i32 %.0568704.i.i, %.1567835.i.i
  %or.cond.i203.i = and i1 %.not630.i.i, %i.brw
  %.pre811.i.i = mul nuw nsw i32 %.0568704.i.i, 3 ; 11 uses
  br i1 %or.cond.i203.i, label %.thread651.i.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brx = shl nuw nsw i32 2097168, %.pre811.i.i
  %i.bry = and i32 %i.brx, %i.brv
  %.not632.i.i = icmp eq i32 %i.bry, 0
  br i1 %.not632.i.i, label %bb.kv, label %opj_t1_update_flags.exit.i204.i

bb.kv:                                            ; preds = %bb.ku
  %i.brz = lshr i32 %i.brv, %.pre811.i.i
  %.val635.i.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.bsa = and i32 %i.brz, 495
  %i.bsb = zext nneg i32 %i.bsa to i64
  %i.bsc = getelementptr inbounds nuw i8, ptr %.val635.i.i, i64 %i.bsb
  %i.bsd = load i8, ptr %i.bsc, align 1, !tbaa !48
  %i.bse = zext i8 %i.bsd to i64
  %i.bsf = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.bse ; 4 uses
  %i.bsg = load i32, ptr %.0569703.i.i, align 4, !tbaa !3
  %i.bsh = and i32 %i.bsg, %i.bng
  %.not633.i.i = icmp ne i32 %i.bsh, 0            ; 2 uses
  %i.bsi = zext i1 %.not633.i.i to i32
  %i.bsj = load ptr, ptr %i.bsf, align 8, !tbaa !122 ; 4 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 4
  %i.bsl = load i32, ptr %i.bsk, align 4, !tbaa !126
  %i.bsm = icmp eq i32 %i.bsl, %i.bsi
  %i.bsn = load i32, ptr %i.bsj, align 8, !tbaa !124 ; 8 uses
  %i.bso = sub i32 %.17474706.i.i, %i.bsn         ; 6 uses
  br i1 %i.bsm, label %bb.kw, label %bb.lc

bb.kw:                                            ; preds = %bb.kv
  %i.bsp = and i32 %i.bso, 32768
  %i.bsq = icmp eq i32 %i.bsp, 0
  br i1 %i.bsq, label %bb.kx, label %bb.lb

bb.kx:                                            ; preds = %bb.kw
  %i.bsr = icmp ult i32 %i.bso, %i.bsn
  %.18475.i.i = tail call i32 @llvm.umax.i32(i32 %i.bso, i32 %i.bsn)
  %i.bss = select i1 %i.bsr, i32 0, i32 %i.bsn
  %.24.i255.i = add i32 %i.bss, %.23707.i.i
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsj, i64 8
  %i.bsu = load ptr, ptr %i.bst, align 8, !tbaa !241
  store ptr %i.bsu, ptr %i.bsf, align 8, !tbaa !122
  br label %bb.ky

bb.ky:                                            ; preds = %bb.la, %bb.kx
  %.18525.i.i = phi i32 [ %.17524705.i.i, %bb.kx ], [ %.19526.i.i, %bb.la ]
  %.19476.i.i = phi i32 [ %.18475.i.i, %bb.kx ], [ %i.bsv, %bb.la ] ; 2 uses
  %.25.i256.i = phi i32 [ %.24.i255.i, %bb.kx ], [ %.26.i257.i, %bb.la ]
  %i.bsv = shl i32 %.19476.i.i, 1                 ; 2 uses
  %i.bsw = shl i32 %.25.i256.i, 1                 ; 2 uses
  %i.bsx = add i32 %.18525.i.i, -1                ; 2 uses
  %i.bsy = icmp eq i32 %i.bsx, 0
  br i1 %i.bsy, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  store i32 %i.bsw, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef %.0) #12
  %i.bsz = load i32, ptr %.0, align 8, !tbaa !110
  %i.bta = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %bb.ky
  %.19526.i.i = phi i32 [ %i.bta, %bb.kz ], [ %i.bsx, %bb.ky ] ; 2 uses
  %.26.i257.i = phi i32 [ %i.bsz, %bb.kz ], [ %i.bsw, %bb.ky ] ; 2 uses
  %i.btb = and i32 %.19476.i.i, 16384
  %i.btc = icmp eq i32 %i.btb, 0
  br i1 %i.btc, label %bb.ky, label %.loopexit674.i.i, !llvm.loop !289

bb.lb:                                            ; preds = %bb.kw
  %i.btd = add i32 %i.bsn, %.23707.i.i
  br label %.loopexit674.i.i

bb.lc:                                            ; preds = %bb.kv
  %i.bte = icmp ult i32 %i.bso, %i.bsn
  %.20477.i.i = tail call i32 @llvm.umin.i32(i32 %i.bso, i32 %i.bsn)
  %i.btf = select i1 %i.bte, i32 %i.bsn, i32 0
  %.27.i237.i = add i32 %i.btf, %.23707.i.i
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bsj, i64 16
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !243
  store ptr %i.bth, ptr %i.bsf, align 8, !tbaa !122
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lf, %bb.lc
  %.20527.i.i = phi i32 [ %.17524705.i.i, %bb.lc ], [ %.21528.i.i, %bb.lf ]
  %.21478.i.i = phi i32 [ %.20477.i.i, %bb.lc ], [ %i.bti, %bb.lf ] ; 2 uses
  %.28.i238.i = phi i32 [ %.27.i237.i, %bb.lc ], [ %.29.i239.i, %bb.lf ]
  %i.bti = shl i32 %.21478.i.i, 1                 ; 2 uses
  %i.btj = shl i32 %.28.i238.i, 1                 ; 2 uses
  %i.btk = add i32 %.20527.i.i, -1                ; 2 uses
  %i.btl = icmp eq i32 %i.btk, 0
  br i1 %i.btl, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  store i32 %i.btj, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef %.0) #12
  %i.btm = load i32, ptr %.0, align 8, !tbaa !110
  %i.btn = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %.21528.i.i = phi i32 [ %i.btn, %bb.le ], [ %i.btk, %bb.ld ] ; 2 uses
  %.29.i239.i = phi i32 [ %i.btm, %bb.le ], [ %i.btj, %bb.ld ] ; 2 uses
  %i.bto = and i32 %.21478.i.i, 16384
  %i.btp = icmp eq i32 %i.bto, 0
  br i1 %i.btp, label %bb.ld, label %.loopexit674.i.i, !llvm.loop !290

.loopexit674.i.i:                                 ; preds = %bb.lf, %bb.la, %bb.lb
  %.22529.i.i = phi i32 [ %.19526.i.i, %bb.la ], [ %.17524705.i.i, %bb.lb ], [ %.21528.i.i, %bb.lf ] ; 2 uses
  %.22479.i.i = phi i32 [ %i.bsv, %bb.la ], [ %i.bso, %bb.lb ], [ %i.bti, %bb.lf ] ; 2 uses
  %.30.i240.i = phi i32 [ %.26.i257.i, %bb.la ], [ %i.btd, %bb.lb ], [ %.29.i239.i, %bb.lf ] ; 2 uses
  br i1 %.not633.i.i, label %.loopexit674..thread651_crit_edge.i.i, label %opj_t1_update_flags.exit.i204.i

.loopexit674..thread651_crit_edge.i.i:            ; preds = %.loopexit674.i.i
  %.pre.i241.i = load i32, ptr %.1564712.i.i, align 4, !tbaa !3
  br label %.thread651.i.i

.thread651.i.i:                                   ; preds = %.loopexit674..thread651_crit_edge.i.i, %bb.kt
  %i.btq = phi i32 [ %.pre.i241.i, %.loopexit674..thread651_crit_edge.i.i ], [ %i.brv, %bb.kt ] ; 3 uses
  %.31659.i.i = phi i32 [ %.30.i240.i, %.loopexit674..thread651_crit_edge.i.i ], [ %.23707.i.i, %bb.kt ] ; 3 uses
  %.23480658.i.i = phi i32 [ %.22479.i.i, %.loopexit674..thread651_crit_edge.i.i ], [ %.17474706.i.i, %bb.kt ]
  %.23530657.i.i = phi i32 [ %.22529.i.i, %.loopexit674..thread651_crit_edge.i.i ], [ %.17524705.i.i, %bb.kt ] ; 3 uses
  %i.btr = load i32, ptr %8, align 4, !tbaa !3
  %i.bts = load i32, ptr %9, align 4, !tbaa !3
  %i.btt = icmp eq i32 %.0568704.i.i, 0           ; 2 uses
  %i.btu = add nuw nsw i32 %.pre811.i.i, 12
  %.pn.in.v.i.i242.i = select i1 %i.btt, i32 14, i32 %i.btu
  %.pn.in.i.i243.i = lshr i32 %i.btq, %.pn.in.v.i.i242.i
  %i.btv = lshr i32 %i.btq, %.pre811.i.i
  %i.btw = and i32 %i.btv, 170
  %i.btx = add nuw nsw i32 %.pre811.i.i, 19
  %i.bty = lshr i32 %i.btr, %i.btx
  %i.btz = and i32 %i.bty, 1
  %i.bua = add nuw nsw i32 %.pre811.i.i, 17
  %i.bub = lshr i32 %i.bts, %i.bua
  %i.buc = and i32 %i.bub, 4
  %.pn.i.i244.i = and i32 %.pn.in.i.i243.i, 16
  %i.bud = or disjoint i32 %.pre811.i.i, 16
  %i.bue = lshr i32 %i.btq, %i.bud
  %i.buf = and i32 %i.bue, 64
  %i.bug = or disjoint i32 %i.buf, %i.btw
  %i.buh = or disjoint i32 %i.bug, %.pn.i.i244.i
  %.0.i.i245.i = or disjoint i32 %i.buh, %i.btz
  %i.bui = or disjoint i32 %.0.i.i245.i, %i.buc
  %i.buj = load i32, ptr %.0569703.i.i, align 4, !tbaa !3 ; 4 uses
  %i.buk = and i32 %i.buj, 2147483647
  %i.bul = lshr i32 %i.buk, %.0133405.i
  %i.bum = and i32 %i.bul, 127
  %i.bun = zext nneg i32 %i.bum to i64
  %i.buo = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig, i64 %i.bun
  %i.bup = and i32 %i.buj, 127
  %i.buq = zext nneg i32 %i.bup to i64
  %i.bur = getelementptr inbounds nuw [2 x i8], ptr @lut_nmsedec_sig0, i64 %i.buq
  %.0.in.i.i246.i = select i1 %.not.i.i200.i, ptr %i.bur, ptr %i.buo
  %.0.i636.i.i = load i16, ptr %.0.in.i.i246.i, align 2, !tbaa !245
  %i.bus = sext i16 %.0.i636.i.i to i32
  %i.but = add nsw i32 %.39.i, %i.bus             ; 2 uses
  %i.buu = zext nneg i32 %i.bui to i64            ; 2 uses
  %i.buv = getelementptr inbounds nuw i8, ptr @lut_ctxno_sc, i64 %i.buu
  %i.buw = load i8, ptr %i.buv, align 1, !tbaa !48
  %i.bux = zext i8 %i.buw to i64
  %i.buy = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.bux ; 5 uses
  %i.buz = lshr i32 %i.buj, 31                    ; 3 uses
  %i.bva = getelementptr inbounds nuw i8, ptr @lut_spb, i64 %i.buu
  %i.bvb = load i8, ptr %i.bva, align 1, !tbaa !48
  %i.bvc = zext i8 %i.bvb to i32
  %i.bvd = load ptr, ptr %i.buy, align 8, !tbaa !122 ; 4 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 4
  %i.bvf = load i32, ptr %i.bve, align 4, !tbaa !126
  %i.bvg = xor i32 %i.buz, %i.bvc
  %i.bvh = icmp eq i32 %i.bvf, %i.bvg
  %i.bvi = load i32, ptr %i.bvd, align 8, !tbaa !124 ; 8 uses
  %i.bvj = sub i32 %.23480658.i.i, %i.bvi         ; 6 uses
  br i1 %i.bvh, label %bb.lg, label %bb.lm

bb.lg:                                            ; preds = %.thread651.i.i
  %i.bvk = and i32 %i.bvj, 32768
  %i.bvl = icmp eq i32 %i.bvk, 0
  br i1 %i.bvl, label %bb.lh, label %bb.ll

bb.lh:                                            ; preds = %bb.lg
  %i.bvm = icmp ult i32 %i.bvj, %i.bvi
  %.24481.i.i = tail call i32 @llvm.umax.i32(i32 %i.bvj, i32 %i.bvi)
  %i.bvn = select i1 %i.bvm, i32 0, i32 %i.bvi
  %.32.i252.i = add i32 %i.bvn, %.31659.i.i
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvd, i64 8
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !241
  store ptr %i.bvp, ptr %i.buy, align 8, !tbaa !122
  br label %bb.li

bb.li:                                            ; preds = %bb.lk, %bb.lh
  %.24531.i.i = phi i32 [ %.23530657.i.i, %bb.lh ], [ %.25532.i.i, %bb.lk ]
  %.25482.i.i = phi i32 [ %.24481.i.i, %bb.lh ], [ %i.bvq, %bb.lk ] ; 2 uses
  %.33.i253.i = phi i32 [ %.32.i252.i, %bb.lh ], [ %.34.i254.i, %bb.lk ]
  %i.bvq = shl i32 %.25482.i.i, 1                 ; 2 uses
  %i.bvr = shl i32 %.33.i253.i, 1                 ; 2 uses
  %i.bvs = add i32 %.24531.i.i, -1                ; 2 uses
  %i.bvt = icmp eq i32 %i.bvs, 0
  br i1 %i.bvt, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  store i32 %i.bvr, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef %.0) #12
  %i.bvu = load i32, ptr %.0, align 8, !tbaa !110
  %i.bvv = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li
  %.25532.i.i = phi i32 [ %i.bvv, %bb.lj ], [ %i.bvs, %bb.li ] ; 2 uses
  %.34.i254.i = phi i32 [ %i.bvu, %bb.lj ], [ %i.bvr, %bb.li ] ; 2 uses
  %i.bvw = and i32 %.25482.i.i, 16384
  %i.bvx = icmp eq i32 %i.bvw, 0
  br i1 %i.bvx, label %bb.li, label %.loopexit672.i.i, !llvm.loop !291

bb.ll:                                            ; preds = %bb.lg
  %i.bvy = add i32 %i.bvi, %.31659.i.i
  br label %.loopexit672.i.i

bb.lm:                                            ; preds = %.thread651.i.i
  %i.bvz = icmp ult i32 %i.bvj, %i.bvi
  %.26483.i.i = tail call i32 @llvm.umin.i32(i32 %i.bvj, i32 %i.bvi)
  %i.bwa = select i1 %i.bvz, i32 %i.bvi, i32 0
  %.35.i247.i = add i32 %i.bwa, %.31659.i.i
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bvd, i64 16
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !243
  store ptr %i.bwc, ptr %i.buy, align 8, !tbaa !122
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lp, %bb.lm
  %.26533.i.i = phi i32 [ %.23530657.i.i, %bb.lm ], [ %.27534.i.i, %bb.lp ]
  %.27484.i.i = phi i32 [ %.26483.i.i, %bb.lm ], [ %i.bwd, %bb.lp ] ; 2 uses
  %.36.i248.i = phi i32 [ %.35.i247.i, %bb.lm ], [ %.37.i249.i, %bb.lp ]
  %i.bwd = shl i32 %.27484.i.i, 1                 ; 2 uses
  %i.bwe = shl i32 %.36.i248.i, 1                 ; 2 uses
  %i.bwf = add i32 %.26533.i.i, -1                ; 2 uses
  %i.bwg = icmp eq i32 %i.bwf, 0
  br i1 %i.bwg, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  store i32 %i.bwe, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef %.0) #12
  %i.bwh = load i32, ptr %.0, align 8, !tbaa !110
  %i.bwi = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.27534.i.i = phi i32 [ %i.bwi, %bb.lo ], [ %i.bwf, %bb.ln ] ; 2 uses
  %.37.i249.i = phi i32 [ %i.bwh, %bb.lo ], [ %i.bwe, %bb.ln ] ; 2 uses
  %i.bwj = and i32 %.27484.i.i, 16384
  %i.bwk = icmp eq i32 %i.bwj, 0
  br i1 %i.bwk, label %bb.ln, label %.loopexit672.i.i, !llvm.loop !292

.loopexit672.i.i:                                 ; preds = %bb.lp, %bb.lk, %bb.ll
  %.28535.i.i = phi i32 [ %.25532.i.i, %bb.lk ], [ %.23530657.i.i, %bb.ll ], [ %.27534.i.i, %bb.lp ] ; 2 uses
  %.28485.i.i = phi i32 [ %i.bvq, %bb.lk ], [ %i.bvj, %bb.ll ], [ %i.bwd, %bb.lp ] ; 2 uses
  %.38.i250.i = phi i32 [ %.34.i254.i, %bb.lk ], [ %i.bvy, %bb.ll ], [ %.37.i249.i, %bb.lp ] ; 2 uses
  %i.bwl = and i1 %i.mb, %i.btt
  %i.bwm = zext i1 %i.bwl to i32
  %i.bwn = load i32, ptr %i.bo, align 8, !tbaa !107
  %i.bwo = add i32 %i.bwn, 2                      ; 2 uses
  %i.bwp = shl nuw nsw i32 32, %.pre811.i.i
  %i.bwq = load i32, ptr %8, align 4, !tbaa !3
  %i.bwr = or i32 %i.bwq, %i.bwp
  store i32 %i.bwr, ptr %8, align 4, !tbaa !3
  %i.bws = shl nuw nsw i32 %i.buz, 19
  %i.bwt = or disjoint i32 %i.bws, 16
  %i.bwu = shl nuw nsw i32 %i.bwt, %.pre811.i.i
  %i.bwv = load i32, ptr %.1564712.i.i, align 4, !tbaa !3
  %i.bww = or i32 %i.bwv, %i.bwu
  store i32 %i.bww, ptr %.1564712.i.i, align 4, !tbaa !3
  %i.bwx = shl nuw nsw i32 8, %.pre811.i.i
  %i.bwy = load i32, ptr %9, align 4, !tbaa !3
  %i.bwz = or i32 %i.bwy, %i.bwx
  store i32 %i.bwz, ptr %9, align 4, !tbaa !3
  %i.bxa = or i32 %.0568704.i.i, %i.bwm
  %or.cond.not.i.i251.i = icmp eq i32 %i.bxa, 0
  br i1 %or.cond.not.i.i251.i, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %.loopexit672.i.i
  %i.bxb = zext i32 %i.bwo to i64
  %i.bxc = sub nsw i64 0, %i.bxb
  %i.bxd = getelementptr inbounds [4 x i8], ptr %.1564712.i.i, i64 %i.bxc ; 4 uses
  %i.bxe = and i32 %i.buj, -2147483648
  %i.bxf = load i32, ptr %i.bxd, align 4, !tbaa !3
  %i.bxg = or i32 %i.bxe, %i.bxf
  %i.bxh = or i32 %i.bxg, 65536
  store i32 %i.bxh, ptr %i.bxd, align 4, !tbaa !3
  %i.bxi = getelementptr inbounds i8, ptr %i.bxd, i64 -4 ; 2 uses
  %i.bxj = load i32, ptr %i.bxi, align 4, !tbaa !3
  %i.bxk = or i32 %i.bxj, 131072
  store i32 %i.bxk, ptr %i.bxi, align 4, !tbaa !3
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxd, i64 4 ; 2 uses
  %i.bxm = load i32, ptr %i.bxl, align 4, !tbaa !3
  %i.bxn = or i32 %i.bxm, 32768
  store i32 %i.bxn, ptr %i.bxl, align 4, !tbaa !3
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %.loopexit672.i.i
  %i.bxo = icmp eq i32 %.0568704.i.i, 3
  br i1 %i.bxo, label %bb.ls, label %opj_t1_update_flags.exit.i204.i

bb.ls:                                            ; preds = %bb.lr
  %i.bxp = zext i32 %i.bwo to i64
  %i.bxq = getelementptr inbounds nuw [4 x i8], ptr %.1564712.i.i, i64 %i.bxp ; 4 uses
  %i.bxr = shl nuw nsw i32 %i.buz, 18
  %i.bxs = or disjoint i32 %i.bxr, 2
  %i.bxt = load i32, ptr %i.bxq, align 4, !tbaa !3
  %i.bxu = or i32 %i.bxt, %i.bxs
  store i32 %i.bxu, ptr %i.bxq, align 4, !tbaa !3
  %i.bxv = getelementptr inbounds i8, ptr %i.bxq, i64 -4 ; 2 uses
  %i.bxw = load i32, ptr %i.bxv, align 4, !tbaa !3
  %i.bxx = or i32 %i.bxw, 4
  store i32 %i.bxx, ptr %i.bxv, align 4, !tbaa !3
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxq, i64 4 ; 2 uses
  %i.bxz = load i32, ptr %i.bxy, align 4, !tbaa !3
  %i.bya = or i32 %i.bxz, 1
  store i32 %i.bya, ptr %i.bxy, align 4, !tbaa !3
  br label %opj_t1_update_flags.exit.i204.i

opj_t1_update_flags.exit.i204.i:                  ; preds = %bb.ls, %bb.lr, %.loopexit674.i.i, %bb.ku
  %.40.i = phi i32 [ %i.but, %bb.ls ], [ %i.but, %bb.lr ], [ %.39.i, %.loopexit674.i.i ], [ %.39.i, %bb.ku ] ; 2 uses
  %.29536.i.i = phi i32 [ %.28535.i.i, %bb.ls ], [ %.28535.i.i, %bb.lr ], [ %.22529.i.i, %.loopexit674.i.i ], [ %.17524705.i.i, %bb.ku ] ; 2 uses
  %.29486.i.i = phi i32 [ %.28485.i.i, %bb.ls ], [ %.28485.i.i, %bb.lr ], [ %.22479.i.i, %.loopexit674.i.i ], [ %.17474706.i.i, %bb.ku ] ; 2 uses
  %.39.i205.i = phi i32 [ %.38.i250.i, %bb.ls ], [ %.38.i250.i, %bb.lr ], [ %.30.i240.i, %.loopexit674.i.i ], [ %.23707.i.i, %bb.ku ] ; 2 uses
  %.5.i206.i = phi ptr [ %i.buy, %bb.ls ], [ %i.buy, %bb.lr ], [ %i.bsf, %.loopexit674.i.i ], [ %.3708.i.i, %bb.ku ] ; 2 uses
  %i.byb = shl nuw nsw i32 2097152, %.pre811.i.i
  %i.byc = xor i32 %i.byb, -1
  %i.byd = load i32, ptr %.1564712.i.i, align 4, !tbaa !3
  %i.bye = and i32 %i.byd, %i.byc                 ; 2 uses
  store i32 %i.bye, ptr %.1564712.i.i, align 4, !tbaa !3
  %i.byf = getelementptr inbounds nuw i8, ptr %.0569703.i.i, i64 4
  %i.byg = add nuw nsw i32 %.0568704.i.i, 1       ; 2 uses
  %exitcond.not.i207.i = icmp eq i32 %i.byg, 4
  br i1 %exitcond.not.i207.i, label %.loopexit677.i.i, label %bb.kt, !llvm.loop !293

default.unreachable.i.i:                          ; preds = %10
  unreachable

switch.lookup:                                    ; preds = %17, %15, %13, %.lr.ph.i202.i
  %.sink.i.i = phi i32 [ %12, %.lr.ph.i202.i ], [ %16, %15 ], [ %18, %17 ], [ %14, %13 ]
  %.3559840.ph.i.i = phi ptr [ %.3559839.i.i, %.lr.ph.i202.i ], [ %.2558.lcssa.i.i, %15 ], [ %.2558.lcssa.i.i, %17 ], [ %.2558.lcssa.i.i, %13 ]
  %.1567837.ph.i.i = phi i32 [ 0, %.lr.ph.i202.i ], [ 2, %15 ], [ 3, %17 ], [ 1, %13 ]
  %.30537.ph.i.i = phi i32 [ %.16523842.i.i, %.lr.ph.i202.i ], [ %.16523.i.i, %15 ], [ %.16523.i.i, %17 ], [ %.16523.i.i, %13 ]
  %.30487.ph.i.i = phi i32 [ %.16473844.i.i, %.lr.ph.i202.i ], [ %.16473.i.i, %15 ], [ %.16473.i.i, %17 ], [ %.16473.i.i, %13 ]
  %.40.ph.i.i = phi i32 [ %.22846.i.i, %.lr.ph.i202.i ], [ %.22.i263.i, %15 ], [ %.22.i263.i, %17 ], [ %.22.i263.i, %13 ]
  %.6.ph.i.i = phi ptr [ %.2848.i.i, %.lr.ph.i202.i ], [ %i.ly, %15 ], [ %i.ly, %17 ], [ %i.ly, %13 ]
  store i32 %.sink.i.i, ptr %.1564712.i.i, align 4, !tbaa !3
  br label %.loopexit677.i.i

.loopexit677.i.i:                                 ; preds = %opj_t1_update_flags.exit.i204.i, %switch.lookup
  %.41.i = phi i32 [ %.38.i, %switch.lookup ], [ %.40.i, %opj_t1_update_flags.exit.i204.i ]
  %.3559840.i.i = phi ptr [ %.3559840.ph.i.i, %switch.lookup ], [ %.3559838.i.i, %opj_t1_update_flags.exit.i204.i ]
  %.1567837.i.i = phi i32 [ %.1567837.ph.i.i, %switch.lookup ], [ %.1567835.i.i, %opj_t1_update_flags.exit.i204.i ]
  %.30537.i.i = phi i32 [ %.30537.ph.i.i, %switch.lookup ], [ %.29536.i.i, %opj_t1_update_flags.exit.i204.i ]
  %.30487.i.i = phi i32 [ %.30487.ph.i.i, %switch.lookup ], [ %.29486.i.i, %opj_t1_update_flags.exit.i204.i ]
  %.40.i208.i = phi i32 [ %.40.ph.i.i, %switch.lookup ], [ %.39.i205.i, %opj_t1_update_flags.exit.i204.i ]
  %.6.i209.i = phi ptr [ %.6.ph.i.i, %switch.lookup ], [ %.5.i206.i, %opj_t1_update_flags.exit.i204.i ]
  %i.byh = sub nuw nsw i32 4, %.1567837.i.i
  %i.byi = zext nneg i32 %i.byh to i64
  %i.byj = getelementptr inbounds nuw [4 x i8], ptr %.3559840.i.i, i64 %i.byi
  br label %bb.lt

bb.lt:                                            ; preds = %.loopexit677.i.i, %.loopexit682.i.i
  %.42.i = phi i32 [ %.38.i, %.loopexit682.i.i ], [ %.41.i, %.loopexit677.i.i ] ; 2 uses
  %.4560.i.i = phi ptr [ %.2558.lcssa.i.i, %.loopexit682.i.i ], [ %i.byj, %.loopexit677.i.i ] ; 2 uses
  %.31538.i.i = phi i32 [ %.6513.i.i, %.loopexit682.i.i ], [ %.30537.i.i, %.loopexit677.i.i ] ; 2 uses
  %.31488.i.i = phi i32 [ %.6463.i.i, %.loopexit682.i.i ], [ %.30487.i.i, %.loopexit677.i.i ] ; 2 uses
  %.41.i210.i = phi i32 [ %.8451.i.i, %.loopexit682.i.i ], [ %.40.i208.i, %.loopexit677.i.i ] ; 2 uses
  %.7.i211.i = phi ptr [ %i.lx, %.loopexit682.i.i ], [ %.6.i209.i, %.loopexit677.i.i ] ; 2 uses
  %i.byk = add nuw i32 %.0720.i.i, 1              ; 2 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %.1564712.i.i, i64 4 ; 2 uses
  %i.bym = load i32, ptr %i.bo, align 8, !tbaa !107 ; 3 uses
  %i.byn = icmp ult i32 %i.byk, %i.bym
  br i1 %i.byn, label %.lr.ph721.i.i, label %._crit_edge.loopexit.i212.i, !llvm.loop !294

._crit_edge.loopexit.i212.i:                      ; preds = %bb.lt
  %.pre809.i.i = load i32, ptr %i.bq, align 4, !tbaa !108
  br label %._crit_edge.i213.i

._crit_edge.i213.i:                               ; preds = %._crit_edge.loopexit.i212.i, %.preheader685.i.i
  %i.byo = phi i32 [ %i.bnh, %.preheader685.i.i ], [ %i.bym, %._crit_edge.loopexit.i212.i ] ; 2 uses
  %.43.i = phi i32 [ %.37.i, %.preheader685.i.i ], [ %.42.i, %._crit_edge.loopexit.i212.i ] ; 2 uses
  %i.byp = phi i32 [ %i.bni, %.preheader685.i.i ], [ %.pre809.i.i, %._crit_edge.loopexit.i212.i ] ; 3 uses
  %i.byq = phi i32 [ 0, %.preheader685.i.i ], [ %i.bym, %._crit_edge.loopexit.i212.i ]
  %.1564.lcssa.i.i = phi ptr [ %.0563728.i.i, %.preheader685.i.i ], [ %i.byl, %._crit_edge.loopexit.i212.i ]
  %.1557.lcssa.i.i = phi ptr [ %.0556729.i.i, %.preheader685.i.i ], [ %.4560.i.i, %._crit_edge.loopexit.i212.i ] ; 2 uses
  %.1508.lcssa.i.i = phi i32 [ %.0507730.i.i, %.preheader685.i.i ], [ %.31538.i.i, %._crit_edge.loopexit.i212.i ] ; 2 uses
  %.1458.lcssa.i.i = phi i32 [ %.0457731.i.i, %.preheader685.i.i ], [ %.31488.i.i, %._crit_edge.loopexit.i212.i ] ; 2 uses
  %.1444.lcssa.i.i = phi i32 [ %.0443732.i.i, %.preheader685.i.i ], [ %.41.i210.i, %._crit_edge.loopexit.i212.i ] ; 2 uses
  %.1442.lcssa.i.i = phi ptr [ %.0441733.i.i, %.preheader685.i.i ], [ %.7.i211.i, %._crit_edge.loopexit.i212.i ] ; 2 uses
  %i.byr = add nuw i32 %.0440734.i.i, 4           ; 3 uses
  %i.bys = getelementptr inbounds nuw i8, ptr %.1564.lcssa.i.i, i64 8 ; 2 uses
  %i.byt = and i32 %i.byp, -4
  %i.byu = icmp ult i32 %i.byr, %i.byt
  br i1 %i.byu, label %.preheader685.i.i, label %._crit_edge735.i.i, !llvm.loop !295

._crit_edge735.i.i:                               ; preds = %._crit_edge.i213.i, %bb.jl
  %i.byv = phi i32 [ %i.bnc, %bb.jl ], [ %i.byo, %._crit_edge.i213.i ]
  %.44.i = phi i32 [ 0, %bb.jl ], [ %.43.i, %._crit_edge.i213.i ] ; 2 uses
  %.0563.lcssa.i.i = phi ptr [ %i.bnf, %bb.jl ], [ %i.bys, %._crit_edge.i213.i ]
  %.0556.lcssa.i.i = phi ptr [ %i.bna, %bb.jl ], [ %.1557.lcssa.i.i, %._crit_edge.i213.i ]
  %.0507.lcssa.i.i = phi i32 [ %i.bmz, %bb.jl ], [ %.1508.lcssa.i.i, %._crit_edge.i213.i ] ; 2 uses
  %.0457.lcssa.i.i = phi i32 [ %i.bmy, %bb.jl ], [ %.1458.lcssa.i.i, %._crit_edge.i213.i ] ; 2 uses
  %.0443.lcssa.i.i = phi i32 [ %i.bmx, %bb.jl ], [ %.1444.lcssa.i.i, %._crit_edge.i213.i ] ; 2 uses
  %.0441.lcssa.i.i = phi ptr [ %i.bmw, %bb.jl ], [ %.1442.lcssa.i.i, %._crit_edge.i213.i ] ; 2 uses
  %.0440.lcssa.i.i = phi i32 [ 0, %bb.jl ], [ %i.byr, %._crit_edge.i213.i ] ; 5 uses
  %.lcssa699.i.i = phi i32 [ %i.nh, %bb.jl ], [ %i.byp, %._crit_edge.i213.i ] ; 2 uses
  %i.byw = icmp uge i32 %.0440.lcssa.i.i, %.lcssa699.i.i
  %.not779.i.i = icmp eq i32 %i.byv, 0
  %or.cond803.i = select i1 %i.byw, i1 true, i1 %.not779.i.i
  br i1 %or.cond803.i, label %opj_t1_enc_clnpass.exit.i, label %.lr.ph771.i.i

.lr.ph771.i.i:                                    ; preds = %._crit_edge735.i.i
  %i.byx = and i32 %i.ng, 2147483584
  %.not.i641.i.i = icmp eq i32 %.0133405.i, 0
  br label %bb.lu

bb.lu:                                            ; preds = %.loopexit669.i.i, %.lr.ph771.i.i
  %.45.i = phi i32 [ %.44.i, %.lr.ph771.i.i ], [ %.48.i, %.loopexit669.i.i ] ; 3 uses
  %i.byy = phi i32 [ %.lcssa699.i.i, %.lr.ph771.i.i ], [ %i.cfu, %.loopexit669.i.i ]
  %.1770.i.i = phi i32 [ 0, %.lr.ph771.i.i ], [ %i.cfy, %.loopexit669.i.i ]
  %.8769.i.i = phi ptr [ %.0441.lcssa.i.i, %.lr.ph771.i.i ], [ %.12.i221.i, %.loopexit669.i.i ] ; 3 uses
  %.42768.i.i = phi i32 [ %.0443.lcssa.i.i, %.lr.ph771.i.i ], [ %.60.i220.i, %.loopexit669.i.i ] ; 3 uses
  %.32489767.i.i = phi i32 [ %.0457.lcssa.i.i, %.lr.ph771.i.i ], [ %.46503.i.i, %.loopexit669.i.i ] ; 3 uses
  %.32539766.i.i = phi i32 [ %.0507.lcssa.i.i, %.lr.ph771.i.i ], [ %.46553.i.i, %.loopexit669.i.i ] ; 3 uses
  %.5561764.i.i = phi ptr [ %.0556.lcssa.i.i, %.lr.ph771.i.i ], [ %i.cfx, %.loopexit669.i.i ] ; 2 uses
  %.2565762.i.i = phi ptr [ %.0563.lcssa.i.i, %.lr.ph771.i.i ], [ %i.cfz, %.loopexit669.i.i ] ; 12 uses
  %i.byz = load i32, ptr %.2565762.i.i, align 4, !tbaa !3 ; 3 uses
  %i.bza = and i32 %i.byz, 1226843280
  %i.bzb = icmp eq i32 %i.bza, 1226843280
  br i1 %i.bzb, label %bb.lv, label %.preheader.i216.i

.preheader.i216.i:                                ; preds = %bb.lu
  %.not780.i.i = icmp eq i32 %i.byy, %.0440.lcssa.i.i
  br i1 %.not780.i.i, label %.loopexit669.i.i, label %.lr.ph757.i.i

.lr.ph757.i.i:                                    ; preds = %.preheader.i216.i
  %i.bzc = getelementptr inbounds i8, ptr %.2565762.i.i, i64 -4 ; 3 uses
  %i.bzd = getelementptr inbounds nuw i8, ptr %.2565762.i.i, i64 4 ; 3 uses
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.bze = and i32 %i.byz, -1226833921
  store i32 %i.bze, ptr %.2565762.i.i, align 4, !tbaa !3
  %.pre810.i.i = load i32, ptr %i.bq, align 4, !tbaa !108
  br label %.loopexit669.i.i

bb.lw:                                            ; preds = %opj_t1_update_flags.exit645.i.i, %.lr.ph757.i.i
  %.46.i = phi i32 [ %.45.i, %.lr.ph757.i.i ], [ %.47.i, %opj_t1_update_flags.exit645.i.i ] ; 3 uses
  %i.bzf = phi i32 [ %i.byz, %.lr.ph757.i.i ], [ %i.cfo, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.9756.i.i = phi ptr [ %.8769.i.i, %.lr.ph757.i.i ], [ %.11.i219.i, %opj_t1_update_flags.exit645.i.i ]
  %.43755.i.i = phi i32 [ %.42768.i.i, %.lr.ph757.i.i ], [ %.59.i218.i, %opj_t1_update_flags.exit645.i.i ] ; 4 uses
  %.33490754.i.i = phi i32 [ %.32489767.i.i, %.lr.ph757.i.i ], [ %.45502.i.i, %opj_t1_update_flags.exit645.i.i ] ; 2 uses
  %.33540753.i.i = phi i32 [ %.32539766.i.i, %.lr.ph757.i.i ], [ %.45552.i.i, %opj_t1_update_flags.exit645.i.i ] ; 4 uses
  %.0555752.i.i = phi ptr [ %.5561764.i.i, %.lr.ph757.i.i ], [ %i.cfp, %opj_t1_update_flags.exit645.i.i ] ; 3 uses
  %.0562751.i.i = phi i32 [ 0, %.lr.ph757.i.i ], [ %i.cfq, %opj_t1_update_flags.exit645.i.i ] ; 5 uses
  %i.bzg = mul i32 %.0562751.i.i, 3               ; 11 uses
  %i.bzh = shl i32 2097168, %i.bzg
  %i.bzi = and i32 %i.bzh, %i.bzf
  %.not.i217.i = icmp eq i32 %i.bzi, 0
  br i1 %.not.i217.i, label %bb.lx, label %opj_t1_update_flags.exit645.i.i

bb.lx:                                            ; preds = %bb.lw
  %i.bzj = lshr i32 %i.bzf, %i.bzg
  %.val.i222.i = load ptr, ptr %i.it, align 8, !tbaa !88
  %i.bzk = and i32 %i.bzj, 495
  %i.bzl = zext nneg i32 %i.bzk to i64
  %i.bzm = getelementptr inbounds nuw i8, ptr %.val.i222.i, i64 %i.bzl
  %i.bzn = load i8, ptr %i.bzm, align 1, !tbaa !48
  %i.bzo = zext i8 %i.bzn to i64
  %i.bzp = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.bzo ; 4 uses
  %i.bzq = load i32, ptr %.0555752.i.i, align 4, !tbaa !3
  %i.bzr = and i32 %i.byx, %i.bzq
  %.not628.i.i = icmp ne i32 %i.bzr, 0            ; 2 uses
  %i.bzs = zext i1 %.not628.i.i to i32
  %i.bzt = load ptr, ptr %i.bzp, align 8, !tbaa !122 ; 4 uses
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzt, i64 4
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !126
  %i.bzw = icmp eq i32 %i.bzv, %i.bzs
  %i.bzx = load i32, ptr %i.bzt, align 8, !tbaa !124 ; 8 uses
  %i.bzy = sub i32 %.33490754.i.i, %i.bzx         ; 6 uses
  br i1 %i.bzw, label %bb.ly, label %bb.me

bb.ly:                                            ; preds = %bb.lx
  %i.bzz = and i32 %i.bzy, 32768
  %i.caa = icmp eq i32 %i.bzz, 0
  br i1 %i.caa, label %bb.lz, label %bb.md

bb.lz:                                            ; preds = %bb.ly
  %i.cab = icmp ult i32 %i.bzy, %i.bzx
  %.34491.i.i = tail call i32 @llvm.umax.i32(i32 %i.bzy, i32 %i.bzx)
  %i.cac = select i1 %i.cab, i32 0, i32 %i.bzx
  %.44.i234.i = add i32 %i.cac, %.43755.i.i
  %i.cad = getelementptr inbounds nuw i8, ptr %i.bzt, i64 8
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !241
  store ptr %i.cae, ptr %i.bzp, align 8, !tbaa !122
  br label %bb.ma

bb.ma:                                            ; preds = %bb.mc, %bb.lz
  %.34541.i.i = phi i32 [ %.33540753.i.i, %bb.lz ], [ %.35542.i.i, %bb.mc ]
  %.35492.i.i = phi i32 [ %.34491.i.i, %bb.lz ], [ %i.caf, %bb.mc ] ; 2 uses
  %.45.i235.i = phi i32 [ %.44.i234.i, %bb.lz ], [ %.46.i236.i, %bb.mc ]
  %i.caf = shl i32 %.35492.i.i, 1                 ; 2 uses
  %i.cag = shl i32 %.45.i235.i, 1                 ; 2 uses
  %i.cah = add i32 %.34541.i.i, -1                ; 2 uses
  %i.cai = icmp eq i32 %i.cah, 0
  br i1 %i.cai, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  store i32 %i.cag, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.caj = load i32, ptr %.0, align 8, !tbaa !110
  %i.cak = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.ma
  %.35542.i.i = phi i32 [ %i.cak, %bb.mb ], [ %i.cah, %bb.ma ] ; 2 uses
  %.46.i236.i = phi i32 [ %i.caj, %bb.mb ], [ %i.cag, %bb.ma ] ; 2 uses
  %i.cal = and i32 %.35492.i.i, 16384
  %i.cam = icmp eq i32 %i.cal, 0
  br i1 %i.cam, label %bb.ma, label %.loopexit667.i.i, !llvm.loop !296

bb.md:                                            ; preds = %bb.ly
  %i.can = add i32 %i.bzx, %.43755.i.i
  br label %.loopexit667.i.i

bb.me:                                            ; preds = %bb.lx
  %i.cao = icmp ult i32 %i.bzy, %i.bzx
  %.36493.i.i = tail call i32 @llvm.umin.i32(i32 %i.bzy, i32 %i.bzx)
  %i.cap = select i1 %i.cao, i32 %i.bzx, i32 0
  %.47.i223.i = add i32 %i.cap, %.43755.i.i
  %i.caq = getelementptr inbounds nuw i8, ptr %i.bzt, i64 16
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !243
  store ptr %i.car, ptr %i.bzp, align 8, !tbaa !122
  br label %bb.mf

bb.mf:                                            ; preds = %bb.mh, %bb.me
  %.36543.i.i = phi i32 [ %.33540753.i.i, %bb.me ], [ %.37544.i.i, %bb.mh ]
  %.37494.i.i = phi i32 [ %.36493.i.i, %bb.me ], [ %i.cas, %bb.mh ] ; 2 uses
  %.48.i224.i = phi i32 [ %.47.i223.i, %bb.me ], [ %.49.i.i, %bb.mh ]
  %i.cas = shl i32 %.37494.i.i, 1                 ; 2 uses
  %i.cat = shl i32 %.48.i224.i, 1                 ; 2 uses
  %i.cau = add i32 %.36543.i.i, -1                ; 2 uses
  %i.cav = icmp eq i32 %i.cau, 0
  br i1 %i.cav, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  store i32 %i.cat, ptr %.0, align 8, !tbaa !110
  tail call void @opj_mqc_byteout(ptr noundef nonnull %.0) #12
  %i.caw = load i32, ptr %.0, align 8, !tbaa !110
  %i.cax = load i32, ptr %i.lv, align 8, !tbaa !109
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %.37544.i.i = phi i32 [ %i.cax, %bb.mg ], [ %i.cau, %bb.mf ] ; 2 uses
  %.49.i.i = phi i32 [ %i.caw, %bb.mg ], [ %i.cat, %bb.mf ] ; 2 uses
  %i.cay = and i32 %.37494.i.i, 16384
  %i.caz = icmp eq i32 %i.cay, 0
  br i1 %i.caz, label %bb.mf, label %.loopexit667.i.i, !llvm.loop !297

end_hunk_2
