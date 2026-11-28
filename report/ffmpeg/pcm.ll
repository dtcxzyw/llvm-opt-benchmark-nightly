Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pcm?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"pcm_alaw\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"PCM A-law / G.711 A-law\00", align 1
@ff_pcm_alaw_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 65543, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 516, ptr null, ptr null, ptr null, ptr @pcm_lut_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.compoundliteral = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_alaw_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 65543, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral } } }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"pcm_f16le\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"PCM 16.8 floating point little-endian\00", align 1
@ff_pcm_f16le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.2, ptr @.str.3, i32 1, i32 65569, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 24, ptr null, ptr null, ptr null, ptr @pcm_scale_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"pcm_f24le\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"PCM 24.0 floating point little-endian\00", align 1
@ff_pcm_f24le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.4, ptr @.str.5, i32 1, i32 65570, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 24, ptr null, ptr null, ptr null, ptr @pcm_scale_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"pcm_f32be\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"PCM 32-bit floating point big-endian\00", align 1
@.compoundliteral.8 = internal constant [2 x i32] [i32 3, i32 -1], align 4
@ff_pcm_f32be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.6, ptr @.str.7, i32 1, i32 65556, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.8 } } }, align 8
@ff_pcm_f32be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.6, ptr @.str.7, i32 1, i32 65556, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"pcm_f32le\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"PCM 32-bit floating point little-endian\00", align 1
@.compoundliteral.11 = internal constant [2 x i32] [i32 3, i32 -1], align 4
@ff_pcm_f32le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.9, ptr @.str.10, i32 1, i32 65557, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.11 } } }, align 8
@ff_pcm_f32le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.9, ptr @.str.10, i32 1, i32 65557, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"pcm_f64be\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"PCM 64-bit floating point big-endian\00", align 1
@.compoundliteral.14 = internal constant [2 x i32] [i32 4, i32 -1], align 4
@ff_pcm_f64be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.12, ptr @.str.13, i32 1, i32 65558, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.14 } } }, align 8
@ff_pcm_f64be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.12, ptr @.str.13, i32 1, i32 65558, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"pcm_f64le\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"PCM 64-bit floating point little-endian\00", align 1
@.compoundliteral.17 = internal constant [2 x i32] [i32 4, i32 -1], align 4
@ff_pcm_f64le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.15, ptr @.str.16, i32 1, i32 65559, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.17 } } }, align 8
@ff_pcm_f64le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.15, ptr @.str.16, i32 1, i32 65559, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"pcm_lxf\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"PCM signed 20-bit little-endian planar\00", align 1
@ff_pcm_lxf_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.18, ptr @.str.19, i32 1, i32 65561, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"pcm_mulaw\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"PCM mu-law / G.711 mu-law\00", align 1
@ff_pcm_mulaw_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.20, ptr @.str.21, i32 1, i32 65542, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 516, ptr null, ptr null, ptr null, ptr @pcm_lut_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.compoundliteral.22 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_mulaw_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.20, ptr @.str.21, i32 1, i32 65542, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.22 } } }, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"pcm_s8\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"PCM signed 8-bit\00", align 1
@.compoundliteral.25 = internal constant [2 x i32] [i32 0, i32 -1], align 4
@ff_pcm_s8_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.23, ptr @.str.24, i32 1, i32 65540, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.25 } } }, align 8
@ff_pcm_s8_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.23, ptr @.str.24, i32 1, i32 65540, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"pcm_s8_planar\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"PCM signed 8-bit planar\00", align 1
@.compoundliteral.28 = internal constant [2 x i32] [i32 5, i32 -1], align 4
@ff_pcm_s8_planar_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.26, ptr @.str.27, i32 1, i32 65563, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.28 } } }, align 8
@ff_pcm_s8_planar_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.26, ptr @.str.27, i32 1, i32 65563, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.29 = private unnamed_addr constant [10 x i8] c"pcm_s16be\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"PCM signed 16-bit big-endian\00", align 1
@.compoundliteral.31 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_s16be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.29, ptr @.str.30, i32 1, i32 65537, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.31 } } }, align 8
@ff_pcm_s16be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.29, ptr @.str.30, i32 1, i32 65537, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [17 x i8] c"pcm_s16be_planar\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"PCM signed 16-bit big-endian planar\00", align 1
@.compoundliteral.34 = internal constant [2 x i32] [i32 6, i32 -1], align 4
@ff_pcm_s16be_planar_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.32, ptr @.str.33, i32 1, i32 65566, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.34 } } }, align 8
@ff_pcm_s16be_planar_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.32, ptr @.str.33, i32 1, i32 65566, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.35 = private unnamed_addr constant [10 x i8] c"pcm_s16le\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"PCM signed 16-bit little-endian\00", align 1
@.compoundliteral.37 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_s16le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.35, ptr @.str.36, i32 1, i32 65536, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.37 } } }, align 8
@ff_pcm_s16le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.35, ptr @.str.36, i32 1, i32 65536, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"pcm_s16le_planar\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"PCM signed 16-bit little-endian planar\00", align 1
@.compoundliteral.40 = internal constant [2 x i32] [i32 6, i32 -1], align 4
@ff_pcm_s16le_planar_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.38, ptr @.str.39, i32 1, i32 65554, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.40 } } }, align 8
@ff_pcm_s16le_planar_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.38, ptr @.str.39, i32 1, i32 65554, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.41 = private unnamed_addr constant [10 x i8] c"pcm_s24be\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"PCM signed 24-bit big-endian\00", align 1
@.compoundliteral.43 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_s24be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.41, ptr @.str.42, i32 1, i32 65549, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.43 } } }, align 8
@ff_pcm_s24be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.41, ptr @.str.42, i32 1, i32 65549, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.44 = private unnamed_addr constant [12 x i8] c"pcm_s24daud\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"PCM D-Cinema audio signed 24-bit\00", align 1
@.compoundliteral.46 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_s24daud_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.44, ptr @.str.45, i32 1, i32 65552, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.46 } } }, align 8
@ff_pcm_s24daud_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.44, ptr @.str.45, i32 1, i32 65552, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.47 = private unnamed_addr constant [10 x i8] c"pcm_s24le\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"PCM signed 24-bit little-endian\00", align 1
@.compoundliteral.49 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_s24le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.47, ptr @.str.48, i32 1, i32 65548, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.49 } } }, align 8
@ff_pcm_s24le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.47, ptr @.str.48, i32 1, i32 65548, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.50 = private unnamed_addr constant [17 x i8] c"pcm_s24le_planar\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"PCM signed 24-bit little-endian planar\00", align 1
@.compoundliteral.52 = internal constant [2 x i32] [i32 7, i32 -1], align 4
@ff_pcm_s24le_planar_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.50, ptr @.str.51, i32 1, i32 65564, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.52 } } }, align 8
@ff_pcm_s24le_planar_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.50, ptr @.str.51, i32 1, i32 65564, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.53 = private unnamed_addr constant [10 x i8] c"pcm_s32be\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"PCM signed 32-bit big-endian\00", align 1
@.compoundliteral.55 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_s32be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.53, ptr @.str.54, i32 1, i32 65545, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.55 } } }, align 8
@ff_pcm_s32be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.53, ptr @.str.54, i32 1, i32 65545, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.56 = private unnamed_addr constant [10 x i8] c"pcm_s32le\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"PCM signed 32-bit little-endian\00", align 1
@.compoundliteral.58 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_s32le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.56, ptr @.str.57, i32 1, i32 65544, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.58 } } }, align 8
@ff_pcm_s32le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.56, ptr @.str.57, i32 1, i32 65544, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.59 = private unnamed_addr constant [17 x i8] c"pcm_s32le_planar\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"PCM signed 32-bit little-endian planar\00", align 1
@.compoundliteral.61 = internal constant [2 x i32] [i32 7, i32 -1], align 4
@ff_pcm_s32le_planar_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.59, ptr @.str.60, i32 1, i32 65565, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.61 } } }, align 8
@ff_pcm_s32le_planar_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.59, ptr @.str.60, i32 1, i32 65565, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.62 = private unnamed_addr constant [7 x i8] c"pcm_u8\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"PCM unsigned 8-bit\00", align 1
@.compoundliteral.64 = internal constant [2 x i32] [i32 0, i32 -1], align 4
@ff_pcm_u8_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.62, ptr @.str.63, i32 1, i32 65541, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.64 } } }, align 8
@ff_pcm_u8_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.62, ptr @.str.63, i32 1, i32 65541, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.65 = private unnamed_addr constant [10 x i8] c"pcm_u16be\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"PCM unsigned 16-bit big-endian\00", align 1
@.compoundliteral.67 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_u16be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.65, ptr @.str.66, i32 1, i32 65539, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.67 } } }, align 8
@ff_pcm_u16be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.65, ptr @.str.66, i32 1, i32 65539, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.68 = private unnamed_addr constant [10 x i8] c"pcm_u16le\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"PCM unsigned 16-bit little-endian\00", align 1
@.compoundliteral.70 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_u16le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.68, ptr @.str.69, i32 1, i32 65538, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.70 } } }, align 8
@ff_pcm_u16le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.68, ptr @.str.69, i32 1, i32 65538, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.71 = private unnamed_addr constant [10 x i8] c"pcm_u24be\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"PCM unsigned 24-bit big-endian\00", align 1
@.compoundliteral.73 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_u24be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.71, ptr @.str.72, i32 1, i32 65551, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.73 } } }, align 8
@ff_pcm_u24be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.71, ptr @.str.72, i32 1, i32 65551, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.74 = private unnamed_addr constant [10 x i8] c"pcm_u24le\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"PCM unsigned 24-bit little-endian\00", align 1
@.compoundliteral.76 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_u24le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.74, ptr @.str.75, i32 1, i32 65550, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.76 } } }, align 8
@ff_pcm_u24le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.74, ptr @.str.75, i32 1, i32 65550, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.77 = private unnamed_addr constant [10 x i8] c"pcm_u32be\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"PCM unsigned 32-bit big-endian\00", align 1
@.compoundliteral.79 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_u32be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.77, ptr @.str.78, i32 1, i32 65547, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.79 } } }, align 8
@ff_pcm_u32be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.77, ptr @.str.78, i32 1, i32 65547, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.80 = private unnamed_addr constant [10 x i8] c"pcm_u32le\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"PCM unsigned 32-bit little-endian\00", align 1
@.compoundliteral.82 = internal constant [2 x i32] [i32 2, i32 -1], align 4
@ff_pcm_u32le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.80, ptr @.str.81, i32 1, i32 65546, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.82 } } }, align 8
@ff_pcm_u32le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.80, ptr @.str.81, i32 1, i32 65546, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.83 = private unnamed_addr constant [10 x i8] c"pcm_s64be\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"PCM signed 64-bit big-endian\00", align 1
@.compoundliteral.85 = internal constant [2 x i32] [i32 10, i32 -1], align 4
@ff_pcm_s64be_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.83, ptr @.str.84, i32 1, i32 65568, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.85 } } }, align 8
@ff_pcm_s64be_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.83, ptr @.str.84, i32 1, i32 65568, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.86 = private unnamed_addr constant [10 x i8] c"pcm_s64le\00", align 1
@.str.87 = private unnamed_addr constant [32 x i8] c"PCM signed 64-bit little-endian\00", align 1
@.compoundliteral.88 = internal constant [2 x i32] [i32 10, i32 -1], align 4
@ff_pcm_s64le_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.86, ptr @.str.87, i32 1, i32 65567, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.88 } } }, align 8
@ff_pcm_s64le_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.86, ptr @.str.87, i32 1, i32 65567, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.89 = private unnamed_addr constant [9 x i8] c"pcm_vidc\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"PCM Archimedes VIDC\00", align 1
@ff_pcm_vidc_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.89, ptr @.str.90, i32 1, i32 65571, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 516, ptr null, ptr null, ptr null, ptr @pcm_lut_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.compoundliteral.91 = internal constant [2 x i32] [i32 1, i32 -1], align 4
@ff_pcm_vidc_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.89, ptr @.str.90, i32 1, i32 65571, i32 1114114, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 0, ptr null, ptr null, ptr null, ptr @pcm_encode_init, %union.anon { ptr @pcm_encode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 { %struct.anon.1 { ptr null, ptr null, ptr @.compoundliteral.91 } } }, align 8
@.str.92 = private unnamed_addr constant [8 x i8] c"pcm_sga\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"PCM SGA\00", align 1
@ff_pcm_sga_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str.92, ptr @.str.93, i32 1, i32 65572, i32 16386, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 4, ptr null, ptr null, ptr null, ptr @pcm_decode_init, %union.anon { ptr @pcm_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.94 = private unnamed_addr constant [28 x i8] c"Invalid number of channels\0A\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"codec ids mismatch\0A\00", align 1
@.str.96 = private unnamed_addr constant [77 x i8] c"Invalid PCM packet, data has size %d but at least a size of %d was expected\0A\00", align 1
@ff_reverse = external local_unnamed_addr constant [256 x i8], align 16
@pcm_encode_init.once_alaw = internal global i32 0, align 4
@pcm_encode_init.once_mulaw = internal global i32 0, align 4
@pcm_encode_init.once_vidc = internal global i32 0, align 4
@linear_to_alaw = internal global [16384 x i8] zeroinitializer, align 16
@linear_to_ulaw = internal global [16384 x i8] zeroinitializer, align 16
@linear_to_vidc = internal global [16384 x i8] zeroinitializer, align 16
@pcm_decode_init.codec_id_to_samplefmt = internal unnamed_addr constant [28 x { i32, i8, i8, i8, i8 }] [{ i32, i8, i8, i8, i8 } { i32 65540, i8 0, i8 1, i8 8, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65563, i8 5, i8 1, i8 8, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65537, i8 1, i8 2, i8 16, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65566, i8 6, i8 2, i8 16, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65536, i8 1, i8 2, i8 16, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65554, i8 6, i8 2, i8 16, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65552, i8 1, i8 3, i8 24, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65549, i8 2, i8 3, i8 24, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65548, i8 2, i8 3, i8 24, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65564, i8 7, i8 3, i8 24, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65545, i8 2, i8 4, i8 32, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65544, i8 2, i8 4, i8 32, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65565, i8 7, i8 4, i8 32, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65568, i8 10, i8 8, i8 64, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65567, i8 10, i8 8, i8 64, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65572, i8 0, i8 1, i8 8, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65541, i8 0, i8 1, i8 8, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65539, i8 1, i8 2, i8 16, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65538, i8 1, i8 2, i8 16, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65551, i8 2, i8 3, i8 24, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65550, i8 2, i8 3, i8 24, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65547, i8 2, i8 4, i8 32, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65546, i8 2, i8 4, i8 32, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65556, i8 3, i8 4, i8 32, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65557, i8 3, i8 4, i8 32, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65558, i8 4, i8 8, i8 64, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65559, i8 4, i8 8, i8 64, i8 0 }, { i32, i8, i8, i8, i8 } { i32 65561, i8 7, i8 5, i8 0, i8 0 }], align 16

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @pcm_lut_decode_init(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  switch i32 %i.d, label %bb.b [
    i32 65543, label %.preheader
    i32 65542, label %vector.body46
    i32 65571, label %vector.body
  ]

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 2 uses
  %vec.ind43 = phi <8 x i32> [ %vec.ind.next44, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %bb.a ] ; 4 uses
  %i.f = shl nuw nsw <8 x i32> %vec.ind43, splat (i32 2)
  %i.g = and <8 x i32> %i.f, splat (i32 120)
  %i.h = or disjoint <8 x i32> %i.g, splat (i32 132)
  %i.i = lshr <8 x i32> %vec.ind43, splat (i32 5)
  %i.j = shl nuw nsw <8 x i32> %i.h, %i.i         ; 2 uses
  %i.k = and <8 x i32> %vec.ind43, splat (i32 1)
  %i.l = icmp eq <8 x i32> %i.k, zeroinitializer
  %i.m = sub nsw <8 x i32> splat (i32 132), %i.j
  %i.n = add nuw nsw <8 x i32> %i.j, splat (i32 65404)
  %i.o = select <8 x i1> %i.l, <8 x i32> %i.n, <8 x i32> %i.m
  %i.p = trunc <8 x i32> %i.o to <8 x i16>
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index
  store <8 x i16> %i.p, ptr %i.q, align 2, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next44 = add <8 x i32> %vec.ind43, splat (i32 8)
  %i.r = icmp eq i64 %index.next, 256
  br i1 %i.r, label %.loopexit, label %vector.body, !llvm.loop !61

vector.body46:                                    ; preds = %bb.a, %vector.body46
  %index47 = phi i64 [ %index.next50, %vector.body46 ], [ 0, %bb.a ] ; 2 uses
  %vec.ind48 = phi <8 x i64> [ %vec.ind.next51, %vector.body46 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %bb.a ] ; 2 uses
  %vec.ind49 = phi <8 x i32> [ %vec.ind.next52, %vector.body46 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %bb.a ] ; 2 uses
  %i.s = xor <8 x i32> %vec.ind49, splat (i32 255) ; 2 uses
  %i.t = shl nuw nsw <8 x i32> %i.s, splat (i32 3)
  %i.u = and <8 x i32> %i.t, splat (i32 120)
  %i.v = or disjoint <8 x i32> %i.u, splat (i32 132)
  %i.w = lshr <8 x i32> %i.s, splat (i32 4)
  %i.x = and <8 x i32> %i.w, splat (i32 7)
  %i.y = shl nuw nsw <8 x i32> %i.v, %i.x         ; 2 uses
  %i.z = icmp samesign ult <8 x i64> %vec.ind48, splat (i64 128)
  %i.aa = sub nsw <8 x i32> splat (i32 132), %i.y
  %i.ab = add nuw nsw <8 x i32> %i.y, splat (i32 65404)
  %i.ac = select <8 x i1> %i.z, <8 x i32> %i.aa, <8 x i32> %i.ab
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index47
  store <8 x i16> %i.ad, ptr %i.ae, align 2, !tbaa !31
  %index.next50 = add nuw i64 %index47, 8         ; 2 uses
  %vec.ind.next51 = add nuw nsw <8 x i64> %vec.ind48, splat (i64 8)
  %vec.ind.next52 = add <8 x i32> %vec.ind49, splat (i32 8)
  %i.af = icmp eq i64 %index.next50, 256
  br i1 %i.af, label %.loopexit, label %vector.body46, !llvm.loop !62

bb.b:                                             ; preds = %bb.a
  unreachable

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.ag = trunc i64 %indvars.iv35 to i8
  %i.ah = tail call i32 @alaw2linear(i8 noundef zeroext %i.ag) #8
  %i.ai = trunc nsw i32 %i.ah to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv35
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !31
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 256
  br i1 %exitcond38.not, label %.loopexit, label %.preheader, !llvm.loop !63

.loopexit:                                        ; preds = %vector.body, %vector.body46, %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 1, ptr %i.ak, align 4, !tbaa !35
  store i32 1, ptr %i.b, align 4, !tbaa !65
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @pcm_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 69 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !113  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 10 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39   ; 8 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !40   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29   ; 2 uses
  %i.m = icmp eq i32 %i.l, 65561
  %i.n = icmp eq i32 %i.i, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.94) #9
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44
  %.not = icmp eq i32 %i.l, %i.r
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.95) #9
  br label %bb.y

bb.e:                                             ; preds = %bb.c
  %i.s = mul nsw i32 %i.j, %i.i                   ; 3 uses
  %.not220 = icmp eq i32 %i.j, 0
  br i1 %.not220, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = srem i32 %i.e, %i.s                      ; 2 uses
  %.not221 = icmp eq i32 %i.t, 0
  br i1 %.not221, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp slt i32 %i.e, %i.s
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.96, i32 noundef %i.e, i32 noundef %i.s) #9
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.v = sub nsw i32 %i.e, %i.t
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e
  %.0187 = phi i32 [ %i.v, %bb.i ], [ %i.e, %bb.f ], [ %i.e, %bb.e ] ; 2 uses
  %i.w = sdiv i32 %.0187, %i.j                    ; 91 uses
  %i.x = zext i1 %i.m to i32
  %i.y = shl i32 %i.w, %i.x
  %i.z = sdiv i32 %i.y, %i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !49
  %i.ab = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %1, align 8, !tbaa !50    ; 56 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 8 uses
  %i.af = load i32, ptr %i.k, align 8, !tbaa !29
  switch i32 %i.af, label %bb.y [
    i32 65546, label %.preheader
    i32 65547, label %.preheader265
    i32 65548, label %.preheader267
    i32 65564, label %bb.l
    i32 65549, label %.preheader270
    i32 65550, label %.preheader272
    i32 65551, label %.preheader274
    i32 65552, label %.preheader276
    i32 65538, label %.preheader278
    i32 65539, label %.preheader280
    i32 65540, label %.preheader282
    i32 65572, label %.preheader284
    i32 65563, label %bb.m
    i32 65568, label %bb.n
    i32 65558, label %bb.n
    i32 65556, label %bb.o
    i32 65545, label %bb.o
    i32 65537, label %.preheader289
    i32 65566, label %bb.p
    i32 65559, label %bb.q
    i32 65557, label %bb.q
    i32 65570, label %bb.q
    i32 65569, label %bb.q
    i32 65567, label %bb.q
    i32 65544, label %bb.q
    i32 65536, label %bb.q
    i32 65541, label %bb.q
    i32 65554, label %bb.r
    i32 65565, label %bb.r
    i32 65543, label %bb.t
    i32 65542, label %bb.t
    i32 65571, label %bb.t
    i32 65561, label %bb.u
  ]

.preheader289:                                    ; preds = %bb.k
  %i.ag = icmp sgt i32 %i.w, 0
  br i1 %i.ag, label %iter.check526, label %.loopexit

iter.check526:                                    ; preds = %.preheader289
  %i.ah = zext nneg i32 %i.w to i64               ; 5 uses
  %min.iters.check510 = icmp ult i32 %i.w, 4
  %i.ai = sub i64 %i.c, %i.ae
  %diff.check512 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check510, i1 true, i1 %diff.check512
  br i1 %or.cond, label %.lr.ph325.preheader, label %vector.main.loop.iter.check513

vector.main.loop.iter.check513:                   ; preds = %iter.check526
  %min.iters.check514 = icmp ult i32 %i.w, 16
  br i1 %min.iters.check514, label %vec.epilog.ph530, label %vector.ph515

vector.ph515:                                     ; preds = %vector.main.loop.iter.check513
  %i.aj = and i64 %i.ah, 12
  %n.vec516 = and i64 %i.ah, 2147483632           ; 5 uses
  %i.ak = trunc nuw nsw i64 %n.vec516 to i32
  %i.al = sub nsw i32 %i.w, %i.ak
  %i.am = shl nuw nsw i64 %n.vec516, 1            ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.b, i64 %i.am
  br label %vector.body517

vector.body517:                                   ; preds = %vector.ph515, %vector.body517
  %index518 = phi i64 [ 0, %vector.ph515 ], [ %index.next523, %vector.body517 ] ; 2 uses
  %i.ap = shl i64 %index518, 1                    ; 2 uses
  %next.gep519 = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep520 = getelementptr i8, ptr %i.b, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep520, i64 16
  %wide.load521 = load <8 x i16>, ptr %next.gep520, align 1, !tbaa !51
  %wide.load522 = load <8 x i16>, ptr %i.aq, align 1, !tbaa !51
  %i.ar = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load521)
  %i.as = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load522)
  %i.at = getelementptr i8, ptr %next.gep519, i64 16
  store <8 x i16> %i.ar, ptr %next.gep519, align 2, !tbaa !51
  store <8 x i16> %i.as, ptr %i.at, align 2, !tbaa !51
  %index.next523 = add nuw i64 %index518, 16      ; 2 uses
  %i.au = icmp eq i64 %index.next523, %n.vec516
  br i1 %i.au, label %middle.block524, label %vector.body517, !llvm.loop !66
end_hunk_0
