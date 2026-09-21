Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mlpdec?download=true
inline.NumInlined: 95
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.10 = private unnamed_addr constant [45 x i8] c"Stream parameters not seen; skipping frame.\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"There must be no extraword for MLP.\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Insufficient data for headers\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid nonrestart_substr.\0A\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"Indicated length of substream %d data goes off end of packet.\0A\00", align 1
@.str.15 = private unnamed_addr constant [84 x i8] c"Indicated end offset of substream %d data is smaller than calculated start offset.\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Parity check failed.\0A\00", align 1
@.str.17 = private unnamed_addr constant [84 x i8] c"Previous substream(%d) channels overlaps current substream(%d) channels, skipping.\0A\00", align 1
@.str.18 = private unnamed_addr constant [81 x i8] c"Current substream(%d) channels overlaps final substream(%d) channels, skipping.\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"End of stream indicated.\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Substream %d parity check failed.\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Substream %d checksum failed.\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"No restart header present in substream %d.\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"substream %d length mismatch\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"invalid/unknown bits per sample\0A\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"Channel group 2 cannot have more bits per sample than group 1.\0A\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"Channel groups with differing sample rates are not currently supported.\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"invalid/unknown sampling rate\0A\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"Sampling rate %d is greater than the supported maximum (%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"Block size %d is greater than the supported maximum (%d).\0A\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"Block size pow2 %d is greater than the supported maximum (%d).\0A\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"MLP only supports up to 2 substreams.\0A\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"%d substreams (more than the maximum supported by the decoder)\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"unexpected stream_type %X in MLP\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"unexpected stream_type %X in !MLP\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"restart header sync incorrect (got 0x%04x)\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"MLP must have 0x31ea sync word.\0A\00", align 1
@.str.37 = private unnamed_addr constant [47 x i8] c"Max matrix channel cannot be greater than %d.\0A\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"%d channels (more than the maximum supported by the decoder)\00", align 1
@.str.39 = private unnamed_addr constant [94 x i8] c"Extracting %d-channel downmix (0x%lx) from substream %d. Further substreams will be skipped.\0A\00", align 1
@.str.40 = private unnamed_addr constant [57 x i8] c"Lossless check failed - expected %02x, calculated %02x.\0A\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"Assignment of matrix channel %d to invalid output channel %d\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"restart header checksum error\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"Invalid blocksize.\0A\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"Negative output_shift\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"quant_step_size larger than huff_lsbs\0A\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"Matrices may change only once per access unit.\0A\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c"Number of primitive matrices cannot be greater than %d.\0A\00", align 1
@.str.48 = private unnamed_addr constant [53 x i8] c"Invalid channel %d specified as output from matrix.\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"Too many fractional bits specified.\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"Total filter orders too high.\0A\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"FIR and IIR filters must use the same precision.\0A\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Invalid huff_lsbs.\0A\00", align 1
@.str.56 = private unnamed_addr constant [47 x i8] c"Filters may change only once per access unit.\0A\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"%cIR filter order %d is greater than maximum %d.\0A\00", align 1
@.str.58 = private unnamed_addr constant [50 x i8] c"%cIR filter coeff_bits must be between 1 and 16.\0A\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"Sum of coeff_bits and coeff_shift for %cIR filter must be 16 or less.\0A\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"FIR filter has state data specified.\0A\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"Substreams with VLC block size check info\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"too many audio samples in frame\0A\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"block data length mismatch\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"channel count mismatch\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"No samples to output.\0A\00", align 1
@noise_table = internal unnamed_addr constant [256 x i8] c"\1E3\166\03\07\FC&\0E7.Q\16:\FD\024\1F\F93\0F,J\1EU\EF\0A!\12P\1C>\0A \17EH\1A#\11I<\088\02\06\FE\FB3\04\0B2BL\15,!/\01\1A@09(&\10\F6\E4\\\16\EE\1D\F6\05\F31\13\18F\22=0\1E\0E\FA\19:!*<C\116\11\16\1EC,\F72\F5+( ;R\0D1\F27<$01\1F/\0F\0C\04A\01\17\1D'-\FETE\00H%9\1B)\F1\F0#\1F\0E=\18\00\1B\18\10)7\225\098\0C\19\1D5\05\14\EC\F8\14\0D\1C\FDN&\10\0B>.\1D\15\18.A+\E9Y\12J\15&\F4\13\0C\ED\08\0F!\049\09\F8$#\1A\1C\07S?OK\0B\03W%/\22('\13\14*\1B\22'M\0D*;@-\FF %-\FB5\FA\07$2\17\06 \09\EB\12G\1B4\E7\1F#*\FFD?4\1A+B%)\19(F", align 16
@.str.66 = private unnamed_addr constant [15 x i8] c"TrueHD decoder\00", align 1
@truehd_decoder_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.66, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @mlp_decode_init(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %2 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %3 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %4 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1740
  store i32 -1, ptr %i.d, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3420
  store i32 -1, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 5100
  store i32 -1, ptr %i.f, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6780
  store i32 -1, ptr %i.g, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 13520
  tail call void @ff_mlpdsp_init(ptr noundef nonnull %i.h) #8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 2>, ptr %1, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !68
  %i.n = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.i, ptr noundef nonnull %1) #8
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x i32> <i32 1, i32 2>, ptr %2, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1610612736, ptr %i.o, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !68
  %i.q = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.i, ptr noundef nonnull %2) #8
  %.not29 = icmp eq i32 %i.q, 0
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.r) #8
  store <2 x i32> <i32 1, i32 2>, ptr %i.r, align 8, !tbaa !37
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 3, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !38
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !69
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  store <2 x i32> <i32 1, i32 5>, ptr %3, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1543, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !68
  %i.u = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.i, ptr noundef nonnull %3) #8
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.v) #8
  store <2 x i32> <i32 1, i32 5>, ptr %i.v, align 8, !tbaa !37
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 1543, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !38
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !69
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  store <2 x i32> <i32 1, i32 6>, ptr %4, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1551, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !68
  %i.y = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.i, ptr noundef nonnull %4) #8
  %.not31 = icmp eq i32 %i.y, 0
  br i1 %.not31, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.z) #8
  store <2 x i32> <i32 1, i32 6>, ptr %i.z, align 8, !tbaa !37
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 1551, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !69
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.9) #8
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.i) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.a
  %i.aa = call i32 @pthread_once(ptr noundef nonnull @mlp_decode_init.init_static_once, ptr noundef nonnull @init_static) #8 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 8191) i32 @read_access_unit(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [2 x [168 x i32]], align 16       ; 4 uses
  %4 = alloca %struct.AVChannelLayout, align 8    ; 4 uses
  %5 = alloca %struct.MLPHeaderInfo, align 8      ; 28 uses
  %6 = alloca %struct.GetBitContext, align 8      ; 35 uses
  %i.b = alloca [4 x i8], align 1                 ; 4 uses
  %i.c = alloca [4 x i16], align 2                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 51 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.j = icmp slt i32 %i.g, 4
  br i1 %i.j, label %.thread317, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %i.e, align 1, !tbaa !38
  %i.l = tail call i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = shl i16 %i.l, 1
  %i.n = and i16 %i.m, 8190                       ; 2 uses
  %i.o = zext nneg i16 %i.n to i32                ; 9 uses
  %i.p = icmp samesign ult i16 %i.n, 4
  %i.q = icmp samesign ult i32 %i.g, %i.o
  %or.cond221 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond221, label %.thread317, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %i.s = shl nuw nsw i32 %i.o, 3
  %i.t = add nsw i32 %i.s, -32                    ; 2 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !93
  %i.v = or disjoint i32 %i.t, 8                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 30 uses
  store i32 %i.v, ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 87 uses
  store i32 0, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store i32 0, ptr %i.y, align 8, !tbaa !94
  %i.z = load i32, ptr %i.r, align 1, !tbaa !38
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.v, i32 16)
  %i.ac = lshr i32 %i.aa, 1
  %i.ad = and i32 %i.ac, 2147450880
  %i.ae = lshr exact i32 %i.ab, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !38
  %i.ai = tail call i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = lshr i32 %i.ai, 17
  %i.ak = or disjoint i32 %i.aj, %i.ad
  %i.al = icmp eq i32 %i.ak, 2084124637
  br i1 %i.al, label %bb.d, label %bb.bd

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 10 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32
  %i.ao = call i32 @ff_mlp_read_major_sync(ptr noundef %i.an, ptr noundef nonnull %5, ptr noundef nonnull %6) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.e, label %read_major_sync.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !96 ; 4 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.as, i32 noundef 16, ptr noundef nonnull @.str.24) #8
  br label %read_major_sync.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !97
  %i.av = icmp sgt i32 %i.au, %i.aq
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aw, i32 noundef 16, ptr noundef nonnull @.str.25) #8
  br label %read_major_sync.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !98 ; 2 uses
  %.not100.i = icmp eq i32 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = load i32, ptr %i.az, align 8            ; 5 uses
  %.not101.i = icmp eq i32 %i.ay, %i.ba
  %or.cond110.i = select i1 %.not100.i, i1 true, i1 %.not101.i
  br i1 %or.cond110.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bb, i32 noundef 16, ptr noundef nonnull @.str.26) #8
  br label %read_major_sync.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bd, i32 noundef 16, ptr noundef nonnull @.str.27) #8
  br label %read_major_sync.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.be = icmp sgt i32 %i.ba, 192000
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bf, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.ba, i32 noundef 192000) #8
  br label %read_major_sync.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !99 ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, 160
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bj, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.bh, i32 noundef 160) #8
  br label %read_major_sync.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !100 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 256
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr %i.am, align 8, !tbaa !32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bn, i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %i.bl, i32 noundef 256) #8
  br label %read_major_sync.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !101 ; 5 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %read_major_sync.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = load ptr, ptr %i.am, align 8, !tbaa !32 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !102 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 86045
  %i.bv = icmp sgt i32 %i.bp, 2
  %or.cond.i227 = and i1 %i.bv, %i.bu
  br i1 %or.cond.i227, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.br, i32 noundef 16, ptr noundef nonnull @.str.31) #8
  br label %read_major_sync.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.bw = icmp sgt i32 %i.bp, 4
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %i.br, ptr noundef nonnull @.str.32, i32 noundef %i.bp) #8
  br label %read_major_sync.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !103
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !104
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %i.bh, ptr %i.ca, align 8, !tbaa !105
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i32 %i.bl, ptr %i.cb, align 4, !tbaa !43
  %i.cc = trunc i32 %i.bp to i8                   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !106
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !107
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 50
  store i8 %i.cg, ptr %i.ch, align 2, !tbaa !108
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !109 ; 2 uses
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 51
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !110
  %i.cm = icmp eq i32 %i.bt, 86060
  br i1 %i.cm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cn = icmp ne i8 %i.cc, 4
  %i.co = and i32 %i.cj, 128
  %.not102.i = icmp eq i32 %i.co, 0
  %or.cond111.i = select i1 %i.cn, i1 true, i1 %.not102.i
  br i1 %or.cond111.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 688
  store i32 30, ptr %i.cp, align 8, !tbaa !111
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cq = call i8 @llvm.umin.i8(i8 %i.cc, i8 3)
  %spec.select.i = add nsw i8 %i.cq, -1           ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i8 %spec.select.i, ptr %i.cr, align 4, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 344
  store i32 %i.ba, ptr %i.cs, align 8, !tbaa !112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 376
  store i32 %i.bh, ptr %i.ct, align 8, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 652
  store i32 %i.aq, ptr %i.cu, align 4, !tbaa !114
  %i.cv = icmp sgt i32 %i.aq, 16                  ; 2 uses
  %spec.select138.i = select i1 %i.cv, i32 2, i32 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.br, i64 348
  store i32 %spec.select138.i, ptr %i.cw, align 4, !tbaa !45
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 13536
  %i.cy = load ptr, ptr %i.cx, align 16, !tbaa !115
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  %i.da = zext i8 %spec.select.i to i64
  %i.db = getelementptr inbounds nuw [1680 x i8], ptr %i.cz, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 17
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 1668
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load i8, ptr %i.de, align 16, !tbaa !46
  %i.dg = zext i1 %i.cv to i32
  %i.dh = call ptr %i.cy(ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dd, i8 noundef zeroext %i.df, i32 noundef %i.dg) #8, !inline_history !70
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 13544
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 1, ptr %i.dj, align 16, !tbaa !48
end_hunk_0
