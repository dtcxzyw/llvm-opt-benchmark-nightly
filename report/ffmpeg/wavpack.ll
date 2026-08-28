Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wavpack?download=true
inline.NumInlined: 58
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%struct.AVChannelLayout = type { i32, i32, %union.anon.2, ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"wavpack\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WavPack\00", align 1
@ff_wavpack_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 86041, i32 13314, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 2, i8 0, i8 0, i8 1, i32 72, ptr @update_thread_context, ptr null, ptr null, ptr @wavpack_decode_init, %union.anon { ptr @wavpack_decode_frame }, ptr @wavpack_decode_end, ptr @wavpack_decode_flush, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid number of samples: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Block %d has invalid size (size %d vs. %d bytes left)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Not enough channels coded in a packet.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Error creating frame decode context\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Mismatching number of samples in a sequence: %d and %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Got incorrect block %02X with size %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Block size %i is out of bounds\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Too many decorrelation terms\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"No decorrelation terms met\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Too many decorrelation weights\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Entropy vars size should be %i, got %i.\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Invalid INT32INFO, size = %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"Invalid INT32INFO, extra_bits = %d (> 30)\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Invalid INT32INFO, shift = %d (> 31)\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Invalid FLOATINFO, size = %i\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Invalid FLOATINFO, shift = %d (> 31)\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Invalid DSD_DATA, size = %i\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Invalid DSD encoding mode: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Invalid EXTRABITS, size = %i\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Insufficient channel information\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Invalid channel info size %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Invalid custom sample rate.\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"No block with decorrelation terms\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"No block with decorrelation weights\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"No block with decorrelation samples\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"No block with entropy info\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Hybrid config not found\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Float information not found\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"Too small EXTRABITS\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Packed samples not found\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"Invalid PCM/DSD mix encountered\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Custom sample rate missing.\0A\00", align 1
@wv_rates = internal unnamed_addr constant [16 x i32] [i32 6000, i32 8000, i32 9600, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 192000, i32 0], align 16
@.str.34 = private unnamed_addr constant [47 x i8] c"Channel mask does not match the channel count\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Error reinitializing the DSD context\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"Too many channels coded in a packet.\0A\00", align 1
@ff_wp_exp2_table = external local_unnamed_addr constant [256 x i8], align 16
@.str.40 = private unnamed_addr constant [11 x i8] c"CRC error\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Extra bits CRC error\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"sample %d %d too large\0A\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Too few bits (%d) left\0A\00", align 1
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16
@ff_wp_log2_table = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define internal noundef i32 @update_thread_context(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  tail call void @av_refstruct_replace(ptr noundef nonnull %i.e, ptr noundef %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  tail call void @av_refstruct_replace(ptr noundef nonnull %i.h, ptr noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %i.l, ptr %i.m, align 8, !tbaa !37
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @wavpack_decode_init(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !39
  %i.d = tail call i32 @ff_thread_sync_ref(ptr noundef %0, i64 noundef 56) #13
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @av_refstruct_pool_alloc_ext_c(i64 noundef 96, i32 noundef 131072, ptr null, ptr noundef nonnull @progress_pool_init_cb, ptr noundef nonnull @progress_pool_reset_cb, ptr noundef nonnull @progress_pool_free_entry_cb, ptr noundef null) #13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !40
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -12, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @wavpack_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca [4 x i8], align 1                   ; 8 uses
  %5 = alloca %struct.AVChannelLayout, align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = icmp slt i32 %i.f, 33
  br i1 %i.g, label %bb.iw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.j = load i32, ptr %i.i, align 1, !tbaa !45   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.j, ptr %i.k, align 4, !tbaa !46
  %i.l = add i32 %i.j, -150001
  %or.cond = icmp ult i32 %i.l, -150000
  br i1 %or.cond, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.j) #13
  br label %bb.iw

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load i32, ptr %i.m, align 1, !tbaa !45
  %.lobit = lshr i32 %i.n, 31
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %.lobit, ptr %i.o, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 2
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %wavpack_decode_block.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %wavpack_decode_block.exit ] ; 4 uses
  %.055296 = phi i32 [ %i.f, %.lr.ph ], [ %i.atf, %wavpack_decode_block.exit ]
  %.056295 = phi ptr [ %i.d, %.lr.ph ], [ %i.ay, %wavpack_decode_block.exit ] ; 3 uses
  %.071294 = phi i32 [ 0, %.lr.ph ], [ %.2, %wavpack_decode_block.exit ] ; 21 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.056295, i64 4
  %i.z = load i32, ptr %i.y, align 1, !tbaa !45
  %i.aa = add i32 %i.z, -12                       ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.056295, i64 20 ; 2 uses
  %i.ac = add nsw i32 %.055296, -20               ; 3 uses
  %i.ad = icmp slt i32 %i.aa, 1
  %i.ae = icmp sgt i32 %i.aa, %i.ac
  %or.cond70 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond70, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.af, i32 noundef %i.aa, i32 noundef %i.ac) #13
  br label %wavpack_decode_block.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !9   ; 13 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !39
  %i.aj = sext i32 %i.ai to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.aj
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = call fastcc i32 @wv_alloc_frame_context(ptr noundef nonnull %i.ag) #14
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.5) #13
  br label %wavpack_decode_block.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 42 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.aq, i8 0, i64 1408, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1564 ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.ar, i8 0, i64 56, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1516 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1528 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 1524 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 1520 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 4 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.ax = zext nneg i32 %i.aa to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ax ; 57 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 62 uses
  %i.ba = icmp samesign ult i32 %i.aa, 4
  br i1 %i.ba, label %bytestream2_get_le32.exit570.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.056295, i64 24
  %i.bc = load i32, ptr %i.ab, align 1, !tbaa !45
  br label %bytestream2_get_le32.exit570.i

bytestream2_get_le32.exit570.i:                   ; preds = %bb.j, %bb.i
  %.sroa.0690.23.i = phi ptr [ %i.bb, %bb.j ], [ %i.ay, %bb.i ] ; 3 uses
  %.0.i569.i = phi i32 [ %i.bc, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 88 ; 4 uses
  store i32 %.0.i569.i, ptr %i.bd, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !46 ; 2 uses
  %.not502.i = icmp eq i32 %.0.i569.i, %i.bf
  br i1 %.not502.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_le32.exit570.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.bf, i32 noundef %.0.i569.i) #13
  br label %wavpack_decode_block.exit.thread

bb.l:                                             ; preds = %bytestream2_get_le32.exit570.i
  %i.bg = ptrtoint ptr %.sroa.0690.23.i to i64
  %i.bh = sub i64 %i.az, %i.bg
  %i.bi = icmp slt i64 %i.bh, 4
  br i1 %i.bi, label %bytestream2_get_le32.exit568.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0690.23.i, i64 4
  %i.bk = load i32, ptr %.sroa.0690.23.i, align 1, !tbaa !45
  br label %bytestream2_get_le32.exit568.i

bytestream2_get_le32.exit568.i:                   ; preds = %bb.m, %bb.l
  %.sroa.0690.22.i = phi ptr [ %i.bj, %bb.m ], [ %i.ay, %bb.l ] ; 3 uses
  %.0.i567.i = phi i32 [ %i.bk, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store i32 %.0.i567.i, ptr %i.bl, align 8, !tbaa !56
  %i.bm = and i32 %.0.i567.i, -2147483520
  %.not503.i = icmp ne i32 %i.bm, 0               ; 3 uses
  %i.bn = and i32 %.0.i567.i, 2
  %.not504.not.i = icmp eq i32 %i.bn, 0
  %..i = select i1 %.not504.not.i, i32 6, i32 7
  %.0476.i = select i1 %.not503.i, i32 8, i32 %..i ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 5 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !44
  %.not505.i = icmp eq i32 %i.bp, 0
  br i1 %.not505.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bytestream2_get_le32.exit568.i
  %i.bq = load i32, ptr %i.p, align 4, !tbaa !57
  %.not506.i = icmp eq i32 %i.bq, %.0476.i
  br i1 %.not506.i, label %bb.o, label %wavpack_decode_block.exit.thread

bb.o:                                             ; preds = %bb.n, %bytestream2_get_le32.exit568.i
  %i.br = call i32 @av_get_bytes_per_sample(i32 noundef %.0476.i) #13 ; 3 uses
  %i.bs = load i32, ptr %i.bl, align 8, !tbaa !56 ; 7 uses
  %i.bt = shl i32 %i.bs, 3
  %i.bu = and i32 %i.bt, 24                       ; 2 uses
  %i.bv = add nuw nsw i32 %i.bu, 8                ; 2 uses
  %i.bw = and i32 %i.bs, 6144
  %.not507.i = icmp eq i32 %i.bw, 6144
  %i.bx = lshr i32 %i.bs, 2
  %.lobit.i = and i32 %i.bx, 1
  %i.by = xor i32 %.lobit.i, 1                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 4 uses
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !58
  %i.ca = and i32 %i.bs, 1073741824
  %.not509.i = icmp eq i32 %i.ca, 0
  %spec.select.i = select i1 %.not509.i, i32 %i.by, i32 0
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 16 uses
  store i32 %spec.select.i, ptr %i.cb, align 8, !tbaa !59
  %i.cc = and i32 %i.bs, 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !60
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 1536 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ap, i64 1540
  %i.cg = insertelement <2 x i32> poison, i32 %i.bs, i64 0
  %i.ch = shufflevector <2 x i32> %i.cg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ci = and <2 x i32> %i.ch, <i32 8, i32 512>
  store <2 x i32> %i.ci, ptr %i.ce, align 8, !tbaa !61
  %i.cj = shl nsw i32 %i.br, 3
  %i.ck = sub nsw i32 %i.cj, %i.bv
  %i.cl = lshr i32 %i.bs, 13
  %i.cm = and i32 %i.cl, 31
  %i.cn = add nsw i32 %i.ck, %i.cm                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 1532 ; 3 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !62
  %or.cond556.i = icmp ugt i32 %i.cn, 31
  br i1 %or.cond556.i, label %wavpack_decode_block.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %notmask.i = shl nsw i32 -128, %i.bu            ; 2 uses
  %i.cp = xor i32 %notmask.i, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1544 ; 3 uses
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !63
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 1548
  store i32 %notmask.i, ptr %i.cr, align 4, !tbaa !64
  %i.cs = ptrtoint ptr %.sroa.0690.22.i to i64
  %i.ct = sub i64 %i.az, %i.cs
  %i.cu = icmp slt i64 %i.ct, 4
  br i1 %i.cu, label %bytestream2_get_le32.exit566.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0690.22.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %.sroa.0690.22.i, align 1, !tbaa !45
  %.pre1210.i = ptrtoint ptr %i.cv to i64
  br label %bytestream2_get_le32.exit566.i

bytestream2_get_le32.exit566.i:                   ; preds = %bb.q, %bb.p
  %.pre-phi.i = phi i64 [ %i.az, %bb.p ], [ %.pre1210.i, %bb.q ]
  %.sroa.0690.21.i = phi ptr [ %i.ay, %bb.p ], [ %i.cv, %bb.q ]
  %.0.i565.i = phi i32 [ 0, %bb.p ], [ %i.cw, %bb.q ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 %.0.i565.i, ptr %i.cx, align 8, !tbaa !65
  %i.cy = sub i64 %i.az, %.pre-phi.i              ; 2 uses
  %i.cz = and i64 %i.cy, 4294967295
  %.not5101041.i = icmp eq i64 %i.cz, 0
  br i1 %.not5101041.i, label %.thread1295.i, label %.lr.ph1056.i

.lr.ph1056.i:                                     ; preds = %bytestream2_get_le32.exit566.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.db = getelementptr i8, ptr %i.ap, i64 76     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.dd = getelementptr i8, ptr %i.ap, i64 72     ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  %i.df = getelementptr inbounds nuw i8, ptr %i.ap, i64 1624
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ap, i64 1640
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ap, i64 1632
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ap, i64 1552
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ap, i64 1556 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ap, i64 1560
  %i.dp = icmp eq i32 %i.br, 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ap, i64 92 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.backedge.i, %.lr.ph1056.i
  %i.dr = phi i64 [ %i.cy, %.lr.ph1056.i ], [ %i.et, %.backedge.i ]
end_hunk_0
begin_hunk_1_@wavpack_decode_frame:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i, !llvm.loop !81

.loopexit.loopexit.i:                             ; preds = %wp_exp2.exit616.i
  %i.agh = add nsw i32 %spec.select557.i, -2
  %i.agi = shl nuw i32 %.pre.i, 1
  %i.agj = sub i32 %i.agh, %i.agi
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.dt
  %.sroa.0690.13.i = phi ptr [ %.sroa.0690.1.i, %bb.dt ], [ %.sroa.0690.43.i, %.loopexit.loopexit.i ] ; 3 uses
  %.3.i = phi i32 [ %spec.select557.i, %bb.dt ], [ %i.agj, %.loopexit.loopexit.i ]
  %.not521997.i = icmp slt i32 %.pre.i, 0
  br i1 %.not521997.i, label %bytestream2_get_le24.exit.i, label %.lr.ph1001.preheader.i

.lr.ph1001.preheader.i:                           ; preds = %.loopexit.i
  %i.agk = add nuw i32 %.pre.i, 1                 ; 2 uses
  %wide.trip.count1174.i = zext i32 %i.agk to i64 ; 5 uses
  %xtraiter = and i64 %wide.trip.count1174.i, 1
  %i.agl = icmp eq i32 %.pre.i, 0
  br i1 %i.agl, label %.lr.ph1001.i.epil.preheader.a, label %.lr.ph1001.preheader.i.new

.lr.ph1001.preheader.i.new:                       ; preds = %.lr.ph1001.preheader.i
  %unroll_iter = and i64 %wide.trip.count1174.i, 4294967294
  br label %.lr.ph1001.i.a

.lr.ph1001.i.a:                                   ; preds = %bytestream2_get_le16.exit648.i.1, %.lr.ph1001.preheader.i.new
  %indvars.iv1171.i = phi i64 [ 0, %.lr.ph1001.preheader.i.new ], [ %indvars.iv.next1172.i.1, %bytestream2_get_le16.exit648.i.1 ] ; 3 uses
  %.sroa.0690.14998.i = phi ptr [ %.sroa.0690.13.i, %.lr.ph1001.preheader.i.new ], [ %.sroa.0690.42.i.1, %bytestream2_get_le16.exit648.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph1001.preheader.i.new ], [ %niter.next.1, %bytestream2_get_le16.exit648.i.1 ]
  %i.agm = ptrtoint ptr %.sroa.0690.14998.i to i64
  %i.agn = sub i64 %i.az, %i.agm
  %i.ago = icmp slt i64 %i.agn, 2
  br i1 %i.ago, label %bytestream2_get_le16.exit648.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph1001.i.a
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.0690.14998.i, i64 2
  %i.agq = load i16, ptr %.sroa.0690.14998.i, align 1, !tbaa !45
  %i.agr = zext i16 %i.agq to i32
  %i.ags = shl nuw i32 %i.agr, 16
  br label %bytestream2_get_le16.exit648.i

bytestream2_get_le16.exit648.i:                   ; preds = %bb.dw, %.lr.ph1001.i.a
  %.sroa.0690.42.i = phi ptr [ %i.agp, %bb.dw ], [ %i.ay, %.lr.ph1001.i.a ] ; 3 uses
  %.0.i647.i = phi i32 [ %i.ags, %bb.dw ], [ 0, %.lr.ph1001.i.a ]
  %i.agt = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1171.i
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 20
  store i32 %.0.i647.i, ptr %i.agu, align 4, !tbaa !82
  %i.agv = ptrtoint ptr %.sroa.0690.42.i to i64
  %i.agw = sub i64 %i.az, %i.agv
  %i.agx = icmp slt i64 %i.agw, 2
  br i1 %i.agx, label %bytestream2_get_le16.exit648.i.1, label %bb.dx

bb.dx:                                            ; preds = %bytestream2_get_le16.exit648.i
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.0690.42.i, i64 2
  %i.agz = load i16, ptr %.sroa.0690.42.i, align 1, !tbaa !45
  %i.aha = zext i16 %i.agz to i32
  %i.ahb = shl nuw i32 %i.aha, 16
  br label %bytestream2_get_le16.exit648.i.1

bytestream2_get_le16.exit648.i.1:                 ; preds = %bb.dx, %bytestream2_get_le16.exit648.i
  %.sroa.0690.42.i.1 = phi ptr [ %i.agy, %bb.dx ], [ %i.ay, %bytestream2_get_le16.exit648.i ] ; 3 uses
  %.0.i647.i.1 = phi i32 [ %i.ahb, %bb.dx ], [ 0, %bytestream2_get_le16.exit648.i ]
  %i.ahc = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1171.i
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 48
  store i32 %.0.i647.i.1, ptr %i.ahd, align 4, !tbaa !82
  %indvars.iv.next1172.i.1 = add nuw nsw i64 %indvars.iv1171.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph1001.i.a, !llvm.loop !83

._crit_edge.i.unr-lcssa:                          ; preds = %bytestream2_get_le16.exit648.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph1001.i.epil.preheader.a

.lr.ph1001.i.epil.preheader.a:                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph1001.preheader.i
  %indvars.iv1171.i.epil.init = phi i64 [ 0, %.lr.ph1001.preheader.i ], [ %indvars.iv.next1172.i.1, %._crit_edge.i.unr-lcssa ]
  %.sroa.0690.14998.i.epil.init = phi ptr [ %.sroa.0690.13.i, %.lr.ph1001.preheader.i ], [ %.sroa.0690.42.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod1189 = trunc i32 %i.agk to i1
  call void @llvm.assume(i1 %lcmp.mod1189)
  %i.ahe = ptrtoint ptr %.sroa.0690.14998.i.epil.init to i64
  %i.ahf = sub i64 %i.az, %i.ahe
  %i.ahg = icmp slt i64 %i.ahf, 2
  br i1 %i.ahg, label %bytestream2_get_le16.exit648.i.epil, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph1001.i.epil.preheader.a
  %i.ahh = getelementptr inbounds nuw i8, ptr %.sroa.0690.14998.i.epil.init, i64 2
  %i.ahi = load i16, ptr %.sroa.0690.14998.i.epil.init, align 1, !tbaa !45
  %i.ahj = zext i16 %i.ahi to i32
  %i.ahk = shl nuw i32 %i.ahj, 16
  br label %bytestream2_get_le16.exit648.i.epil

bytestream2_get_le16.exit648.i.epil:              ; preds = %bb.dy, %.lr.ph1001.i.epil.preheader.a
  %.sroa.0690.42.i.epil = phi ptr [ %i.ahh, %bb.dy ], [ %i.ay, %.lr.ph1001.i.epil.preheader.a ]
  %.0.i647.i.epil = phi i32 [ %i.ahk, %bb.dy ], [ 0, %.lr.ph1001.i.epil.preheader.a ]
  %i.ahl = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1171.i.epil.init
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 20
  store i32 %.0.i647.i.epil, ptr %i.ahm, align 4, !tbaa !82
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %bytestream2_get_le16.exit648.i.epil
  %.sroa.0690.42.i.lcssa = phi ptr [ %.sroa.0690.42.i.1, %._crit_edge.i.unr-lcssa ], [ %.sroa.0690.42.i.epil, %bytestream2_get_le16.exit648.i.epil ] ; 3 uses
  %i.ahn = shl nuw i32 %.pre.i, 1
  %reass.sub = sub i32 %.3.i, %i.ahn
  %i.aho = add i32 %reass.sub, -2
  %i.ahp = icmp sgt i32 %i.aho, 0
  br i1 %i.ahp, label %.lr.ph1011.i, label %.lr.ph1007.i.preheader

.lr.ph1007.i.preheader:                           ; preds = %._crit_edge.i
  %xtraiter1190 = and i64 %wide.trip.count1174.i, 7 ; 3 uses
  %i.ahq = icmp ult i32 %.pre.i, 7
  br i1 %i.ahq, label %.lr.ph1007.i.epil.preheader, label %.lr.ph1007.i.preheader.new

.lr.ph1007.i.preheader.new:                       ; preds = %.lr.ph1007.i.preheader
  %unroll_iter1193 = and i64 %wide.trip.count1174.i, 4294967288
  br label %.lr.ph1007.i

.lr.ph1011.i:                                     ; preds = %._crit_edge.i, %wp_exp2.exit.i
  %indvars.iv1181.i = phi i64 [ %indvars.iv.next1182.i, %wp_exp2.exit.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.0690.151009.i = phi ptr [ %.sroa.0690.41.i, %wp_exp2.exit.i ], [ %.sroa.0690.42.i.lcssa, %._crit_edge.i ] ; 3 uses
  %i.ahr = ptrtoint ptr %.sroa.0690.151009.i to i64
  %i.ahs = sub i64 %i.az, %i.ahr
  %i.aht = icmp slt i64 %i.ahs, 2
  br i1 %i.aht, label %bytestream2_get_le16.exit646.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph1011.i
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.0690.151009.i, i64 2
  %i.ahv = load i16, ptr %.sroa.0690.151009.i, align 1, !tbaa !45
  br label %bytestream2_get_le16.exit646.i

bytestream2_get_le16.exit646.i:                   ; preds = %bb.dz, %.lr.ph1011.i
  %.sroa.0690.41.i = phi ptr [ %i.ahu, %bb.dz ], [ %i.ay, %.lr.ph1011.i ] ; 2 uses
  %.0.i645.i = phi i16 [ %i.ahv, %bb.dz ], [ 0, %.lr.ph1011.i ] ; 2 uses
  %spec.select.i.i = call i16 @llvm.abs.i16(i16 %.0.i645.i, i1 false) ; 2 uses
  %i.ahw = ashr i16 %spec.select.i.i, 8           ; 3 uses
  %i.ahx = icmp ugt i16 %i.ahw, 31
  br i1 %i.ahx, label %wp_exp2.exit.i, label %bb.ea

bb.ea:                                            ; preds = %bytestream2_get_le16.exit646.i
  %i.ahy = zext nneg i16 %i.ahw to i32            ; 2 uses
  %i.ahz = and i16 %spec.select.i.i, 255
  %i.aia = zext nneg i16 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw i8, ptr @ff_wp_exp2_table, i64 %i.aia
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !45
  %i.aid = zext i8 %i.aic to i32
  %i.aie = or disjoint i32 %i.aid, 256            ; 2 uses
  %i.aif = icmp samesign ugt i16 %i.ahw, 9
  %i.aig = add nsw i32 %i.ahy, -9
  %i.aih = shl nuw nsw i32 %i.aie, %i.aig
  %i.aii = sub nuw nsw i32 9, %i.ahy
  %i.aij = lshr i32 %i.aie, %i.aii
  %i.aik = select i1 %i.aif, i32 %i.aih, i32 %i.aij ; 2 uses
  %i.ail = sub nsw i32 0, %i.aik
  %i.aim = icmp slt i16 %.0.i645.i, 0
  %i.ain = select i1 %i.aim, i32 %i.ail, i32 %i.aik
  br label %wp_exp2.exit.i

wp_exp2.exit.i:                                   ; preds = %bb.ea, %bytestream2_get_le16.exit646.i
  %.015.i.i = phi i32 [ %i.ain, %bb.ea ], [ -2147483648, %bytestream2_get_le16.exit646.i ]
  %i.aio = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1181.i
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 24
  store i32 %.015.i.i, ptr %i.aip, align 4, !tbaa !84
  %indvars.iv.next1182.i = add nuw nsw i64 %indvars.iv1181.i, 1 ; 2 uses
  %exitcond1185.not.i = icmp eq i64 %indvars.iv.next1182.i, %wide.trip.count1174.i
  br i1 %exitcond1185.not.i, label %bytestream2_get_le24.exit.i, label %.lr.ph1011.i, !llvm.loop !85

.lr.ph1007.i:                                     ; preds = %.lr.ph1007.i, %.lr.ph1007.i.preheader.new
  %indvars.iv1176.i = phi i64 [ 0, %.lr.ph1007.i.preheader.new ], [ %indvars.iv.next1177.i.7, %.lr.ph1007.i ] ; 9 uses
  %niter1194 = phi i64 [ 0, %.lr.ph1007.i.preheader.new ], [ %niter1194.next.7, %.lr.ph1007.i ]
  %i.aiq = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 24
  store i32 0, ptr %i.air, align 4, !tbaa !84
  %i.ais = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 52
  store i32 0, ptr %i.ait, align 4, !tbaa !84
  %i.aiu = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 80
  store i32 0, ptr %i.aiv, align 4, !tbaa !84
  %i.aiw = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 108
  store i32 0, ptr %i.aix, align 4, !tbaa !84
  %i.aiy = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 136
  store i32 0, ptr %i.aiz, align 4, !tbaa !84
  %i.aja = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 164
  store i32 0, ptr %i.ajb, align 4, !tbaa !84
  %i.ajc = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 192
  store i32 0, ptr %i.ajd, align 4, !tbaa !84
  %i.aje = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 220
  store i32 0, ptr %i.ajf, align 4, !tbaa !84
  %indvars.iv.next1177.i.7 = add nuw nsw i64 %indvars.iv1176.i, 8 ; 2 uses
  %niter1194.next.7 = add i64 %niter1194, 8       ; 2 uses
  %niter1194.ncmp.7 = icmp eq i64 %niter1194.next.7, %unroll_iter1193
  br i1 %niter1194.ncmp.7, label %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa, label %.lr.ph1007.i, !llvm.loop !86

bb.eb:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.not515.i = icmp eq i32 %spec.select557.i, 4
  br i1 %.not515.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %spec.select557.i) #13
  %i.ajg = add nsw i32 %i.eg, -4
  %i.ajh = zext i32 %i.ajg to i64
  %..i610.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.ajh)
  %i.aji = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i610.i
  br label %bb.eq, !llvm.loop !67

bb.ed:                                            ; preds = %bb.eb
  %i.ajj = call i64 @llvm.smin.i64(i64 %i.el, i64 4)
  %i.ajk = and i64 %i.ajj, 4294967295             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %.sroa.0690.1.i, i64 %i.ajk, i1 false)
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.0690.1.i, i64 %i.ajk ; 3 uses
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i = load i8, ptr %4, align 1, !tbaa !45 ; 2 uses
  %i.ajm = zext i8 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i to i32 ; 2 uses
  %i.ajn = icmp ugt i8 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i, 30
  br i1 %i.ajn, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %i.ajm) #13
  br label %bb.eq, !llvm.loop !67

bb.ef:                                            ; preds = %bb.ed
  store i32 %i.ajm, ptr %i.as, align 4, !tbaa !87
  %.sroa.0.i.1..sroa.0.i.1..sroa.0.i.1..sroa.0.1..sroa.0.1..sroa.0.1..i = load i8, ptr %.sroa.0.i.1.i.1.i.1..sroa_idx, align 1, !tbaa !45 ; 2 uses
  %.not516.i = icmp eq i8 %.sroa.0.i.1..sroa.0.i.1..sroa.0.i.1..sroa.0.1..sroa.0.1..sroa.0.1..i, 0
  br i1 %.not516.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ajo = zext i8 %.sroa.0.i.1..sroa.0.i.1..sroa.0.i.1..sroa.0.1..sroa.0.1..sroa.0.1..i to i32
  store i32 %i.ajo, ptr %i.at, align 8, !tbaa !88
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.sroa.0.i.2..sroa.0.i.2..sroa.0.i.2..sroa.0.2..sroa.0.2..sroa.0.2.682.i = load i8, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 1, !tbaa !45 ; 2 uses
  %.not517.i = icmp eq i8 %.sroa.0.i.2..sroa.0.i.2..sroa.0.i.2..sroa.0.2..sroa.0.2..sroa.0.2.682.i, 0
  br i1 %.not517.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i32 1, ptr %i.au, align 4, !tbaa !89
  store i32 1, ptr %i.av, align 8, !tbaa !90
  %i.ajp = zext i8 %.sroa.0.i.2..sroa.0.i.2..sroa.0.i.2..sroa.0.2..sroa.0.2..sroa.0.2.682.i to i32
  store i32 %i.ajp, ptr %i.at, align 8, !tbaa !88
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.sroa.0.i.3..sroa.0.i.3..sroa.0.i.3..sroa.0.3..sroa.0.3..sroa.0.3.684.i = load i8, ptr %.sroa.0.i.3.i.3.i.3..sroa_idx, align 1, !tbaa !45 ; 2 uses
  %.not518.i = icmp eq i8 %.sroa.0.i.3..sroa.0.i.3..sroa.0.i.3..sroa.0.3..sroa.0.3..sroa.0.3.684.i, 0
  br i1 %.not518.i, label %thread-pre-split.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store i32 1, ptr %i.av, align 8, !tbaa !90
  %i.ajq = zext i8 %.sroa.0.i.3..sroa.0.i.3..sroa.0.i.3..sroa.0.3..sroa.0.3..sroa.0.3.684.i to i32 ; 2 uses
  store i32 %i.ajq, ptr %i.at, align 8, !tbaa !88
  br label %bb.el

thread-pre-split.i:                               ; preds = %bb.ej
  %.pr.i = load i32, ptr %i.at, align 8, !tbaa !88
  br label %bb.el

bb.el:                                            ; preds = %thread-pre-split.i, %bb.ek
  %i.ajr = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.ajq, %bb.ek ] ; 4 uses
  %i.ajs = icmp sgt i32 %i.ajr, 31
  br i1 %i.ajs, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %i.ajr) #13
  store i32 0, ptr %i.at, align 8, !tbaa !88
  store i32 0, ptr %i.au, align 4, !tbaa !89
  store i32 0, ptr %i.av, align 8, !tbaa !90
  br label %bb.eq, !llvm.loop !67

bb.en:                                            ; preds = %bb.el
  %i.ajt = load i32, ptr %i.ce, align 8, !tbaa !91
  %i.aju = icmp ne i32 %i.ajt, 0
  %or.cond.i = select i1 %i.aju, i1 %i.dp, i1 false
  br i1 %or.cond.i, label %bb.eo, label %.thread.i

bb.eo:                                            ; preds = %bb.en
  %i.ajv = load i32, ptr %i.co, align 4, !tbaa !62 ; 2 uses
  %i.ajw = icmp slt i32 %i.ajv, 8
  %i.ajx = icmp sgt i32 %i.ajr, 8
  %or.cond558.i = and i1 %i.ajx, %i.ajw
  br i1 %or.cond558.i, label %bb.ep, label %.thread.i

bb.ep:                                            ; preds = %bb.eo
  %i.ajy = add nsw i32 %i.ajv, 8
  store i32 %i.ajy, ptr %i.co, align 4, !tbaa !62
  %i.ajz = add nsw i32 %i.ajr, -8
  store i32 %i.ajz, ptr %i.at, align 8, !tbaa !88
  %i.aka = load <2 x i32>, ptr %i.cq, align 8, !tbaa !61
  %i.akb = ashr <2 x i32> %i.aka, splat (i32 8)
  store <2 x i32> %i.akb, ptr %i.cq, align 8, !tbaa !61
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ep, %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bytestream2_get_le24.exit.i

bb.eq:                                            ; preds = %bb.em, %bb.ee, %bb.ec
  %.sroa.0690.16.i = phi ptr [ %i.ajl, %bb.ee ], [ %i.ajl, %bb.em ], [ %i.aji, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.backedge.i

bb.er:                                            ; preds = %bb.z
  %.not514.i = icmp eq i32 %spec.select557.i, 4
  br i1 %.not514.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %spec.select557.i) #13
  %i.akc = zext nneg i32 %i.eg to i64
  %..i609.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.akc)
  %i.akd = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i609.i
  br label %.backedge.i

bb.et:                                            ; preds = %bb.er
  %i.ake = icmp slt i64 %i.el, 1
  br i1 %i.ake, label %bytestream2_get_byte.exit591.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.0690.1.i, i64 1 ; 2 uses
  %i.akg = load i8, ptr %.sroa.0690.1.i, align 1, !tbaa !45
  %i.akh = zext i8 %i.akg to i32
  %.pre1213.i.a = ptrtoint ptr %i.akf to i64
  br label %bytestream2_get_byte.exit591.i

bytestream2_get_byte.exit591.i:                   ; preds = %bb.eu, %bb.et
  %.pre-phi1214.i.a = phi i64 [ %i.az, %bb.et ], [ %.pre1213.i.a, %bb.eu ]
  %.sroa.0690.34.i = phi ptr [ %i.ay, %bb.et ], [ %i.akf, %bb.eu ] ; 2 uses
  %.0.i590.i = phi i32 [ 0, %bb.et ], [ %i.akh, %bb.eu ]
  store i32 %.0.i590.i, ptr %i.dm, align 8, !tbaa !92
  %i.aki = sub i64 %i.az, %.pre-phi1214.i.a
  %i.akj = icmp slt i64 %i.aki, 1
  br i1 %i.akj, label %bytestream2_get_byte.exit589.i, label %bb.ev

bb.ev:                                            ; preds = %bytestream2_get_byte.exit591.i
  %i.akk = getelementptr inbounds nuw i8, ptr %.sroa.0690.34.i, i64 1 ; 2 uses
  %i.akl = load i8, ptr %.sroa.0690.34.i, align 1, !tbaa !45
  %i.akm = zext i8 %i.akl to i32
  %.pre1215.i.a = ptrtoint ptr %i.akk to i64
  br label %bytestream2_get_byte.exit589.i

bytestream2_get_byte.exit589.i:                   ; preds = %bb.ev, %bytestream2_get_byte.exit591.i
  %.pre-phi1216.i.a = phi i64 [ %i.az, %bytestream2_get_byte.exit591.i ], [ %.pre1215.i.a, %bb.ev ]
  %.sroa.0690.33.i = phi ptr [ %i.ay, %bytestream2_get_byte.exit591.i ], [ %i.akk, %bb.ev ] ; 2 uses
  %.0.i588.i = phi i32 [ 0, %bytestream2_get_byte.exit591.i ], [ %i.akm, %bb.ev ] ; 3 uses
  store i32 %.0.i588.i, ptr %i.dn, align 4, !tbaa !93
  %i.akn = sub i64 %i.az, %.pre-phi1216.i.a
  %i.ako = icmp slt i64 %i.akn, 1
  br i1 %i.ako, label %bytestream2_get_byte.exit587.i, label %bb.ew

bb.ew:                                            ; preds = %bytestream2_get_byte.exit589.i
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.0690.33.i, i64 1
  %i.akq = load i8, ptr %.sroa.0690.33.i, align 1, !tbaa !45
  %i.akr = zext i8 %i.akq to i32
  br label %bytestream2_get_byte.exit587.i

bytestream2_get_byte.exit587.i:                   ; preds = %bb.ew, %bytestream2_get_byte.exit589.i
  %.sroa.0690.32.i = phi ptr [ %i.akp, %bb.ew ], [ %i.ay, %bytestream2_get_byte.exit589.i ] ; 3 uses
  %.0.i586.i = phi i32 [ %i.akr, %bb.ew ], [ 0, %bytestream2_get_byte.exit589.i ]
  store i32 %.0.i586.i, ptr %i.do, align 8, !tbaa !94
  %i.aks = icmp samesign ugt i32 %.0.i588.i, 31
  br i1 %i.aks, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bytestream2_get_byte.exit587.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %.0.i588.i) #13
  store i32 0, ptr %i.dn, align 4, !tbaa !93
  br label %.backedge.i

bb.ey:                                            ; preds = %bytestream2_get_byte.exit587.i
  %i.akt = ptrtoint ptr %.sroa.0690.32.i to i64
  %i.aku = sub i64 %i.az, %i.akt
  %..i608.i = call i64 @llvm.smin.i64(i64 %i.aku, i64 1)
  %i.akv = getelementptr inbounds i8, ptr %.sroa.0690.32.i, i64 %..i608.i
  br label %bytestream2_get_le24.exit.i

bb.ez:                                            ; preds = %bb.z
  %i.akw = shl nuw nsw i32 %spec.select557.i, 3   ; 2 uses
  store ptr %.sroa.0690.1.i, ptr %i.di, align 8, !tbaa !95
  store i32 %i.akw, ptr %i.dj, align 4, !tbaa !96
  %i.akx = add nuw nsw i32 %i.akw, 8
  store i32 %i.akx, ptr %i.dk, align 8, !tbaa !97
  store i32 0, ptr %i.dl, align 8, !tbaa !98
  %i.aky = zext nneg i32 %spec.select557.i to i64
  %..i607.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.aky)
  %i.akz = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i607.i
  br label %bytestream2_get_le24.exit.i

bb.fa:                                            ; preds = %bb.z
  %i.ala = icmp samesign ult i32 %spec.select557.i, 2
  br i1 %i.ala, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %spec.select557.i) #13
  %i.alb = zext nneg i32 %i.eg to i64
  %..i606.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.alb)
  %i.alc = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i606.i
  br label %.backedge.i

bb.fc:                                            ; preds = %bb.fa
  %i.ald = icmp slt i64 %i.el, 1
  br i1 %i.ald, label %bytestream2_get_byte.exit585.thread.i, label %bytestream2_get_byte.exit585.i

bytestream2_get_byte.exit585.i:                   ; preds = %bb.fc
  %i.ale = load i8, ptr %.sroa.0690.1.i, align 1, !tbaa !45 ; 2 uses
  %i.alf = icmp ugt i8 %i.ale, 30
  br i1 %i.alf, label %wavpack_decode_block.exit.thread, label %bytestream2_get_byte.exit585.bytestream2_get_byte.exit585.thread_crit_edge.i

bytestream2_get_byte.exit585.bytestream2_get_byte.exit585.thread_crit_edge.i: ; preds = %bytestream2_get_byte.exit585.i
  %i.alg = zext nneg i8 %i.ale to i32
  %i.alh = getelementptr inbounds nuw i8, ptr %.sroa.0690.1.i, i64 1 ; 2 uses
  %.pre1221.i = ptrtoint ptr %i.alh to i64
  br label %bytestream2_get_byte.exit585.thread.i

bytestream2_get_byte.exit585.thread.i:            ; preds = %bytestream2_get_byte.exit585.bytestream2_get_byte.exit585.thread_crit_edge.i, %bb.fc
  %.pre-phi1222.i = phi i64 [ %.pre1221.i, %bytestream2_get_byte.exit585.bytestream2_get_byte.exit585.thread_crit_edge.i ], [ %i.az, %bb.fc ]
  %.0.i584859.i = phi i32 [ %i.alg, %bytestream2_get_byte.exit585.bytestream2_get_byte.exit585.thread_crit_edge.i ], [ 0, %bb.fc ]
  %.sroa.0690.31858.i = phi ptr [ %i.alh, %bytestream2_get_byte.exit585.bytestream2_get_byte.exit585.thread_crit_edge.i ], [ %i.ay, %bb.fc ] ; 2 uses
  %i.ali = sub i64 %i.az, %.pre-phi1222.i
  %i.alj = icmp slt i64 %i.ali, 1
  br i1 %i.alj, label %bytestream2_init.exit.i, label %bytestream2_get_byte.exit583.i

bytestream2_get_byte.exit583.i:                   ; preds = %bytestream2_get_byte.exit585.thread.i
  %i.alk = getelementptr inbounds nuw i8, ptr %.sroa.0690.31858.i, i64 1 ; 3 uses
  %i.all = load i8, ptr %.sroa.0690.31858.i, align 1, !tbaa !45 ; 2 uses
  %i.alm = zext i8 %i.all to i32                  ; 4 uses
  switch i8 %i.all, label %bb.fd [
    i8 3, label %bytestream2_init.exit.i
    i8 1, label %bytestream2_init.exit.i
    i8 0, label %bytestream2_init.exit.i
  ]

bb.fd:                                            ; preds = %bytestream2_get_byte.exit583.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %i.alm) #13
  br label %wavpack_decode_block.exit.thread

bytestream2_init.exit.i:                          ; preds = %bytestream2_get_byte.exit583.i, %bytestream2_get_byte.exit583.i, %bytestream2_get_byte.exit583.i, %bytestream2_get_byte.exit585.thread.i
  %.0.i582863.i = phi i32 [ %i.alm, %bytestream2_get_byte.exit583.i ], [ %i.alm, %bytestream2_get_byte.exit583.i ], [ %i.alm, %bytestream2_get_byte.exit583.i ], [ 0, %bytestream2_get_byte.exit585.thread.i ]
  %.sroa.0690.30862.i = phi ptr [ %i.alk, %bytestream2_get_byte.exit583.i ], [ %i.alk, %bytestream2_get_byte.exit583.i ], [ %i.alk, %bytestream2_get_byte.exit583.i ], [ %i.ay, %bytestream2_get_byte.exit585.thread.i ] ; 5 uses
  %i.aln = shl nuw nsw i32 1, %.0.i584859.i
  %i.alo = add nsw i32 %spec.select557.i, -2
  store ptr %.sroa.0690.30862.i, ptr %i.df, align 8, !tbaa !99
  store ptr %.sroa.0690.30862.i, ptr %i.dg, align 8, !tbaa !100
  %i.alp = zext nneg i32 %i.alo to i64            ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %.sroa.0690.30862.i, i64 %i.alp
  store ptr %i.alq, ptr %i.dh, align 8, !tbaa !101
  %i.alr = ptrtoint ptr %.sroa.0690.30862.i to i64
  %i.als = sub i64 %i.az, %i.alr
  %..i605.i = call i64 @llvm.smin.i64(i64 %i.als, i64 %i.alp)
  %i.alt = getelementptr inbounds i8, ptr %.sroa.0690.30862.i, i64 %..i605.i
  br label %bytestream2_get_le24.exit.i

bb.fe:                                            ; preds = %bb.z
  %i.alu = icmp samesign ult i32 %spec.select557.i, 5
  br i1 %i.alu, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %spec.select557.i) #13
  %i.alv = zext nneg i32 %spec.select557.i to i64
  %..i604.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.alv)
  %i.alw = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i604.i
  br label %.backedge.i

bb.fg:                                            ; preds = %bb.fe
  %i.alx = shl nuw nsw i32 %spec.select557.i, 3   ; 2 uses
  store ptr %.sroa.0690.1.i, ptr %i.da, align 8, !tbaa !95
  store i32 %i.alx, ptr %i.db, align 4, !tbaa !96
  %i.aly = add nuw nsw i32 %i.alx, 8
  store i32 %i.aly, ptr %i.dc, align 8, !tbaa !97
  store i32 0, ptr %i.dd, align 8, !tbaa !98
  %i.alz = load i32, ptr %.sroa.0690.1.i, align 1, !tbaa !45
  %i.ama = and i32 %i.alz, 65535
  store i32 16, ptr %i.dd, align 8, !tbaa !98
  %i.amb = getelementptr inbounds nuw i8, ptr %.sroa.0690.1.i, i64 2
  %i.amc = load i32, ptr %i.amb, align 1, !tbaa !45
  store i32 32, ptr %i.dd, align 8, !tbaa !98
  %i.amd = shl i32 %i.amc, 16
  %i.ame = or disjoint i32 %i.amd, %i.ama
  store i32 %i.ame, ptr %i.de, align 4, !tbaa !102
  %i.amf = zext nneg i32 %spec.select557.i to i64
  %..i603.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.amf)
  %i.amg = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i603.i
  store i32 1, ptr %i.aw, align 8, !tbaa !51
  br label %bytestream2_get_le24.exit.i

bb.fh:                                            ; preds = %bb.z
  %i.amh = icmp samesign ult i32 %spec.select557.i, 2
  br i1 %i.amh, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.21) #13
  br label %wavpack_decode_block.exit.thread

bb.fj:                                            ; preds = %bb.fh
  %i.ami = icmp slt i64 %i.el, 1
  br i1 %i.ami, label %bytestream2_get_byte.exit581.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.amj = getelementptr inbounds nuw i8, ptr %.sroa.0690.1.i, i64 1
  %i.amk = load i8, ptr %.sroa.0690.1.i, align 1, !tbaa !45
  %i.aml = zext i8 %i.amk to i32
  br label %bytestream2_get_byte.exit581.i
end_hunk_1
begin_hunk_2_@wavpack_decode_frame:bb.a
bb.fx:                                            ; preds = %bytestream2_get_byte.exit581.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %spec.select557.i) #13
  br label %bytestream2_get_le24.exit.i

bb.fy:                                            ; preds = %bb.z
  %.not513.i = icmp eq i32 %spec.select557.i, 3
  br i1 %.not513.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.23) #13
  br label %wavpack_decode_block.exit.thread

bb.ga:                                            ; preds = %bb.fy
  %i.apg = icmp slt i64 %i.el, 3
  br i1 %i.apg, label %bytestream2_get_le24.exit.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aph = getelementptr inbounds nuw i8, ptr %.sroa.0690.1.i, i64 3
  %i.api = getelementptr i8, ptr %.sroa.0690.1.i, i64 1
  %i.apj = load i16, ptr %i.api, align 1
  %i.apk = zext i16 %i.apj to i32
  %i.apl = shl nuw nsw i32 %i.apk, 8
  %i.apm = load i8, ptr %.sroa.0690.1.i, align 1, !tbaa !45
  %i.apn = zext i8 %i.apm to i32
  %i.apo = or disjoint i32 %i.apl, %i.apn
  br label %bytestream2_get_le24.exit.i

bb.gc:                                            ; preds = %bb.z
  %i.app = zext nneg i32 %spec.select557.i to i64
  %..i602.i = call i64 @llvm.smin.i64(i64 %i.el, i64 %i.app)
  %i.apq = getelementptr inbounds i8, ptr %.sroa.0690.1.i, i64 %..i602.i
  br label %bytestream2_get_le24.exit.i

bytestream2_get_le24.exit.i.loopexit987.unr-lcssa: ; preds = %.lr.ph1007.i
  %lcmp.mod1191.not = icmp eq i64 %xtraiter1190, 0
  br i1 %lcmp.mod1191.not, label %bytestream2_get_le24.exit.i, label %.lr.ph1007.i.epil.preheader

.lr.ph1007.i.epil.preheader:                      ; preds = %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa, %.lr.ph1007.i.preheader
  %indvars.iv1176.i.epil.init = phi i64 [ 0, %.lr.ph1007.i.preheader ], [ %indvars.iv.next1177.i.7, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %lcmp.mod1192 = icmp ne i64 %xtraiter1190, 0
  call void @llvm.assume(i1 %lcmp.mod1192)
  br label %.lr.ph1007.i.epil

.lr.ph1007.i.epil:                                ; preds = %.lr.ph1007.i.epil, %.lr.ph1007.i.epil.preheader
  %indvars.iv1176.i.epil = phi i64 [ %indvars.iv.next1177.i.epil, %.lr.ph1007.i.epil ], [ %indvars.iv1176.i.epil.init, %.lr.ph1007.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1007.i.epil ], [ 0, %.lr.ph1007.i.epil.preheader ]
  %i.apr = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv1176.i.epil
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 24
  store i32 0, ptr %i.aps, align 4, !tbaa !84
  %indvars.iv.next1177.i.epil = add nuw nsw i64 %indvars.iv1176.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1190
  br i1 %epil.iter.cmp.not, label %bytestream2_get_le24.exit.i, label %.lr.ph1007.i.epil, !llvm.loop !103

bytestream2_get_le24.exit.i:                      ; preds = %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa, %.lr.ph1007.i.epil, %wp_exp2.exit.i, %wp_exp2.exit619.2.i, %bb.dk, %bb.an, %bytestream2_get_byte.exit597.i, %.loopexit.i, %bb.gc, %bb.gb, %bb.ga, %bb.fx, %bb.fw, %bytestream2_get_byte.exit.i, %bb.fu, %bytestream2_get_byte.exit575.i, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fg, %bytestream2_init.exit.i, %bb.ez, %bb.ey, %.thread.i, %.preheader886.i, %.preheader880.i.a, %bb.aq, %.preheader877.i, %bb.ac
  %.sroa.0690.17.i = phi ptr [ %i.apq, %bb.gc ], [ %i.ay, %bytestream2_get_byte.exit.i ], [ %.sroa.0690.9.i, %bb.dk ], [ %.sroa.0690.13.i, %.loopexit.i ], [ %.sroa.0690.44.2.i, %wp_exp2.exit619.2.i ], [ %.sroa.0690.41.i, %wp_exp2.exit.i ], [ %.sroa.0690.1.i, %.preheader886.i ], [ %i.ajl, %.thread.i ], [ %i.akv, %bb.ey ], [ %i.akz, %bb.ez ], [ %i.alt, %bytestream2_init.exit.i ], [ %i.amg, %bb.fg ], [ %.sroa.0690.29.i, %bb.fx ], [ %i.ay, %bb.ga ], [ %i.ay, %bb.fl ], [ %i.ay, %bb.fn ], [ %i.ay, %bb.fp ], [ %i.ay, %bb.fr ], [ %i.ay, %bytestream2_get_byte.exit575.i ], [ %i.aph, %bb.gb ], [ %i.amp, %bb.fm ], [ %i.amv, %bb.fo ], [ %i.anb, %bb.fq ], [ %i.anm, %bb.fs ], [ %i.aof, %bb.fu ], [ %i.apd, %bb.fw ], [ %.sroa.0690.1.i, %bb.ac ], [ %.sroa.0690.1.i, %.preheader877.i ], [ %.sroa.0690.1.i, %bb.aq ], [ %.sroa.0690.1.i, %.preheader880.i.a ], [ %.sroa.0690.37.i, %bytestream2_get_byte.exit597.i ], [ %.sroa.0690.4.i, %bb.an ], [ %.sroa.0690.42.i.lcssa, %.lr.ph1007.i.epil ], [ %.sroa.0690.42.i.lcssa, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ] ; 2 uses
  %.1472.i = phi i32 [ %.04711043.i, %bb.gc ], [ %.04711043.i, %bytestream2_get_byte.exit.i ], [ 1, %bb.dk ], [ %.04711043.i, %.loopexit.i ], [ %.04711043.i, %wp_exp2.exit619.2.i ], [ %.04711043.i, %wp_exp2.exit.i ], [ %.04711043.i, %.preheader886.i ], [ %.04711043.i, %.thread.i ], [ %.04711043.i, %bb.ey ], [ %.04711043.i, %bb.ez ], [ %.04711043.i, %bytestream2_init.exit.i ], [ %.04711043.i, %bb.fg ], [ %.04711043.i, %bb.fx ], [ %.04711043.i, %bb.ga ], [ %.04711043.i, %bb.fl ], [ %.04711043.i, %bb.fn ], [ %.04711043.i, %bb.fp ], [ %.04711043.i, %bb.fr ], [ %.04711043.i, %bytestream2_get_byte.exit575.i ], [ %.04711043.i, %bb.gb ], [ %.04711043.i, %bb.fm ], [ %.04711043.i, %bb.fo ], [ %.04711043.i, %bb.fq ], [ %.04711043.i, %bb.fs ], [ %.04711043.i, %bb.fu ], [ %.04711043.i, %bb.fw ], [ 1, %bb.ac ], [ 1, %.preheader877.i ], [ 1, %bb.aq ], [ %.04711043.i, %.preheader880.i.a ], [ 1, %bytestream2_get_byte.exit597.i ], [ 1, %bb.an ], [ %.04711043.i, %.lr.ph1007.i.epil ], [ %.04711043.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1470.i = phi i32 [ %.04691044.i, %bb.gc ], [ %.04691044.i, %bytestream2_get_byte.exit.i ], [ %.04691044.i, %bb.dk ], [ %.04691044.i, %.loopexit.i ], [ %.04691044.i, %wp_exp2.exit619.2.i ], [ %.04691044.i, %wp_exp2.exit.i ], [ %.04691044.i, %.preheader886.i ], [ %.04691044.i, %.thread.i ], [ %.04691044.i, %bb.ey ], [ %.04691044.i, %bb.ez ], [ %.04691044.i, %bytestream2_init.exit.i ], [ %.04691044.i, %bb.fg ], [ %.04691044.i, %bb.fx ], [ %.04691044.i, %bb.ga ], [ %.04691044.i, %bb.fl ], [ %.04691044.i, %bb.fn ], [ %.04691044.i, %bb.fp ], [ %.04691044.i, %bb.fr ], [ %.04691044.i, %bytestream2_get_byte.exit575.i ], [ %.04691044.i, %bb.gb ], [ %.04691044.i, %bb.fm ], [ %.04691044.i, %bb.fo ], [ %.04691044.i, %bb.fq ], [ %.04691044.i, %bb.fs ], [ %.04691044.i, %bb.fu ], [ %.04691044.i, %bb.fw ], [ %.04691044.i, %bb.ac ], [ 1, %.preheader877.i ], [ %.04691044.i, %bb.aq ], [ %.04691044.i, %.preheader880.i.a ], [ %.04691044.i, %bytestream2_get_byte.exit597.i ], [ 1, %bb.an ], [ %.04691044.i, %.lr.ph1007.i.epil ], [ %.04691044.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1468.i = phi i32 [ %.04671045.i, %bb.gc ], [ %.04671045.i, %bytestream2_get_byte.exit.i ], [ 1, %bb.dk ], [ %.04671045.i, %.loopexit.i ], [ %.04671045.i, %wp_exp2.exit619.2.i ], [ %.04671045.i, %wp_exp2.exit.i ], [ %.04671045.i, %.preheader886.i ], [ %.04671045.i, %.thread.i ], [ %.04671045.i, %bb.ey ], [ %.04671045.i, %bb.ez ], [ %.04671045.i, %bytestream2_init.exit.i ], [ %.04671045.i, %bb.fg ], [ %.04671045.i, %bb.fx ], [ %.04671045.i, %bb.ga ], [ %.04671045.i, %bb.fl ], [ %.04671045.i, %bb.fn ], [ %.04671045.i, %bb.fp ], [ %.04671045.i, %bb.fr ], [ %.04671045.i, %bytestream2_get_byte.exit575.i ], [ %.04671045.i, %bb.gb ], [ %.04671045.i, %bb.fm ], [ %.04671045.i, %bb.fo ], [ %.04671045.i, %bb.fq ], [ %.04671045.i, %bb.fs ], [ %.04671045.i, %bb.fu ], [ %.04671045.i, %bb.fw ], [ %.04671045.i, %bb.ac ], [ %.04671045.i, %.preheader877.i ], [ 1, %bb.aq ], [ %.04671045.i, %.preheader880.i.a ], [ %.04671045.i, %bytestream2_get_byte.exit597.i ], [ %.04671045.i, %bb.an ], [ %.04671045.i, %.lr.ph1007.i.epil ], [ %.04671045.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1466.i = phi i32 [ %.04651046.i, %bb.gc ], [ %.04651046.i, %bytestream2_get_byte.exit.i ], [ %.04651046.i, %bb.dk ], [ %.04651046.i, %.loopexit.i ], [ 1, %wp_exp2.exit619.2.i ], [ %.04651046.i, %wp_exp2.exit.i ], [ %.04651046.i, %.preheader886.i ], [ %.04651046.i, %.thread.i ], [ %.04651046.i, %bb.ey ], [ %.04651046.i, %bb.ez ], [ %.04651046.i, %bytestream2_init.exit.i ], [ %.04651046.i, %bb.fg ], [ %.04651046.i, %bb.fx ], [ %.04651046.i, %bb.ga ], [ %.04651046.i, %bb.fl ], [ %.04651046.i, %bb.fn ], [ %.04651046.i, %bb.fp ], [ %.04651046.i, %bb.fr ], [ %.04651046.i, %bytestream2_get_byte.exit575.i ], [ %.04651046.i, %bb.gb ], [ %.04651046.i, %bb.fm ], [ %.04651046.i, %bb.fo ], [ %.04651046.i, %bb.fq ], [ %.04651046.i, %bb.fs ], [ %.04651046.i, %bb.fu ], [ %.04651046.i, %bb.fw ], [ %.04651046.i, %bb.ac ], [ %.04651046.i, %.preheader877.i ], [ %.04651046.i, %bb.aq ], [ 1, %.preheader880.i.a ], [ %.04651046.i, %bytestream2_get_byte.exit597.i ], [ %.04651046.i, %bb.an ], [ %.04651046.i, %.lr.ph1007.i.epil ], [ %.04651046.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1464.i = phi i32 [ %.04631047.i, %bb.gc ], [ %.04631047.i, %bytestream2_get_byte.exit.i ], [ %.04631047.i, %bb.dk ], [ %.04631047.i, %.loopexit.i ], [ %.04631047.i, %wp_exp2.exit619.2.i ], [ %.04631047.i, %wp_exp2.exit.i ], [ %.04631047.i, %.preheader886.i ], [ %.04631047.i, %.thread.i ], [ %.04631047.i, %bb.ey ], [ 1, %bb.ez ], [ %.04631047.i, %bytestream2_init.exit.i ], [ %.04631047.i, %bb.fg ], [ %.04631047.i, %bb.fx ], [ %.04631047.i, %bb.ga ], [ %.04631047.i, %bb.fl ], [ %.04631047.i, %bb.fn ], [ %.04631047.i, %bb.fp ], [ %.04631047.i, %bb.fr ], [ %.04631047.i, %bytestream2_get_byte.exit575.i ], [ %.04631047.i, %bb.gb ], [ %.04631047.i, %bb.fm ], [ %.04631047.i, %bb.fo ], [ %.04631047.i, %bb.fq ], [ %.04631047.i, %bb.fs ], [ %.04631047.i, %bb.fu ], [ %.04631047.i, %bb.fw ], [ %.04631047.i, %bb.ac ], [ %.04631047.i, %.preheader877.i ], [ %.04631047.i, %bb.aq ], [ %.04631047.i, %.preheader880.i.a ], [ %.04631047.i, %bytestream2_get_byte.exit597.i ], [ %.04631047.i, %bb.an ], [ %.04631047.i, %.lr.ph1007.i.epil ], [ %.04631047.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1462.i = phi i32 [ %.04611048.i, %bb.gc ], [ %.04611048.i, %bytestream2_get_byte.exit.i ], [ %.04611048.i, %bb.dk ], [ %.04611048.i, %.loopexit.i ], [ %.04611048.i, %wp_exp2.exit619.2.i ], [ %.04611048.i, %wp_exp2.exit.i ], [ %.04611048.i, %.preheader886.i ], [ %.04611048.i, %.thread.i ], [ 1, %bb.ey ], [ %.04611048.i, %bb.ez ], [ %.04611048.i, %bytestream2_init.exit.i ], [ %.04611048.i, %bb.fg ], [ %.04611048.i, %bb.fx ], [ %.04611048.i, %bb.ga ], [ %.04611048.i, %bb.fl ], [ %.04611048.i, %bb.fn ], [ %.04611048.i, %bb.fp ], [ %.04611048.i, %bb.fr ], [ %.04611048.i, %bytestream2_get_byte.exit575.i ], [ %.04611048.i, %bb.gb ], [ %.04611048.i, %bb.fm ], [ %.04611048.i, %bb.fo ], [ %.04611048.i, %bb.fq ], [ %.04611048.i, %bb.fs ], [ %.04611048.i, %bb.fu ], [ %.04611048.i, %bb.fw ], [ %.04611048.i, %bb.ac ], [ %.04611048.i, %.preheader877.i ], [ %.04611048.i, %bb.aq ], [ %.04611048.i, %.preheader880.i.a ], [ %.04611048.i, %bytestream2_get_byte.exit597.i ], [ %.04611048.i, %bb.an ], [ %.04611048.i, %.lr.ph1007.i.epil ], [ %.04611048.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1460.i = phi i32 [ %.04591049.i, %bb.gc ], [ %.04591049.i, %bytestream2_get_byte.exit.i ], [ %.04591049.i, %bb.dk ], [ 1, %.loopexit.i ], [ %.04591049.i, %wp_exp2.exit619.2.i ], [ 1, %wp_exp2.exit.i ], [ 1, %.preheader886.i ], [ %.04591049.i, %.thread.i ], [ %.04591049.i, %bb.ey ], [ %.04591049.i, %bb.ez ], [ %.04591049.i, %bytestream2_init.exit.i ], [ %.04591049.i, %bb.fg ], [ %.04591049.i, %bb.fx ], [ %.04591049.i, %bb.ga ], [ %.04591049.i, %bb.fl ], [ %.04591049.i, %bb.fn ], [ %.04591049.i, %bb.fp ], [ %.04591049.i, %bb.fr ], [ %.04591049.i, %bytestream2_get_byte.exit575.i ], [ %.04591049.i, %bb.gb ], [ %.04591049.i, %bb.fm ], [ %.04591049.i, %bb.fo ], [ %.04591049.i, %bb.fq ], [ %.04591049.i, %bb.fs ], [ %.04591049.i, %bb.fu ], [ %.04591049.i, %bb.fw ], [ %.04591049.i, %bb.ac ], [ %.04591049.i, %.preheader877.i ], [ %.04591049.i, %bb.aq ], [ %.04591049.i, %.preheader880.i.a ], [ %.04591049.i, %bytestream2_get_byte.exit597.i ], [ %.04591049.i, %bb.an ], [ 1, %.lr.ph1007.i.epil ], [ 1, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1458.i = phi i32 [ %.04571050.i, %bb.gc ], [ %.04571050.i, %bytestream2_get_byte.exit.i ], [ %.04571050.i, %bb.dk ], [ %.04571050.i, %.loopexit.i ], [ %.04571050.i, %wp_exp2.exit619.2.i ], [ %.04571050.i, %wp_exp2.exit.i ], [ %.04571050.i, %.preheader886.i ], [ %.04571050.i, %.thread.i ], [ %.04571050.i, %bb.ey ], [ %.04571050.i, %bb.ez ], [ 1, %bytestream2_init.exit.i ], [ %.04571050.i, %bb.fg ], [ %.04571050.i, %bb.fx ], [ %.04571050.i, %bb.ga ], [ %.04571050.i, %bb.fl ], [ %.04571050.i, %bb.fn ], [ %.04571050.i, %bb.fp ], [ %.04571050.i, %bb.fr ], [ %.04571050.i, %bytestream2_get_byte.exit575.i ], [ %.04571050.i, %bb.gb ], [ %.04571050.i, %bb.fm ], [ %.04571050.i, %bb.fo ], [ %.04571050.i, %bb.fq ], [ %.04571050.i, %bb.fs ], [ %.04571050.i, %bb.fu ], [ %.04571050.i, %bb.fw ], [ %.04571050.i, %bb.ac ], [ %.04571050.i, %.preheader877.i ], [ %.04571050.i, %bb.aq ], [ %.04571050.i, %.preheader880.i.a ], [ %.04571050.i, %bytestream2_get_byte.exit597.i ], [ %.04571050.i, %bb.an ], [ %.04571050.i, %.lr.ph1007.i.epil ], [ %.04571050.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1444.i = phi i32 [ %.04431051.i, %bb.gc ], [ %i.apa, %bytestream2_get_byte.exit.i ], [ %.04431051.i, %bb.dk ], [ %.04431051.i, %.loopexit.i ], [ %.04431051.i, %wp_exp2.exit619.2.i ], [ %.04431051.i, %wp_exp2.exit.i ], [ %.04431051.i, %.preheader886.i ], [ %.04431051.i, %.thread.i ], [ %.04431051.i, %bb.ey ], [ %.04431051.i, %bb.ez ], [ %.04431051.i, %bytestream2_init.exit.i ], [ %.04431051.i, %bb.fg ], [ %.0.i580.i, %bb.fx ], [ %.04431051.i, %bb.ga ], [ %.0.i580.i, %bb.fl ], [ %.0.i580.i, %bb.fn ], [ %.0.i580.i, %bb.fp ], [ %.0.i580.i, %bb.fr ], [ %i.aoc, %bytestream2_get_byte.exit575.i ], [ %.04431051.i, %bb.gb ], [ %.0.i580.i, %bb.fm ], [ %.0.i580.i, %bb.fo ], [ %.0.i580.i, %bb.fq ], [ %.0.i580.i, %bb.fs ], [ %i.aoc, %bb.fu ], [ %i.apa, %bb.fw ], [ %.04431051.i, %bb.ac ], [ %.04431051.i, %.preheader877.i ], [ %.04431051.i, %bb.aq ], [ %.04431051.i, %.preheader880.i.a ], [ %.04431051.i, %bytestream2_get_byte.exit597.i ], [ %.04431051.i, %bb.an ], [ %.04431051.i, %.lr.ph1007.i.epil ], [ %.04431051.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1442.i = phi i32 [ %.04411052.i, %bb.gc ], [ %.04411052.i, %bytestream2_get_byte.exit.i ], [ %.04411052.i, %bb.dk ], [ %.04411052.i, %.loopexit.i ], [ %.04411052.i, %wp_exp2.exit619.2.i ], [ %.04411052.i, %wp_exp2.exit.i ], [ %.04411052.i, %.preheader886.i ], [ %.04411052.i, %.thread.i ], [ %.04411052.i, %bb.ey ], [ %.04411052.i, %bb.ez ], [ %.04411052.i, %bytestream2_init.exit.i ], [ %.04411052.i, %bb.fg ], [ %.04411052.i, %bb.fx ], [ 0, %bb.ga ], [ %.04411052.i, %bb.fl ], [ %.04411052.i, %bb.fn ], [ %.04411052.i, %bb.fp ], [ %.04411052.i, %bb.fr ], [ %.04411052.i, %bytestream2_get_byte.exit575.i ], [ %i.apo, %bb.gb ], [ %.04411052.i, %bb.fm ], [ %.04411052.i, %bb.fo ], [ %.04411052.i, %bb.fq ], [ %.04411052.i, %bb.fs ], [ %.04411052.i, %bb.fu ], [ %.04411052.i, %bb.fw ], [ %.04411052.i, %bb.ac ], [ %.04411052.i, %.preheader877.i ], [ %.04411052.i, %bb.aq ], [ %.04411052.i, %.preheader880.i.a ], [ %.04411052.i, %bytestream2_get_byte.exit597.i ], [ %.04411052.i, %bb.an ], [ %.04411052.i, %.lr.ph1007.i.epil ], [ %.04411052.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1440.i = phi i32 [ %.04391053.i, %bb.gc ], [ %.04391053.i, %bytestream2_get_byte.exit.i ], [ %.04391053.i, %bb.dk ], [ %.04391053.i, %.loopexit.i ], [ %.04391053.i, %wp_exp2.exit619.2.i ], [ %.04391053.i, %wp_exp2.exit.i ], [ %.04391053.i, %.preheader886.i ], [ %.04391053.i, %.thread.i ], [ %.04391053.i, %bb.ey ], [ %.04391053.i, %bb.ez ], [ %i.aln, %bytestream2_init.exit.i ], [ %.04391053.i, %bb.fg ], [ %.04391053.i, %bb.fx ], [ %.04391053.i, %bb.ga ], [ %.04391053.i, %bb.fl ], [ %.04391053.i, %bb.fn ], [ %.04391053.i, %bb.fp ], [ %.04391053.i, %bb.fr ], [ %.04391053.i, %bytestream2_get_byte.exit575.i ], [ %.04391053.i, %bb.gb ], [ %.04391053.i, %bb.fm ], [ %.04391053.i, %bb.fo ], [ %.04391053.i, %bb.fq ], [ %.04391053.i, %bb.fs ], [ %.04391053.i, %bb.fu ], [ %.04391053.i, %bb.fw ], [ %.04391053.i, %bb.ac ], [ %.04391053.i, %.preheader877.i ], [ %.04391053.i, %bb.aq ], [ %.04391053.i, %.preheader880.i.a ], [ %.04391053.i, %bytestream2_get_byte.exit597.i ], [ %.04391053.i, %bb.an ], [ %.04391053.i, %.lr.ph1007.i.epil ], [ %.04391053.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1438.i = phi i32 [ %.04371054.i, %bb.gc ], [ %.04371054.i, %bytestream2_get_byte.exit.i ], [ %.04371054.i, %bb.dk ], [ %.04371054.i, %.loopexit.i ], [ %.04371054.i, %wp_exp2.exit619.2.i ], [ %.04371054.i, %wp_exp2.exit.i ], [ %.04371054.i, %.preheader886.i ], [ %.04371054.i, %.thread.i ], [ %.04371054.i, %bb.ey ], [ %.04371054.i, %bb.ez ], [ %.0.i582863.i, %bytestream2_init.exit.i ], [ %.04371054.i, %bb.fg ], [ %.04371054.i, %bb.fx ], [ %.04371054.i, %bb.ga ], [ %.04371054.i, %bb.fl ], [ %.04371054.i, %bb.fn ], [ %.04371054.i, %bb.fp ], [ %.04371054.i, %bb.fr ], [ %.04371054.i, %bytestream2_get_byte.exit575.i ], [ %.04371054.i, %bb.gb ], [ %.04371054.i, %bb.fm ], [ %.04371054.i, %bb.fo ], [ %.04371054.i, %bb.fq ], [ %.04371054.i, %bb.fs ], [ %.04371054.i, %bb.fu ], [ %.04371054.i, %bb.fw ], [ %.04371054.i, %bb.ac ], [ %.04371054.i, %.preheader877.i ], [ %.04371054.i, %bb.aq ], [ %.04371054.i, %.preheader880.i.a ], [ %.04371054.i, %bytestream2_get_byte.exit597.i ], [ %.04371054.i, %bb.an ], [ %.04371054.i, %.lr.ph1007.i.epil ], [ %.04371054.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %.1436.i = phi i64 [ %.04351055.i, %bb.gc ], [ 0, %bytestream2_get_byte.exit.i ], [ %.04351055.i, %bb.dk ], [ %.04351055.i, %.loopexit.i ], [ %.04351055.i, %wp_exp2.exit619.2.i ], [ %.04351055.i, %wp_exp2.exit.i ], [ %.04351055.i, %.preheader886.i ], [ %.04351055.i, %.thread.i ], [ %.04351055.i, %bb.ey ], [ %.04351055.i, %bb.ez ], [ %.04351055.i, %bytestream2_init.exit.i ], [ %.04351055.i, %bb.fg ], [ %.04351055.i, %bb.fx ], [ %.04351055.i, %bb.ga ], [ 0, %bb.fl ], [ 0, %bb.fn ], [ 0, %bb.fp ], [ 0, %bb.fr ], [ 0, %bytestream2_get_byte.exit575.i ], [ %.04351055.i, %bb.gb ], [ %i.amr, %bb.fm ], [ %i.amx, %bb.fo ], [ %i.ani, %bb.fq ], [ %i.ano, %bb.fs ], [ %i.aom, %bb.fu ], [ %i.apf, %bb.fw ], [ %.04351055.i, %bb.ac ], [ %.04351055.i, %.preheader877.i ], [ %.04351055.i, %bb.aq ], [ %.04351055.i, %.preheader880.i.a ], [ %.04351055.i, %bytestream2_get_byte.exit597.i ], [ %.04351055.i, %bb.an ], [ %.04351055.i, %.lr.ph1007.i.epil ], [ %.04351055.i, %bytestream2_get_le24.exit.i.loopexit987.unr-lcssa ]
  %i.apt = ptrtoint ptr %.sroa.0690.17.i to i64
  %i.apu = sub i64 %i.az, %i.apt
  %..i.i = call i64 @llvm.smin.i64(i64 %i.apu, i64 1)
  %.sroa.0690.18.idx.i = select i1 %.not512.i, i64 %..i.i, i64 0
  %.sroa.0690.18.i = getelementptr inbounds i8, ptr %.sroa.0690.17.i, i64 %.sroa.0690.18.idx.i
  br label %.backedge.i

.loopexit887.i:                                   ; preds = %.backedge.i, %bb.y, %bb.w
  %.0471981.i = phi i32 [ %.04711043.i, %bb.w ], [ %.04711043.i, %bb.y ], [ %.0471.be.i, %.backedge.i ]
  %.0469974.i = phi i32 [ %.04691044.i, %bb.w ], [ %.04691044.i, %bb.y ], [ %.0469.be.i, %.backedge.i ]
  %.0467967.i = phi i32 [ %.04671045.i, %bb.w ], [ %.04671045.i, %bb.y ], [ %.0467.be.i, %.backedge.i ]
  %.0465960.i = phi i32 [ %.04651046.i, %bb.w ], [ %.04651046.i, %bb.y ], [ %.0465.be.i, %.backedge.i ]
  %.0463953.i = phi i32 [ %.04631047.i, %bb.w ], [ %.04631047.i, %bb.y ], [ %.0463.be.i, %.backedge.i ]
  %.0461946.i = phi i32 [ %.04611048.i, %bb.w ], [ %.04611048.i, %bb.y ], [ %.0461.be.i, %.backedge.i ]
  %.0459939.i = phi i32 [ %.04591049.i, %bb.w ], [ %.04591049.i, %bb.y ], [ %.0459.be.i, %.backedge.i ]
  %.0457932.i = phi i32 [ %.04571050.i, %bb.w ], [ %.04571050.i, %bb.y ], [ %.0457.be.i, %.backedge.i ] ; 2 uses
  %.0443925.i = phi i32 [ %.04431051.i, %bb.w ], [ %.04431051.i, %bb.y ], [ %.0443.be.i, %.backedge.i ] ; 3 uses
  %.0441918.i = phi i32 [ %.04411052.i, %bb.w ], [ %.04411052.i, %bb.y ], [ %.0441.be.i, %.backedge.i ] ; 2 uses
  %.0439911.i = phi i32 [ %.04391053.i, %bb.w ], [ %.04391053.i, %bb.y ], [ %.0439.be.i, %.backedge.i ] ; 2 uses
  %.0437904.i = phi i32 [ %.04371054.i, %bb.w ], [ %.04371054.i, %bb.y ], [ %.0437.be.i, %.backedge.i ] ; 2 uses
  %.0435897.i = phi i64 [ %.04351055.i, %bb.w ], [ %.04351055.i, %bb.y ], [ %.0435.be.i, %.backedge.i ] ; 2 uses
  %.not874.i = icmp eq i32 %.0463953.i, 0         ; 6 uses
  br i1 %.not874.i, label %bb.gs, label %bb.gd

bb.gd:                                            ; preds = %.loopexit887.i
  %.not532.i = icmp eq i32 %.0471981.i, 0
  br i1 %.not532.i, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.24) #13
  br label %wavpack_decode_block.exit.thread

bb.gf:                                            ; preds = %bb.gd
  %.not533.i = icmp eq i32 %.0469974.i, 0
  br i1 %.not533.i, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.25) #13
  br label %wavpack_decode_block.exit.thread

bb.gh:                                            ; preds = %bb.gf
  %.not534.i = icmp eq i32 %.0467967.i, 0
  br i1 %.not534.i, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.26) #13
  br label %wavpack_decode_block.exit.thread

bb.gj:                                            ; preds = %bb.gh
  %.not535.i = icmp eq i32 %.0465960.i, 0
  br i1 %.not535.i, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.27) #13
  br label %wavpack_decode_block.exit.thread

bb.gl:                                            ; preds = %bb.gj
  %i.apv = load i32, ptr %i.ce, align 8, !tbaa !91
  %i.apw = icmp eq i32 %i.apv, 0
  %i.apx = icmp ne i32 %.0459939.i, 0
  %or.cond7.i = select i1 %i.apw, i1 true, i1 %i.apx
  br i1 %or.cond7.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.28) #13
  br label %wavpack_decode_block.exit.thread

bb.gn:                                            ; preds = %bb.gl
  %i.apy = icmp eq i32 %.0461946.i, 0
  %or.cond9.i = and i1 %.not503.i, %i.apy
  br i1 %or.cond9.i, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.29) #13
  br label %wavpack_decode_block.exit.thread

bb.gp:                                            ; preds = %bb.gn
  %i.apz = load i32, ptr %i.aw, align 8, !tbaa !51
  %i.aqa = icmp eq i32 %i.apz, 0
  %or.cond11.not.i = or i1 %.not503.i, %i.aqa
  br i1 %or.cond11.not.i, label %bb.gt, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %.val.i = load i32, ptr %i.dd, align 8, !tbaa !98
  %.val674.i = load i32, ptr %i.db, align 4, !tbaa !96
  %i.aqb = sub nsw i32 %.val674.i, %.val.i
  %i.aqc = load i32, ptr %i.bd, align 8, !tbaa !55
  %i.aqd = load i32, ptr %i.as, align 4, !tbaa !87
  %i.aqe = mul nsw i32 %i.aqd, %i.aqc
  %i.aqf = load i32, ptr %i.cb, align 8, !tbaa !59
  %i.aqg = shl i32 %i.aqe, %i.aqf
  %i.aqh = icmp slt i32 %i.aqb, %i.aqg
  br i1 %i.aqh, label %bb.gr, label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.30) #13
  store i32 0, ptr %i.aw, align 8, !tbaa !51
  br label %bb.gt

bb.gs:                                            ; preds = %.loopexit887.i
  %.not875.i = icmp eq i32 %.0457932.i, 0
  br i1 %.not875.i, label %.thread1295.i, label %.thread1303.i

.thread1295.i:                                    ; preds = %bb.gs, %bytestream2_get_le32.exit566.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.31) #13
  br label %wavpack_decode_block.exit.thread

bb.gt:                                            ; preds = %bb.gr, %bb.gq, %bb.gp
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !47
  %.not537.i = icmp eq i32 %i.aqj, 0
  %.not1416.i = icmp eq i32 %.0457932.i, 0
  %or.cond777 = select i1 %.not537.i, i1 %.not1416.i, i1 false
  br i1 %or.cond777, label %bb.gu, label %.thread1303.i.thread

.thread1303.i:                                    ; preds = %bb.gs
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !47
  %i.aqk = icmp eq i32 %.pre, 1
  br i1 %i.aqk, label %bb.gu, label %.thread1303.i.thread

.thread1303.i.thread:                             ; preds = %.thread1303.i, %bb.gt
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.32) #13
  br label %wavpack_decode_block.exit.thread

bb.gu:                                            ; preds = %bb.gt, %.thread1303.i
  %i.aql = load i32, ptr %i.bo, align 8, !tbaa !44 ; 2 uses
  %.not539.i = icmp eq i32 %i.aql, 0
  br i1 %.not539.i, label %bb.gv, label %bb.hq

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.aqm = load i32, ptr %i.bl, align 8, !tbaa !56
  %i.aqn = lshr i32 %i.aqm, 23
  %i.aqo = and i32 %i.aqn, 15                     ; 2 uses
  %i.aqp = icmp eq i32 %i.aqo, 15
  br i1 %i.aqp, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %.not540.i = icmp eq i32 %.0441918.i, 0
  br i1 %.not540.i, label %.thread869.i.sink.split, label %bb.gy

bb.gx:                                            ; preds = %bb.gv
  %i.aqq = zext nneg i32 %i.aqo to i64
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr @wv_rates, i64 %i.aqq
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !61
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.0432.i = phi i32 [ %i.aqs, %bb.gx ], [ %.0441918.i, %bb.gw ] ; 2 uses
  %i.aqt = sext i32 %.0432.i to i64
  %i.aqu = zext nneg i32 %.0439911.i to i64
  %i.aqv = mul nsw i64 %i.aqt, %i.aqu
  %i.aqw = icmp ugt i64 %i.aqv, 2147483647
  br i1 %i.aqw, label %.thread869.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aqx = mul nsw i32 %.0432.i, %.0439911.i      ; 2 uses
  br i1 %.not507.i, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %.not541.i = icmp eq i64 %.0435897.i, 0
  br i1 %.not541.i, label %.sink.split.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aqy = call i32 @av_channel_layout_from_mask(ptr noundef nonnull %5, i64 noundef %.0435897.i) #13 ; 0 uses
  %.not542.i = icmp eq i32 %.0443925.i, 0
  %i.aqz = load i32, ptr %i.q, align 4
  %.not543.i = icmp eq i32 %i.aqz, %.0443925.i
  %or.cond560.i = select i1 %.not542.i, i1 true, i1 %.not543.i
  br i1 %or.cond560.i, label %bb.hd, label %.thread869.i.sink.split

bb.hc:                                            ; preds = %bb.gz
  %i.ara = load i32, ptr %i.bz, align 4, !tbaa !58
  %i.arb = add nsw i32 %i.ara, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.hc, %bb.ha
  %.044392512851317.sink.i = phi i32 [ %i.arb, %bb.hc ], [ %.0443925.i, %bb.ha ]
  call void @av_channel_layout_default(ptr noundef nonnull %5, i32 noundef %.044392512851317.sink.i) #13
  br label %bb.hd

bb.hd:                                            ; preds = %.sink.split.i, %bb.hb
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !36
  %i.are = icmp eq ptr %i.ard, null
  %or.cond15.i = or i1 %.not874.i, %i.are
  br i1 %or.cond15.i, label %bb.he, label %bb.hi

bb.he:                                            ; preds = %bb.hd
  br i1 %.not874.i, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %bb.he
  %i.arf = load i32, ptr %i.q, align 4, !tbaa !105
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.arh = load i32, ptr %i.arg, align 8, !tbaa !37
  %.not544.i = icmp eq i32 %i.arf, %i.arh
  br i1 %.not544.i, label %bb.hg, label %bb.hi

bb.hg:                                            ; preds = %bb.hf
  %i.ari = call i32 @av_channel_layout_compare(ptr noundef nonnull %5, ptr noundef nonnull %i.r) #13
  %.not545.i = icmp eq i32 %i.ari, 0
  br i1 %.not545.i, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.arj = load i32, ptr %i.s, align 8, !tbaa !106
  %.not546.i = icmp eq i32 %i.aqx, %i.arj
  br i1 %.not546.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.hd
  %i.ark = load i32, ptr %i.q, align 4
  %i.arl = select i1 %.not874.i, i32 %i.ark, i32 0
  %i.arm = call fastcc i32 @wv_dsd_reset(ptr noundef nonnull %i.ag, i32 noundef %i.arl) ; 2 uses
  %i.arn = icmp slt i32 %i.arm, 0
  br i1 %i.arn, label %.thread869.i.sink.split, label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh, %bb.he
  %i.aro = call i32 @av_channel_layout_copy(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #13 ; 0 uses
  store i32 %i.aqx, ptr %i.s, align 8, !tbaa !106
  store i32 %.0476.i, ptr %i.p, align 4, !tbaa !57
  store i32 %i.bv, ptr %i.t, align 4, !tbaa !107
  %i.arp = load i32, ptr %i.bd, align 8, !tbaa !55
  store i32 %i.arp, ptr %i.u, align 8, !tbaa !108
  %i.arq = call i32 @ff_thread_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #13 ; 2 uses
  %i.arr = icmp slt i32 %i.arq, 0
  br i1 %i.arr, label %.thread869.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !40
  %.not547.i = icmp eq ptr %i.art, null
  br i1 %.not547.i, label %bb.hp, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aru = load ptr, ptr %i.arc, align 8, !tbaa !36
  %.not548.i = icmp eq ptr %i.aru, null
  br i1 %.not548.i, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 3 uses
  call void @av_refstruct_unref(ptr noundef nonnull %i.arv) #13
  %i.arw = load ptr, ptr %i.ars, align 8, !tbaa !40
  %i.arx = call ptr @av_refstruct_pool_get(ptr noundef %i.arw) #13 ; 3 uses
  store ptr %i.arx, ptr %i.arv, align 8, !tbaa !113
  %.not549.i = icmp eq ptr %i.arx, null
  br i1 %.not549.i, label %.thread869.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.ary = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !29
  store ptr %i.arx, ptr %i.ary, align 8, !tbaa !29
  store ptr %i.arz, ptr %i.arv, align 8, !tbaa !113
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hl
  %.3 = phi i32 [ %.071294, %bb.hl ], [ 1, %bb.hn ]
  call void @ff_thread_finish_setup(ptr noundef nonnull %0) #13
  br label %bb.hp

.thread869.i.sink.split:                          ; preds = %bb.hi, %bb.hb, %bb.gw
  %.str.35.sink = phi ptr [ @.str.34, %bb.hb ], [ @.str.33, %bb.gw ], [ @.str.35, %bb.hi ]
  %.0.ph.i.ph = phi i32 [ -1094995529, %bb.hb ], [ -1094995529, %bb.gw ], [ %i.arm, %bb.hi ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.35.sink) #13
  br label %.thread869.i

.thread869.i:                                     ; preds = %bb.hm, %bb.hj, %bb.gy, %.thread869.i.sink.split
  %.0.ph.i = phi i32 [ %.0.ph.i.ph, %.thread869.i.sink.split ], [ -1094995529, %bb.gy ], [ -12, %bb.hm ], [ %i.arq, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %wavpack_decode_block.exit.thread

bb.hp:                                            ; preds = %bb.ho, %bb.hk
  %.4 = phi i32 [ %.071294, %bb.hk ], [ %.3, %bb.ho ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.pre1209.i = load i32, ptr %i.bo, align 8, !tbaa !44
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.gu
  %.2 = phi i32 [ %.4, %bb.hp ], [ %.071294, %bb.gu ] ; 6 uses
  %i.asa = phi i32 [ %.pre1209.i, %bb.hp ], [ %i.aql, %bb.gu ] ; 2 uses
  %i.asb = load i32, ptr %i.bz, align 4, !tbaa !58 ; 2 uses
  %i.asc = add i32 %i.asb, %i.asa                 ; 2 uses
  %i.asd = load i32, ptr %i.v, align 4, !tbaa !114
  %.not550.i = icmp slt i32 %i.asc, %i.asd
  br i1 %.not550.i, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.36) #13
  %i.ase = load i32, ptr %i.w, align 8, !tbaa !115
  %i.asf = and i32 %i.ase, 8
  %.not554.i = icmp eq i32 %i.asf, 0
  br i1 %.not554.i, label %bb.hs, label %wavpack_decode_block.exit.thread

bb.hs:                                            ; preds = %bb.hr
  %i.asg = load i32, ptr %i.bo, align 8, !tbaa !44
  %.not555.i = icmp eq i32 %i.asg, 0
  br i1 %.not555.i, label %wavpack_decode_block.exit.thread, label %wavpack_decode_block.exit

bb.ht:                                            ; preds = %bb.hq
  %i.ash = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.asi = sext i32 %i.asa to i64
  %i.asj = getelementptr inbounds [8 x i8], ptr %i.ash, i64 %i.asi ; 2 uses
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !117 ; 9 uses
  %.not551.i = icmp eq i32 %i.asb, 0
  br i1 %.not551.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.asl = getelementptr i8, ptr %i.asj, i64 8
  %i.asm = load ptr, ptr %i.asl, align 8, !tbaa !117
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.0475.i = phi ptr [ %i.asm, %bb.hu ], [ null, %bb.ht ] ; 5 uses
  %i.asn = add nsw i32 %i.asc, 1
  store i32 %i.asn, ptr %i.bo, align 8, !tbaa !44
  %i.aso = load i32, ptr %i.cb, align 8, !tbaa !59
  %.not552.i = icmp eq i32 %i.aso, 0
  br i1 %.not552.i, label %bb.id, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  br i1 %.not874.i, label %bb.hx, label %bb.ib

bb.hx:                                            ; preds = %bb.hw
  switch i32 %.0437904.i, label %bb.ia [
    i32 3, label %bb.hy
    i32 1, label %bb.hz
  ]

bb.hy:                                            ; preds = %bb.hx
  %i.asp = call fastcc i32 @wv_unpack_dsd_high(ptr noundef nonnull %i.ap, ptr noundef %i.ask, ptr noundef %.0475.i)
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hx
  %i.asq = call fastcc i32 @wv_unpack_dsd_fast(ptr noundef nonnull %i.ap, ptr noundef %i.ask, ptr noundef %.0475.i)
  br label %bb.ic

bb.ia:                                            ; preds = %bb.hx
  %i.asr = call fastcc i32 @wv_unpack_dsd_copy(ptr noundef nonnull %i.ap, ptr noundef %i.ask, ptr noundef %.0475.i)
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hw
  %i.ass = load i32, ptr %i.p, align 4, !tbaa !57
  %i.ast = call fastcc i32 @wv_unpack_stereo(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.di, ptr noundef %i.ask, ptr noundef %.0475.i, i32 noundef %i.ass)
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia, %bb.hz, %bb.hy
  %.0473.i = phi i32 [ %i.asp, %bb.hy ], [ %i.asq, %bb.hz ], [ %i.asr, %bb.ia ], [ %i.ast, %bb.ib ] ; 2 uses
  %i.asu = icmp slt i32 %.0473.i, 0
  br i1 %i.asu, label %wavpack_decode_block.exit.thread, label %wavpack_decode_block.exit

bb.id:                                            ; preds = %bb.hv
  br i1 %.not874.i, label %bb.ie, label %bb.ii

bb.ie:                                            ; preds = %bb.id
  switch i32 %.0437904.i, label %bb.ih [
    i32 3, label %bb.if
    i32 1, label %bb.ig
  ]

bb.if:                                            ; preds = %bb.ie
  %i.asv = call fastcc i32 @wv_unpack_dsd_high(ptr noundef nonnull %i.ap, ptr noundef %i.ask, ptr noundef null)
  br label %bb.ij

bb.ig:                                            ; preds = %bb.ie
  %i.asw = call fastcc i32 @wv_unpack_dsd_fast(ptr noundef nonnull %i.ap, ptr noundef %i.ask, ptr noundef null)
  br label %bb.ij

bb.ih:                                            ; preds = %bb.ie
  %i.asx = call fastcc i32 @wv_unpack_dsd_copy(ptr noundef nonnull %i.ap, ptr noundef %i.ask, ptr noundef null)
  br label %bb.ij

bb.ii:                                            ; preds = %bb.id
  %i.asy = load i32, ptr %i.p, align 4, !tbaa !57
  %i.asz = call fastcc i32 @wv_unpack_mono(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.di, ptr noundef %i.ask, i32 noundef %i.asy)
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %bb.ig, %bb.if
  %.1474.i = phi i32 [ %i.asv, %bb.if ], [ %i.asw, %bb.ig ], [ %i.asx, %bb.ih ], [ %i.asz, %bb.ii ] ; 2 uses
  %i.ata = icmp slt i32 %.1474.i, 0
  br i1 %i.ata, label %wavpack_decode_block.exit.thread, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.atb = load i32, ptr %i.bz, align 4, !tbaa !58
  %.not553.i = icmp eq i32 %i.atb, 0
  br i1 %.not553.i, label %wavpack_decode_block.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.atc = load i32, ptr %i.bd, align 8, !tbaa !55
  %i.atd = mul nsw i32 %i.atc, %i.br
  %i.ate = sext i32 %i.atd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0475.i, ptr align 1 %i.ask, i64 %i.ate, i1 false)
  br label %wavpack_decode_block.exit

wavpack_decode_block.exit:                        ; preds = %bb.ic, %bb.ik, %bb.il, %bb.hs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.atf = sub nuw nsw i32 %i.ac, %i.aa           ; 2 uses
  %i.atg = icmp sgt i32 %i.atf, 32
  br i1 %i.atg, label %bb.d, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %wavpack_decode_block.exit
  %.pre518 = load i32, ptr %i.h, align 8, !tbaa !44 ; 2 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !114
  %.not = icmp eq i32 %.pre518, %i.ati
  br i1 %.not, label %bb.in, label %bb.im

bb.im:                                            ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.4) #13
  br label %wavpack_decode_block.exit.thread

bb.in:                                            ; preds = %._crit_edge
  %i.atj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !36
  %.not65 = icmp eq ptr %i.atk, null
  br i1 %.not65, label %bb.is, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.atl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !113 ; 2 uses
  %.not66 = icmp eq ptr %i.atm, null
  br i1 %.not66, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @ff_thread_progress_await(ptr noundef nonnull %i.atm, i32 noundef 2147483647) #13
  %.pre519 = load i32, ptr %i.ath, align 4, !tbaa !114
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.atn = phi i32 [ %.pre519, %bb.ip ], [ %.pre518, %bb.io ]
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !119
  %i.atq = call i32 %i.atp(ptr noundef nonnull %0, ptr noundef nonnull @dsd_channel, ptr noundef %1, ptr noundef null, i32 noundef %i.atn) #13 ; 0 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !29 ; 2 uses
  %.not67 = icmp eq ptr %i.ats, null
  br i1 %.not67, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call void @ff_thread_progress_report(ptr noundef nonnull %i.ats, i32 noundef 2147483647) #13
  br label %bb.is

bb.is:                                            ; preds = %bb.iq, %bb.ir, %bb.in
  store i32 1, ptr %2, align 4, !tbaa !61
  %i.att = load i32, ptr %i.e, align 8, !tbaa !43
  br label %bb.iw

wavpack_decode_block.exit.thread:                 ; preds = %bb.hs, %bb.ij, %bb.hr, %bb.o, %bb.ic, %bb.n, %bytestream2_get_byte.exit585.i, %bb.fd, %bb.ge, %bb.gg, %bb.gi, %bb.gk, %bb.gm, %.thread1295.i, %.thread869.i, %bb.fi, %.thread1303.i.thread, %bb.go, %bb.fz, %bb.k, %bb.h, %bb.im, %bb.e
  %.1 = phi i32 [ %.071294, %bb.e ], [ %.2, %bb.im ], [ %.071294, %.thread869.i ], [ %.071294, %bb.h ], [ %.071294, %bb.k ], [ %.071294, %.thread1295.i ], [ %.071294, %bb.fz ], [ %.071294, %bb.fi ], [ %.071294, %bytestream2_get_byte.exit585.i ], [ %.071294, %bb.fd ], [ %.071294, %bb.gm ], [ %.071294, %bb.go ], [ %.071294, %bb.gk ], [ %.071294, %bb.gi ], [ %.071294, %bb.gg ], [ %.071294, %bb.ge ], [ %.071294, %.thread1303.i.thread ], [ %.2, %bb.ij ], [ %.2, %bb.ic ], [ %.2, %bb.hr ], [ %.2, %bb.hs ], [ %.071294, %bb.n ], [ %.071294, %bb.o ]
  %.054 = phi i32 [ -1094995529, %bb.e ], [ -1094995529, %bb.im ], [ %.0.ph.i, %.thread869.i ], [ -1094995529, %bb.h ], [ -1094995529, %bb.k ], [ -1094995529, %.thread1295.i ], [ -1094995529, %bb.fz ], [ -1094995529, %bb.fi ], [ -1094995529, %bytestream2_get_byte.exit585.i ], [ -1094995529, %bb.fd ], [ -1094995529, %bb.gm ], [ -1094995529, %bb.go ], [ -1094995529, %bb.gk ], [ -1094995529, %bb.gi ], [ -1094995529, %bb.gg ], [ -1094995529, %bb.ge ], [ -1094995529, %.thread1303.i.thread ], [ %.1474.i, %bb.ij ], [ %.0473.i, %bb.ic ], [ -1094995529, %bb.hr ], [ -1094995529, %bb.hs ], [ -1094995529, %bb.n ], [ -1094995529, %bb.o ] ; 2 uses
  %.not68 = icmp eq i32 %.1, 0
  br i1 %.not68, label %bb.iw, label %bb.it

bb.it:                                            ; preds = %wavpack_decode_block.exit.thread
  %i.atu = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !113 ; 2 uses
  %.not69 = icmp eq ptr %i.atv, null
  br i1 %.not69, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  call void @ff_thread_progress_await(ptr noundef nonnull %i.atv, i32 noundef 2147483647) #13
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.atw = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !29
  call void @ff_thread_progress_report(ptr noundef %i.atx, i32 noundef 2147483647) #13
  br label %bb.iw

bb.iw:                                            ; preds = %wavpack_decode_block.exit.thread, %bb.iv, %bb.a, %bb.is, %bb.c
  %.057 = phi i32 [ %i.att, %bb.is ], [ -1094995529, %bb.c ], [ -1094995529, %bb.a ], [ %.054, %bb.iv ], [ %.054, %wavpack_decode_block.exit.thread ]
  ret i32 %.057
}

; Function Attrs: cold nounwind optsize uwtable
end_hunk_2
