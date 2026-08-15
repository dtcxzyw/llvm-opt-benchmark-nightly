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
@switch.table.PCM_Init = private unnamed_addr constant [25 x i8] [i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 16, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 24, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32], align 2

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
  %.1144.i = phi i32 [ %spec.select.i, %bb.ad ], [ 10000, %WaveGetFactChunkHint.exit ] ; 3 uses
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

bb.ag:                                            ; preds = %bb.af
  %i.ax = call i64 @SDL_ReadIO_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 8) #7
  %.not20.i.i = icmp eq i64 %i.ax, 8
  br i1 %.not20.i.i, label %bb.ah, label %WaveLoad.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add nuw nsw i64 %i.as, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  switch i32 %i.ay, label %.split49 [
    i32 1179011410, label %bb.ai
    i32 1163280727, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bc = call zeroext i1 @SDL_ReadU32LE_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.d) #7
  br i1 %i.bc, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %bb.ai
  %i.bd = load i32, ptr %i.d, align 4
  %.not156.i = icmp eq i32 %i.bd, 1163280727
  br i1 %.not156.i, label %bb.ak, label %.thread.i

.thread.i:                                        ; preds = %bb.aj, %bb.ai
  %.str.23.sink.i = phi ptr [ @.str.22, %bb.ai ], [ @.str.23, %bb.aj ]
  %i.be = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.23.sink.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.be, label %bb.ct, label %bb.cs

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  br label %bb.al

.split49:                                         ; preds = %bb.ah
  %i.bf = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.bf, label %bb.ct, label %bb.cs

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.sroa.5.0.i = phi i32 [ %i.ba, %bb.ak ], [ 0, %bb.ah ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ %i.bb, %bb.ak ], [ 0, %bb.ah ] ; 4 uses
  %i.bg = add nuw nsw i64 %.sroa.11.0.i, 4        ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 13 uses
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = load i32, ptr %i.s, align 8
  switch i32 %i.bi, label %bb.an [
    i32 3, label %bb.am
    i32 4, label %bb.aq
    i32 1, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.al
  %i.bj = add nuw nsw i64 %.sroa.11.0.i, 4294967295
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.bk = icmp eq i32 %.sroa.5.0.i, 0
  br i1 %i.bk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.bl = add nuw nsw i64 %.sroa.11.0.i, 4294967295
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.al
  %i.bm = zext i32 %.sroa.5.0.i to i64
  %i.bn = add nuw nsw i64 %.sroa.11.0.i, %i.bm
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am, %bb.al
  %.0146.i = phi i64 [ %i.bl, %bb.ao ], [ %i.bn, %bb.ap ], [ %i.bj, %bb.am ], [ 9223372036854775807, %bb.al ] ; 4 uses
  %.0145.i = phi i1 [ false, %bb.ao ], [ true, %bb.ap ], [ false, %bb.am ], [ false, %bb.al ]
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 14 uses
  %i.bp = load i32, ptr %i.bo, align 4            ; 3 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = add nuw i64 %i.bg, %i.bq                ; 2 uses
  %i.bs = and i32 %i.bp, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add nuw i64 %i.br, %i.bt
  %i.bv = icmp ugt i64 %.0146.i, %i.bu
  br i1 %i.bv, label %.lr.ph.i, label %.loopexit.thread.i

.lr.ph.i:                                         ; preds = %bb.aq
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.cb = icmp sgt i64 %i.an, 0
  %exitcond.not.i167 = icmp eq i32 %.1144.i, 0
  br i1 %exitcond.not.i167, label %.split54, label %.lr.ph

bb.ar:                                            ; preds = %bb.bq
  %i.cc = add i32 %i.ce, 1
  %exitcond.not.i = icmp eq i32 %i.ce, %.1144.i
  br i1 %exitcond.not.i, label %.split54, label %.lr.ph, !llvm.loop !3

.split54:                                         ; preds = %bb.ar, %.lr.ph.i
  %i.cd = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.25, i32 noundef %.1144.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.cd, label %bb.ct, label %bb.cs

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.ar
  %i.ce = phi i32 [ %i.cc, %bb.ar ], [ 1, %.lr.ph.i ] ; 2 uses
  %.sroa.021.0251.i170 = phi i32 [ %.sroa.021.1.i, %bb.ar ], [ 0, %.lr.ph.i ] ; 8 uses
  %.sroa.0.0252.i169 = phi i32 [ %.sroa.0.1.i, %bb.ar ], [ 0, %.lr.ph.i ] ; 9 uses
  %.sroa.9.0253.i168 = phi i32 [ %.sroa.9.1.i, %bb.ar ], [ 0, %.lr.ph.i ] ; 8 uses
  %i.cf = phi i64 [ %i.eb, %bb.ar ], [ %i.bg, %.lr.ph.i ]
  %i.cg = phi i32 [ %i.ec, %bb.ar ], [ %i.bp, %.lr.ph.i ]
  %i.ch = phi i64 [ %i.ed, %bb.ar ], [ %i.bq, %.lr.ph.i ]
  %i.ci = phi i64 [ %i.ee, %bb.ar ], [ %i.br, %.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.cj = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i168.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i168.i, label %WaveFreeChunkData.exit.i172.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph
  call void @SDL_free_REAL(ptr noundef nonnull %i.cj) #7
  store ptr null, ptr %i.bw, align 8
  %.pre.i169.i = load i32, ptr %i.bo, align 4     ; 2 uses
  %.pre21.i170.i = load i64, ptr %i.bh, align 8
  %.pre22.i171.i = zext i32 %.pre.i169.i to i64
  br label %WaveFreeChunkData.exit.i172.i

WaveFreeChunkData.exit.i172.i:                    ; preds = %bb.as, %.lr.ph
  %.pre-phi.i173.i = phi i64 [ %i.ch, %.lr.ph ], [ %.pre22.i171.i, %bb.as ]
  %i.ck = phi i64 [ %i.cf, %.lr.ph ], [ %.pre21.i170.i, %bb.as ]
  %i.cl = phi i32 [ %i.cg, %.lr.ph ], [ %.pre.i169.i, %bb.as ]
  store i64 0, ptr %i.bx, align 8
  %i.cm = xor i64 %.pre-phi.i173.i, 9223372036854775807
  %i.cn = icmp slt i64 %i.cm, %i.ck
  %i.co = icmp sgt i64 %i.ci, 9223372036854775799
  %or.cond.i174.i = or i1 %i.co, %i.cn
  br i1 %or.cond.i174.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %WaveFreeChunkData.exit.i172.i
  %i.cp = and i32 %i.cl, 1
  %i.cq = zext nneg i32 %i.cp to i64
  %spec.select.i175.i = add nsw i64 %i.ci, %i.cq  ; 3 uses
  %i.cr = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %spec.select.i175.i, i32 noundef 0) #7
  %.not19.i176.i = icmp eq i64 %i.cr, %spec.select.i175.i
  br i1 %.not19.i176.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.cs = call i64 @SDL_ReadIO_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 8) #7
  %.not20.i178.i = icmp eq i64 %i.cs, 8
  br i1 %.not20.i178.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %WaveFreeChunkData.exit.i172.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ct = load i32, ptr %i.ac, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.split53, label %.loopexit.i

.split53:                                         ; preds = %bb.av
  %i.cv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.26) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.cv, label %bb.ct, label %bb.cs

bb.aw:                                            ; preds = %bb.au
  %i.cw = load i32, ptr %i.a, align 4             ; 2 uses
  store i32 %i.cw, ptr %5, align 8
  %i.cx = load i32, ptr %i.by, align 4            ; 4 uses
  store i32 %i.cx, ptr %i.bo, align 4
  %i.cy = add nsw i64 %spec.select.i175.i, 8      ; 4 uses
  store i64 %i.cy, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  switch i32 %i.cw, label %bb.bl [
    i32 544501094, label %bb.ax
    i32 1635017060, label %bb.ba
    i32 1952670054, label %bb.be
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.cz = icmp eq i32 %.sroa.021.0251.i170, 544501094
  br i1 %i.cz, label %bb.bl, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.da = icmp eq i32 %.sroa.0.0252.i169, 1635017060
  br i1 %i.da, label %.split44, label %bb.az

.split44:                                         ; preds = %bb.ay
  %i.db = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.28) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.db, label %bb.ct, label %bb.cs

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8.i, ptr noundef nonnull align 4 dereferenceable(28) %i.bo, i64 28, i1 false)
  br label %bb.bl

bb.ba:                                            ; preds = %bb.aw
  %i.dc = zext i32 %i.cx to i64
  %i.dd = add nsw i64 %i.cy, %i.dc
  %i.de = icmp sgt i64 %i.dd, %i.an
  %or.cond319.i = select i1 %i.cb, i1 %i.de, i1 false
  br i1 %or.cond319.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.df = sub nsw i64 %i.an, %i.cy
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  store i32 %i.dg, ptr %i.bo, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.9.0.copyload.i = phi i32 [ %i.dg, %bb.bb ], [ %i.cx, %bb.ba ]
  %.not158.i = icmp eq i32 %.sroa.0.0252.i169, 1635017060
  br i1 %.not158.i, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  br label %bb.bl

bb.be:                                            ; preds = %bb.aw
  %i.dh = load i32, ptr %i.bz, align 8
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.dj = icmp ult i32 %i.cx, 4
  br i1 %i.dj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 -1, ptr %i.bz, align 8
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.dk = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.cy, i32 noundef 0) #7
  %i.dl = load i64, ptr %i.bh, align 8
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.dn = call zeroext i1 @SDL_ReadU32LE_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.ca) #7
  br i1 %i.dn, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %storemerge.i = phi i32 [ -1, %bb.bj ], [ 1, %bb.bi ]
  store i32 %storemerge.i, ptr %i.bz, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.az, %bb.ax, %bb.aw
  %.sroa.021.1.i = phi i32 [ 544501094, %bb.ax ], [ 544501094, %bb.az ], [ %.sroa.021.0251.i170, %bb.bd ], [ %.sroa.021.0251.i170, %bb.bc ], [ %.sroa.021.0251.i170, %bb.bg ], [ %.sroa.021.0251.i170, %bb.bk ], [ %.sroa.021.0251.i170, %bb.be ], [ %.sroa.021.0251.i170, %bb.aw ] ; 3 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0252.i169, %bb.ax ], [ %.sroa.0.0252.i169, %bb.az ], [ 1635017060, %bb.bd ], [ 1635017060, %bb.bc ], [ %.sroa.0.0252.i169, %bb.bg ], [ %.sroa.0.0252.i169, %bb.bk ], [ %.sroa.0.0252.i169, %bb.be ], [ %.sroa.0.0252.i169, %bb.aw ] ; 3 uses
  %.sroa.9.1.i = phi i32 [ %.sroa.9.0253.i168, %bb.ax ], [ %.sroa.9.0253.i168, %bb.az ], [ %.sroa.9.0.copyload.i, %bb.bd ], [ %.sroa.9.0253.i168, %bb.bc ], [ %.sroa.9.0253.i168, %bb.bg ], [ %.sroa.9.0253.i168, %bb.bk ], [ %.sroa.9.0253.i168, %bb.be ], [ %.sroa.9.0253.i168, %bb.aw ] ; 3 uses
  %i.do = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.dq = load i64, ptr %i.bh, align 8
  %i.dr = load i32, ptr %i.bo, align 4
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add i64 %i.dq, %i.ds
  %i.du = icmp ult i64 %.0146.i, %i.dt
  br i1 %i.du, label %.split45, label %bb.bq

.split45:                                         ; preds = %bb.bm
  %i.dv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.dv, label %bb.ct, label %bb.cs

bb.bn:                                            ; preds = %bb.bl
  %i.dw = icmp eq i32 %.sroa.021.1.i, 544501094
  %i.dx = icmp eq i32 %.sroa.0.1.i, 1635017060
  %or.cond.i = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %or.cond.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.dy = load i32, ptr %i.bz, align 8
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %.thread293.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ea = load i32, ptr %i.am, align 8
  switch i32 %i.ea, label %bb.bq [
    i32 4, label %.thread293.i
    i32 0, label %.thread293.i
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bn, %bb.bm
  %i.eb = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.ec = load i32, ptr %i.bo, align 4            ; 3 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = add i64 %i.eb, %i.ed                    ; 2 uses
  %i.ef = and i32 %i.ec, 1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = add i64 %i.ee, %i.eg
  %i.ei = icmp ugt i64 %.0146.i, %i.eh
  br i1 %i.ei, label %bb.ar, label %.loopexit.i.loopexit, !llvm.loop !3

.thread293.i:                                     ; preds = %bb.bp, %bb.bp, %bb.bo
  %i.ej = load i64, ptr %i.bh, align 8
  %i.ek = load i32, ptr %i.bo, align 4
  %i.el = zext i32 %i.ek to i64
  %i.em = add i64 %i.ej, %i.el
  br label %bb.by

.loopexit.i.loopexit:                             ; preds = %bb.bq
  %i.en = icmp eq i32 %i.do, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.av
  %.pre.i = phi i1 [ false, %bb.av ], [ %i.en, %.loopexit.i.loopexit ]
  %.sroa.021.0248.i = phi i32 [ %.sroa.021.0251.i170, %bb.av ], [ %.sroa.021.1.i, %.loopexit.i.loopexit ]
  %.sroa.0.0242.i = phi i32 [ %.sroa.0.0252.i169, %bb.av ], [ %.sroa.0.1.i, %.loopexit.i.loopexit ]
  %.sroa.9.0236.i = phi i32 [ %.sroa.9.0253.i168, %bb.av ], [ %.sroa.9.1.i, %.loopexit.i.loopexit ] ; 3 uses
  %.not159.i = icmp eq i32 %.sroa.021.0248.i, 544501094
  br i1 %.not159.i, label %bb.br, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %bb.aq
  %i.eo = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.30) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.eo, label %bb.ct, label %bb.cs

bb.br:                                            ; preds = %.loopexit.i
  %.not160.i = icmp eq i32 %.sroa.0.0242.i, 1635017060
  br i1 %.not160.i, label %bb.bs, label %.split52

.split52:                                         ; preds = %bb.br
  %i.ep = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.31) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.ep, label %bb.ct, label %bb.cs

bb.bs:                                            ; preds = %bb.br
  %i.eq = load i64, ptr %i.bh, align 8
  %i.er = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = add i64 %i.eq, %i.es                    ; 4 uses
  br i1 %.pre.i, label %bb.bt, label %bb.by

bb.bt:                                            ; preds = %bb.bs
  %i.eu = load i32, ptr %5, align 8
  %.not161.i = icmp eq i32 %i.eu, 1635017060
  %.not162.i = icmp eq i32 %i.er, 0
  %or.cond167.i = select i1 %.not161.i, i1 true, i1 %.not162.i
  br i1 %or.cond167.i, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.ev = add i64 %i.et, -1                       ; 3 uses
  %i.ew = icmp slt i64 %i.ev, 0
  br i1 %i.ew, label %.thread222.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ex = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.ev, i32 noundef 0) #7
  %.not163.i = icmp eq i64 %i.ex, %i.ev
  br i1 %.not163.i, label %bb.bw, label %.thread222.i

bb.bw:                                            ; preds = %bb.bv
  %i.ey = call zeroext i1 @SDL_ReadU8_REAL(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #7
  br i1 %i.ey, label %bb.bx, label %.thread222.i

.thread222.i:                                     ; preds = %bb.bw, %bb.bv, %bb.bu
  %.str.32.sink.i = phi ptr [ @.str.32, %bb.bu ], [ @.str.32, %bb.bv ], [ @.str.29, %bb.bw ]
  %i.ez = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.32.sink.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.ez, label %bb.ct, label %bb.cs

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bt, %bb.bs, %.thread293.i
  %i.fa = phi i64 [ %i.em, %.thread293.i ], [ %i.et, %bb.bx ], [ %i.et, %bb.bt ], [ %i.et, %bb.bs ]
  %.sroa.9.2215220295.i = phi i32 [ %.sroa.9.1.i, %.thread293.i ], [ %.sroa.9.0236.i, %bb.bx ], [ %.sroa.9.0236.i, %bb.bt ], [ %.sroa.9.0236.i, %bb.bs ] ; 3 uses
  store i32 544501094, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bo, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8.i, i64 28, i1 false)
  %i.fb = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i180.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i180.i, label %WaveFreeChunkData.exit.i181.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @SDL_free_REAL(ptr noundef nonnull %i.fb) #7
  store ptr null, ptr %i.bw, align 8
  br label %WaveFreeChunkData.exit.i181.i

WaveFreeChunkData.exit.i181.i:                    ; preds = %bb.bz, %bb.by
  store i64 0, ptr %i.bx, align 8
  %i.fc = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.fd = call i32 @llvm.umin.i32(i32 %i.fc, i32 1046)
  %spec.select.i182.i = zext nneg i32 %i.fd to i64 ; 2 uses
  %.not.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.ca

bb.ca:                                            ; preds = %WaveFreeChunkData.exit.i181.i
  %i.fe = call noalias ptr @SDL_malloc_REAL(i64 noundef %spec.select.i182.i) #7 ; 2 uses
  store ptr %i.fe, ptr %i.bw, align 8
  %.not20.i183.i = icmp eq ptr %i.fe, null
  br i1 %.not20.i183.i, label %.split51, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ff = load i64, ptr %i.bh, align 8
  %i.fg = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.ff, i32 noundef 0) #7
  %i.fh = load i64, ptr %i.bh, align 8
  %.not21.i.i = icmp eq i64 %i.fg, %i.fh
  br i1 %.not21.i.i, label %WaveReadPartialChunkData.exit.i, label %.split51

WaveReadPartialChunkData.exit.i:                  ; preds = %bb.cb
  %i.fi = load ptr, ptr %i.bw, align 8
  %i.fj = call i64 @SDL_ReadIO_REAL(ptr noundef nonnull %0, ptr noundef %i.fi, i64 noundef %spec.select.i182.i) #7 ; 2 uses
  store i64 %i.fj, ptr %i.bx, align 8
  %.pr.i = load i32, ptr %i.bo, align 4
  %i.fk = icmp ult i32 %.pr.i, 14
  br i1 %i.fk, label %.critedge.i, label %bb.cc

.split51:                                         ; preds = %bb.cb, %bb.ca
  %i.fl = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.33) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.fl, label %bb.ct, label %bb.cs

.critedge.i:                                      ; preds = %WaveReadPartialChunkData.exit.i, %WaveFreeChunkData.exit.i181.i
  %i.fm = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.34) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.fm, label %bb.ct, label %bb.cs

bb.cc:                                            ; preds = %WaveReadPartialChunkData.exit.i
  %i.fn = icmp ult i64 %i.fj, 14
  br i1 %i.fn, label %.split50, label %bb.cd

.split50:                                         ; preds = %bb.cc
  %i.fo = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.33) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.fo, label %bb.ct, label %bb.cs

bb.cd:                                            ; preds = %bb.cc
  %i.fp = call fastcc zeroext i1 @WaveReadFormat(ptr noundef nonnull %5)
  br i1 %i.fp, label %bb.ce, label %WaveLoad.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.fq = zext i32 %.sroa.9.2215220295.i to i64
  %i.fr = call fastcc zeroext i1 @WaveCheckFormat(ptr noundef nonnull %5, i64 noundef %i.fq)
  br i1 %i.fr, label %bb.cf, label %WaveLoad.exit.thread

bb.cf:                                            ; preds = %bb.ce
  %i.fs = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i185.i = icmp eq ptr %i.fs, null
  br i1 %.not.i185.i, label %WaveFreeChunkData.exit.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @SDL_free_REAL(ptr noundef nonnull %i.fs) #7
  br label %WaveFreeChunkData.exit.i

WaveFreeChunkData.exit.i:                         ; preds = %bb.cg, %bb.cf
  store i32 1635017060, ptr %5, align 8
  store i32 %.sroa.9.2215220295.i, ptr %i.bo, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false)
  %.not164.i = icmp eq i32 %.sroa.9.2215220295.i, 0
  br i1 %.not164.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %WaveFreeChunkData.exit.i
  %i.ft = call fastcc i32 @WaveReadChunkData(ptr noundef nonnull %0, ptr noundef nonnull %5)
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %WaveLoad.exit.thread, label %._crit_edge279.i

._crit_edge279.i:                                 ; preds = %bb.ch
  %.pre280.i = load i32, ptr %i.bo, align 4
  %i.fv = zext i32 %.pre280.i to i64
  br label %bb.ci

bb.ci:                                            ; preds = %._crit_edge279.i, %WaveFreeChunkData.exit.i
  %i.fw = phi i64 [ %i.fv, %._crit_edge279.i ], [ 0, %WaveFreeChunkData.exit.i ]
  %i.fx = load i64, ptr %i.bx, align 8
  %.not165.i = icmp eq i64 %i.fx, %i.fw
  br i1 %.not165.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fy = load i32, ptr %i.ac, align 4
  %.off.i = add i32 %i.fy, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %.split48, label %bb.ck

.split48:                                         ; preds = %bb.cj
  %i.fz = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.36) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.fz, label %bb.ct, label %bb.cs

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 34 ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 2
  switch i16 %i.gb, label %bb.cp [
    i16 1, label %bb.cl
    i16 3, label %bb.cl
    i16 6, label %bb.cm
    i16 7, label %bb.cm
    i16 2, label %bb.cn
    i16 17, label %bb.co
  ]

bb.cl:                                            ; preds = %bb.ck, %bb.ck
  %i.gc = call fastcc zeroext i1 @PCM_Decode(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br i1 %i.gc, label %bb.cp, label %WaveLoad.exit.thread

bb.cm:                                            ; preds = %bb.ck, %bb.ck
  %i.gd = call fastcc zeroext i1 @LAW_Decode(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br i1 %i.gd, label %bb.cp, label %WaveLoad.exit.thread

bb.cn:                                            ; preds = %bb.ck
  %i.ge = call fastcc zeroext i1 @MS_ADPCM_Decode(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br i1 %i.ge, label %bb.cp, label %WaveLoad.exit.thread

bb.co:                                            ; preds = %bb.ck
  %i.gf = call fastcc zeroext i1 @IMA_ADPCM_Decode(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br i1 %i.gf, label %bb.cp, label %WaveLoad.exit.thread

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.gh, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.gk = load i16, ptr %i.gj, align 4
  %i.gl = and i16 %i.gk, 255
  %i.gm = zext nneg i16 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.gm, ptr %i.gn, align 4
  store i32 0, ptr %2, align 4
  %i.go = load i16, ptr %i.ga, align 2
  switch i16 %i.go, label %.split47 [
    i16 2, label %WaveLoad.exit.thread42
    i16 17, label %WaveLoad.exit.thread42
    i16 6, label %WaveLoad.exit.thread42
    i16 7, label %WaveLoad.exit.thread42
    i16 3, label %bb.cq
    i16 1, label %bb.cr
  ]

bb.cq:                                            ; preds = %bb.cp
  br label %WaveLoad.exit.thread42

bb.cr:                                            ; preds = %bb.cp
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 50
  %i.gq = load i16, ptr %i.gp, align 2            ; 2 uses
  %switch.tableidx = add i16 %i.gq, -8            ; 3 uses
  %i.gr = icmp ult i16 %switch.tableidx, 25
  br i1 %i.gr, label %switch.hole_check, label %.split46

.split46:                                         ; preds = %switch.hole_check, %bb.cr
  %i.gs = zext i16 %i.gq to i32
  %i.gt = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.37, i32 noundef %i.gs) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.gt, label %bb.ct, label %bb.cs

.split47:                                         ; preds = %bb.cp
  %i.gu = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.38) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.gu, label %bb.ct, label %bb.cs

switch.hole_check:                                ; preds = %bb.cr
  %switch.maskindex = zext nneg i16 %switch.tableidx to i32
  %switch.shifted = lshr i32 16843009, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %.split46

switch.lookup:                                    ; preds = %switch.hole_check
  %i.gv = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.SDL_LoadWAV_IO_REAL, i64 %i.gv
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %WaveLoad.exit.thread42

WaveLoad.exit.thread42:                           ; preds = %switch.lookup, %bb.cp, %bb.cp, %bb.cp, %bb.cp, %bb.cq
  %.sink.i = phi i32 [ 32784, %bb.cp ], [ %switch.ext, %switch.lookup ], [ 32784, %bb.cp ], [ 33056, %bb.cq ], [ 32784, %bb.cp ], [ 32784, %bb.cp ]
  store i32 %.sink.i, ptr %2, align 4
  %.0146..i = select i1 %.0145.i, i64 %.0146.i, i64 %i.fa
  store i64 %.0146..i, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.ct

WaveLoad.exit.thread:                             ; preds = %bb.ce, %bb.ch, %bb.cl, %bb.cm, %bb.cn, %bb.cd, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.cs

WaveLoad.exit:                                    ; preds = %WaveFreeChunkData.exit.i.i, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.gw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.21) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br i1 %i.gw, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.split54, %.split53, %.loopexit.thread.i, %.split52, %.split51, %.critedge.i, %.split50, %.split49, %.thread.i, %.split48, %.split47, %.thread222.i, %.split46, %.split45, %.split44, %.split, %WaveLoad.exit.thread, %WaveLoad.exit
  %i.gx = load ptr, ptr %3, align 8
  call void @SDL_free_REAL(ptr noundef %i.gx) #7
  store ptr null, ptr %3, align 8
  store i32 0, ptr %4, align 4
  br label %bb.ct

bb.ct:                                            ; preds = %.split54, %.split53, %.loopexit.thread.i, %.split52, %.split51, %.critedge.i, %.split50, %.split49, %.thread.i, %.split48, %.split47, %.thread222.i, %.split46, %.split45, %.split44, %.split, %WaveLoad.exit.thread42, %bb.cs, %WaveLoad.exit
  %.3.i41 = phi i1 [ false, %bb.cs ], [ true, %WaveLoad.exit ], [ true, %WaveLoad.exit.thread42 ], [ true, %.split ], [ true, %.split44 ], [ true, %.split45 ], [ true, %.split46 ], [ true, %.thread222.i ], [ true, %.split47 ], [ true, %.split48 ], [ true, %.thread.i ], [ true, %.split49 ], [ true, %.split50 ], [ true, %.critedge.i ], [ true, %.split51 ], [ true, %.split52 ], [ true, %.loopexit.thread.i ], [ true, %.split53 ], [ true, %.split54 ]
  br i1 %1, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = call i64 @SDL_SeekIO_REAL(ptr noundef nonnull %0, i64 noundef %i.gz, i32 noundef 0) #7 ; 0 uses
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.not.i38 = icmp eq ptr %i.hc, null
  br i1 %.not.i38, label %WaveFreeChunkData.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @SDL_free_REAL(ptr noundef nonnull %i.hc) #7
  store ptr null, ptr %i.hb, align 8
  br label %WaveFreeChunkData.exit

WaveFreeChunkData.exit:                           ; preds = %bb.cv, %bb.cw
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.hd, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.hf = load ptr, ptr %i.he, align 8
  call void @SDL_free_REAL(ptr noundef %i.hf) #7
  br label %bb.cx

bb.cx:                                            ; preds = %WaveFreeChunkData.exit, %bb.m, %bb.k, %bb.i
  %.0 = phi i1 [ %.3.i41, %WaveFreeChunkData.exit ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ] ; 2 uses
  br i1 %1, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.hg = call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %0) #7 ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %.thread, %bb.cy, %bb.cx
  %.057 = phi i1 [ false, %.thread ], [ %.0, %bb.cy ], [ %.0, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i1 %.057
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #3

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #3

declare i64 @SDL_SeekIO_REAL(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_CloseIO_REAL(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_LoadWAV_REAL(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_IOFromFile_REAL(ptr noundef %0, ptr noundef nonnull @.str.5) #7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i64 12, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %2, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not19 = icmp eq ptr %3, null
  br i1 %.not19, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %3, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @SDL_LoadWAV_IO_REAL(ptr noundef nonnull %i.a, i1 noundef zeroext true, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.0 = phi i1 [ %i.b, %bb.h ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.0
}

declare ptr @SDL_IOFromFile_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SDL_GetHint_REAL(ptr noundef) local_unnamed_addr #3

declare i32 @SDL_strcmp_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @SDL_GetIOSize_REAL(ptr noundef) local_unnamed_addr #3

declare i32 @SDL_sscanf_REAL(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @SDL_TellIO_REAL(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_ReadU32LE_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @SDL_ReadU8_REAL(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @WaveReadFormat(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = icmp ugt i64 %i.c, 2147483647
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.39) #7
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr @SDL_IOFromConstMem_REAL(ptr noundef %i.g, i64 noundef %i.c) #7 ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a) #7
  br i1 %i.i, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = tail call zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.j) #7
  br i1 %i.k, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = tail call zeroext i1 @SDL_ReadU32LE_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.l) #7
  br i1 %i.m, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = tail call zeroext i1 @SDL_ReadU32LE_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.n) #7
  br i1 %i.o, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = tail call zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.p) #7
  br i1 %i.q, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.r = load i16, ptr %i.a, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  store i16 %i.r, ptr %i.s, align 2
  %i.t = icmp samesign ugt i64 %i.c, 15
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.v = tail call zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.u) #7
  br i1 %i.v, label %bb.m, label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.w = icmp eq i16 %i.r, 1
  br i1 %i.w, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.x = tail call zeroext i1 @SDL_CloseIO_REAL(ptr noundef nonnull %i.h) #7 ; 0 uses
  %i.y = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.40) #7
  br label %bb.w

bb.m:                                             ; preds = %bb.j
  %i.z = icmp samesign ugt i64 %i.c, 17
  br i1 %i.z, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ab = tail call zeroext i1 @SDL_ReadU16LE_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.aa) #7
end_hunk_0
