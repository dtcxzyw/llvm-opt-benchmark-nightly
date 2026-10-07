Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_wave?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WaveExtensibleGUID = type { i16, [16 x i8] }
%struct.WaveFile = type { %struct.WaveChunk, %struct.WaveFormat, %struct.WaveFact, i64, ptr, i32, i32, i32 }
%struct.WaveChunk = type { i32, i32, i64, ptr, i64 }
%struct.WaveFormat = type { i16, i16, i16, i32, i32, i16, i16, i16, i16, i32, i32, [16 x i8] }
%struct.WaveFact = type { i32, i32 }
%struct.MS_ADPCM_ChannelState = type { i16, i16, i16 }

@.str = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"audio_buf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"audio_len\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"SDL_WAVE_RIFF_CHUNK_SIZE\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ignorezero\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"SDL_WAVE_TRUNCATION\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"verystrict\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"dropframe\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"dropblock\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"SDL_WAVE_FACT_CHUNK\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"SDL_WAVE_CHUNK_LIMIT\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Could not seek in file\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Could not read RIFF header\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Could not read RIFF form type\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"RIFF form type is not WAVE (not a Waveform file)\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"Could not find RIFF or WAVE identifiers (not a Waveform file)\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"Chunk count in WAVE file exceeds limit of %u\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Unexpected end of WAVE file\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"fmt chunk after data chunk in WAVE file\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"RIFF size truncates chunk\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"Missing fmt chunk in WAVE file\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"Missing data chunk in WAVE file\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"Could not seek to WAVE chunk data\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Could not read data of WAVE fmt chunk\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"Invalid WAVE fmt chunk length (too small)\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Could not read data of WAVE data chunk\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Unexpected %u-bit PCM data format\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"Unexpected data format\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Data of WAVE fmt chunk too big\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Missing wBitsPerSample field in WAVE fmt chunk\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Extensible WAVE header too small\00", align 1
@extensible_guids = internal global [6 x %struct.WaveExtensibleGUID] [%struct.WaveExtensibleGUID { i16 1, [16 x i8] c"\01\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq" }, %struct.WaveExtensibleGUID { i16 2, [16 x i8] c"\02\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq" }, %struct.WaveExtensibleGUID { i16 3, [16 x i8] c"\03\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq" }, %struct.WaveExtensibleGUID { i16 6, [16 x i8] c"\06\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq" }, %struct.WaveExtensibleGUID { i16 7, [16 x i8] c"\07\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq" }, %struct.WaveExtensibleGUID { i16 17, [16 x i8] c"\11\00\00\00\00\00\10\00\80\00\00\AA\008\9Bq" }], align 16
@.str.42 = private unnamed_addr constant [27 x i8] c"Invalid number of channels\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"Invalid sample rate\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"Sample rate exceeds limit of %d\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Invalid fact chunk in WAVE file\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"Missing fact chunk in WAVE file\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"Invalid bits per sample\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"MPEG formats not supported\00", align 1
@.str.49 = private unnamed_addr constant [74 x i8] c"Unknown WAVE format GUID: %08x-%04x-%04x-%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"Unknown WAVE format tag: 0x%04x\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"%u-bit PCM format not supported\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"%u-bit IEEE floating-point format not supported\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"Unsupported block alignment\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"Truncated data chunk in WAVE file\00", align 1
@.str.55 = private unnamed_addr constant [62 x i8] c"Invalid number of sample frames in WAVE fact chunk (too many)\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"Invalid companded bits per sample of %u\00", align 1
@__const.MS_ADPCM_Init.presetcoeffs = private unnamed_addr constant [14 x i16] [i16 256, i16 0, i16 512, i16 -256, i16 0, i16 0, i16 192, i16 64, i16 240, i16 0, i16 460, i16 -208, i16 392, i16 -232], align 16
@.str.57 = private unnamed_addr constant [39 x i8] c"Invalid MS ADPCM bits per sample of %u\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"Invalid MS ADPCM block size (nBlockAlign)\00", align 1
@.str.59 = private unnamed_addr constant [53 x i8] c"MS ADPCM with the extensible header is not supported\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"Could not read MS ADPCM format header\00", align 1
@.str.61 = private unnamed_addr constant [61 x i8] c"Could not read custom coefficients in MS ADPCM format header\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"Invalid MS ADPCM format header (too small)\00", align 1
@.str.63 = private unnamed_addr constant [56 x i8] c"Missing required coefficients in MS ADPCM format header\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c"Wrong preset coefficients in MS ADPCM format header\00", align 1
@.str.65 = private unnamed_addr constant [64 x i8] c"Invalid number of samples per MS ADPCM block (wSamplesPerBlock)\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"Truncated MS ADPCM block\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"3-bit IMA ADPCM currently not supported\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"Invalid IMA ADPCM bits per sample of %u\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"Invalid IMA ADPCM block size (nBlockAlign)\00", align 1
@.str.70 = private unnamed_addr constant [65 x i8] c"Invalid number of samples per IMA ADPCM block (wSamplesPerBlock)\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"Truncated IMA ADPCM block\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"WAVE file too big\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"Unknown companded encoding\00", align 1
@.str.74 = private unnamed_addr constant [40 x i8] c"Unexpected overflow in MS ADPCM decoder\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"Truncated data chunk\00", align 1
@.str.76 = private unnamed_addr constant [51 x i8] c"Invalid MS ADPCM coefficient index in block header\00", align 1
@__const.MS_ADPCM_ProcessNibble.adaptive = private unnamed_addr constant [16 x i16] [i16 230, i16 230, i16 230, i16 230, i16 307, i16 409, i16 512, i16 614, i16 768, i16 614, i16 512, i16 409, i16 307, i16 230, i16 230, i16 230], align 16
@.str.77 = private unnamed_addr constant [41 x i8] c"Unexpected overflow in IMA ADPCM decoder\00", align 1
@__const.IMA_ADPCM_ProcessNibble.index_table_4b = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\02\04\06\08\FF\FF\FF\FF\02\04\06\08", align 16
@__const.IMA_ADPCM_ProcessNibble.step_table = private unnamed_addr constant [89 x i16] [i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 16, i16 17, i16 19, i16 21, i16 23, i16 25, i16 28, i16 31, i16 34, i16 37, i16 41, i16 45, i16 50, i16 55, i16 60, i16 66, i16 73, i16 80, i16 88, i16 97, i16 107, i16 118, i16 130, i16 143, i16 157, i16 173, i16 190, i16 209, i16 230, i16 253, i16 279, i16 307, i16 337, i16 371, i16 408, i16 449, i16 494, i16 544, i16 598, i16 658, i16 724, i16 796, i16 876, i16 963, i16 1060, i16 1166, i16 1282, i16 1411, i16 1552, i16 1707, i16 1878, i16 2066, i16 2272, i16 2499, i16 2749, i16 3024, i16 3327, i16 3660, i16 4026, i16 4428, i16 4871, i16 5358, i16 5894, i16 6484, i16 7132, i16 7845, i16 8630, i16 9493, i16 10442, i16 11487, i16 12635, i16 13899, i16 15289, i16 16818, i16 18500, i16 20350, i16 22385, i16 24623, i16 27086, i16 29794, i16 32767], align 16
@switch.table.SDL_LoadWAV_IO_REAL = private unnamed_addr constant [25 x i16] [i16 8, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 -32752, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 -32736, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison, i16 -32736], align 4

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_LoadWAV_IO_REAL(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %.sroa.8.i = alloca [28 x i8], align 4          ; 23 uses
  %.sroa.10.i = alloca { i64, ptr, i64 }, align 8 ; 23 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %5 = alloca %struct.WaveFile, align 8           ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not31 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %3, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not32 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not58 = icmp eq ptr %0, null
  br i1 %.not58, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7 ; 0 uses
  br label %bb.cz

bb.h:                                             ; preds = %bb.g
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.g = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #7 ; 0 uses
  br label %bb.cx

bb.j:                                             ; preds = %bb.h
  br i1 %.not31, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7 ; 0 uses
  br label %bb.cx

bb.l:                                             ; preds = %bb.j
  br i1 %.not32, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #7 ; 0 uses
  br label %bb.cx

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %i.j = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.6) #7 ; 5 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.k = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.7) #7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %WaveGetRiffSizeHint.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.m = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.8) #7
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %WaveGetRiffSizeHint.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.o = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.9) #7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %WaveGetRiffSizeHint.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.q = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.10) #7
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %WaveGetRiffSizeHint.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  br label %WaveGetRiffSizeHint.exit

WaveGetRiffSizeHint.exit:                         ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i = phi i32 [ 0, %bb.s ], [ 1, %bb.o ], [ 3, %bb.p ], [ 2, %bb.q ], [ 4, %bb.r ]
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store i32 %.0.i, ptr %i.s, align 8
  %i.t = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.11) #7 ; 5 uses
  %.not.i33 = icmp eq ptr %i.t, null
  br i1 %.not.i33, label %bb.x, label %bb.t

bb.t:                                             ; preds = %WaveGetRiffSizeHint.exit
  %i.u = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.12) #7
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %WaveGetTruncationHint.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.w = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.13) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %WaveGetTruncationHint.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.y = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.14) #7
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %WaveGetTruncationHint.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.15) #7
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %WaveGetTruncationHint.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %WaveGetRiffSizeHint.exit
  br label %WaveGetTruncationHint.exit

WaveGetTruncationHint.exit:                       ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.0.i34 = phi i32 [ 0, %bb.x ], [ 1, %bb.t ], [ 2, %bb.u ], [ 3, %bb.v ], [ 4, %bb.w ]
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 108 ; 4 uses
  store i32 %.0.i34, ptr %i.ac, align 4
  %i.ad = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.16) #7 ; 5 uses
  %.not.i35 = icmp eq ptr %i.ad, null
  br i1 %.not.i35, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %WaveGetTruncationHint.exit
  %i.ae = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.17) #7
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %WaveGetFactChunkHint.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ag = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.13) #7
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %WaveGetFactChunkHint.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ai = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.9) #7
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %WaveGetFactChunkHint.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ak = tail call i32 @SDL_strcmp_REAL(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.8) #7
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %WaveGetFactChunkHint.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %WaveGetTruncationHint.exit
  br label %WaveGetFactChunkHint.exit

WaveGetFactChunkHint.exit:                        ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i36 = phi i32 [ 0, %bb.ac ], [ 1, %bb.y ], [ 2, %bb.z ], [ 3, %bb.aa ], [ 4, %bb.ab ]
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  store i32 %.0.i36, ptr %i.am, align 8
  %i.an = tail call i64 @SDL_GetIOSize_REAL(ptr noundef nonnull %0) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8.i, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i8 0, i64 24, i1 false)
  %i.ao = tail call ptr @SDL_GetHint_REAL(ptr noundef nonnull @.str.18) #7 ; 2 uses
  %.not.i37 = icmp eq ptr %i.ao, null
  br i1 %.not.i37, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %WaveGetFactChunkHint.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ap = call i32 (ptr, ptr, ...) @SDL_sscanf_REAL(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.c) #7
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = load i32, ptr %i.c, align 4
  %spec.select.i = select i1 %i.aq, i32 %i.ar, i32 10000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %WaveGetFactChunkHint.exit
  %.1143.i = phi i32 [ %spec.select.i, %bb.ad ], [ 10000, %WaveGetFactChunkHint.exit ] ; 3 uses
  %i.as = call i64 @SDL_TellIO_REAL(ptr noundef nonnull %0) #7 ; 5 uses
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %.split, label %WaveFreeChunkData.exit.i.i

.split:                                           ; preds = %bb.ae
  %i.au = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.20) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.au, label %bb.ct, label %bb.cs

WaveFreeChunkData.exit.i.i:                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.av = icmp samesign ugt i64 %i.as, 9223372036854775799
  br i1 %i.av, label %WaveLoad.exit, label %bb.af

bb.af:                                            ; preds = %WaveFreeChunkData.exit.i.i
  %i.aw = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.as, i32 noundef 0) #7
  %.not19.i.i = icmp eq i64 %i.aw, %i.as
  br i1 %.not19.i.i, label %bb.ag, label %WaveLoad.exit

end_hunk_0
begin_hunk_1_@IMA_ADPCM_Decode:bb.a
  %.07277.us.i = phi i64 [ 0, %bb.p ], [ %i.et, %bb.t ] ; 3 uses
  %i.dq = and i64 %.07277.us.i, 1
  %.not.us.i = icmp eq i64 %i.dq, 0
  br i1 %.not.us.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dr = lshr i8 %.06279.us.i, 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ds = add i64 %.26878.us.i, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.26878.us.i
  %i.du = load i8, ptr %i.dt, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.369.us.i = phi i64 [ %.26878.us.i, %bb.r ], [ %i.ds, %bb.s ] ; 3 uses
  %.1.us.i = phi i8 [ %i.dr, %bb.r ], [ %i.du, %bb.s ] ; 2 uses
  %i.dv = and i8 %.1.us.i, 15                     ; 3 uses
  %spec.store.select.i.us.i = tail call i8 @llvm.smax.i8(i8 %i.dp, i8 0)
  %i.dw = tail call i8 @llvm.umin.i8(i8 %spec.store.select.i.us.i, i8 88) ; 2 uses
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr @__const.IMA_ADPCM_ProcessNibble.step_table, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2
  %i.ea = zext i16 %i.dz to i32                   ; 4 uses
  %i.eb = zext nneg i8 %i.dv to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @__const.IMA_ADPCM_ProcessNibble.index_table_4b, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = add i8 %i.dw, %i.ed                     ; 2 uses
  store i8 %i.ee, ptr %i.dn, align 1
  %i.ef = lshr i32 %i.ea, 3
  %i.eg = zext nneg i8 %i.dv to i32               ; 3 uses
  %i.eh = and i32 %i.eg, 4
  %.not.i.us.i = icmp eq i32 %i.eh, 0
  %i.ei = select i1 %.not.i.us.i, i32 0, i32 %i.ea
  %.024.i.us.i = add nuw nsw i32 %i.ei, %i.ef
  %i.ej = and i32 %i.eg, 2
  %.not28.i.us.i = icmp eq i32 %i.ej, 0
  %i.ek = lshr i32 %i.ea, 1
  %i.el = select i1 %.not28.i.us.i, i32 0, i32 %i.ek
  %.1.i.us.i = add nuw nsw i32 %.024.i.us.i, %i.el
  %i.em = and i32 %i.eg, 1
  %.not29.i.us.i = icmp eq i32 %i.em, 0
  %i.en = lshr i32 %i.ea, 2
  %i.eo = select i1 %.not29.i.us.i, i32 0, i32 %i.en
  %.2.i.us.i = add nuw nsw i32 %.1.i.us.i, %i.eo  ; 2 uses
  %.not30.i.us.i = icmp samesign ult i8 %i.dv, 8
  %i.ep = sub nsw i32 0, %.2.i.us.i
  %.3.i.us.i = select i1 %.not30.i.us.i, i32 %.2.i.us.i, i32 %i.ep
  %i.eq = add nsw i32 %.3.i.us.i, %.080.us.i
  %spec.store.select1.i.us.i = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 -32768)
  %.02531.i.us.i = tail call i32 @llvm.smin.i32(i32 %spec.store.select1.i.us.i, i32 32767) ; 2 uses
  %.025.i.us.i = trunc nsw i32 %.02531.i.us.i to i16
  %i.er = mul nuw nsw i64 %.07277.us.i, %i.o
  %i.es = getelementptr [2 x i8], ptr %i.do, i64 %i.er
  store i16 %.025.i.us.i, ptr %i.es, align 2
  %i.et = add nuw nsw i64 %.07277.us.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.et, %i.dh
  br i1 %exitcond.not.i, label %bb.u, label %bb.q, !llvm.loop !32

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next.i43, %i.o
  br i1 %exitcond94.not.i, label %._crit_edge.us.i, label %bb.p, !llvm.loop !33

._crit_edge.us.i:                                 ; preds = %bb.u
  %i.eu = mul nuw nsw i64 %i.dh, %i.o
  %i.ev = add i64 %i.eu, %.06584.us.i             ; 2 uses
  %i.ew = sub i64 %.sroa.23.1, %i.dh              ; 2 uses
  %i.ex = sub nuw nsw i64 %.385.us.i, %i.dh       ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, 0
  br i1 %i.ey, label %.lr.ph.us.i, label %IMA_ADPCM_DecodeBlockData.exit, !llvm.loop !34

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i, %.lr.ph87.split.i
  %i.ez = phi i64 [ %i.fb, %.lr.ph87.split.i ], [ %i.cv, %.lr.ph87.i ]
  %.385.i = phi i64 [ %i.fc, %.lr.ph87.split.i ], [ %.2.i, %.lr.ph87.i ] ; 2 uses
  %i.fa = tail call i64 @llvm.umin.i64(i64 %.385.i, i64 8) ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa                    ; 2 uses
  %i.fc = sub nuw nsw i64 %.385.i, %i.fa          ; 2 uses
  %i.fd = icmp sgt i64 %i.fc, 0
  br i1 %i.fd, label %.lr.ph87.split.i, label %IMA_ADPCM_DecodeBlockData.exit, !llvm.loop !34

IMA_ADPCM_DecodeBlockData.exit:                   ; preds = %._crit_edge.us.i, %.lr.ph87.split.i, %bb.o
  %.sroa.23.2 = phi i64 [ %i.cv, %bb.o ], [ %i.fb, %.lr.ph87.split.i ], [ %i.ew, %._crit_edge.us.i ] ; 2 uses
  %.065.lcssa.i = phi i64 [ %.sroa.68.3, %bb.o ], [ %.sroa.68.3, %.lr.ph87.split.i ], [ %i.ev, %._crit_edge.us.i ] ; 4 uses
  br i1 %.not103, label %bb.v, label %bb.z

bb.v:                                             ; preds = %IMA_ADPCM_DecodeBlockData.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ff = load i32, ptr %i.fe, align 4
  switch i32 %i.ff, label %bb.x [
    i32 1, label %bb.w
    i32 2, label %bb.w
    i32 3, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ad) #7
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ae) #7
  %i.fg = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.75) #7
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.fh = mul nuw nsw i64 %i.s, %i.o
  %i.fi = urem i64 %.065.lcssa.i, %i.fh
  %i.fj = sub i64 %.065.lcssa.i, %i.fi
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %.sroa.68.1 = phi i64 [ %i.fj, %bb.x ], [ %.065.lcssa.i, %bb.v ]
  %i.fk = shl i64 %.sroa.68.1, 1
  br label %.loopexit

bb.z:                                             ; preds = %IMA_ADPCM_DecodeBlockData.exit
  %i.fl = add i64 %i.aq, %.sroa.40.0109           ; 2 uses
  %i.fm = sub i64 %i.w, %i.fl                     ; 2 uses
  %i.fn = icmp sgt i64 %.sroa.23.2, 0
  %i.fo = icmp uge i64 %i.fm, %i.p
  %i.fp = select i1 %i.fn, i1 %i.fo, i1 false
  br i1 %i.fp, label %bb.k, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.z, %.preheader, %bb.y
  %.098 = phi i64 [ %i.fk, %bb.y ], [ %i.z, %.preheader ], [ %i.z, %bb.z ]
  store ptr %i.ad, ptr %1, align 8
  %i.fq = trunc i64 %.098 to i32
  store i32 %i.fq, ptr %2, align 4
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.ae) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.h, %bb.b, %.loopexit, %bb.w, %bb.l, %bb.j, %bb.g, %SafeMult.exit, %bb.d
  %.032 = phi i1 [ true, %bb.d ], [ %i.y, %SafeMult.exit ], [ %i.ab, %bb.g ], [ %i.au, %bb.l ], [ %i.fg, %bb.w ], [ true, %.loopexit ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.h ]
  ret i1 %.032
}

declare i64 @SDL_ReadIO_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #3

declare ptr @SDL_IOFromConstMem_REAL(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @WaveGetFormatGUIDEncoding(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 2), i64 noundef 16) #7
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 20), i64 noundef 16) #7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 38), i64 noundef 16) #7
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 56), i64 noundef 16) #7
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 74), i64 noundef 16) #7
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @SDL_memcmp_REAL(ptr noundef nonnull %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 92), i64 noundef 16) #7
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @extensible_guids, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 18), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 36), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 54), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 72), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @extensible_guids, i64 90), %bb.f ]
  %i.n = load i16, ptr %.lcssa, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g
  %.05 = phi i16 [ %i.n, %bb.g ], [ 0, %bb.f ]
  ret i16 %.05
}

declare i32 @SDL_memcmp_REAL(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @PCM_Init(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.b = load i16, ptr %i.a, align 2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 50
  %.pre = load i16, ptr %.phi.trans.insert, align 2 ; 5 uses
  switch i16 %i.b, label %._crit_edge [
    i16 1, label %bb.b
    i16 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  switch i16 %.pre, label %bb.c [
    i16 8, label %._crit_edge
    i16 16, label %._crit_edge
    i16 24, label %._crit_edge
    i16 32, label %._crit_edge
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = zext i16 %.pre to i32
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.51, i32 noundef %i.c) #7
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %.not = icmp eq i16 %.pre, 32
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = zext i16 %.pre to i32
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.52, i32 noundef %i.e) #7
  br label %bb.m

._crit_edge:                                      ; preds = %bb.a, %bb.d, %bb.b, %bb.b, %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i16, ptr %i.g, align 4
  %i.i = zext i16 %i.h to i32
  %i.j = zext i16 %.pre to i32
  %i.k = mul nuw nsw i32 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i16, ptr %i.l, align 4              ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %i.o = shl nuw nsw i32 %i.n, 3
  %i.p = urem i32 %i.k, %i.o
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.53) #7
  br label %bb.m

bb.g:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.s = load i32, ptr %i.r, align 4
  %.off = add i32 %i.s, -1
  %switch = icmp ult i32 %.off, 2
  %i.t = icmp ugt i16 %i.m, 1
  %or.cond = and i1 %i.t, %switch
  %.lhs.trunc = trunc nuw i64 %1 to i32           ; 2 uses
  br i1 %or.cond, label %bb.h, label %._crit_edge30

bb.h:                                             ; preds = %bb.g
  %i.u = urem i32 %.lhs.trunc, %i.n
  %.not24 = icmp eq i32 %i.u, 0
  br i1 %.not24, label %._crit_edge30, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.54) #7
  br label %bb.m

._crit_edge30:                                    ; preds = %bb.g, %bb.h
  %i.w = udiv i32 %.lhs.trunc, %i.n               ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = load i32, ptr %i.x, align 8
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = icmp ult i32 %i.w, %i.ae
  %or.cond.i = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %or.cond.i, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.j
  %i.ag = icmp ugt i32 %i.w, %i.ae
  br i1 %i.ag, label %WaveAdjustToFactValue.exit.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %._crit_edge30
  br label %WaveAdjustToFactValue.exit.thread

WaveAdjustToFactValue.exit.thread:                ; preds = %bb.k, %._crit_edge.i
  %.0.i.ph.in = phi i32 [ %i.ae, %._crit_edge.i ], [ %i.w, %bb.k ]
  %.0.i.ph = zext i32 %.0.i.ph.in to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.0.i.ph, ptr %i.ah, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #7 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %i.aj, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %WaveAdjustToFactValue.exit.thread, %bb.i, %bb.f, %bb.e, %bb.c
  %.0 = phi i1 [ %i.d, %bb.c ], [ %i.q, %bb.f ], [ %i.v, %bb.i ], [ %i.f, %bb.e ], [ false, %bb.l ], [ true, %WaveAdjustToFactValue.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @LAW_Init(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %.not = icmp eq i16 %i.b, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i16 %i.b to i32
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.56, i32 noundef %i.c) #7
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i16, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i16, ptr %i.g, align 4
  %.not17 = icmp eq i16 %i.f, %i.h
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.53) #7
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.k = load i32, ptr %i.j, align 4
  %.off = add i32 %i.k, -1
  %switch = icmp ult i32 %.off, 2
  %i.l = icmp ugt i16 %i.f, 1
  %or.cond = and i1 %i.l, %switch
  %.lhs.trunc = trunc nuw i64 %1 to i32           ; 2 uses
  %.rhs.trunc = zext i16 %i.f to i32              ; 2 uses
  br i1 %or.cond, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.m = urem i32 %.lhs.trunc, %.rhs.trunc
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.54) #7
  br label %bb.k

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.o = udiv i32 %.lhs.trunc, %.rhs.trunc        ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp ult i32 %i.o, %i.w
  %or.cond.i = select i1 %i.u, i1 %i.x, i1 false
  br i1 %or.cond.i, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %i.y = icmp ugt i32 %i.o, %i.w
  br i1 %i.y, label %WaveAdjustToFactValue.exit.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %._crit_edge
  br label %WaveAdjustToFactValue.exit.thread

WaveAdjustToFactValue.exit.thread:                ; preds = %bb.i, %._crit_edge.i
  %.0.i.ph.in = phi i32 [ %i.w, %._crit_edge.i ], [ %i.o, %bb.i ]
  %.0.i.ph = zext i32 %.0.i.ph.in to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.0.i.ph, ptr %i.z, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.55) #7 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %i.ab, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %WaveAdjustToFactValue.exit.thread, %bb.g, %bb.d, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ %i.i, %bb.d ], [ %i.n, %bb.g ], [ false, %bb.j ], [ true, %WaveAdjustToFactValue.exit.thread ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @MS_ADPCM_Init(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i16, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 2 uses
  %i.e = mul nuw nsw i64 %i.d, 7                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i16, ptr %i.f, align 4
  %i.h = zext i16 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = zext i16 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, %i.d
  %i.n = shl nsw i64 %i.i, 3
  %i.o = udiv i64 %i.n, %i.m                      ; 2 uses
  %i.p = icmp ugt i16 %i.c, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.42) #7
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.k, 4
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = zext i16 %i.k to i32
  %i.s = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.57, i32 noundef %i.r) #7
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ugt i64 %i.e, %i.h
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_1
