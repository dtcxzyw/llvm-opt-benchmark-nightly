Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/looprestoration_tmpl?download=true
inline.NumInlined: 132
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 29
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@dav1d_sgr_x_by_x = external hidden local_unnamed_addr constant [256 x i8], align 16
@dav1d_cpu_flags = external hidden local_unnamed_addr global i32, align 4
@dav1d_cpu_flags_mask = external hidden local_unnamed_addr global i32, align 4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @dav1d_loop_restoration_dsp_init_16bpc(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x ptr> <ptr @wiener_c, ptr @wiener_c, ptr @sgr_5x5_c, ptr @sgr_3x3_c>, ptr %0, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr @sgr_mix_c, ptr %i.d, align 8, !tbaa !19
  %i.e = load i32, ptr @dav1d_cpu_flags, align 4, !tbaa !9
  %i.f = load i32, ptr @dav1d_cpu_flags_mask, align 4, !tbaa !9
  %i.g = and i32 %i.f, %i.e                       ; 5 uses
  %i.h = and i32 %i.g, 3
  %or.cond.i.not = icmp eq i32 %i.h, 3
  br i1 %or.cond.i.not, label %bb.b, label %loop_restoration_dsp_init_x86.exit

bb.b:                                             ; preds = %bb.a
  store ptr @dav1d_wiener_filter7_16bpc_ssse3, ptr %0, align 8, !tbaa !19
  store ptr @dav1d_wiener_filter5_16bpc_ssse3, ptr %i.a, align 8, !tbaa !19
  %i.i = icmp eq i32 %1, 10
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  store ptr @dav1d_sgr_filter_5x5_16bpc_ssse3, ptr %i.b, align 8, !tbaa !19
  store ptr @dav1d_sgr_filter_3x3_16bpc_ssse3, ptr %i.c, align 8, !tbaa !19
  store ptr @dav1d_sgr_filter_mix_16bpc_ssse3, ptr %i.d, align 8, !tbaa !19
  %i.j = and i32 %i.g, 8
  %.not22.i = icmp eq i32 %i.j, 0
  br i1 %.not22.i, label %loop_restoration_dsp_init_x86.exit, label %.thread8

.thread:                                          ; preds = %bb.b
  %i.k = and i32 %i.g, 8
  %.not22.i6 = icmp eq i32 %i.k, 0
  br i1 %.not22.i6, label %loop_restoration_dsp_init_x86.exit, label %bb.d

bb.d:                                             ; preds = %.thread
  store ptr @dav1d_wiener_filter7_16bpc_avx2, ptr %0, align 8, !tbaa !19
  store ptr @dav1d_wiener_filter5_16bpc_avx2, ptr %i.a, align 8, !tbaa !19
  %i.l = and i32 %i.g, 16
  %.not23.i = icmp eq i32 %i.l, 0
  br i1 %.not23.i, label %loop_restoration_dsp_init_x86.exit, label %bb.e

.thread8:                                         ; preds = %bb.c
  store <4 x ptr> <ptr @dav1d_wiener_filter7_16bpc_avx2, ptr @dav1d_wiener_filter5_16bpc_avx2, ptr @dav1d_sgr_filter_5x5_16bpc_avx2, ptr @dav1d_sgr_filter_3x3_16bpc_avx2>, ptr %0, align 8, !tbaa !19
  store ptr @dav1d_sgr_filter_mix_16bpc_avx2, ptr %i.d, align 8, !tbaa !19
  %i.m = and i32 %i.g, 16
  %.not23.i9 = icmp eq i32 %i.m, 0
  br i1 %.not23.i9, label %loop_restoration_dsp_init_x86.exit, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @dav1d_wiener_filter7_16bpc_avx512icl, ptr %0, align 8, !tbaa !19
  store ptr @dav1d_wiener_filter5_16bpc_avx512icl, ptr %i.a, align 8, !tbaa !19
  br label %loop_restoration_dsp_init_x86.exit

bb.f:                                             ; preds = %.thread8
  store <4 x ptr> <ptr @dav1d_wiener_filter7_16bpc_avx512icl, ptr @dav1d_wiener_filter5_16bpc_avx512icl, ptr @dav1d_sgr_filter_5x5_16bpc_avx512icl, ptr @dav1d_sgr_filter_3x3_16bpc_avx512icl>, ptr %0, align 8, !tbaa !19
  store ptr @dav1d_sgr_filter_mix_16bpc_avx512icl, ptr %i.d, align 8, !tbaa !19
  br label %loop_restoration_dsp_init_x86.exit

loop_restoration_dsp_init_x86.exit:               ; preds = %bb.e, %.thread8, %.thread, %bb.a, %bb.c, %bb.d, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal void @wiener_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = alloca [390 x i16], align 16             ; 6 uses
  %i.b = alloca [390 x i16], align 16             ; 6 uses
  %i.c = alloca [390 x i16], align 16             ; 8 uses
  %i.d = alloca [390 x i16], align 16             ; 6 uses
  %i.e = alloca [390 x i16], align 16             ; 6 uses
  %i.f = alloca [2340 x i16], align 16            ; 19 uses
  %i.g = alloca [7 x ptr], align 16               ; 79 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 780 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1560 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2340 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 3120 ; 5 uses
  %i.l = getelementptr i8, ptr %6, i64 16         ; 24 uses
  %i.m = and i64 %1, 1
  %.not.i = icmp eq i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = ashr exact i64 %1, 1
  %.idx = mul nsw i64 %i.n, 12
  %i.o = getelementptr inbounds i8, ptr %3, i64 %.idx ; 2 uses
  %i.p = and i32 %7, 4
  %.not = icmp eq i32 %i.p, 0
  store ptr %i.f, ptr %i.g, align 16, !tbaa !11
  %.8..8..8..sroa_idx1072 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.8..8..8..sroa_idx1072, align 8, !tbaa !11
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.16..16..16..sroa_idx1075 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %.16..16..16..sroa_idx1075, align 16, !tbaa !11
  %.24..24..24..sroa_idx1077 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.i, ptr %.24..24..24..sroa_idx1077, align 8, !tbaa !11
  %.32..32..32..sroa_idx1081 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.i, ptr %.32..32..32..sroa_idx1081, align 16, !tbaa !11
  %.40..40..40..sroa_idx1088 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.i, ptr %.40..40..40..sroa_idx1088, align 8, !tbaa !11
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef %3, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.q = getelementptr inbounds i8, ptr %3, i64 %1
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.h, ptr noundef null, ptr noundef %i.q, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.i, ptr noundef %2, ptr noundef %0, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.r = icmp slt i32 %5, 2
  br i1 %i.r, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %0, i64 %1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.40..40..40..sroa_idx1087 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.j, ptr %.40..40..40..sroa_idx1087, align 8, !tbaa !11
  %.32..32..32..sroa_idx1080 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %.32..32..32..sroa_idx1080, align 16, !tbaa !11
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.j, ptr noundef nonnull %i.t, ptr noundef %i.s, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.u = icmp eq i32 %5, 2
  br i1 %i.u, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %1
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.40..40..40..sroa_idx1086 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.k, ptr %.40..40..40..sroa_idx1086, align 8, !tbaa !11
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.k, ptr noundef nonnull %i.w, ptr noundef %i.v, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.x = icmp samesign ult i32 %5, 4
  br i1 %i.x, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %i.y = add nsw i32 %5, -3
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %8, i1 true) ; 2 uses
  %.pre416 = xor i32 %.pre, 31
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %.16..16..16..sroa_idx, align 16, !tbaa !11
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.f, ptr %.24..24..24..sroa_idx, align 8, !tbaa !11
  %.32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.f, ptr %.32..32..32..sroa_idx, align 16, !tbaa !11
  %.40..40..40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.f, ptr %.40..40..40..sroa_idx, align 8, !tbaa !11
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.f, ptr noundef %2, ptr noundef %0, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.aa = icmp slt i32 %5, 2
  br i1 %i.aa, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %1 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.40..40..40..sroa_idx1082 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.h, ptr %.40..40..40..sroa_idx1082, align 8, !tbaa !11
  %.32..32..32..sroa_idx1078 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %.32..32..32..sroa_idx1078, align 16, !tbaa !11
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.h, ptr noundef nonnull %i.ac, ptr noundef %i.ab, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.ad = icmp eq i32 %5, 2
  br i1 %i.ad, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %1 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.40..40..40..sroa_idx1083 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.i, ptr %.40..40..40..sroa_idx1083, align 8, !tbaa !11
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.i, ptr noundef nonnull %i.af, ptr noundef %i.ae, ptr noundef %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.ag = icmp samesign ult i32 %5, 4
  br i1 %i.ag, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.j, ptr %.48..48..48..sroa_idx, align 16, !tbaa !11
  %i.aj = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %8, i1 true) ; 3 uses
  %i.ak = icmp eq i32 %i.aj, 20                   ; 2 uses
  %i.al = select i1 %i.ak, i32 9, i32 11          ; 5 uses
  %.finite1099 = select i1 %i.ak, i32 256, i32 1024 ; 2 uses
  %i.am = xor i32 %i.aj, 31                       ; 2 uses
  %i.an = add nuw nsw i32 %i.al, %i.am
  %.neg.i = shl nsw i32 -1, %i.an                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.ai, ptr noundef readonly %i.ah, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  %i.ao = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.ao, label %.preheader.lr.ph.i, label %wiener_filter_hv.exit

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  %i.av = add nsw i32 %.finite1099, %.neg.i       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph.i
  %i.aw = shl nuw nsw i64 %wide.trip.count.i, 1
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw
  %i.ay = getelementptr i8, ptr %6, i64 30
  %bound0 = icmp ult ptr %0, %i.ay
  %bound1 = icmp ult ptr %i.l, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %i.az = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !103
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.az, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ba = sext <8 x i16> %broadcast.splat to <8 x i32>
  %i.bb = load i16, ptr %i.aq, align 2, !tbaa !13, !alias.scope !103
  %broadcast.splatinsert425 = insertelement <8 x i16> poison, i16 %i.bb, i64 0
  %broadcast.splat426 = shufflevector <8 x i16> %broadcast.splatinsert425, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bc = sext <8 x i16> %broadcast.splat426 to <8 x i32>
  %i.bd = load i16, ptr %i.ar, align 2, !tbaa !13, !alias.scope !103
  %broadcast.splatinsert427 = insertelement <8 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat428 = shufflevector <8 x i16> %broadcast.splatinsert427, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.be = sext <8 x i16> %broadcast.splat428 to <8 x i32>
  %i.bf = load i16, ptr %i.as, align 2, !tbaa !13, !alias.scope !103
  %broadcast.splatinsert429 = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %broadcast.splat430 = shufflevector <8 x i16> %broadcast.splatinsert429, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bg = sext <8 x i16> %broadcast.splat430 to <8 x i32>
  %i.bh = load i16, ptr %i.at, align 2, !tbaa !13, !alias.scope !103
  %broadcast.splatinsert431 = insertelement <8 x i16> poison, i16 %i.bh, i64 0
  %broadcast.splat432 = shufflevector <8 x i16> %broadcast.splatinsert431, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bi = sext <8 x i16> %broadcast.splat432 to <8 x i32>
  %i.bj = load i16, ptr %i.au, align 2, !tbaa !13, !alias.scope !103
  %broadcast.splatinsert433 = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat434 = shufflevector <8 x i16> %broadcast.splatinsert433, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bk = sext <8 x i16> %broadcast.splat434 to <8 x i32>
  %i.bl = load i16, ptr %i.ap, align 2, !tbaa !13, !alias.scope !103
  %broadcast.splatinsert435 = insertelement <8 x i16> poison, i16 %i.bl, i64 0
  %broadcast.splat436 = shufflevector <8 x i16> %broadcast.splatinsert435, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bm = sext <8 x i16> %broadcast.splat436 to <8 x i32>
  %broadcast.splatinsert437 = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat438 = shufflevector <8 x i32> %broadcast.splatinsert437, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert439 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat440 = shufflevector <8 x i32> %broadcast.splatinsert439, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert441 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat442 = shufflevector <8 x i32> %broadcast.splatinsert441, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index
  %wide.load = load <8 x i16>, ptr %i.bn, align 16, !tbaa !13
  %i.bo = zext <8 x i16> %wide.load to <8 x i32>  ; 4 uses
  %i.bp = mul nsw <8 x i32> %i.ba, %i.bo
  %i.bq = mul nsw <8 x i32> %i.bc, %i.bo
  %i.br = mul nsw <8 x i32> %i.be, %i.bo
  %i.bs = mul nsw <8 x i32> %i.bg, %i.bo
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %index
  %wide.load443 = load <8 x i16>, ptr %i.bt, align 4, !tbaa !13
  %i.bu = zext <8 x i16> %wide.load443 to <8 x i32>
  %i.bv = mul nsw <8 x i32> %i.bi, %i.bu
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %index
  %wide.load444 = load <8 x i16>, ptr %i.bw, align 8, !tbaa !13
  %i.bx = zext <8 x i16> %wide.load444 to <8 x i32>
  %i.by = mul nsw <8 x i32> %i.bk, %i.bx
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %index
  %wide.load445 = load <8 x i16>, ptr %i.bz, align 16, !tbaa !13
  %i.ca = zext <8 x i16> %wide.load445 to <8 x i32>
  %i.cb = mul nsw <8 x i32> %i.bm, %i.ca
  %i.cc = add <8 x i32> %broadcast.splat438, %i.bp
  %i.cd = add <8 x i32> %i.cc, %i.bq
  %i.ce = add <8 x i32> %i.cd, %i.br
  %i.cf = add <8 x i32> %i.ce, %i.bs
  %i.cg = add <8 x i32> %i.cf, %i.bv
  %i.ch = add <8 x i32> %i.cg, %i.by
  %i.ci = add <8 x i32> %i.ch, %i.cb
  %i.cj = ashr <8 x i32> %i.ci, %broadcast.splat440 ; 2 uses
  %i.ck = icmp slt <8 x i32> %i.cj, zeroinitializer
  %i.cl = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.cj, <8 x i32> %broadcast.splat442)
  %i.cm = trunc <8 x i32> %i.cl to <8 x i16>
  %i.cn = select <8 x i1> %i.ck, <8 x i16> zeroinitializer, <8 x i16> %i.cm
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index
  store <8 x i16> %i.cn, ptr %i.co, align 2, !tbaa !13, !alias.scope !104, !noalias !103
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %wiener_filter_hv.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.memcheck, %.preheader.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 6 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !13
  %i.cs = zext i16 %i.cr to i32                   ; 4 uses
  %i.ct = load i16, ptr %i.l, align 2, !tbaa !13
  %i.cu = sext i16 %i.ct to i32
  %i.cv = mul nsw i32 %i.cu, %i.cs
  %i.cw = load i16, ptr %i.aq, align 2, !tbaa !13
  %i.cx = sext i16 %i.cw to i32
  %i.cy = mul nsw i32 %i.cx, %i.cs
  %i.cz = load i16, ptr %i.ar, align 2, !tbaa !13
  %i.da = sext i16 %i.cz to i32
  %i.db = mul nsw i32 %i.da, %i.cs
  %i.dc = load i16, ptr %i.as, align 2, !tbaa !13
  %i.dd = sext i16 %i.dc to i32
  %i.de = mul nsw i32 %i.dd, %i.cs
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !13
  %i.dh = zext i16 %i.dg to i32
  %i.di = load i16, ptr %i.at, align 2, !tbaa !13
  %i.dj = sext i16 %i.di to i32
  %i.dk = mul nsw i32 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !13
  %i.dn = zext i16 %i.dm to i32
  %i.do = load i16, ptr %i.au, align 2, !tbaa !13
  %i.dp = sext i16 %i.do to i32
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !13
  %i.dt = zext i16 %i.ds to i32
  %i.du = load i16, ptr %i.ap, align 2, !tbaa !13
  %i.dv = sext i16 %i.du to i32
  %i.dw = mul nsw i32 %i.dv, %i.dt
  %i.dx = add i32 %i.av, %i.cv
  %i.dy = add i32 %i.dx, %i.cy
  %i.dz = add i32 %i.dy, %i.db
  %i.ea = add i32 %i.dz, %i.de
  %i.eb = add i32 %i.ea, %i.dk
  %i.ec = add i32 %i.eb, %i.dq
  %i.ed = add i32 %i.ec, %i.dw
  %i.ee = ashr i32 %i.ed, %i.al                   ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  %i.eg = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.ee, i32 %8)
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = select i1 %i.ef, i16 0, i16 %i.eh
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.ei, ptr %i.ej, align 2, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %wiener_filter_hv.exit, label %.preheader.i, !llvm.loop !24

wiener_filter_hv.exit:                            ; preds = %.preheader.i, %middle.block, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(780) %i.j, ptr noundef nonnull align 16 dereferenceable(780) %i.e, i64 780, i1 false)
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8..sroa_idx, i64 48, i1 false), !tbaa !11
  %.0..0..0. = load ptr, ptr %i.g, align 16, !tbaa !11 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.ek = icmp eq i32 %5, 4
  br i1 %i.ek, label %bb.o, label %bb.i

bb.i:                                             ; preds = %wiener_filter_hv.exit
  %i.el = getelementptr inbounds i8, ptr %i.ah, i64 %1
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.48..48..48..sroa_idx1095 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.k, ptr %.48..48..48..sroa_idx1095, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.d, ptr noundef nonnull readonly %i.em, ptr noundef readonly %i.el, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.ao, label %.preheader.lr.ph.i183, label %wiener_filter_hv.exit200

.preheader.lr.ph.i183:                            ; preds = %bb.i
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %wide.trip.count.i184 = zext nneg i32 %4 to i64 ; 4 uses
  %.8..8..8..sroa_idx1073 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.8..8..8..pre55.i187 = load ptr, ptr %.8..8..8..sroa_idx1073, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..sroa_idx1074 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.16..16..16..pre57.i189 = load ptr, ptr %.16..16..16..sroa_idx1074, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..sroa_idx1076 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.24..24..24..pre59.i191 = load ptr, ptr %.24..24..24..sroa_idx1076, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..sroa_idx1079 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.32..32..32..pre61.i193 = load ptr, ptr %.32..32..32..sroa_idx1079, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..sroa_idx1084 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre63.i195 = load ptr, ptr %.40..40..40..sroa_idx1084, align 8, !tbaa !11 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  %i.et = add nsw i32 %.finite1099, %.neg.i       ; 2 uses
  %min.iters.check481 = icmp ult i32 %4, 16
  br i1 %min.iters.check481, label %.preheader.i196.preheader, label %vector.memcheck482

vector.memcheck482:                               ; preds = %.preheader.lr.ph.i183
  %i.eu = shl nuw nsw i64 %wide.trip.count.i184, 1 ; 7 uses
  %i.ev = getelementptr i8, ptr %0, i64 %1
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.eu  ; 7 uses
  %i.ex = getelementptr i8, ptr %.0..0..0., i64 %i.eu
  %i.ey = getelementptr i8, ptr %6, i64 30
  %i.ez = getelementptr i8, ptr %.8..8..8..pre55.i187, i64 %i.eu
  %i.fa = getelementptr i8, ptr %.16..16..16..pre57.i189, i64 %i.eu
  %i.fb = getelementptr i8, ptr %.24..24..24..pre59.i191, i64 %i.eu
  %i.fc = getelementptr i8, ptr %.32..32..32..pre61.i193, i64 %i.eu
  %i.fd = getelementptr i8, ptr %.40..40..40..pre63.i195, i64 %i.eu
  %bound0483 = icmp ult ptr %i.ab, %i.ex
  %bound1484 = icmp ult ptr %.0..0..0., %i.ew
  %found.conflict485 = and i1 %bound0483, %bound1484
  %bound0486 = icmp ult ptr %i.ab, %i.ey
  %bound1487 = icmp ult ptr %i.l, %i.ew
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx = or i1 %found.conflict485, %found.conflict488
  %bound0489 = icmp ult ptr %i.ab, %i.ez
  %bound1490 = icmp ult ptr %.8..8..8..pre55.i187, %i.ew
  %found.conflict491 = and i1 %bound0489, %bound1490
  %conflict.rdx492 = or i1 %conflict.rdx, %found.conflict491
  %bound0493 = icmp ult ptr %i.ab, %i.fa
  %bound1494 = icmp ult ptr %.16..16..16..pre57.i189, %i.ew
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx496 = or i1 %conflict.rdx492, %found.conflict495
  %bound0497 = icmp ult ptr %i.ab, %i.fb
  %bound1498 = icmp ult ptr %.24..24..24..pre59.i191, %i.ew
  %found.conflict499 = and i1 %bound0497, %bound1498
  %conflict.rdx500 = or i1 %conflict.rdx496, %found.conflict499
  %bound0501 = icmp ult ptr %i.ab, %i.fc
  %bound1502 = icmp ult ptr %.32..32..32..pre61.i193, %i.ew
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx500, %found.conflict503
  %bound0505 = icmp ult ptr %i.ab, %i.fd
  %bound1506 = icmp ult ptr %.40..40..40..pre63.i195, %i.ew
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %conflict.rdx504, %found.conflict507
  br i1 %conflict.rdx508, label %.preheader.i196.preheader, label %vector.ph509

vector.ph509:                                     ; preds = %vector.memcheck482
  %n.vec510 = and i64 %wide.trip.count.i184, 2147483640 ; 3 uses
  %i.fe = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert511 = insertelement <8 x i16> poison, i16 %i.fe, i64 0
  %broadcast.splat512 = shufflevector <8 x i16> %broadcast.splatinsert511, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ff = sext <8 x i16> %broadcast.splat512 to <8 x i32>
  %i.fg = load i16, ptr %i.eo, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert513 = insertelement <8 x i16> poison, i16 %i.fg, i64 0
  %broadcast.splat514 = shufflevector <8 x i16> %broadcast.splatinsert513, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fh = sext <8 x i16> %broadcast.splat514 to <8 x i32>
  %i.fi = load i16, ptr %i.ep, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert515 = insertelement <8 x i16> poison, i16 %i.fi, i64 0
  %broadcast.splat516 = shufflevector <8 x i16> %broadcast.splatinsert515, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fj = sext <8 x i16> %broadcast.splat516 to <8 x i32>
  %i.fk = load i16, ptr %i.eq, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert517 = insertelement <8 x i16> poison, i16 %i.fk, i64 0
  %broadcast.splat518 = shufflevector <8 x i16> %broadcast.splatinsert517, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fl = sext <8 x i16> %broadcast.splat518 to <8 x i32>
  %i.fm = load i16, ptr %i.er, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert519 = insertelement <8 x i16> poison, i16 %i.fm, i64 0
  %broadcast.splat520 = shufflevector <8 x i16> %broadcast.splatinsert519, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fn = sext <8 x i16> %broadcast.splat520 to <8 x i32>
  %i.fo = load i16, ptr %i.es, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert521 = insertelement <8 x i16> poison, i16 %i.fo, i64 0
  %broadcast.splat522 = shufflevector <8 x i16> %broadcast.splatinsert521, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fp = sext <8 x i16> %broadcast.splat522 to <8 x i32>
  %i.fq = load i16, ptr %i.en, align 2, !tbaa !13, !alias.scope !105
  %broadcast.splatinsert523 = insertelement <8 x i16> poison, i16 %i.fq, i64 0
  %broadcast.splat524 = shufflevector <8 x i16> %broadcast.splatinsert523, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.fr = sext <8 x i16> %broadcast.splat524 to <8 x i32>
  %broadcast.splatinsert525 = insertelement <8 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat526 = shufflevector <8 x i32> %broadcast.splatinsert525, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert527 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat528 = shufflevector <8 x i32> %broadcast.splatinsert527, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert529 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat530 = shufflevector <8 x i32> %broadcast.splatinsert529, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph509
  %index532 = phi i64 [ 0, %vector.ph509 ], [ %index.next540, %vector.body531 ] ; 9 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0., i64 %index532
  %wide.load533 = load <8 x i16>, ptr %i.fs, align 2, !tbaa !13, !alias.scope !106
  %i.ft = zext <8 x i16> %wide.load533 to <8 x i32>
  %i.fu = mul nsw <8 x i32> %i.ff, %i.ft
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i187, i64 %index532
  %wide.load534 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !13, !alias.scope !107
  %i.fw = zext <8 x i16> %wide.load534 to <8 x i32>
  %i.fx = mul nsw <8 x i32> %i.fh, %i.fw
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i189, i64 %index532
  %wide.load535 = load <8 x i16>, ptr %i.fy, align 2, !tbaa !13, !alias.scope !108
  %i.fz = zext <8 x i16> %wide.load535 to <8 x i32>
  %i.ga = mul nsw <8 x i32> %i.fj, %i.fz
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i191, i64 %index532
  %wide.load536 = load <8 x i16>, ptr %i.gb, align 2, !tbaa !13, !alias.scope !109
  %i.gc = zext <8 x i16> %wide.load536 to <8 x i32>
  %i.gd = mul nsw <8 x i32> %i.fl, %i.gc
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i193, i64 %index532
  %wide.load537 = load <8 x i16>, ptr %i.ge, align 2, !tbaa !13, !alias.scope !110
  %i.gf = zext <8 x i16> %wide.load537 to <8 x i32>
  %i.gg = mul nsw <8 x i32> %i.fn, %i.gf
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i195, i64 %index532
  %wide.load538 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !13, !alias.scope !111
  %i.gi = zext <8 x i16> %wide.load538 to <8 x i32>
  %i.gj = mul nsw <8 x i32> %i.fp, %i.gi
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %index532
  %wide.load539 = load <8 x i16>, ptr %i.gk, align 16, !tbaa !13
  %i.gl = zext <8 x i16> %wide.load539 to <8 x i32>
  %i.gm = mul nsw <8 x i32> %i.fr, %i.gl
  %i.gn = add <8 x i32> %broadcast.splat526, %i.fu
  %i.go = add <8 x i32> %i.gn, %i.fx
  %i.gp = add <8 x i32> %i.go, %i.ga
  %i.gq = add <8 x i32> %i.gp, %i.gd
  %i.gr = add <8 x i32> %i.gq, %i.gg
  %i.gs = add <8 x i32> %i.gr, %i.gj
  %i.gt = add <8 x i32> %i.gs, %i.gm
  %i.gu = ashr <8 x i32> %i.gt, %broadcast.splat528 ; 2 uses
  %i.gv = icmp slt <8 x i32> %i.gu, zeroinitializer
  %i.gw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gu, <8 x i32> %broadcast.splat530)
  %i.gx = trunc <8 x i32> %i.gw to <8 x i16>
  %i.gy = select <8 x i1> %i.gv, <8 x i16> zeroinitializer, <8 x i16> %i.gx
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index532
  store <8 x i16> %i.gy, ptr %i.gz, align 2, !tbaa !13, !alias.scope !112, !noalias !113
  %index.next540 = add nuw i64 %index532, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next540, %n.vec510
  br i1 %i.ha, label %middle.block541, label %vector.body531, !llvm.loop !34

middle.block541:                                  ; preds = %vector.body531
  %cmp.n542 = icmp eq i64 %n.vec510, %wide.trip.count.i184
  br i1 %cmp.n542, label %wiener_filter_hv.exit200, label %.preheader.i196.preheader

.preheader.i196.preheader:                        ; preds = %vector.memcheck482, %.preheader.lr.ph.i183, %middle.block541
  %indvars.iv.i197.ph = phi i64 [ 0, %vector.memcheck482 ], [ 0, %.preheader.lr.ph.i183 ], [ %n.vec510, %middle.block541 ]
  br label %.preheader.i196

.preheader.i196:                                  ; preds = %.preheader.i196.preheader, %.preheader.i196
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i198, %.preheader.i196 ], [ %indvars.iv.i197.ph, %.preheader.i196.preheader ] ; 9 uses
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %.0..0..0., i64 %indvars.iv.i197
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !13
  %i.hd = zext i16 %i.hc to i32
  %i.he = load i16, ptr %i.l, align 2, !tbaa !13
  %i.hf = sext i16 %i.he to i32
  %i.hg = mul nsw i32 %i.hf, %i.hd
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i187, i64 %indvars.iv.i197
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !13
  %i.hj = zext i16 %i.hi to i32
  %i.hk = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.hl = sext i16 %i.hk to i32
  %i.hm = mul nsw i32 %i.hl, %i.hj
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i189, i64 %indvars.iv.i197
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !13
  %i.hp = zext i16 %i.ho to i32
  %i.hq = load i16, ptr %i.ep, align 2, !tbaa !13
  %i.hr = sext i16 %i.hq to i32
  %i.hs = mul nsw i32 %i.hr, %i.hp
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i191, i64 %indvars.iv.i197
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !13
  %i.hv = zext i16 %i.hu to i32
  %i.hw = load i16, ptr %i.eq, align 2, !tbaa !13
  %i.hx = sext i16 %i.hw to i32
  %i.hy = mul nsw i32 %i.hx, %i.hv
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i193, i64 %indvars.iv.i197
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !13
  %i.ib = zext i16 %i.ia to i32
  %i.ic = load i16, ptr %i.er, align 2, !tbaa !13
  %i.id = sext i16 %i.ic to i32
  %i.ie = mul nsw i32 %i.id, %i.ib
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i195, i64 %indvars.iv.i197
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !13
  %i.ih = zext i16 %i.ig to i32
  %i.ii = load i16, ptr %i.es, align 2, !tbaa !13
  %i.ij = sext i16 %i.ii to i32
  %i.ik = mul nsw i32 %i.ij, %i.ih
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i197
  %i.im = load i16, ptr %i.il, align 2, !tbaa !13
  %i.in = zext i16 %i.im to i32
  %i.io = load i16, ptr %i.en, align 2, !tbaa !13
  %i.ip = sext i16 %i.io to i32
  %i.iq = mul nsw i32 %i.ip, %i.in
  %i.ir = add i32 %i.et, %i.hg
  %i.is = add i32 %i.ir, %i.hm
  %i.it = add i32 %i.is, %i.hs
  %i.iu = add i32 %i.it, %i.hy
  %i.iv = add i32 %i.iu, %i.ie
  %i.iw = add i32 %i.iv, %i.ik
  %i.ix = add i32 %i.iw, %i.iq
  %i.iy = ashr i32 %i.ix, %i.al                   ; 2 uses
  %i.iz = icmp slt i32 %i.iy, 0
  %i.ja = call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.iy, i32 %8)
  %i.jb = trunc i32 %i.ja to i16
  %i.jc = select i1 %i.iz, i16 0, i16 %i.jb
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i197
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !13
  %indvars.iv.next.i198 = add nuw nsw i64 %indvars.iv.i197, 1 ; 2 uses
  %exitcond.not.i199 = icmp eq i64 %indvars.iv.next.i198, %wide.trip.count.i184
  br i1 %exitcond.not.i199, label %wiener_filter_hv.exit200, label %.preheader.i196, !llvm.loop !35

wiener_filter_hv.exit200:                         ; preds = %.preheader.i196, %middle.block541, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(780) %i.k, ptr noundef nonnull align 16 dereferenceable(780) %i.d, i64 780, i1 false)
  %.8..8..8..sroa_idx1069 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.8..8..8..sroa_idx1069, i64 48, i1 false), !tbaa !11
  %.0..0..0.317 = load ptr, ptr %i.g, align 16, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.je = icmp samesign ult i32 %5, 6
  br i1 %i.je, label %bb.o, label %wiener_filter_hv.exit200._crit_edge

wiener_filter_hv.exit200._crit_edge:              ; preds = %wiener_filter_hv.exit200
  %i.jf = add nsw i32 %5, -5
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.40..40..40..sroa_idx1085 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.40..40..40..pre = load ptr, ptr %.40..40..40..sroa_idx1085, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %wiener_filter_hv.exit200._crit_edge
  %.pre-phi417 = phi i32 [ %.pre416, %._crit_edge ], [ %i.am, %wiener_filter_hv.exit200._crit_edge ]
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.aj, %wiener_filter_hv.exit200._crit_edge ]
  %.0..0..pre.i207414 = phi ptr [ %i.f, %._crit_edge ], [ %.0..0..0.317, %wiener_filter_hv.exit200._crit_edge ]
  %.40..40. = phi ptr [ %i.k, %._crit_edge ], [ %.40..40..40..pre, %wiener_filter_hv.exit200._crit_edge ]
  %.0161 = phi i32 [ %i.y, %._crit_edge ], [ %i.jf, %wiener_filter_hv.exit200._crit_edge ] ; 3 uses
  %.0159 = phi ptr [ %i.z, %._crit_edge ], [ %i.jg, %wiener_filter_hv.exit200._crit_edge ]
  %.0157 = phi ptr [ %0, %._crit_edge ], [ %i.ae, %wiener_filter_hv.exit200._crit_edge ] ; 13 uses
  %i.jh = getelementptr inbounds i8, ptr %.0157, i64 %1
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 %1
  %i.jj = getelementptr inbounds nuw i8, ptr %.40..40., i64 780 ; 2 uses
  %.48..48..48..sroa_idx1096 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.jj, ptr %.48..48..48..sroa_idx1096, align 16, !tbaa !11
  %i.jk = icmp eq i32 %.pre-phi, 20               ; 2 uses
  %i.jl = select i1 %i.jk, i32 9, i32 11          ; 7 uses
  %.finite = select i1 %i.jk, i32 256, i32 1024
  %i.jm = add nuw nsw i32 %i.jl, %.pre-phi417
  %.neg.i203 = shl nsw i32 -1, %i.jm
  %i.jn = icmp sgt i32 %4, 0                      ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 6 uses
  %wide.trip.count.i206 = zext i32 %4 to i64      ; 13 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 6 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 6 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 6 uses
  %i.ju = add nsw i32 %.finite, %.neg.i203        ; 6 uses
  %smin = call i32 @llvm.smin.i32(i32 %.0161, i32 1)
  %i.jv = sub i32 %.0161, %smin
  %i.jw = zext i32 %i.jv to i64
  %i.jx = mul i64 %1, %i.jw
  %i.jy = shl nuw nsw i64 %wide.trip.count.i206, 1 ; 8 uses
  %i.jz = getelementptr i8, ptr %.0157, i64 %i.jx
  %scevgep = getelementptr i8, ptr %i.jz, i64 %i.jy ; 8 uses
  %scevgep546 = getelementptr i8, ptr %6, i64 30
  %scevgep552 = getelementptr i8, ptr %i.c, i64 %i.jy
  %.8..8..8..phi.trans.insert.i208.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.16..16..16..phi.trans.insert56.i210.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.24..24..24..phi.trans.insert58.i212.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.32..32..32..phi.trans.insert60.i214.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.40..40..40..sroa_idx1089 = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %min.iters.check585 = icmp ult i32 %4, 8
  %stride.check = icmp slt i64 %1, 0
  %bound0556 = icmp ult ptr %.0157, %scevgep546
  %bound1557 = icmp ult ptr %i.l, %scevgep
  %found.conflict558 = and i1 %bound0556, %bound1557
  %invariant.op = or i1 %stride.check, %found.conflict558
  %bound0580 = icmp ult ptr %.0157, %scevgep552
  %bound1581 = icmp ult ptr %i.c, %scevgep
  %found.conflict582 = and i1 %bound0580, %bound1581
  %n.vec587 = and i64 %wide.trip.count.i206, 2147483640 ; 3 uses
  %broadcast.splatinsert602 = insertelement <8 x i32> poison, i32 %i.ju, i64 0
  %broadcast.splat603 = shufflevector <8 x i32> %broadcast.splatinsert602, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert604 = insertelement <8 x i32> poison, i32 %i.jl, i64 0
  %broadcast.splat605 = shufflevector <8 x i32> %broadcast.splatinsert604, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert606 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat607 = shufflevector <8 x i32> %broadcast.splatinsert606, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n619 = icmp eq i64 %n.vec587, %wide.trip.count.i206
  %.8..8..8.scevgep.i204.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.48..48..48..sroa_idx1097 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  br label %bb.k

bb.k:                                             ; preds = %wiener_filter_hv.exit222, %bb.j
  %indvar = phi i64 [ %indvar.next, %wiener_filter_hv.exit222 ], [ 0, %bb.j ] ; 3 uses
  %.0..0..pre.i207 = phi ptr [ %.0..0..0.318, %wiener_filter_hv.exit222 ], [ %.0..0..pre.i207414, %bb.j ] ; 4 uses
  %.0.318363 = phi ptr [ %.0..0..0.318, %wiener_filter_hv.exit222 ], [ %i.jj, %bb.j ]
  %.1162 = phi i32 [ %i.oc, %wiener_filter_hv.exit222 ], [ %.0161, %bb.j ] ; 2 uses
  %.1160 = phi ptr [ %i.oa, %wiener_filter_hv.exit222 ], [ %.0159, %bb.j ] ; 2 uses
  %.1158 = phi ptr [ %i.ob, %wiener_filter_hv.exit222 ], [ %.0157, %bb.j ] ; 3 uses
  %.pn = phi ptr [ %.1, %wiener_filter_hv.exit222 ], [ %i.ji, %bb.j ]
  %.1 = getelementptr inbounds i8, ptr %.pn, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call fastcc void @wiener_filter_h(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %.1160, ptr noundef readonly %.1, ptr noundef readonly %6, i32 noundef %4, i32 noundef %7, i32 noundef %8)
  br i1 %i.jn, label %.preheader.lr.ph.i205, label %wiener_filter_hv.exit222

.preheader.lr.ph.i205:                            ; preds = %bb.k
  %.8..8..8..pre55.i209 = load ptr, ptr %.8..8..8..phi.trans.insert.i208.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.16..16..16..pre57.i211 = load ptr, ptr %.16..16..16..phi.trans.insert56.i210.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.24..24..24..pre59.i213 = load ptr, ptr %.24..24..24..phi.trans.insert58.i212.sroa_idx, align 8, !tbaa !11 ; 4 uses
  %.32..32..32..pre61.i215 = load ptr, ptr %.32..32..32..phi.trans.insert60.i214.sroa_idx, align 16, !tbaa !11 ; 4 uses
  %.40..40..40..pre63.i217 = load ptr, ptr %.40..40..40..sroa_idx1089, align 8, !tbaa !11 ; 4 uses
  br i1 %min.iters.check585, label %.preheader.i218.preheader, label %vector.memcheck544

vector.memcheck544:                               ; preds = %.preheader.lr.ph.i205
  %scevgep545 = getelementptr i8, ptr %.0..0..pre.i207, i64 %i.jy
  %scevgep547 = getelementptr i8, ptr %.8..8..8..pre55.i209, i64 %i.jy
  %scevgep548 = getelementptr i8, ptr %.16..16..16..pre57.i211, i64 %i.jy
  %scevgep549 = getelementptr i8, ptr %.24..24..24..pre59.i213, i64 %i.jy
  %scevgep550 = getelementptr i8, ptr %.32..32..32..pre61.i215, i64 %i.jy
  %scevgep551 = getelementptr i8, ptr %.40..40..40..pre63.i217, i64 %i.jy
  %bound0553 = icmp ult ptr %.0157, %scevgep545
  %bound1554 = icmp ult ptr %.0..0..pre.i207, %scevgep
  %found.conflict555 = and i1 %bound0553, %bound1554
  %conflict.rdx559.reass = or i1 %found.conflict555, %invariant.op
  %bound0560 = icmp ult ptr %.0157, %scevgep547
  %bound1561 = icmp ult ptr %.8..8..8..pre55.i209, %scevgep
  %found.conflict562 = and i1 %bound0560, %bound1561
  %conflict.rdx563 = or i1 %conflict.rdx559.reass, %found.conflict562
  %bound0564 = icmp ult ptr %.0157, %scevgep548
  %bound1565 = icmp ult ptr %.16..16..16..pre57.i211, %scevgep
  %found.conflict566 = and i1 %bound0564, %bound1565
  %conflict.rdx567 = or i1 %conflict.rdx563, %found.conflict566
  %bound0568 = icmp ult ptr %.0157, %scevgep549
  %bound1569 = icmp ult ptr %.24..24..24..pre59.i213, %scevgep
  %found.conflict570 = and i1 %bound0568, %bound1569
  %conflict.rdx571 = or i1 %conflict.rdx567, %found.conflict570
  %bound0572 = icmp ult ptr %.0157, %scevgep550
  %bound1573 = icmp ult ptr %.32..32..32..pre61.i215, %scevgep
  %found.conflict574 = and i1 %bound0572, %bound1573
  %conflict.rdx575 = or i1 %conflict.rdx571, %found.conflict574
  %bound0576 = icmp ult ptr %.0157, %scevgep551
  %bound1577 = icmp ult ptr %.40..40..40..pre63.i217, %scevgep
  %found.conflict578 = and i1 %bound0576, %bound1577
  %conflict.rdx579 = or i1 %conflict.rdx575, %found.conflict578
  %conflict.rdx583 = or i1 %conflict.rdx579, %found.conflict582
  br i1 %conflict.rdx583, label %.preheader.i218.preheader, label %vector.ph586

vector.ph586:                                     ; preds = %vector.memcheck544
  %i.ka = load i16, ptr %i.l, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert588 = insertelement <8 x i16> poison, i16 %i.ka, i64 0
  %broadcast.splat589 = shufflevector <8 x i16> %broadcast.splatinsert588, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kb = sext <8 x i16> %broadcast.splat589 to <8 x i32>
  %i.kc = load i16, ptr %i.jp, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert590 = insertelement <8 x i16> poison, i16 %i.kc, i64 0
  %broadcast.splat591 = shufflevector <8 x i16> %broadcast.splatinsert590, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kd = sext <8 x i16> %broadcast.splat591 to <8 x i32>
  %i.ke = load i16, ptr %i.jq, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert592 = insertelement <8 x i16> poison, i16 %i.ke, i64 0
  %broadcast.splat593 = shufflevector <8 x i16> %broadcast.splatinsert592, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kf = sext <8 x i16> %broadcast.splat593 to <8 x i32>
  %i.kg = load i16, ptr %i.jr, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert594 = insertelement <8 x i16> poison, i16 %i.kg, i64 0
  %broadcast.splat595 = shufflevector <8 x i16> %broadcast.splatinsert594, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kh = sext <8 x i16> %broadcast.splat595 to <8 x i32>
  %i.ki = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert596 = insertelement <8 x i16> poison, i16 %i.ki, i64 0
  %broadcast.splat597 = shufflevector <8 x i16> %broadcast.splatinsert596, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kj = sext <8 x i16> %broadcast.splat597 to <8 x i32>
  %i.kk = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert598 = insertelement <8 x i16> poison, i16 %i.kk, i64 0
  %broadcast.splat599 = shufflevector <8 x i16> %broadcast.splatinsert598, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kl = sext <8 x i16> %broadcast.splat599 to <8 x i32>
  %i.km = load i16, ptr %i.jo, align 2, !tbaa !13, !alias.scope !114
  %broadcast.splatinsert600 = insertelement <8 x i16> poison, i16 %i.km, i64 0
  %broadcast.splat601 = shufflevector <8 x i16> %broadcast.splatinsert600, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kn = sext <8 x i16> %broadcast.splat601 to <8 x i32>
  br label %vector.body608

vector.body608:                                   ; preds = %vector.body608, %vector.ph586
  %index609 = phi i64 [ 0, %vector.ph586 ], [ %index.next617, %vector.body608 ] ; 9 uses
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %index609
  %wide.load610 = load <8 x i16>, ptr %i.ko, align 2, !tbaa !13, !alias.scope !115
  %i.kp = zext <8 x i16> %wide.load610 to <8 x i32>
  %i.kq = mul nsw <8 x i32> %i.kb, %i.kp
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %index609
  %wide.load611 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !13, !alias.scope !116
  %i.ks = zext <8 x i16> %wide.load611 to <8 x i32>
  %i.kt = mul nsw <8 x i32> %i.kd, %i.ks
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %index609
  %wide.load612 = load <8 x i16>, ptr %i.ku, align 2, !tbaa !13, !alias.scope !117
  %i.kv = zext <8 x i16> %wide.load612 to <8 x i32>
  %i.kw = mul nsw <8 x i32> %i.kf, %i.kv
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %index609
  %wide.load613 = load <8 x i16>, ptr %i.kx, align 2, !tbaa !13, !alias.scope !118
  %i.ky = zext <8 x i16> %wide.load613 to <8 x i32>
  %i.kz = mul nsw <8 x i32> %i.kh, %i.ky
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %.32..32..32..pre61.i215, i64 %index609
  %wide.load614 = load <8 x i16>, ptr %i.la, align 2, !tbaa !13, !alias.scope !119
  %i.lb = zext <8 x i16> %wide.load614 to <8 x i32>
  %i.lc = mul nsw <8 x i32> %i.kj, %i.lb
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %.40..40..40..pre63.i217, i64 %index609
  %wide.load615 = load <8 x i16>, ptr %i.ld, align 2, !tbaa !13, !alias.scope !120
  %i.le = zext <8 x i16> %wide.load615 to <8 x i32>
  %i.lf = mul nsw <8 x i32> %i.kl, %i.le
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index609
  %wide.load616 = load <8 x i16>, ptr %i.lg, align 16, !tbaa !13, !alias.scope !121
  %i.lh = zext <8 x i16> %wide.load616 to <8 x i32>
  %i.li = mul nsw <8 x i32> %i.kn, %i.lh
  %i.lj = add <8 x i32> %broadcast.splat603, %i.kq
  %i.lk = add <8 x i32> %i.lj, %i.kt
  %i.ll = add <8 x i32> %i.lk, %i.kw
  %i.lm = add <8 x i32> %i.ll, %i.kz
  %i.ln = add <8 x i32> %i.lm, %i.lc
  %i.lo = add <8 x i32> %i.ln, %i.lf
  %i.lp = add <8 x i32> %i.lo, %i.li
  %i.lq = ashr <8 x i32> %i.lp, %broadcast.splat605 ; 2 uses
  %i.lr = icmp slt <8 x i32> %i.lq, zeroinitializer
  %i.ls = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.lq, <8 x i32> %broadcast.splat607)
  %i.lt = trunc <8 x i32> %i.ls to <8 x i16>
  %i.lu = select <8 x i1> %i.lr, <8 x i16> zeroinitializer, <8 x i16> %i.lt
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %.1158, i64 %index609
  store <8 x i16> %i.lu, ptr %i.lv, align 2, !tbaa !13, !alias.scope !122, !noalias !123
  %index.next617 = add nuw i64 %index609, 8       ; 2 uses
  %i.lw = icmp eq i64 %index.next617, %n.vec587
  br i1 %i.lw, label %middle.block618, label %vector.body608, !llvm.loop !46

middle.block618:                                  ; preds = %vector.body608
  br i1 %cmp.n619, label %wiener_filter_hv.exit222, label %.preheader.i218.preheader

.preheader.i218.preheader:                        ; preds = %vector.memcheck544, %.preheader.lr.ph.i205, %middle.block618
  %indvars.iv.i219.ph = phi i64 [ 0, %vector.memcheck544 ], [ 0, %.preheader.lr.ph.i205 ], [ %n.vec587, %middle.block618 ]
  br label %.preheader.i218

.preheader.i218:                                  ; preds = %.preheader.i218.preheader, %.preheader.i218
  %indvars.iv.i219 = phi i64 [ %indvars.iv.next.i220, %.preheader.i218 ], [ %indvars.iv.i219.ph, %.preheader.i218.preheader ] ; 9 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %.0..0..pre.i207, i64 %indvars.iv.i219
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !13
  %i.lz = zext i16 %i.ly to i32
  %i.ma = load i16, ptr %i.l, align 2, !tbaa !13
  %i.mb = sext i16 %i.ma to i32
  %i.mc = mul nsw i32 %i.mb, %i.lz
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.8..8..8..pre55.i209, i64 %indvars.iv.i219
  %i.me = load i16, ptr %i.md, align 2, !tbaa !13
  %i.mf = zext i16 %i.me to i32
  %i.mg = load i16, ptr %i.jp, align 2, !tbaa !13
  %i.mh = sext i16 %i.mg to i32
  %i.mi = mul nsw i32 %i.mh, %i.mf
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %.16..16..16..pre57.i211, i64 %indvars.iv.i219
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !13
  %i.ml = zext i16 %i.mk to i32
  %i.mm = load i16, ptr %i.jq, align 2, !tbaa !13
  %i.mn = sext i16 %i.mm to i32
  %i.mo = mul nsw i32 %i.mn, %i.ml
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %.24..24..24..pre59.i213, i64 %indvars.iv.i219
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !13
  %i.mr = zext i16 %i.mq to i32
  %i.ms = load i16, ptr %i.jr, align 2, !tbaa !13
end_hunk_0
begin_hunk_1_@sgr_mix_c:bb.a
  %i.fj = load ptr, ptr %i.dp, align 16, !tbaa !17
  %i.fk = load ptr, ptr %i.dq, align 16, !tbaa !17
  %i.fl = load ptr, ptr %i.du, align 16, !tbaa !17
  %i.fm = load ptr, ptr %i.dv, align 16, !tbaa !17
  call fastcc void @sgr_box3_row_h(ptr noundef %i.fj, ptr noundef %i.fk, ptr noundef null, ptr noundef readonly %i.ff, i32 noundef %4, i32 noundef %7)
  call fastcc void @sgr_box5_row_h(ptr noundef %i.fl, ptr noundef %i.fm, ptr noundef null, ptr noundef readonly %i.ff, i32 noundef %4, i32 noundef %7)
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.fn = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.fo = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.fp = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.fn, ptr noundef %i.fo, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.fn, ptr noundef %i.fo, i32 noundef %4, i32 noundef %i.fp, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.fq = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.fr = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.fq, ptr noundef %i.fr, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.fq, ptr noundef %i.fr, i32 noundef %4, i32 noundef %i.ft, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  br label %bb.s

bb.p:                                             ; preds = %bb.m, %bb.h, %bb.f, %bb.c
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fv = load ptr, ptr %i.fu, align 16, !tbaa !17 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !17
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.fv, ptr %i.fx, align 16, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !17 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.fz, ptr %i.gb, align 16, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 16, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !17
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.gg, ptr %i.gh, align 16, !tbaa !17
  %i.gi = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.gj = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.gi, ptr noundef %i.gj, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.gi, ptr noundef %i.gj, i32 noundef %4, i32 noundef %i.gl, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  %i.gm = load ptr, ptr %i.gc, align 8, !tbaa !17
  store ptr %i.gm, ptr %i.ge, align 16, !tbaa !17
  %i.gn = load ptr, ptr %i.gf, align 8, !tbaa !17
  store ptr %i.gn, ptr %i.gh, align 16, !tbaa !17
  br label %bb.o

.loopexit:                                        ; preds = %bb.k, %bb.g
  %i.go = phi ptr [ %i.u, %bb.g ], [ %i.ed, %bb.k ]
  %i.gp = phi ptr [ %i.t, %bb.g ], [ %i.ec, %bb.k ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.gp, ptr %i.gq, align 16, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.go, ptr %i.gr, align 16, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.gt, ptr %i.gu, align 16, !tbaa !17
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !17
  %i.gx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.gw, ptr %i.gx, align 16, !tbaa !17
  %i.gy = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.gz = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ha = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.gy, ptr noundef %i.gz, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.gy, ptr noundef %i.gz, i32 noundef %4, i32 noundef %i.ha, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.hb = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.hc = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.hb, ptr noundef %i.hc, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.hb, ptr noundef %i.hc, i32 noundef %4, i32 noundef %i.he, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hg = load i16, ptr %i.hf, align 8, !tbaa !18
  %i.hh = sext i16 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !18
  %i.hk = sext i16 %i.hj to i32
  call fastcc void @sgr_finish_mix(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.p, ptr noundef %i.q, i32 noundef %4, i32 noundef 2, i32 noundef %i.hh, i32 noundef %i.hk, i32 noundef %8)
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.loopexit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hm = load ptr, ptr %i.hl, align 16, !tbaa !17 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.hm, ptr %i.ho, align 16, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hq = load ptr, ptr %i.hp, align 16, !tbaa !17 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !17
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.hq, ptr %i.hs, align 16, !tbaa !17
  %i.ht = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.hu, ptr %i.hv, align 16, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !17
  %i.hy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.hx, ptr %i.hy, align 16, !tbaa !17
  %i.hz = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ia = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.ib = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.hz, ptr noundef %i.ia, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.hz, ptr noundef %i.ia, i32 noundef %4, i32 noundef %i.ib, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %i.ic = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.id = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !18
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.ic, ptr noundef %i.id, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.ic, ptr noundef %i.id, i32 noundef %4, i32 noundef %i.if, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  br label %bb.s

bb.r:                                             ; preds = %bb.e, %bb.b
  %i.ig = phi i32 [ %i.ch, %bb.e ], [ %i.bl, %bb.b ]
  %i.ih = phi ptr [ %i.c, %bb.e ], [ %i.u, %bb.b ]
  %i.ii = phi ptr [ %i.b, %bb.e ], [ %i.t, %bb.b ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ii, ptr %i.ij, align 16, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.ih, ptr %i.ik, align 16, !tbaa !17
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.im, ptr %i.in, align 16, !tbaa !17
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.ip, ptr %i.iq, align 16, !tbaa !17
  %i.ir = load i32, ptr %6, align 16, !tbaa !18
  call fastcc void @sgr_box5_row_v(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %4, i32 noundef %i.ir, i32 noundef %8, i32 noundef 25, i32 noundef 164)
  call fastcc void @rotate5_x2(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  call fastcc void @rotate(ptr noundef %i.l, ptr noundef %i.m, i32 noundef 2)
  %i.is = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 2 uses
  %i.it = load ptr, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  call fastcc void @sgr_box3_row_v(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %i.is, ptr noundef %i.it, i32 noundef %4)
  call fastcc void @sgr_calc_row_ab(ptr noundef %i.is, ptr noundef %i.it, i32 noundef %4, i32 noundef %i.ig, i32 noundef %8, i32 noundef 9, i32 noundef 455)
  call fastcc void @rotate(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i32 noundef 3)
  call fastcc void @rotate(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 4)
  br label %bb.q

bb.s:                                             ; preds = %bb.q, %bb.o
  %.sink = phi i32 [ 1, %bb.q ], [ 2, %bb.o ]
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iv = load i16, ptr %i.iu, align 8, !tbaa !18
  %i.iw = sext i16 %i.iv to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !18
  %i.iz = sext i16 %i.iy to i32
  call fastcc void @sgr_finish_mix(ptr noundef %i.a, i64 noundef %1, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.p, ptr noundef %i.q, i32 noundef %4, i32 noundef %.sink, i32 noundef %i.iw, i32 noundef %i.iz, i32 noundef %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @wiener_filter_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %6, i1 true) ; 7 uses
  %i.b = icmp eq i32 %i.a, 20                     ; 3 uses
  %.neg237 = select i1 %i.b, i32 -5, i32 -3
  %i.c = select i1 %i.b, i32 5, i32 3             ; 23 uses
  %.finite = select i1 %i.b, i32 16, i32 4        ; 23 uses
  %reass.sub = sub nuw nsw i32 %.neg237, %i.a
  %i.d = add nsw i32 %reass.sub, 40
  %i.e = shl nuw i32 1, %i.d                      ; 5 uses
  %i.f = icmp slt i32 %4, 6
  br i1 %i.f, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.lr.ph226, label %.loopexit

.lr.ph226:                                        ; preds = %.preheader
  %i.h = sub nuw nsw i32 38, %i.a
  %i.i = shl nuw i32 1, %i.h                      ; 18 uses
  %i.j = and i32 %5, 2
  %.not187 = icmp eq i32 %i.j, 0                  ; 17 uses
  %i.k = zext nneg i32 %4 to i64                  ; 5 uses
  %i.l = getelementptr [2 x i8], ptr %2, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -2       ; 34 uses
  %i.n = and i32 %5, 1
  %.not188 = icmp eq i32 %i.n, 0
  %i.o = add nsw i32 %i.e, -1                     ; 15 uses
  br i1 %.not188, label %.split.us.us.preheader, label %.lr.ph226.split

.split.us.us.preheader:                           ; preds = %.lr.ph226
  %i.p = zext nneg i32 %4 to i64                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sink394.in = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sink396.in = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sink398.in = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink400.in = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink402.in = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %.split215.us.us
  %indvars.iv322 = phi i64 [ 0, %.split.us.us.preheader ], [ %indvars.iv.next323.pre-phi, %.split215.us.us ] ; 20 uses
  %i.w = icmp samesign ult i64 %indvars.iv322, 3  ; 2 uses
  br i1 %.not187, label %.split.us.us.split.preheader, label %.split.us.us.split.us.preheader

.split.us.us.split.us.preheader:                  ; preds = %.split.us.us
  br i1 %i.w, label %.split.us.us.split.us.1, label %.split.us.us.split.us.1.thread

.split.us.us.split.preheader:                     ; preds = %.split.us.us
  br i1 %i.w, label %.split.us.us.split.1, label %.split.us.us.split.1.thread

.split.us.us.split.us.1.thread:                   ; preds = %.split.us.us.split.us.preheader
  %i.x = getelementptr [2 x i8], ptr %2, i64 %indvars.iv322
  %i.y = getelementptr i8, ptr %i.x, i64 -6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !13
  %i.aa = zext i16 %i.z to i32
  %i.ab = load i16, ptr %3, align 2, !tbaa !13
  %i.ac = sext i16 %i.ab to i32
  %i.ad = mul nsw i32 %i.ac, %i.aa
  %.1170.us.us.us350 = add nsw i32 %i.ad, %i.i
  %i.ae = add nuw nsw i64 %indvars.iv322, 1
  br label %.split.us.us.split.us.2.thread

.split.us.us.split.us.1:                          ; preds = %.split.us.us.split.us.preheader
  %i.af = load i16, ptr %2, align 2, !tbaa !13
  %i.ag = zext i16 %i.af to i32
  %i.ah = load i16, ptr %3, align 2, !tbaa !13
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.ag
  %.1170.us.us.us = add nsw i32 %i.aj, %i.i       ; 2 uses
  %i.ak = add nuw nsw i64 %indvars.iv322, 1       ; 2 uses
  %.not523 = icmp eq i64 %indvars.iv322, 2
  br i1 %.not523, label %.split.us.us.split.us.2.thread, label %.split.us.us.split.us.2

.split.us.us.split.us.2.thread:                   ; preds = %.split.us.us.split.us.1, %.split.us.us.split.us.1.thread
  %i.al = phi i64 [ %i.ae, %.split.us.us.split.us.1.thread ], [ %i.ak, %.split.us.us.split.us.1 ] ; 2 uses
  %.1170.us.us.us352 = phi i32 [ %.1170.us.us.us350, %.split.us.us.split.us.1.thread ], [ %.1170.us.us.us, %.split.us.us.split.us.1 ]
  %i.am = getelementptr [2 x i8], ptr %2, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -6
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !13
  %i.ap = zext i16 %i.ao to i32
  %i.aq = load i16, ptr %i.q, align 2, !tbaa !13
  %i.ar = sext i16 %i.aq to i32
  %i.as = mul nsw i32 %i.ar, %i.ap
  %.1170.us.us.us.1355 = add nsw i32 %i.as, %.1170.us.us.us352
  br label %bb.b

.split.us.us.split.us.2:                          ; preds = %.split.us.us.split.us.1
  %i.at = load i16, ptr %2, align 2, !tbaa !13
  %i.au = zext i16 %i.at to i32
  %i.av = load i16, ptr %i.r, align 2, !tbaa !13
  %i.aw = sext i16 %i.av to i32
  %i.ax = mul nsw i32 %i.aw, %i.au
  %.1170.us.us.us.1 = add nsw i32 %i.ax, %.1170.us.us.us ; 2 uses
  %i.ay = icmp eq i64 %indvars.iv322, 0
  br i1 %i.ay, label %.split215.us.us.loopexit238, label %bb.b

bb.b:                                             ; preds = %.split.us.us.split.us.2.thread, %.split.us.us.split.us.2
  %.1170.us.us.us.1357 = phi i32 [ %.1170.us.us.us.1355, %.split.us.us.split.us.2.thread ], [ %.1170.us.us.us.1, %.split.us.us.split.us.2 ]
  %i.az = phi i64 [ %i.al, %.split.us.us.split.us.2.thread ], [ %i.ak, %.split.us.us.split.us.2 ]
  %i.ba = getelementptr [2 x i8], ptr %2, i64 %indvars.iv322
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  br label %.split215.us.us.loopexit238

.split215.us.us.loopexit238:                      ; preds = %.split.us.us.split.us.2, %bb.b
  %.sink393.in.in = phi ptr [ %i.bb, %bb.b ], [ %2, %.split.us.us.split.us.2 ]
  %.1170.us.us.us.1356 = phi i32 [ %.1170.us.us.us.1357, %bb.b ], [ %.1170.us.us.us.1, %.split.us.us.split.us.2 ]
  %i.bc = phi i64 [ %i.az, %bb.b ], [ 1, %.split.us.us.split.us.2 ]
  %.sink393.in = load i16, ptr %.sink393.in.in, align 2, !tbaa !13
  %.sink393 = zext i16 %.sink393.in to i32
  %.sink394 = load i16, ptr %.sink394.in, align 2, !tbaa !13
  %i.bd = sext i16 %.sink394 to i32
  %i.be = mul nsw i32 %i.bd, %.sink393
  %i.bf = getelementptr [2 x i8], ptr %2, i64 %indvars.iv322
  %i.bg = load <4 x i16>, ptr %i.s, align 2, !tbaa !13
  %i.bh = sext <4 x i16> %i.bg to <4 x i32>
  %i.bi = load <4 x i16>, ptr %i.bf, align 2, !tbaa !13
  %i.bj = zext <4 x i16> %i.bi to <4 x i32>
  %i.bk = mul nsw <4 x i32> %i.bh, %i.bj
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bk)
  %op.rdx = add i32 %i.bl, %i.be
  %op.rdx626 = add i32 %op.rdx, %.1170.us.us.us.1356
  br label %.split215.us.us

.split.us.us.split.1.thread:                      ; preds = %.split.us.us.split.preheader
  %i.bm = getelementptr [2 x i8], ptr %2, i64 %indvars.iv322
  %i.bn = getelementptr i8, ptr %i.bm, i64 -6
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !13
  %i.bp = zext i16 %i.bo to i32
  %i.bq = load i16, ptr %3, align 2, !tbaa !13
  %i.br = sext i16 %i.bq to i32
  %i.bs = mul nsw i32 %i.br, %i.bp
  %.1170.us.us359 = add nsw i32 %i.bs, %i.i
  %i.bt = add nuw nsw i64 %indvars.iv322, 1
  br label %.split.us.us.split.2.thread

.split.us.us.split.1:                             ; preds = %.split.us.us.split.preheader
  %i.bu = load i16, ptr %2, align 2, !tbaa !13
  %i.bv = zext i16 %i.bu to i32
  %i.bw = load i16, ptr %3, align 2, !tbaa !13
  %i.bx = sext i16 %i.bw to i32
  %i.by = mul nsw i32 %i.bx, %i.bv
  %.1170.us.us = add nsw i32 %i.by, %i.i          ; 2 uses
  %i.bz = add nuw nsw i64 %indvars.iv322, 1       ; 2 uses
  %.not524 = icmp eq i64 %indvars.iv322, 2
  br i1 %.not524, label %.split.us.us.split.2.thread, label %.split.us.us.split.2

.split.us.us.split.2.thread:                      ; preds = %.split.us.us.split.1.thread, %.split.us.us.split.1
  %i.ca = phi i64 [ %i.bt, %.split.us.us.split.1.thread ], [ %i.bz, %.split.us.us.split.1 ]
  %.1170.us.us361 = phi i32 [ %.1170.us.us359, %.split.us.us.split.1.thread ], [ %.1170.us.us, %.split.us.us.split.1 ]
  %i.cb = getelementptr [2 x i8], ptr %2, i64 %indvars.iv322
  %i.cc = getelementptr i8, ptr %i.cb, i64 -4
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !13
  %i.ce = zext i16 %i.cd to i32
  %i.cf = load i16, ptr %i.t, align 2, !tbaa !13
  %i.cg = sext i16 %i.cf to i32
  %i.ch = mul nsw i32 %i.cg, %i.ce
  %.1170.us.us.1364 = add nsw i32 %i.ch, %.1170.us.us361
  br label %bb.c

.split.us.us.split.2:                             ; preds = %.split.us.us.split.1
  %i.ci = load i16, ptr %2, align 2, !tbaa !13
  %i.cj = zext i16 %i.ci to i32
  %i.ck = load i16, ptr %i.u, align 2, !tbaa !13
  %i.cl = sext i16 %i.ck to i32
  %i.cm = mul nsw i32 %i.cl, %i.cj
  %.1170.us.us.1 = add nsw i32 %i.cm, %.1170.us.us ; 2 uses
  %i.cn = icmp eq i64 %indvars.iv322, 0
  br i1 %i.cn, label %.split215.us.us.loopexit, label %bb.c

bb.c:                                             ; preds = %.split.us.us.split.2, %.split.us.us.split.2.thread
  %.1170.us.us.1366 = phi i32 [ %.1170.us.us.1364, %.split.us.us.split.2.thread ], [ %.1170.us.us.1, %.split.us.us.split.2 ]
  %i.co = phi i64 [ %i.ca, %.split.us.us.split.2.thread ], [ %i.bz, %.split.us.us.split.2 ]
  %i.cp = getelementptr [2 x i8], ptr %2, i64 %indvars.iv322
  %i.cq = getelementptr i8, ptr %i.cp, i64 -2
  br label %.split215.us.us.loopexit

.split215.us.us.loopexit:                         ; preds = %.split.us.us.split.2, %bb.c
  %.sink395.in.in = phi ptr [ %i.cq, %bb.c ], [ %2, %.split.us.us.split.2 ]
  %.1170.us.us.1365 = phi i32 [ %.1170.us.us.1366, %bb.c ], [ %.1170.us.us.1, %.split.us.us.split.2 ]
  %i.cr = phi i64 [ %i.co, %bb.c ], [ 1, %.split.us.us.split.2 ]
  %.sink395.in = load i16, ptr %.sink395.in.in, align 2, !tbaa !13
  %.sink395 = zext i16 %.sink395.in to i32
  %.sink396 = load i16, ptr %.sink396.in, align 2, !tbaa !13
  %i.cs = sext i16 %.sink396 to i32
  %i.ct = mul nsw i32 %i.cs, %.sink395
  %.1170.us.us.2 = add nsw i32 %i.ct, %.1170.us.us.1365
  %i.cu = load i16, ptr %i.v, align 2, !tbaa !13
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv322
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !13
  %i.cy = zext i16 %i.cx to i32
  %i.cz = mul nsw i32 %i.cv, %i.cy
  %.1170.us.us.3 = add nsw i32 %i.cz, %.1170.us.us.2
  %i.da = add nsw i64 %indvars.iv322, 1           ; 2 uses
  %.not186.us.us.not.4 = icmp slt i64 %i.da, %i.p
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.da
  %.sink397.in.in = select i1 %.not186.us.us.not.4, ptr %i.db, ptr %i.m
  %.sink397.in = load i16, ptr %.sink397.in.in, align 2, !tbaa !13
  %.sink397 = zext i16 %.sink397.in to i32
  %.sink398 = load i16, ptr %.sink398.in, align 2, !tbaa !13
  %i.dc = sext i16 %.sink398 to i32
  %i.dd = mul nsw i32 %i.dc, %.sink397
  %.1170.us.us.4 = add nsw i32 %i.dd, %.1170.us.us.3
  %i.de = add nsw i64 %indvars.iv322, 2           ; 2 uses
  %.not186.us.us.not.5 = icmp slt i64 %i.de, %i.p
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.de
  %.sink399.in.in = select i1 %.not186.us.us.not.5, ptr %i.df, ptr %i.m
  %.sink399.in = load i16, ptr %.sink399.in.in, align 2, !tbaa !13
  %.sink399 = zext i16 %.sink399.in to i32
  %.sink400 = load i16, ptr %.sink400.in, align 2, !tbaa !13
  %i.dg = sext i16 %.sink400 to i32
  %i.dh = mul nsw i32 %i.dg, %.sink399
  %.1170.us.us.5 = add nsw i32 %i.dh, %.1170.us.us.4
  %i.di = add nsw i64 %indvars.iv322, 3           ; 2 uses
  %.not186.us.us.not.6 = icmp slt i64 %i.di, %i.p
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.di
  %.sink401.in.in = select i1 %.not186.us.us.not.6, ptr %i.dj, ptr %i.m
  %.sink401.in = load i16, ptr %.sink401.in.in, align 2, !tbaa !13
  %.sink401 = zext i16 %.sink401.in to i32
  %.sink402 = load i16, ptr %.sink402.in, align 2, !tbaa !13
  %i.dk = sext i16 %.sink402 to i32
  %i.dl = mul nsw i32 %i.dk, %.sink401
  %.1170.us.us.6 = add nsw i32 %i.dl, %.1170.us.us.5
  br label %.split215.us.us

.split215.us.us:                                  ; preds = %.split215.us.us.loopexit238, %.split215.us.us.loopexit
  %indvars.iv.next323.pre-phi = phi i64 [ %i.bc, %.split215.us.us.loopexit238 ], [ %i.cr, %.split215.us.us.loopexit ] ; 2 uses
  %.us-phi = phi i32 [ %op.rdx626, %.split215.us.us.loopexit238 ], [ %.1170.us.us.6, %.split215.us.us.loopexit ]
  %i.dm = add nsw i32 %.us-phi, %.finite
  %i.dn = ashr i32 %i.dm, %i.c                    ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  %i.dp = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.dn, i32 %i.o)
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = select i1 %i.do, i16 0, i16 %i.dq
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv322
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !13
  %exitcond326.not = icmp eq i64 %indvars.iv.next323.pre-phi, %i.k
  br i1 %exitcond326.not, label %.loopexit, label %.split.us.us

.lr.ph226.split:                                  ; preds = %.lr.ph226
  %.not189 = icmp eq ptr %1, null
  br i1 %.not189, label %.lr.ph226.split.split.us, label %.split215.split.peel

.split215.split.peel:                             ; preds = %.lr.ph226.split
  %i.dt = load i16, ptr %3, align 2, !tbaa !13
  %i.du = sext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !13
  %i.dx = zext i16 %i.dw to i32
  %i.dy = mul nsw i32 %i.du, %i.dx
  %.1170.peel = add nsw i32 %i.dy, %i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !13
  %i.eb = sext i16 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !13
  %i.ee = zext i16 %i.ed to i32
  %i.ef = mul nsw i32 %i.eb, %i.ee
  %.1170.1.peel = add nsw i32 %i.ef, %.1170.peel
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !13
  %i.ei = sext i16 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !13
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nsw i32 %i.ei, %i.el
  %.1170.2.peel = add nsw i32 %i.em, %.1170.1.peel
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !13
  %i.ep = sext i16 %i.eo to i32
  %i.eq = load i16, ptr %2, align 2, !tbaa !13
  %i.er = zext i16 %i.eq to i32
  %i.es = mul nsw i32 %i.ep, %i.er
  %.1170.3.peel = add nsw i32 %i.es, %.1170.2.peel
  %.not186.4.peel = icmp eq i32 %4, 1
  %or.cond.4.peel = and i1 %.not187, %.not186.4.peel
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.sink.in = select i1 %or.cond.4.peel, ptr %i.m, ptr %i.et
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !13
  %i.eu = zext i16 %.sink to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !13
  %i.ex = sext i16 %i.ew to i32
  %i.ey = mul nsw i32 %i.ex, %i.eu
  %.1170.4.peel = add nsw i32 %i.ey, %.1170.3.peel
  %.not186.5.peel = icmp samesign ult i32 %4, 3
  %or.cond.5.peel = and i1 %.not187, %.not186.5.peel
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sink409.in = select i1 %or.cond.5.peel, ptr %i.m, ptr %i.ez
  %.sink409 = load i16, ptr %.sink409.in, align 2, !tbaa !13
  %i.fa = zext i16 %.sink409 to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !13
  %i.fd = sext i16 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, %i.fa
  %.1170.5.peel = add nsw i32 %i.fe, %.1170.4.peel
  %.not186.6.peel = icmp samesign ult i32 %4, 4
  %or.cond.6.peel = and i1 %.not187, %.not186.6.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sink414.in = select i1 %or.cond.6.peel, ptr %i.m, ptr %i.ff
  %.sink414 = load i16, ptr %.sink414.in, align 2, !tbaa !13
  %i.fg = zext i16 %.sink414 to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !13
  %i.fj = sext i16 %i.fi to i32
  %i.fk = mul nsw i32 %i.fj, %i.fg
  %.1170.6.peel = add nsw i32 %i.fk, %.1170.5.peel
  %i.fl = add nsw i32 %.1170.6.peel, %.finite
  %i.fm = ashr i32 %i.fl, %i.c                    ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  %i.fo = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.fm, i32 %i.o)
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = select i1 %i.fn, i16 0, i16 %i.fp
  store i16 %i.fq, ptr %0, align 2, !tbaa !13
  %exitcond273.peel.not = icmp eq i32 %4, 1
  br i1 %exitcond273.peel.not, label %.loopexit, label %.split.peel.next

.split.peel.next:                                 ; preds = %.split215.split.peel
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 4 uses
  %i.ft = load i16, ptr %3, align 2, !tbaa !13
  %i.fu = sext i16 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !13
  %i.fx = zext i16 %i.fw to i32
  %i.fy = mul nsw i32 %i.fu, %i.fx
  %.1170 = add nsw i32 %i.fy, %i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sink433.in = load i16, ptr %i.fz, align 2, !tbaa !13
  %.sink433 = zext i16 %.sink433.in to i32
  %.sink434.in = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink434 = load i16, ptr %.sink434.in, align 2, !tbaa !13
  %i.ga = sext i16 %.sink434 to i32
  %i.gb = mul nsw i32 %i.ga, %.sink433
  %.1170.1 = add nsw i32 %i.gb, %.1170
  %i.gc = load i16, ptr %i.fr, align 2, !tbaa !13
  %i.gd = sext i16 %i.gc to i32
  %i.ge = load i16, ptr %2, align 2, !tbaa !13
  %i.gf = zext i16 %i.ge to i32
  %i.gg = mul nsw i32 %i.gd, %i.gf
  %.1170.2 = add nsw i32 %i.gg, %.1170.1
  %i.gh = load i16, ptr %i.fs, align 2, !tbaa !13
  %i.gi = sext i16 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !13
  %i.gl = zext i16 %i.gk to i32
  %i.gm = mul nsw i32 %i.gi, %i.gl
  %.1170.3 = add nsw i32 %i.gm, %.1170.2
  %.not186.4 = icmp ult i32 %4, 3
  %or.cond.4 = and i1 %.not187, %.not186.4
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sink436.in.in = select i1 %or.cond.4, ptr %i.m, ptr %i.gn
  %.sink436.in = load i16, ptr %.sink436.in.in, align 2, !tbaa !13
  %.sink436 = zext i16 %.sink436.in to i32
  %.sink437.in = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink437 = load i16, ptr %.sink437.in, align 2, !tbaa !13
  %i.go = sext i16 %.sink437 to i32
  %i.gp = mul nsw i32 %i.go, %.sink436
  %.1170.4 = add nsw i32 %i.gp, %.1170.3
  %.not186.5 = icmp ult i32 %4, 4
  %or.cond.5 = and i1 %.not187, %.not186.5
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sink439.in.in = select i1 %or.cond.5, ptr %i.m, ptr %i.gq
  %.sink439.in = load i16, ptr %.sink439.in.in, align 2, !tbaa !13
  %.sink439 = zext i16 %.sink439.in to i32
  %.sink440.in = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink440 = load i16, ptr %.sink440.in, align 2, !tbaa !13
  %i.gr = sext i16 %.sink440 to i32
  %i.gs = mul nsw i32 %i.gr, %.sink439
  %.1170.5 = add nsw i32 %i.gs, %.1170.4
  %.not186.6 = icmp ult i32 %4, 5
  %or.cond.6 = and i1 %.not187, %.not186.6
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink442.in.in = select i1 %or.cond.6, ptr %i.m, ptr %i.gt
  %.sink442.in = load i16, ptr %.sink442.in.in, align 2, !tbaa !13
  %.sink442 = zext i16 %.sink442.in to i32
  %.sink443.in = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink443 = load i16, ptr %.sink443.in, align 2, !tbaa !13
  %i.gu = sext i16 %.sink443 to i32
  %i.gv = mul nsw i32 %i.gu, %.sink442
  %.1170.6 = add nsw i32 %i.gv, %.1170.5
  %i.gw = add nsw i32 %.1170.6, %.finite
  %i.gx = ashr i32 %i.gw, %i.c                    ; 2 uses
  %i.gy = icmp slt i32 %i.gx, 0
  %i.gz = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.gx, i32 %i.o)
  %i.ha = trunc i32 %i.gz to i16
  %i.hb = select i1 %i.gy, i16 0, i16 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !13
  %exitcond273.not = icmp eq i32 %4, 2
  br i1 %exitcond273.not, label %.loopexit, label %.split.1

.lr.ph226.split.split.us:                         ; preds = %.lr.ph226.split
  br i1 %.not187, label %bb.d, label %.split215.split.us.us.split.us.peel

.split215.split.us.us.split.us.peel:              ; preds = %.lr.ph226.split.split.us
  %i.hd = getelementptr inbounds i8, ptr %2, i64 -6
  %i.he = load <4 x i16>, ptr %3, align 2, !tbaa !13
  %i.hf = sext <4 x i16> %i.he to <4 x i32>
  %i.hg = load <4 x i16>, ptr %i.hd, align 2, !tbaa !13
  %i.hh = zext <4 x i16> %i.hg to <4 x i32>
  %i.hi = mul nsw <4 x i32> %i.hf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !13
  %i.hl = sext i16 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !13
  %i.ho = zext i16 %i.hn to i32
  %i.hp = mul nsw i32 %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !13
  %i.hs = sext i16 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !13
  %i.hv = zext i16 %i.hu to i32
  %i.hw = mul nsw i32 %i.hs, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !13
  %i.hz = sext i16 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !13
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul nsw i32 %i.hz, %i.ic
  %i.ie = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hi)
  %op.rdx637 = add i32 %i.ie, %i.hp
  %op.rdx638 = add i32 %i.hw, %i.id
  %op.rdx639 = add nuw i32 %.finite, %i.i
  %op.rdx640 = add i32 %op.rdx637, %op.rdx638
  %op.rdx641 = add i32 %op.rdx640, %op.rdx639
  %i.if = ashr i32 %op.rdx641, %i.c               ; 2 uses
  %i.ig = icmp slt i32 %i.if, 0
  %i.ih = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.if, i32 %i.o)
  %i.ii = trunc i32 %i.ih to i16
  %i.ij = select i1 %i.ig, i16 0, i16 %i.ii
  store i16 %i.ij, ptr %0, align 2, !tbaa !13
  %exitcond283.peel.not = icmp eq i32 %4, 1
  br i1 %exitcond283.peel.not, label %.loopexit, label %.split215.split.us.us.split.us.peel298

.split215.split.us.us.split.us.peel298:           ; preds = %.split215.split.us.us.split.us.peel
  %i.ik = getelementptr inbounds i8, ptr %2, i64 -4
  %i.il = load <4 x i16>, ptr %3, align 2, !tbaa !13
  %i.im = sext <4 x i16> %i.il to <4 x i32>
  %i.in = load <4 x i16>, ptr %i.ik, align 2, !tbaa !13
  %i.io = zext <4 x i16> %i.in to <4 x i32>
  %i.ip = mul nsw <4 x i32> %i.im, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !13
  %i.is = sext i16 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !13
  %i.iv = zext i16 %i.iu to i32
  %i.iw = mul nsw i32 %i.is, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !13
  %i.iz = sext i16 %i.iy to i32
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !13
  %i.jc = zext i16 %i.jb to i32
  %i.jd = mul nsw i32 %i.iz, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !13
  %i.jg = sext i16 %i.jf to i32
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !13
  %i.jj = zext i16 %i.ji to i32
  %i.jk = mul nsw i32 %i.jg, %i.jj
  %i.jl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ip)
  %op.rdx632 = add i32 %i.jl, %i.iw
  %op.rdx633 = add i32 %i.jd, %i.jk
  %op.rdx634 = add nuw i32 %.finite, %i.i
  %op.rdx635 = add i32 %op.rdx632, %op.rdx633
  %op.rdx636 = add i32 %op.rdx635, %op.rdx634
  %i.jm = ashr i32 %op.rdx636, %i.c               ; 2 uses
  %i.jn = icmp slt i32 %i.jm, 0
  %i.jo = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.jm, i32 %i.o)
  %i.jp = trunc i32 %i.jo to i16
  %i.jq = select i1 %i.jn, i16 0, i16 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !13
  %exitcond283.peel302.not = icmp eq i32 %4, 2
  br i1 %exitcond283.peel302.not, label %.loopexit, label %.split.us.peel.next284

.split.us.peel.next284:                           ; preds = %.split215.split.us.us.split.us.peel298
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.jy = add nsw i64 %i.k, -2                    ; 3 uses
  %min.iters.check578 = icmp ult i64 %i.jy, 8
  br i1 %min.iters.check578, label %.split.us.preheader, label %vector.memcheck579

vector.memcheck579:                               ; preds = %.split.us.peel.next284
  %i.jz = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ka = shl nuw nsw i64 %i.k, 1                 ; 2 uses
  %i.kb = getelementptr i8, ptr %0, i64 %i.ka     ; 2 uses
  %i.kc = getelementptr i8, ptr %2, i64 -2
  %i.kd = getelementptr i8, ptr %2, i64 %i.ka
  %i.ke = getelementptr i8, ptr %i.kd, i64 6
  %i.kf = getelementptr i8, ptr %3, i64 14
  %bound0580 = icmp ult ptr %i.jz, %i.ke
  %bound1581 = icmp ult ptr %i.kc, %i.kb
  %found.conflict582 = and i1 %bound0580, %bound1581
  %bound0583 = icmp ult ptr %i.jz, %i.kf
  %bound1584 = icmp ult ptr %3, %i.kb
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %found.conflict582, %found.conflict585
  br i1 %conflict.rdx586, label %.split.us.preheader, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck579
  %n.vec588 = and i64 %i.jy, -8                   ; 3 uses
  %i.kg = or disjoint i64 %n.vec588, 2
  %i.kh = load i16, ptr %3, align 2, !tbaa !13, !alias.scope !181
  %broadcast.splatinsert589 = insertelement <8 x i16> poison, i16 %i.kh, i64 0
  %broadcast.splat590 = shufflevector <8 x i16> %broadcast.splatinsert589, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ki = sext <8 x i16> %broadcast.splat590 to <8 x i32>
  %i.kj = load i16, ptr %i.js, align 2, !tbaa !13, !alias.scope !181
  %broadcast.splatinsert591 = insertelement <8 x i16> poison, i16 %i.kj, i64 0
  %broadcast.splat592 = shufflevector <8 x i16> %broadcast.splatinsert591, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kk = sext <8 x i16> %broadcast.splat592 to <8 x i32>
  %i.kl = load i16, ptr %i.jt, align 2, !tbaa !13, !alias.scope !181
  %broadcast.splatinsert593 = insertelement <8 x i16> poison, i16 %i.kl, i64 0
  %broadcast.splat594 = shufflevector <8 x i16> %broadcast.splatinsert593, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.km = sext <8 x i16> %broadcast.splat594 to <8 x i32>
  %i.kn = load i16, ptr %i.ju, align 2, !tbaa !13, !alias.scope !181
  %broadcast.splatinsert595 = insertelement <8 x i16> poison, i16 %i.kn, i64 0
  %broadcast.splat596 = shufflevector <8 x i16> %broadcast.splatinsert595, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ko = sext <8 x i16> %broadcast.splat596 to <8 x i32>
  %i.kp = load i16, ptr %i.jv, align 2, !tbaa !13, !alias.scope !181
  %broadcast.splatinsert597 = insertelement <8 x i16> poison, i16 %i.kp, i64 0
  %broadcast.splat598 = shufflevector <8 x i16> %broadcast.splatinsert597, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kq = sext <8 x i16> %broadcast.splat598 to <8 x i32>
  %i.kr = load i16, ptr %i.jw, align 2, !tbaa !13, !alias.scope !181
  %broadcast.splatinsert599 = insertelement <8 x i16> poison, i16 %i.kr, i64 0
  %broadcast.splat600 = shufflevector <8 x i16> %broadcast.splatinsert599, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ks = sext <8 x i16> %broadcast.splat600 to <8 x i32>
  %i.kt = load i16, ptr %i.jx, align 2, !tbaa !13, !alias.scope !181
  %broadcast.splatinsert601 = insertelement <8 x i16> poison, i16 %i.kt, i64 0
  %broadcast.splat602 = shufflevector <8 x i16> %broadcast.splatinsert601, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ku = sext <8 x i16> %broadcast.splat602 to <8 x i32>
  %broadcast.splatinsert603 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat604 = shufflevector <8 x i32> %broadcast.splatinsert603, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert605 = insertelement <8 x i32> poison, i32 %.finite, i64 0
  %broadcast.splat606 = shufflevector <8 x i32> %broadcast.splatinsert605, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert607 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat608 = shufflevector <8 x i32> %broadcast.splatinsert607, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat610 = shufflevector <8 x i32> %broadcast.splatinsert609, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body611

vector.body611:                                   ; preds = %vector.body611, %vector.ph587
  %index612 = phi i64 [ 0, %vector.ph587 ], [ %index.next620, %vector.body611 ] ; 2 uses
  %i.kv = or disjoint i64 %index612, 2            ; 2 uses
  %i.kw = getelementptr [2 x i8], ptr %2, i64 %i.kv ; 7 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 -6
  %wide.load613 = load <8 x i16>, ptr %i.kx, align 2, !tbaa !13, !alias.scope !182
  %i.ky = zext <8 x i16> %wide.load613 to <8 x i32>
  %i.kz = mul nsw <8 x i32> %i.ki, %i.ky
  %i.la = add nsw <8 x i32> %i.kz, %broadcast.splat604
  %i.lb = getelementptr i8, ptr %i.kw, i64 -4
  %wide.load614 = load <8 x i16>, ptr %i.lb, align 2, !tbaa !13, !alias.scope !182
  %i.lc = zext <8 x i16> %wide.load614 to <8 x i32>
  %i.ld = mul nsw <8 x i32> %i.kk, %i.lc
  %i.le = add nsw <8 x i32> %i.ld, %i.la
  %i.lf = getelementptr i8, ptr %i.kw, i64 -2
  %wide.load615 = load <8 x i16>, ptr %i.lf, align 2, !tbaa !13, !alias.scope !182
  %i.lg = zext <8 x i16> %wide.load615 to <8 x i32>
  %i.lh = mul nsw <8 x i32> %i.km, %i.lg
  %i.li = add nsw <8 x i32> %i.lh, %i.le
  %wide.load616 = load <8 x i16>, ptr %i.kw, align 2, !tbaa !13, !alias.scope !182
  %i.lj = zext <8 x i16> %wide.load616 to <8 x i32>
  %i.lk = mul nsw <8 x i32> %i.ko, %i.lj
  %i.ll = add nsw <8 x i32> %i.lk, %i.li
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %wide.load617 = load <8 x i16>, ptr %i.lm, align 2, !tbaa !13, !alias.scope !182
  %i.ln = zext <8 x i16> %wide.load617 to <8 x i32>
  %i.lo = mul nsw <8 x i32> %i.kq, %i.ln
  %i.lp = add nsw <8 x i32> %i.lo, %i.ll
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %wide.load618 = load <8 x i16>, ptr %i.lq, align 2, !tbaa !13, !alias.scope !182
  %i.lr = zext <8 x i16> %wide.load618 to <8 x i32>
  %i.ls = mul nsw <8 x i32> %i.ks, %i.lr
  %i.lt = add nsw <8 x i32> %i.ls, %i.lp
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kw, i64 6
  %wide.load619 = load <8 x i16>, ptr %i.lu, align 2, !tbaa !13, !alias.scope !182
  %i.lv = zext <8 x i16> %wide.load619 to <8 x i32>
  %i.lw = mul nsw <8 x i32> %i.ku, %i.lv
  %i.lx = add nsw <8 x i32> %i.lw, %i.lt
  %i.ly = add nsw <8 x i32> %i.lx, %broadcast.splat606
  %i.lz = ashr <8 x i32> %i.ly, %broadcast.splat608 ; 2 uses
  %i.ma = icmp slt <8 x i32> %i.lz, zeroinitializer
  %i.mb = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.lz, <8 x i32> %broadcast.splat610)
  %i.mc = trunc <8 x i32> %i.mb to <8 x i16>
  %i.md = select <8 x i1> %i.ma, <8 x i16> zeroinitializer, <8 x i16> %i.mc
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.kv
  store <8 x i16> %i.md, ptr %i.me, align 2, !tbaa !13, !alias.scope !183, !noalias !184
  %index.next620 = add nuw i64 %index612, 8       ; 2 uses
  %i.mf = icmp eq i64 %index.next620, %n.vec588
  br i1 %i.mf, label %middle.block621, label %vector.body611, !llvm.loop !173

middle.block621:                                  ; preds = %vector.body611
  %cmp.n622 = icmp eq i64 %i.jy, %n.vec588
  br i1 %cmp.n622, label %.loopexit, label %.split.us.preheader

.split.us.preheader:                              ; preds = %vector.memcheck579, %.split.us.peel.next284, %middle.block621
  %indvars.iv279.ph = phi i64 [ 2, %vector.memcheck579 ], [ 2, %.split.us.peel.next284 ], [ %i.kg, %middle.block621 ]
  %op.rdx629 = add nuw i32 %.finite, %i.i
  br label %.split.us

bb.d:                                             ; preds = %.lr.ph226.split.split.us
  %i.mg = load i16, ptr %3, align 2, !tbaa !13
  %i.mh = sext i16 %i.mg to i32
  %i.mi = getelementptr inbounds i8, ptr %2, i64 -6
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !13
  %i.mk = zext i16 %i.mj to i32
  %i.ml = mul nsw i32 %i.mh, %i.mk
  %.1170.us221.us.us233.peel = add nsw i32 %i.ml, %i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !13
  %i.mo = sext i16 %i.mn to i32
  %i.mp = getelementptr inbounds i8, ptr %2, i64 -4
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !13
  %i.mr = zext i16 %i.mq to i32
  %i.ms = mul nsw i32 %i.mo, %i.mr
  %.1170.us221.us.us233.1.peel = add nsw i32 %i.ms, %.1170.us221.us.us233.peel
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !13
  %i.mv = sext i16 %i.mu to i32
  %i.mw = getelementptr inbounds i8, ptr %2, i64 -2
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !13
  %i.my = zext i16 %i.mx to i32
  %i.mz = mul nsw i32 %i.mv, %i.my
  %.1170.us221.us.us233.2.peel = add nsw i32 %i.mz, %.1170.us221.us.us233.1.peel
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !13
  %i.nc = sext i16 %i.nb to i32
  %i.nd = load i16, ptr %2, align 2, !tbaa !13
  %i.ne = zext i16 %i.nd to i32
  %i.nf = mul nsw i32 %i.nc, %i.ne
  %.1170.us221.us.us233.3.peel = add nsw i32 %i.nf, %.1170.us221.us.us233.2.peel ; 2 uses
  %.not186.us218.us.us.not.4.peel.not = icmp eq i32 %4, 1
  br i1 %.not186.us218.us.us.not.4.peel.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.ng = load i16, ptr %i.m, align 2, !tbaa !13
  %i.nh = zext i16 %i.ng to i32
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !13
  %i.nk = sext i16 %i.nj to i32
  %i.nl = mul nsw i32 %i.nk, %i.nh
  %.1170.us221.us.us233.4.peel368 = add nsw i32 %i.nl, %.1170.us221.us.us233.3.peel
  br label %.thread372

bb.e:                                             ; preds = %bb.d
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.nn = load i16, ptr %i.nm, align 2, !tbaa !13
  %i.no = zext i16 %i.nn to i32
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !13
  %i.nr = sext i16 %i.nq to i32
  %i.ns = mul nsw i32 %i.nr, %i.no
  %.1170.us221.us.us233.4.peel = add nsw i32 %i.ns, %.1170.us221.us.us233.3.peel ; 2 uses
  %.not186.us218.us.us.not.5.peel = icmp samesign ugt i32 %4, 2
  br i1 %.not186.us218.us.us.not.5.peel, label %bb.f, label %.thread372

.thread372:                                       ; preds = %bb.e, %.thread
  %.1170.us221.us.us233.4.peel371 = phi i32 [ %.1170.us221.us.us233.4.peel368, %.thread ], [ %.1170.us221.us.us233.4.peel, %bb.e ]
  %i.nt = load i16, ptr %i.m, align 2, !tbaa !13
  %i.nu = zext i16 %i.nt to i32
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.nw = load i16, ptr %i.nv, align 2, !tbaa !13
  %i.nx = sext i16 %i.nw to i32
  %i.ny = mul nsw i32 %i.nx, %i.nu
  %.1170.us221.us.us233.5.peel375 = add nsw i32 %i.ny, %.1170.us221.us.us233.4.peel371
  br label %.split215.split.us.us.split.us234.peel

bb.f:                                             ; preds = %bb.e
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !13
  %i.ob = zext i16 %i.oa to i32
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !13
  %i.oe = sext i16 %i.od to i32
  %i.of = mul nsw i32 %i.oe, %i.ob
  %.1170.us221.us.us233.5.peel = add nsw i32 %i.of, %.1170.us221.us.us233.4.peel
  %.not186.us218.us.us.not.6.peel.not = icmp eq i32 %4, 3
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 6
  %spec.select624 = select i1 %.not186.us218.us.us.not.6.peel.not, ptr %i.m, ptr %i.og
  br label %.split215.split.us.us.split.us234.peel

.split215.split.us.us.split.us234.peel:           ; preds = %bb.f, %.thread372
  %.sink419.in = phi ptr [ %spec.select624, %bb.f ], [ %i.m, %.thread372 ]
  %.1170.us221.us.us233.5.peel377 = phi i32 [ %.1170.us221.us.us233.5.peel, %bb.f ], [ %.1170.us221.us.us233.5.peel375, %.thread372 ]
  %.sink419 = load i16, ptr %.sink419.in, align 2, !tbaa !13
  %i.oh = zext i16 %.sink419 to i32
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !13
  %i.ok = sext i16 %i.oj to i32
  %i.ol = mul nsw i32 %i.ok, %i.oh
  %.1170.us221.us.us233.6.peel = add nsw i32 %i.ol, %.1170.us221.us.us233.5.peel377
  %i.om = add nsw i32 %.1170.us221.us.us233.6.peel, %.finite
  %i.on = ashr i32 %i.om, %i.c                    ; 2 uses
  %i.oo = icmp slt i32 %i.on, 0
  %i.op = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.on, i32 %i.o)
  %i.oq = trunc i32 %i.op to i16
  %i.or = select i1 %i.oo, i16 0, i16 %i.oq
  store i16 %i.or, ptr %0, align 2, !tbaa !13
  %exitcond312.peel.not = icmp eq i32 %4, 1
  br i1 %exitcond312.peel.not, label %.loopexit, label %.split.us.us228.peel.next

.split.us.us228.peel.next:                        ; preds = %.split215.split.us.us.split.us234.peel
  %i.os = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 4 uses
  %i.ou = getelementptr i8, ptr %2, i64 -4
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !13
  %i.ow = zext i16 %i.ov to i32
  %i.ox = load i16, ptr %3, align 2, !tbaa !13
  %i.oy = sext i16 %i.ox to i32
  %i.oz = mul nsw i32 %i.oy, %i.ow
  %.1170.us221.us.us233 = add nsw i32 %i.oz, %i.i
  %.sink421.in.in = getelementptr i8, ptr %2, i64 -2
  %.sink421.in = load i16, ptr %.sink421.in.in, align 2, !tbaa !13
  %.sink421 = zext i16 %.sink421.in to i32
  %.sink422.in = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink422 = load i16, ptr %.sink422.in, align 2, !tbaa !13
  %i.pa = sext i16 %.sink422 to i32
  %i.pb = mul nsw i32 %i.pa, %.sink421
  %.1170.us221.us.us233.1 = add nsw i32 %i.pb, %.1170.us221.us.us233
  %i.pc = load i16, ptr %i.os, align 2, !tbaa !13
  %i.pd = sext i16 %i.pc to i32
  %i.pe = load i16, ptr %2, align 2, !tbaa !13
  %i.pf = zext i16 %i.pe to i32
  %i.pg = mul nsw i32 %i.pd, %i.pf
  %.1170.us221.us.us233.2 = add nsw i32 %i.pg, %.1170.us221.us.us233.1
  %i.ph = load i16, ptr %i.ot, align 2, !tbaa !13
  %i.pi = sext i16 %i.ph to i32
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !13
  %i.pl = zext i16 %i.pk to i32
  %i.pm = mul nsw i32 %i.pi, %i.pl
  %.1170.us221.us.us233.3 = add nsw i32 %i.pm, %.1170.us221.us.us233.2
  %.not186.us218.us.us.not.4 = icmp ugt i32 %4, 2
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sink424.in.in = select i1 %.not186.us218.us.us.not.4, ptr %i.pn, ptr %i.m
  %.sink424.in = load i16, ptr %.sink424.in.in, align 2, !tbaa !13
  %.sink424 = zext i16 %.sink424.in to i32
  %.sink425.in = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink425 = load i16, ptr %.sink425.in, align 2, !tbaa !13
  %i.po = sext i16 %.sink425 to i32
  %i.pp = mul nsw i32 %i.po, %.sink424
  %.1170.us221.us.us233.4 = add nsw i32 %i.pp, %.1170.us221.us.us233.3
  %.not186.us218.us.us.not.5 = icmp ugt i32 %4, 3
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sink427.in.in = select i1 %.not186.us218.us.us.not.5, ptr %i.pq, ptr %i.m
  %.sink427.in = load i16, ptr %.sink427.in.in, align 2, !tbaa !13
  %.sink427 = zext i16 %.sink427.in to i32
  %.sink428.in = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink428 = load i16, ptr %.sink428.in, align 2, !tbaa !13
  %i.pr = sext i16 %.sink428 to i32
  %i.ps = mul nsw i32 %i.pr, %.sink427
  %.1170.us221.us.us233.5 = add nsw i32 %i.ps, %.1170.us221.us.us233.4
  %.not186.us218.us.us.not.6 = icmp ugt i32 %4, 4
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink430.in.in = select i1 %.not186.us218.us.us.not.6, ptr %i.pt, ptr %i.m
  %.sink430.in = load i16, ptr %.sink430.in.in, align 2, !tbaa !13
  %.sink430 = zext i16 %.sink430.in to i32
  %.sink431.in = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink431 = load i16, ptr %.sink431.in, align 2, !tbaa !13
  %i.pu = sext i16 %.sink431 to i32
  %i.pv = mul nsw i32 %i.pu, %.sink430
  %.1170.us221.us.us233.6 = add nsw i32 %i.pv, %.1170.us221.us.us233.5
  %i.pw = add nsw i32 %.1170.us221.us.us233.6, %.finite
  %i.px = ashr i32 %i.pw, %i.c                    ; 2 uses
  %i.py = icmp slt i32 %i.px, 0
  %i.pz = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.px, i32 %i.o)
  %i.qa = trunc i32 %i.pz to i16
  %i.qb = select i1 %i.py, i16 0, i16 %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.qb, ptr %i.qc, align 2, !tbaa !13
  %exitcond312.not = icmp eq i32 %4, 2
  br i1 %exitcond312.not, label %.loopexit, label %.split.us.us228.1

.split.us.us228.1:                                ; preds = %.split.us.us228.peel.next
  %i.qd = getelementptr i8, ptr %2, i64 -2
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !13
  %i.qf = zext i16 %i.qe to i32
  %i.qg = load i16, ptr %3, align 2, !tbaa !13
  %i.qh = sext i16 %i.qg to i32
  %i.qi = mul nsw i32 %i.qh, %i.qf
  %.1170.us221.us.us233.1679 = add nsw i32 %i.qi, %i.i
  %.sink421.in.1 = load i16, ptr %2, align 2, !tbaa !13
  %.sink421.1 = zext i16 %.sink421.in.1 to i32
  %.sink422.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink422.1 = load i16, ptr %.sink422.in.1, align 2, !tbaa !13
  %i.qj = sext i16 %.sink422.1 to i32
  %i.qk = mul nsw i32 %i.qj, %.sink421.1
  %.1170.us221.us.us233.1.1 = add nsw i32 %i.qk, %.1170.us221.us.us233.1679
  %i.ql = load i16, ptr %i.os, align 2, !tbaa !13
  %i.qm = sext i16 %i.ql to i32
  %i.qn = getelementptr i8, ptr %2, i64 2
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !13
  %i.qp = zext i16 %i.qo to i32
  %i.qq = mul nsw i32 %i.qm, %i.qp
  %.1170.us221.us.us233.2.1 = add nsw i32 %i.qq, %.1170.us221.us.us233.1.1
  %i.qr = load i16, ptr %i.ot, align 2, !tbaa !13
  %i.qs = sext i16 %i.qr to i32
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !13
  %i.qv = zext i16 %i.qu to i32
  %i.qw = mul nsw i32 %i.qs, %i.qv
  %.1170.us221.us.us233.3.1 = add nsw i32 %i.qw, %.1170.us221.us.us233.2.1
  %.not186.us218.us.us.not.4.1 = icmp ugt i32 %4, 3
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sink424.in.in.1 = select i1 %.not186.us218.us.us.not.4.1, ptr %i.qx, ptr %i.m
  %.sink424.in.1 = load i16, ptr %.sink424.in.in.1, align 2, !tbaa !13
  %.sink424.1 = zext i16 %.sink424.in.1 to i32
  %.sink425.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink425.1 = load i16, ptr %.sink425.in.1, align 2, !tbaa !13
  %i.qy = sext i16 %.sink425.1 to i32
  %i.qz = mul nsw i32 %i.qy, %.sink424.1
  %.1170.us221.us.us233.4.1 = add nsw i32 %i.qz, %.1170.us221.us.us233.3.1
  %.not186.us218.us.us.not.5.1 = icmp ugt i32 %4, 4
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink427.in.in.1 = select i1 %.not186.us218.us.us.not.5.1, ptr %i.ra, ptr %i.m
  %.sink427.in.1 = load i16, ptr %.sink427.in.in.1, align 2, !tbaa !13
  %.sink427.1 = zext i16 %.sink427.in.1 to i32
  %.sink428.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink428.1 = load i16, ptr %.sink428.in.1, align 2, !tbaa !13
  %i.rb = sext i16 %.sink428.1 to i32
  %i.rc = mul nsw i32 %i.rb, %.sink427.1
  %.1170.us221.us.us233.5.1 = add nsw i32 %i.rc, %.1170.us221.us.us233.4.1
  %.not186.us218.us.us.not.6.1 = icmp ugt i32 %4, 5
  %i.rd = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sink430.in.in.1 = select i1 %.not186.us218.us.us.not.6.1, ptr %i.rd, ptr %i.m
  %.sink430.in.1 = load i16, ptr %.sink430.in.in.1, align 2, !tbaa !13
  %.sink430.1 = zext i16 %.sink430.in.1 to i32
  %.sink431.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink431.1 = load i16, ptr %.sink431.in.1, align 2, !tbaa !13
  %i.re = sext i16 %.sink431.1 to i32
  %i.rf = mul nsw i32 %i.re, %.sink430.1
  %.1170.us221.us.us233.6.1 = add nsw i32 %i.rf, %.1170.us221.us.us233.5.1
  %i.rg = add nsw i32 %.1170.us221.us.us233.6.1, %.finite
  %i.rh = ashr i32 %i.rg, %i.c                    ; 2 uses
  %i.ri = icmp slt i32 %i.rh, 0
  %i.rj = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.rh, i32 %i.o)
  %i.rk = trunc i32 %i.rj to i16
  %i.rl = select i1 %i.ri, i16 0, i16 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.rl, ptr %i.rm, align 2, !tbaa !13
  %exitcond312.not.1 = icmp eq i32 %4, 3
  br i1 %exitcond312.not.1, label %.loopexit, label %.split.us.us228.2

.split.us.us228.2:                                ; preds = %.split.us.us228.1
  %i.rn = load i16, ptr %2, align 2, !tbaa !13
  %i.ro = zext i16 %i.rn to i32
  %i.rp = load i16, ptr %3, align 2, !tbaa !13
  %i.rq = sext i16 %i.rp to i32
  %i.rr = mul nsw i32 %i.rq, %i.ro
  %.1170.us221.us.us233.2680 = add nsw i32 %i.rr, %i.i
  %.sink421.in.in.2 = getelementptr i8, ptr %2, i64 2
  %.sink421.in.2 = load i16, ptr %.sink421.in.in.2, align 2, !tbaa !13
  %.sink421.2 = zext i16 %.sink421.in.2 to i32
  %.sink422.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink422.2 = load i16, ptr %.sink422.in.2, align 2, !tbaa !13
  %i.rs = sext i16 %.sink422.2 to i32
  %i.rt = mul nsw i32 %i.rs, %.sink421.2
  %.1170.us221.us.us233.1.2 = add nsw i32 %i.rt, %.1170.us221.us.us233.2680
  %i.ru = load i16, ptr %i.os, align 2, !tbaa !13
  %i.rv = sext i16 %i.ru to i32
  %i.rw = getelementptr i8, ptr %2, i64 4
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !13
  %i.ry = zext i16 %i.rx to i32
  %i.rz = mul nsw i32 %i.rv, %i.ry
  %.1170.us221.us.us233.2.2 = add nsw i32 %i.rz, %.1170.us221.us.us233.1.2
  %i.sa = load i16, ptr %i.ot, align 2, !tbaa !13
  %i.sb = sext i16 %i.sa to i32
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.sd = load i16, ptr %i.sc, align 2, !tbaa !13
  %i.se = zext i16 %i.sd to i32
  %i.sf = mul nsw i32 %i.sb, %i.se
  %.1170.us221.us.us233.3.2 = add nsw i32 %i.sf, %.1170.us221.us.us233.2.2
  %.not186.us218.us.us.not.4.2 = icmp ugt i32 %4, 4
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink424.in.in.2 = select i1 %.not186.us218.us.us.not.4.2, ptr %i.sg, ptr %i.m
  %.sink424.in.2 = load i16, ptr %.sink424.in.in.2, align 2, !tbaa !13
  %.sink424.2 = zext i16 %.sink424.in.2 to i32
  %.sink425.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink425.2 = load i16, ptr %.sink425.in.2, align 2, !tbaa !13
  %i.sh = sext i16 %.sink425.2 to i32
  %i.si = mul nsw i32 %i.sh, %.sink424.2
  %.1170.us221.us.us233.4.2 = add nsw i32 %i.si, %.1170.us221.us.us233.3.2
  %.not186.us218.us.us.not.5.2 = icmp ugt i32 %4, 5
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sink427.in.in.2 = select i1 %.not186.us218.us.us.not.5.2, ptr %i.sj, ptr %i.m
  %.sink427.in.2 = load i16, ptr %.sink427.in.in.2, align 2, !tbaa !13
  %.sink427.2 = zext i16 %.sink427.in.2 to i32
  %.sink428.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink428.2 = load i16, ptr %.sink428.in.2, align 2, !tbaa !13
  %i.sk = sext i16 %.sink428.2 to i32
  %i.sl = mul nsw i32 %i.sk, %.sink427.2
  %.1170.us221.us.us233.5.2 = add nsw i32 %i.sl, %.1170.us221.us.us233.4.2
  %.not186.us218.us.us.not.6.2 = icmp ugt i32 %4, 6
  %i.sm = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sink430.in.in.2 = select i1 %.not186.us218.us.us.not.6.2, ptr %i.sm, ptr %i.m
  %.sink430.in.2 = load i16, ptr %.sink430.in.in.2, align 2, !tbaa !13
  %.sink430.2 = zext i16 %.sink430.in.2 to i32
  %.sink431.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink431.2 = load i16, ptr %.sink431.in.2, align 2, !tbaa !13
  %i.sn = sext i16 %.sink431.2 to i32
  %i.so = mul nsw i32 %i.sn, %.sink430.2
  %.1170.us221.us.us233.6.2 = add nsw i32 %i.so, %.1170.us221.us.us233.5.2
  %i.sp = add nsw i32 %.1170.us221.us.us233.6.2, %.finite
  %i.sq = ashr i32 %i.sp, %i.c                    ; 2 uses
  %i.sr = icmp slt i32 %i.sq, 0
  %i.ss = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.sq, i32 %i.o)
  %i.st = trunc i32 %i.ss to i16
  %i.su = select i1 %i.sr, i16 0, i16 %i.st
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.su, ptr %i.sv, align 2, !tbaa !13
  %exitcond312.not.2 = icmp eq i32 %4, 4
  br i1 %exitcond312.not.2, label %.loopexit, label %.split.us.us228.3

.split.us.us228.3:                                ; preds = %.split.us.us228.2
  %i.sw = getelementptr i8, ptr %2, i64 2
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !13
  %i.sy = zext i16 %i.sx to i32
  %i.sz = load i16, ptr %3, align 2, !tbaa !13
  %i.ta = sext i16 %i.sz to i32
  %i.tb = mul nsw i32 %i.ta, %i.sy
  %.1170.us221.us.us233.3681 = add nsw i32 %i.tb, %i.i
  %.sink421.in.in.3 = getelementptr i8, ptr %2, i64 4
  %.sink421.in.3 = load i16, ptr %.sink421.in.in.3, align 2, !tbaa !13
  %.sink421.3 = zext i16 %.sink421.in.3 to i32
  %.sink422.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink422.3 = load i16, ptr %.sink422.in.3, align 2, !tbaa !13
  %i.tc = sext i16 %.sink422.3 to i32
  %i.td = mul nsw i32 %i.tc, %.sink421.3
  %.1170.us221.us.us233.1.3 = add nsw i32 %i.td, %.1170.us221.us.us233.3681
  %i.te = load i16, ptr %i.os, align 2, !tbaa !13
  %i.tf = sext i16 %i.te to i32
  %i.tg = getelementptr i8, ptr %2, i64 6
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !13
  %i.ti = zext i16 %i.th to i32
  %i.tj = mul nsw i32 %i.tf, %i.ti
  %.1170.us221.us.us233.2.3 = add nsw i32 %i.tj, %.1170.us221.us.us233.1.3
  %i.tk = load i16, ptr %i.ot, align 2, !tbaa !13
  %i.tl = sext i16 %i.tk to i32
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !13
  %i.to = zext i16 %i.tn to i32
  %i.tp = mul nsw i32 %i.tl, %i.to
  %.1170.us221.us.us233.3.3 = add nsw i32 %i.tp, %.1170.us221.us.us233.2.3
  %.not186.us218.us.us.not.4.3 = icmp ugt i32 %4, 5
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sink424.in.in.3 = select i1 %.not186.us218.us.us.not.4.3, ptr %i.tq, ptr %i.m
  %.sink424.in.3 = load i16, ptr %.sink424.in.in.3, align 2, !tbaa !13
  %.sink424.3 = zext i16 %.sink424.in.3 to i32
  %.sink425.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink425.3 = load i16, ptr %.sink425.in.3, align 2, !tbaa !13
  %i.tr = sext i16 %.sink425.3 to i32
  %i.ts = mul nsw i32 %i.tr, %.sink424.3
  %.1170.us221.us.us233.4.3 = add nsw i32 %i.ts, %.1170.us221.us.us233.3.3
  %.not186.us218.us.us.not.5.3 = icmp ugt i32 %4, 6
  %i.tt = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sink427.in.in.3 = select i1 %.not186.us218.us.us.not.5.3, ptr %i.tt, ptr %i.m
  %.sink427.in.3 = load i16, ptr %.sink427.in.in.3, align 2, !tbaa !13
  %.sink427.3 = zext i16 %.sink427.in.3 to i32
  %.sink428.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink428.3 = load i16, ptr %.sink428.in.3, align 2, !tbaa !13
  %i.tu = sext i16 %.sink428.3 to i32
  %i.tv = mul nsw i32 %i.tu, %.sink427.3
  %.1170.us221.us.us233.5.3 = add nsw i32 %i.tv, %.1170.us221.us.us233.4.3
  %.not186.us218.us.us.not.6.3 = icmp ugt i32 %4, 7
  %i.tw = getelementptr inbounds nuw i8, ptr %2, i64 14
  %.sink430.in.in.3 = select i1 %.not186.us218.us.us.not.6.3, ptr %i.tw, ptr %i.m
  %.sink430.in.3 = load i16, ptr %.sink430.in.in.3, align 2, !tbaa !13
  %.sink430.3 = zext i16 %.sink430.in.3 to i32
  %.sink431.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink431.3 = load i16, ptr %.sink431.in.3, align 2, !tbaa !13
  %i.tx = sext i16 %.sink431.3 to i32
  %i.ty = mul nsw i32 %i.tx, %.sink430.3
  %.1170.us221.us.us233.6.3 = add nsw i32 %i.ty, %.1170.us221.us.us233.5.3
  %i.tz = add nsw i32 %.1170.us221.us.us233.6.3, %.finite
  %i.ua = ashr i32 %i.tz, %i.c                    ; 2 uses
  %i.ub = icmp slt i32 %i.ua, 0
  %i.uc = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.ua, i32 %i.o)
  %i.ud = trunc i32 %i.uc to i16
  %i.ue = select i1 %i.ub, i16 0, i16 %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.ue, ptr %i.uf, align 2, !tbaa !13
  br label %.loopexit

.split.us:                                        ; preds = %.split.us.preheader, %.split.us
  %indvars.iv279 = phi i64 [ %i.ui, %.split.us ], [ %indvars.iv279.ph, %.split.us.preheader ] ; 6 uses
  %i.ug = getelementptr [2 x i8], ptr %2, i64 %indvars.iv279
  %i.uh = getelementptr i8, ptr %i.ug, i64 -6
  %i.ui = add nuw nsw i64 %indvars.iv279, 1       ; 2 uses
  %i.uj = load <4 x i16>, ptr %3, align 2, !tbaa !13
  %i.uk = sext <4 x i16> %i.uj to <4 x i32>
  %i.ul = load <4 x i16>, ptr %i.uh, align 2, !tbaa !13
  %i.um = zext <4 x i16> %i.ul to <4 x i32>
  %i.un = mul nsw <4 x i32> %i.uk, %i.um
  %i.uo = load i16, ptr %i.jv, align 2, !tbaa !13
  %i.up = sext i16 %i.uo to i32
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv279
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 2
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !13
  %i.ut = zext i16 %i.us to i32
  %i.uu = mul nsw i32 %i.up, %i.ut
  %i.uv = load i16, ptr %i.jw, align 2, !tbaa !13
  %i.uw = sext i16 %i.uv to i32
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv279
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !13
  %i.va = zext i16 %i.uz to i32
  %i.vb = mul nsw i32 %i.uw, %i.va
  %i.vc = load i16, ptr %i.jx, align 2, !tbaa !13
  %i.vd = sext i16 %i.vc to i32
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv279
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 6
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !13
  %i.vh = zext i16 %i.vg to i32
  %i.vi = mul nsw i32 %i.vd, %i.vh
  %i.vj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.un)
  %op.rdx627 = add i32 %i.vj, %i.uu
  %op.rdx628 = add i32 %i.vb, %i.vi
  %op.rdx630 = add i32 %op.rdx627, %op.rdx628
  %op.rdx631 = add i32 %op.rdx630, %op.rdx629
  %i.vk = ashr i32 %op.rdx631, %i.c               ; 2 uses
  %i.vl = icmp slt i32 %i.vk, 0
  %i.vm = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.vk, i32 %i.o)
  %i.vn = trunc i32 %i.vm to i16
  %i.vo = select i1 %i.vl, i16 0, i16 %i.vn
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv279
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !13
  %exitcond283.not = icmp eq i64 %i.ui, %i.k
  br i1 %exitcond283.not, label %.loopexit, label %.split.us, !llvm.loop !174

.split.1:                                         ; preds = %.split.peel.next
  %i.vq = load i16, ptr %3, align 2, !tbaa !13
  %i.vr = sext i16 %i.vq to i32
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !13
  %i.vu = zext i16 %i.vt to i32
  %i.vv = mul nsw i32 %i.vr, %i.vu
  %.1170.1676 = add nsw i32 %i.vv, %i.i
  %.sink433.in.1 = load i16, ptr %2, align 2, !tbaa !13
  %.sink433.1 = zext i16 %.sink433.in.1 to i32
  %.sink434.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink434.1 = load i16, ptr %.sink434.in.1, align 2, !tbaa !13
  %i.vw = sext i16 %.sink434.1 to i32
  %i.vx = mul nsw i32 %i.vw, %.sink433.1
  %.1170.1.1 = add nsw i32 %i.vx, %.1170.1676
  %i.vy = load i16, ptr %i.fr, align 2, !tbaa !13
  %i.vz = sext i16 %i.vy to i32
  %i.wa = getelementptr i8, ptr %2, i64 2
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !13
  %i.wc = zext i16 %i.wb to i32
  %i.wd = mul nsw i32 %i.vz, %i.wc
  %.1170.2.1 = add nsw i32 %i.wd, %.1170.1.1
  %i.we = load i16, ptr %i.fs, align 2, !tbaa !13
  %i.wf = sext i16 %i.we to i32
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !13
  %i.wi = zext i16 %i.wh to i32
  %i.wj = mul nsw i32 %i.wf, %i.wi
  %.1170.3.1 = add nsw i32 %i.wj, %.1170.2.1
  %.not186.4.1 = icmp ult i32 %4, 4
  %or.cond.4.1 = and i1 %.not187, %.not186.4.1
  %i.wk = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.sink436.in.in.1 = select i1 %or.cond.4.1, ptr %i.m, ptr %i.wk
  %.sink436.in.1 = load i16, ptr %.sink436.in.in.1, align 2, !tbaa !13
  %.sink436.1 = zext i16 %.sink436.in.1 to i32
  %.sink437.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink437.1 = load i16, ptr %.sink437.in.1, align 2, !tbaa !13
  %i.wl = sext i16 %.sink437.1 to i32
  %i.wm = mul nsw i32 %i.wl, %.sink436.1
  %.1170.4.1 = add nsw i32 %i.wm, %.1170.3.1
  %.not186.5.1 = icmp ult i32 %4, 5
  %or.cond.5.1 = and i1 %.not187, %.not186.5.1
  %i.wn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink439.in.in.1 = select i1 %or.cond.5.1, ptr %i.m, ptr %i.wn
  %.sink439.in.1 = load i16, ptr %.sink439.in.in.1, align 2, !tbaa !13
  %.sink439.1 = zext i16 %.sink439.in.1 to i32
  %.sink440.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink440.1 = load i16, ptr %.sink440.in.1, align 2, !tbaa !13
  %i.wo = sext i16 %.sink440.1 to i32
  %i.wp = mul nsw i32 %i.wo, %.sink439.1
  %.1170.5.1 = add nsw i32 %i.wp, %.1170.4.1
  %.not186.6.1 = icmp ult i32 %4, 6
  %or.cond.6.1 = and i1 %.not187, %.not186.6.1
  %i.wq = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sink442.in.in.1 = select i1 %or.cond.6.1, ptr %i.m, ptr %i.wq
  %.sink442.in.1 = load i16, ptr %.sink442.in.in.1, align 2, !tbaa !13
  %.sink442.1 = zext i16 %.sink442.in.1 to i32
  %.sink443.in.1 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink443.1 = load i16, ptr %.sink443.in.1, align 2, !tbaa !13
  %i.wr = sext i16 %.sink443.1 to i32
  %i.ws = mul nsw i32 %i.wr, %.sink442.1
  %.1170.6.1 = add nsw i32 %i.ws, %.1170.5.1
  %i.wt = add nsw i32 %.1170.6.1, %.finite
  %i.wu = ashr i32 %i.wt, %i.c                    ; 2 uses
  %i.wv = icmp slt i32 %i.wu, 0
  %i.ww = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.wu, i32 %i.o)
  %i.wx = trunc i32 %i.ww to i16
  %i.wy = select i1 %i.wv, i16 0, i16 %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.wy, ptr %i.wz, align 2, !tbaa !13
  %exitcond273.not.1 = icmp eq i32 %4, 3
  br i1 %exitcond273.not.1, label %.loopexit, label %.thread384.2

.thread384.2:                                     ; preds = %.split.1
  %i.xa = load i16, ptr %3, align 2, !tbaa !13
  %i.xb = sext i16 %i.xa to i32
  %i.xc = load i16, ptr %2, align 2, !tbaa !13
  %i.xd = zext i16 %i.xc to i32
  %i.xe = mul nsw i32 %i.xb, %i.xd
  %.1170386.2 = add nsw i32 %i.xe, %i.i
  %i.xf = getelementptr i8, ptr %2, i64 2
  %.sink433.in.2 = load i16, ptr %i.xf, align 2, !tbaa !13
  %.sink433.2 = zext i16 %.sink433.in.2 to i32
  %.sink434.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink434.2 = load i16, ptr %.sink434.in.2, align 2, !tbaa !13
  %i.xg = sext i16 %.sink434.2 to i32
  %i.xh = mul nsw i32 %i.xg, %.sink433.2
  %.1170.1.2 = add nsw i32 %i.xh, %.1170386.2
  %i.xi = load i16, ptr %i.fr, align 2, !tbaa !13
  %i.xj = sext i16 %i.xi to i32
  %i.xk = getelementptr i8, ptr %2, i64 4
  %i.xl = load i16, ptr %i.xk, align 2, !tbaa !13
  %i.xm = zext i16 %i.xl to i32
  %i.xn = mul nsw i32 %i.xj, %i.xm
  %.1170.2.2 = add nsw i32 %i.xn, %.1170.1.2
  %i.xo = load i16, ptr %i.fs, align 2, !tbaa !13
  %i.xp = sext i16 %i.xo to i32
  %i.xq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !13
  %i.xs = zext i16 %i.xr to i32
  %i.xt = mul nsw i32 %i.xp, %i.xs
  %.1170.3.2 = add nsw i32 %i.xt, %.1170.2.2
  %.not186.4.2 = icmp ult i32 %4, 5
  %or.cond.4.2 = and i1 %.not187, %.not186.4.2
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sink436.in.in.2 = select i1 %or.cond.4.2, ptr %i.m, ptr %i.xu
  %.sink436.in.2 = load i16, ptr %.sink436.in.in.2, align 2, !tbaa !13
  %.sink436.2 = zext i16 %.sink436.in.2 to i32
  %.sink437.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink437.2 = load i16, ptr %.sink437.in.2, align 2, !tbaa !13
  %i.xv = sext i16 %.sink437.2 to i32
  %i.xw = mul nsw i32 %i.xv, %.sink436.2
  %.1170.4.2 = add nsw i32 %i.xw, %.1170.3.2
  %.not186.5.2 = icmp ult i32 %4, 6
  %or.cond.5.2 = and i1 %.not187, %.not186.5.2
  %i.xx = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sink439.in.in.2 = select i1 %or.cond.5.2, ptr %i.m, ptr %i.xx
  %.sink439.in.2 = load i16, ptr %.sink439.in.in.2, align 2, !tbaa !13
  %.sink439.2 = zext i16 %.sink439.in.2 to i32
  %.sink440.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink440.2 = load i16, ptr %.sink440.in.2, align 2, !tbaa !13
  %i.xy = sext i16 %.sink440.2 to i32
  %i.xz = mul nsw i32 %i.xy, %.sink439.2
  %.1170.5.2 = add nsw i32 %i.xz, %.1170.4.2
  %.not186.6.2 = icmp ult i32 %4, 7
  %or.cond.6.2 = and i1 %.not187, %.not186.6.2
  %i.ya = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sink442.in.in.2 = select i1 %or.cond.6.2, ptr %i.m, ptr %i.ya
  %.sink442.in.2 = load i16, ptr %.sink442.in.in.2, align 2, !tbaa !13
  %.sink442.2 = zext i16 %.sink442.in.2 to i32
  %.sink443.in.2 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink443.2 = load i16, ptr %.sink443.in.2, align 2, !tbaa !13
  %i.yb = sext i16 %.sink443.2 to i32
  %i.yc = mul nsw i32 %i.yb, %.sink442.2
  %.1170.6.2 = add nsw i32 %i.yc, %.1170.5.2
  %i.yd = add nsw i32 %.1170.6.2, %.finite
  %i.ye = ashr i32 %i.yd, %i.c                    ; 2 uses
  %i.yf = icmp slt i32 %i.ye, 0
  %i.yg = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.ye, i32 %i.o)
  %i.yh = trunc i32 %i.yg to i16
  %i.yi = select i1 %i.yf, i16 0, i16 %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.yi, ptr %i.yj, align 2, !tbaa !13
  %exitcond273.not.2 = icmp eq i32 %4, 4
  br i1 %exitcond273.not.2, label %.loopexit, label %.thread384.3

.thread384.3:                                     ; preds = %.thread384.2
  %i.yk = load i16, ptr %3, align 2, !tbaa !13
  %i.yl = sext i16 %i.yk to i32
  %i.ym = getelementptr i8, ptr %2, i64 2
  %i.yn = load i16, ptr %i.ym, align 2, !tbaa !13
  %i.yo = zext i16 %i.yn to i32
  %i.yp = mul nsw i32 %i.yl, %i.yo
  %.1170386.3 = add nsw i32 %i.yp, %i.i
  %i.yq = getelementptr i8, ptr %2, i64 4
  %.sink433.in.3 = load i16, ptr %i.yq, align 2, !tbaa !13
  %.sink433.3 = zext i16 %.sink433.in.3 to i32
  %.sink434.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink434.3 = load i16, ptr %.sink434.in.3, align 2, !tbaa !13
  %i.yr = sext i16 %.sink434.3 to i32
  %i.ys = mul nsw i32 %i.yr, %.sink433.3
  %.1170.1.3 = add nsw i32 %i.ys, %.1170386.3
  %i.yt = load i16, ptr %i.fr, align 2, !tbaa !13
  %i.yu = sext i16 %i.yt to i32
  %i.yv = getelementptr i8, ptr %2, i64 6
  %i.yw = load i16, ptr %i.yv, align 2, !tbaa !13
  %i.yx = zext i16 %i.yw to i32
  %i.yy = mul nsw i32 %i.yu, %i.yx
  %.1170.2.3 = add nsw i32 %i.yy, %.1170.1.3
  %i.yz = load i16, ptr %i.fs, align 2, !tbaa !13
  %i.za = sext i16 %i.yz to i32
  %i.zb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !13
  %i.zd = zext i16 %i.zc to i32
  %i.ze = mul nsw i32 %i.za, %i.zd
  %.1170.3.3 = add nsw i32 %i.ze, %.1170.2.3
  %.not186.4.3 = icmp ult i32 %4, 6
  %or.cond.4.3 = and i1 %.not187, %.not186.4.3
  %i.zf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.sink436.in.in.3 = select i1 %or.cond.4.3, ptr %i.m, ptr %i.zf
  %.sink436.in.3 = load i16, ptr %.sink436.in.in.3, align 2, !tbaa !13
  %.sink436.3 = zext i16 %.sink436.in.3 to i32
  %.sink437.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink437.3 = load i16, ptr %.sink437.in.3, align 2, !tbaa !13
  %i.zg = sext i16 %.sink437.3 to i32
  %i.zh = mul nsw i32 %i.zg, %.sink436.3
  %.1170.4.3 = add nsw i32 %i.zh, %.1170.3.3
  %.not186.5.3 = icmp ult i32 %4, 7
  %or.cond.5.3 = and i1 %.not187, %.not186.5.3
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sink439.in.in.3 = select i1 %or.cond.5.3, ptr %i.m, ptr %i.zi
  %.sink439.in.3 = load i16, ptr %.sink439.in.in.3, align 2, !tbaa !13
  %.sink439.3 = zext i16 %.sink439.in.3 to i32
  %.sink440.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink440.3 = load i16, ptr %.sink440.in.3, align 2, !tbaa !13
  %i.zj = sext i16 %.sink440.3 to i32
  %i.zk = mul nsw i32 %i.zj, %.sink439.3
  %.1170.5.3 = add nsw i32 %i.zk, %.1170.4.3
  %.not186.6.3 = icmp ult i32 %4, 8
  %or.cond.6.3 = and i1 %.not187, %.not186.6.3
  %i.zl = getelementptr inbounds nuw i8, ptr %2, i64 14
  %.sink442.in.in.3 = select i1 %or.cond.6.3, ptr %i.m, ptr %i.zl
  %.sink442.in.3 = load i16, ptr %.sink442.in.in.3, align 2, !tbaa !13
  %.sink442.3 = zext i16 %.sink442.in.3 to i32
  %.sink443.in.3 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink443.3 = load i16, ptr %.sink443.in.3, align 2, !tbaa !13
  %i.zm = sext i16 %.sink443.3 to i32
  %i.zn = mul nsw i32 %i.zm, %.sink442.3
  %.1170.6.3 = add nsw i32 %i.zn, %.1170.5.3
  %i.zo = add nsw i32 %.1170.6.3, %.finite
  %i.zp = ashr i32 %i.zo, %i.c                    ; 2 uses
  %i.zq = icmp slt i32 %i.zp, 0
  %i.zr = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.zp, i32 %i.o)
  %i.zs = trunc i32 %i.zr to i16
  %i.zt = select i1 %i.zq, i16 0, i16 %i.zs
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.zt, ptr %i.zu, align 2, !tbaa !13
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.zv = and i32 %5, 1
  %.not = icmp eq i32 %i.zv, 0
  br i1 %.not, label %.loopexit196.loopexit, label %bb.h

.loopexit196.loopexit:                            ; preds = %bb.g
  %i.zw = sub nuw nsw i32 38, %i.a
  %i.zx = shl nuw i32 1, %i.zw                    ; 3 uses
  %i.zy = add nsw i32 %i.e, -1                    ; 3 uses
  %i.zz = load i16, ptr %3, align 2, !tbaa !13
  %i.aaa = sext i16 %i.zz to i32
  %i.aab = load i16, ptr %2, align 2, !tbaa !13   ; 2 uses
  %i.aac = zext i16 %i.aab to i32
  %i.aad = mul nsw i32 %i.aaa, %i.aac
  %i.aae = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !13
  %i.aag = sext i16 %i.aaf to i32
  %i.aah = zext i16 %i.aab to i32
  %i.aai = mul nsw i32 %i.aag, %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aak = load i16, ptr %i.aaj, align 2, !tbaa !13
  %i.aal = sext i16 %i.aak to i32
  %i.aam = load i16, ptr %2, align 2, !tbaa !13
  %i.aan = zext i16 %i.aam to i32
  %i.aao = mul nsw i32 %i.aal, %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.aaq = load <4 x i16>, ptr %i.aap, align 2, !tbaa !13
  %i.aar = sext <4 x i16> %i.aaq to <4 x i32>
  %i.aas = load <4 x i16>, ptr %2, align 2, !tbaa !13
  %i.aat = zext <4 x i16> %i.aas to <4 x i32>
  %i.aau = mul nsw <4 x i32> %i.aar, %i.aat
  %i.aav = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aau)
  %op.rdx657 = add i32 %i.aav, %i.aad
  %op.rdx658 = add i32 %i.aai, %i.aao
  %op.rdx659 = add nuw i32 %.finite, %i.zx
  %op.rdx660 = add i32 %op.rdx657, %op.rdx658
  %op.rdx661 = add i32 %op.rdx660, %op.rdx659
  %i.aaw = ashr i32 %op.rdx661, %i.c              ; 2 uses
  %i.aax = icmp slt i32 %i.aaw, 0
  %i.aay = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.aaw, i32 %i.zy)
  %i.aaz = trunc i32 %i.aay to i16
  %i.aba = select i1 %i.aax, i16 0, i16 %i.aaz
  store i16 %i.aba, ptr %0, align 2, !tbaa !13
  %i.abb = load i16, ptr %3, align 2, !tbaa !13
  %i.abc = sext i16 %i.abb to i32
  %i.abd = load i16, ptr %2, align 2, !tbaa !13   ; 2 uses
  %i.abe = zext i16 %i.abd to i32
  %i.abf = mul nsw i32 %i.abc, %i.abe
  %i.abg = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.abh = load i16, ptr %i.abg, align 2, !tbaa !13
  %i.abi = sext i16 %i.abh to i32
  %i.abj = zext i16 %i.abd to i32
  %i.abk = mul nsw i32 %i.abi, %i.abj
  %i.abl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.abm = load <4 x i16>, ptr %i.abl, align 2, !tbaa !13
  %i.abn = sext <4 x i16> %i.abm to <4 x i32>
  %i.abo = load <4 x i16>, ptr %2, align 2, !tbaa !13
  %i.abp = zext <4 x i16> %i.abo to <4 x i32>
  %i.abq = mul nsw <4 x i32> %i.abn, %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !13
  %i.abt = sext i16 %i.abs to i32
  %i.abu = getelementptr i8, ptr %2, i64 8
  %i.abv = load i16, ptr %i.abu, align 2, !tbaa !13
  %i.abw = zext i16 %i.abv to i32
  %i.abx = mul nsw i32 %i.abt, %i.abw
  %i.aby = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.abq)
  %op.rdx652 = add i32 %i.aby, %i.abf
  %op.rdx653 = add i32 %i.abk, %i.abx
  %op.rdx654 = add nuw i32 %.finite, %i.zx
  %op.rdx655 = add i32 %op.rdx652, %op.rdx653
  %op.rdx656 = add i32 %op.rdx655, %op.rdx654
  %i.abz = ashr i32 %op.rdx656, %i.c              ; 2 uses
  %i.aca = icmp slt i32 %i.abz, 0
  %i.acb = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.abz, i32 %i.zy)
  %i.acc = trunc i32 %i.acb to i16
  %i.acd = select i1 %i.aca, i16 0, i16 %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.acd, ptr %i.ace, align 2, !tbaa !13
  br label %.loopexit196.sink.split

bb.h:                                             ; preds = %bb.g
  %.not181 = icmp eq ptr %1, null
  br i1 %.not181, label %.loopexit196, label %.loopexit196.loopexit243

.loopexit196.loopexit243:                         ; preds = %bb.h
  %i.acf = sub nuw nsw i32 38, %i.a
  %i.acg = shl nuw i32 1, %i.acf                  ; 3 uses
  %i.ach = add nsw i32 %i.e, -1                   ; 3 uses
  %i.aci = load i16, ptr %3, align 2, !tbaa !13
  %i.acj = sext i16 %i.aci to i32
  %i.ack = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.acl = load i16, ptr %i.ack, align 2, !tbaa !13
  %i.acm = zext i16 %i.acl to i32
  %i.acn = mul nsw i32 %i.acj, %i.acm
  %i.aco = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !13
  %i.acq = sext i16 %i.acp to i32
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !13
  %i.act = zext i16 %i.acs to i32
  %i.acu = mul nsw i32 %i.acq, %i.act
  %i.acv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !13
  %i.acx = sext i16 %i.acw to i32
  %i.acy = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !13
  %i.ada = zext i16 %i.acz to i32
  %i.adb = mul nsw i32 %i.acx, %i.ada
  %i.adc = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.add = load <4 x i16>, ptr %i.adc, align 2, !tbaa !13
  %i.ade = sext <4 x i16> %i.add to <4 x i32>
  %i.adf = load <4 x i16>, ptr %2, align 2, !tbaa !13
  %i.adg = zext <4 x i16> %i.adf to <4 x i32>
  %i.adh = mul nsw <4 x i32> %i.ade, %i.adg
  %i.adi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.adh)
  %op.rdx667 = add i32 %i.adi, %i.acn
  %op.rdx668 = add i32 %i.acu, %i.adb
  %op.rdx669 = add nuw i32 %.finite, %i.acg
  %op.rdx670 = add i32 %op.rdx667, %op.rdx668
  %op.rdx671 = add i32 %op.rdx670, %op.rdx669
  %i.adj = ashr i32 %op.rdx671, %i.c              ; 2 uses
  %i.adk = icmp slt i32 %i.adj, 0
  %i.adl = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.adj, i32 %i.ach)
  %i.adm = trunc i32 %i.adl to i16
  %i.adn = select i1 %i.adk, i16 0, i16 %i.adm
  store i16 %i.adn, ptr %0, align 2, !tbaa !13
  %i.ado = load i16, ptr %3, align 2, !tbaa !13
  %i.adp = sext i16 %i.ado to i32
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.adr = load i16, ptr %i.adq, align 2, !tbaa !13
  %i.ads = zext i16 %i.adr to i32
  %i.adt = mul nsw i32 %i.adp, %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.adv = load i16, ptr %i.adu, align 2, !tbaa !13
  %i.adw = sext i16 %i.adv to i32
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !13
  %i.adz = zext i16 %i.ady to i32
  %i.aea = mul nsw i32 %i.adw, %i.adz
  %i.aeb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aec = load <4 x i16>, ptr %i.aeb, align 2, !tbaa !13
  %i.aed = sext <4 x i16> %i.aec to <4 x i32>
  %i.aee = load <4 x i16>, ptr %2, align 2, !tbaa !13
  %i.aef = zext <4 x i16> %i.aee to <4 x i32>
  %i.aeg = mul nsw <4 x i32> %i.aed, %i.aef
  %i.aeh = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !13
  %i.aej = sext i16 %i.aei to i32
  %i.aek = getelementptr i8, ptr %2, i64 8
  %i.ael = load i16, ptr %i.aek, align 2, !tbaa !13
  %i.aem = zext i16 %i.ael to i32
  %i.aen = mul nsw i32 %i.aej, %i.aem
  %i.aeo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aeg)
  %op.rdx662 = add i32 %i.aeo, %i.adt
  %op.rdx663 = add i32 %i.aea, %i.aen
  %op.rdx664 = add nuw i32 %.finite, %i.acg
  %op.rdx665 = add i32 %op.rdx662, %op.rdx663
  %op.rdx666 = add i32 %op.rdx665, %op.rdx664
  %i.aep = ashr i32 %op.rdx666, %i.c              ; 2 uses
  %i.aeq = icmp slt i32 %i.aep, 0
  %i.aer = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.aep, i32 %i.ach)
  %i.aes = trunc i32 %i.aer to i16
  %i.aet = select i1 %i.aeq, i16 0, i16 %i.aes
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.aet, ptr %i.aeu, align 2, !tbaa !13
  %i.aev = getelementptr inbounds nuw i8, ptr %1, i64 6
  br label %.loopexit196.sink.split

.loopexit196.sink.split:                          ; preds = %.loopexit196.loopexit, %.loopexit196.loopexit243
  %.sink498.in = phi ptr [ %i.aev, %.loopexit196.loopexit243 ], [ %2, %.loopexit196.loopexit ]
  %.sink495 = phi i32 [ %i.acg, %.loopexit196.loopexit243 ], [ %i.zx, %.loopexit196.loopexit ]
  %.sink450 = phi i32 [ %i.ach, %.loopexit196.loopexit243 ], [ %i.zy, %.loopexit196.loopexit ]
  %.sink496.in = load i16, ptr %3, align 2, !tbaa !13
  %.sink496 = sext i16 %.sink496.in to i32
  %.sink498 = load i16, ptr %.sink498.in, align 2, !tbaa !13
  %i.aew = zext i16 %.sink498 to i32
  %i.aex = mul nsw i32 %.sink496, %i.aew
  %i.aey = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aez = load <4 x i16>, ptr %i.aey, align 2, !tbaa !13
  %i.afa = sext <4 x i16> %i.aez to <4 x i32>
  %i.afb = load <4 x i16>, ptr %2, align 2, !tbaa !13
  %i.afc = zext <4 x i16> %i.afb to <4 x i32>
  %i.afd = mul nsw <4 x i32> %i.afa, %i.afc
  %i.afe = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.aff = load i16, ptr %i.afe, align 2, !tbaa !13
  %i.afg = sext i16 %i.aff to i32
  %i.afh = getelementptr i8, ptr %2, i64 8
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !13
  %i.afj = zext i16 %i.afi to i32
  %i.afk = mul nsw i32 %i.afg, %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.afm = load i16, ptr %i.afl, align 2, !tbaa !13
  %i.afn = sext i16 %i.afm to i32
  %i.afo = getelementptr i8, ptr %2, i64 10
  %i.afp = load i16, ptr %i.afo, align 2, !tbaa !13
  %i.afq = zext i16 %i.afp to i32
  %i.afr = mul nsw i32 %i.afn, %i.afq
  %i.afs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.afd)
  %op.rdx647 = add i32 %i.afs, %i.aex
  %op.rdx648 = add i32 %i.afk, %i.afr
  %op.rdx649 = add i32 %.finite, %.sink495
  %op.rdx650 = add i32 %op.rdx647, %op.rdx648
  %op.rdx651 = add i32 %op.rdx650, %op.rdx649
  %i.aft = ashr i32 %op.rdx651, %i.c              ; 2 uses
  %i.afu = icmp slt i32 %i.aft, 0
  %i.afv = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.aft, i32 %.sink450)
  %i.afw = trunc i32 %i.afv to i16
  %i.afx = select i1 %i.afu, i16 0, i16 %i.afw
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.afx, ptr %i.afy, align 2, !tbaa !13
  br label %.loopexit196

.loopexit196:                                     ; preds = %.loopexit196.sink.split, %bb.h
  %.0167 = phi i32 [ 0, %bb.h ], [ 3, %.loopexit196.sink.split ] ; 2 uses
  %i.afz = add nsw i32 %4, -3                     ; 2 uses
  %i.aga = and i32 %5, 2
  %.not182 = icmp eq i32 %i.aga, 0                ; 2 uses
  %spec.select = select i1 %.not182, i32 %i.afz, i32 %4 ; 2 uses
  %i.agb = icmp samesign ult i32 %.0167, %spec.select
  br i1 %i.agb, label %.lr.ph, label %.preheader193

.lr.ph:                                           ; preds = %.loopexit196
  %i.agc = sub nuw nsw i32 38, %i.a
  %i.agd = shl nuw i32 1, %i.agc                  ; 2 uses
  %i.age = add nsw i32 %i.e, -1                   ; 2 uses
  %i.agf = zext nneg i32 %.0167 to i64            ; 6 uses
  %wide.trip.count = zext i32 %spec.select to i64 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.agh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.agi = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.agj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.agm = sub nsw i64 %wide.trip.count, %i.agf   ; 3 uses
  %min.iters.check = icmp ult i64 %i.agm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.agn = shl nuw nsw i64 %i.agf, 1              ; 2 uses
  %i.ago = getelementptr i8, ptr %0, i64 %i.agn   ; 2 uses
  %i.agp = shl nuw nsw i64 %wide.trip.count, 1    ; 2 uses
  %i.agq = getelementptr i8, ptr %0, i64 %i.agp   ; 2 uses
  %i.agr = getelementptr i8, ptr %2, i64 %i.agn
  %i.ags = getelementptr i8, ptr %i.agr, i64 -6
  %i.agt = getelementptr i8, ptr %2, i64 %i.agp
  %i.agu = getelementptr i8, ptr %i.agt, i64 6
  %i.agv = getelementptr i8, ptr %3, i64 14
  %bound0 = icmp ult ptr %i.ago, %i.agu
  %bound1 = icmp ult ptr %i.ags, %i.agq
  %found.conflict = and i1 %bound0, %bound1
  %bound0536 = icmp ult ptr %i.ago, %i.agv
  %bound1537 = icmp ult ptr %3, %i.agq
  %found.conflict538 = and i1 %bound0536, %bound1537
  %conflict.rdx = or i1 %found.conflict, %found.conflict538
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.agm, -8                     ; 3 uses
  %i.agw = or disjoint i64 %n.vec, %i.agf
  %i.agx = load i16, ptr %3, align 2, !tbaa !13, !alias.scope !186
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.agx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agy = sext <8 x i16> %broadcast.splat to <8 x i32>
  %i.agz = load i16, ptr %i.agg, align 2, !tbaa !13, !alias.scope !186
  %broadcast.splatinsert539 = insertelement <8 x i16> poison, i16 %i.agz, i64 0
  %broadcast.splat540 = shufflevector <8 x i16> %broadcast.splatinsert539, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aha = sext <8 x i16> %broadcast.splat540 to <8 x i32>
  %i.ahb = load i16, ptr %i.agh, align 2, !tbaa !13, !alias.scope !186
  %broadcast.splatinsert541 = insertelement <8 x i16> poison, i16 %i.ahb, i64 0
  %broadcast.splat542 = shufflevector <8 x i16> %broadcast.splatinsert541, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ahc = sext <8 x i16> %broadcast.splat542 to <8 x i32>
  %i.ahd = load i16, ptr %i.agi, align 2, !tbaa !13, !alias.scope !186
  %broadcast.splatinsert543 = insertelement <8 x i16> poison, i16 %i.ahd, i64 0
  %broadcast.splat544 = shufflevector <8 x i16> %broadcast.splatinsert543, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ahe = sext <8 x i16> %broadcast.splat544 to <8 x i32>
  %i.ahf = load i16, ptr %i.agj, align 2, !tbaa !13, !alias.scope !186
  %broadcast.splatinsert545 = insertelement <8 x i16> poison, i16 %i.ahf, i64 0
  %broadcast.splat546 = shufflevector <8 x i16> %broadcast.splatinsert545, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ahg = sext <8 x i16> %broadcast.splat546 to <8 x i32>
  %i.ahh = load i16, ptr %i.agk, align 2, !tbaa !13, !alias.scope !186
  %broadcast.splatinsert547 = insertelement <8 x i16> poison, i16 %i.ahh, i64 0
  %broadcast.splat548 = shufflevector <8 x i16> %broadcast.splatinsert547, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ahi = sext <8 x i16> %broadcast.splat548 to <8 x i32>
  %i.ahj = load i16, ptr %i.agl, align 2, !tbaa !13, !alias.scope !186
  %broadcast.splatinsert549 = insertelement <8 x i16> poison, i16 %i.ahj, i64 0
  %broadcast.splat550 = shufflevector <8 x i16> %broadcast.splatinsert549, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ahk = sext <8 x i16> %broadcast.splat550 to <8 x i32>
  %broadcast.splatinsert551 = insertelement <8 x i32> poison, i32 %i.agd, i64 0
  %broadcast.splat552 = shufflevector <8 x i32> %broadcast.splatinsert551, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert553 = insertelement <8 x i32> poison, i32 %i.age, i64 0
  %broadcast.splat554 = shufflevector <8 x i32> %broadcast.splatinsert553, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <8 x i32> poison, i32 %.finite, i64 0
  %broadcast.splat556 = shufflevector <8 x i32> %broadcast.splatinsert555, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert557 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat558 = shufflevector <8 x i32> %broadcast.splatinsert557, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ahl = or disjoint i64 %index, %i.agf         ; 3 uses
  %i.ahm = getelementptr [2 x i8], ptr %2, i64 %i.ahl ; 6 uses
  %i.ahn = getelementptr i8, ptr %i.ahm, i64 -6
  %wide.load = load <8 x i16>, ptr %i.ahn, align 2, !tbaa !13, !alias.scope !187
  %i.aho = zext <8 x i16> %wide.load to <8 x i32>
  %i.ahp = mul nsw <8 x i32> %i.agy, %i.aho
  %i.ahq = add nsw <8 x i32> %i.ahp, %broadcast.splat552
  %i.ahr = getelementptr [2 x i8], ptr %2, i64 %i.ahl
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 -4
  %wide.load559 = load <8 x i16>, ptr %i.ahs, align 2, !tbaa !13, !alias.scope !187
  %i.aht = zext <8 x i16> %wide.load559 to <8 x i32>
  %i.ahu = mul nsw <8 x i32> %i.aha, %i.aht
  %i.ahv = add nsw <8 x i32> %i.ahu, %i.ahq
  %i.ahw = getelementptr i8, ptr %i.ahm, i64 -2
  %wide.load560 = load <8 x i16>, ptr %i.ahw, align 2, !tbaa !13, !alias.scope !187
  %i.ahx = zext <8 x i16> %wide.load560 to <8 x i32>
  %i.ahy = mul nsw <8 x i32> %i.ahc, %i.ahx
  %i.ahz = add nsw <8 x i32> %i.ahy, %i.ahv
  %wide.load561 = load <8 x i16>, ptr %i.ahm, align 2, !tbaa !13, !alias.scope !187
  %i.aia = zext <8 x i16> %wide.load561 to <8 x i32>
  %i.aib = mul nsw <8 x i32> %i.ahe, %i.aia
  %i.aic = add nsw <8 x i32> %i.aib, %i.ahz
  %i.aid = getelementptr i8, ptr %i.ahm, i64 2
  %wide.load562 = load <8 x i16>, ptr %i.aid, align 2, !tbaa !13, !alias.scope !187
  %i.aie = zext <8 x i16> %wide.load562 to <8 x i32>
  %i.aif = mul nsw <8 x i32> %i.ahg, %i.aie
  %i.aig = add nsw <8 x i32> %i.aif, %i.aic
  %i.aih = getelementptr i8, ptr %i.ahm, i64 4
  %wide.load563 = load <8 x i16>, ptr %i.aih, align 2, !tbaa !13, !alias.scope !187
  %i.aii = zext <8 x i16> %wide.load563 to <8 x i32>
  %i.aij = mul nsw <8 x i32> %i.ahi, %i.aii
  %i.aik = add nsw <8 x i32> %i.aij, %i.aig
  %i.ail = getelementptr i8, ptr %i.ahm, i64 6
  %wide.load564 = load <8 x i16>, ptr %i.ail, align 2, !tbaa !13, !alias.scope !187
  %i.aim = zext <8 x i16> %wide.load564 to <8 x i32>
  %i.ain = mul nsw <8 x i32> %i.ahk, %i.aim
  %i.aio = add nsw <8 x i32> %i.ain, %i.aik
  %i.aip = add nsw <8 x i32> %i.aio, %broadcast.splat556
  %i.aiq = ashr <8 x i32> %i.aip, %broadcast.splat558 ; 2 uses
  %i.air = icmp slt <8 x i32> %i.aiq, zeroinitializer
  %i.ais = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.aiq, <8 x i32> %broadcast.splat554)
  %i.ait = trunc <8 x i32> %i.ais to <8 x i16>
  %i.aiu = select <8 x i1> %i.air, <8 x i16> zeroinitializer, <8 x i16> %i.ait
  %i.aiv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ahl
  store <8 x i16> %i.aiu, ptr %i.aiv, align 2, !tbaa !13, !alias.scope !188, !noalias !189
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aiw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aiw, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.agm, %n.vec
  br i1 %cmp.n, label %.preheader193, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.agf, %vector.memcheck ], [ %i.agf, %.lr.ph ], [ %i.agw, %middle.block ]
  %op.rdx644 = add nuw i32 %.finite, %i.agd
  br label %scalar.ph

.preheader193:                                    ; preds = %scalar.ph, %middle.block, %.loopexit196
  br i1 %.not182, label %.lr.ph211, label %.loopexit

.lr.ph211:                                        ; preds = %.preheader193
  %i.aix = sub nuw nsw i32 38, %i.a
  %i.aiy = shl nuw i32 1, %i.aix
  %i.aiz = zext nneg i32 %4 to i64
  %i.aja = getelementptr [2 x i8], ptr %2, i64 %i.aiz
  %i.ajb = getelementptr i8, ptr %i.aja, i64 -2   ; 7 uses
  %i.ajc = add nsw i32 %i.e, -1
  %i.ajd = zext nneg i32 %i.afz to i64
  %i.aje = zext nneg i32 %4 to i64                ; 2 uses
  %.sink505.in = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink508.in = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sink511.in = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sink514.in = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink517.in = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink520.in = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %i.ajh, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ajf = getelementptr [2 x i8], ptr %2, i64 %indvars.iv
  %i.ajg = getelementptr i8, ptr %i.ajf, i64 -6
  %i.ajh = add nuw nsw i64 %indvars.iv, 1         ; 2 uses
  %i.aji = load <4 x i16>, ptr %i.ajg, align 2, !tbaa !13
  %i.ajj = zext <4 x i16> %i.aji to <4 x i32>
  %i.ajk = load <4 x i16>, ptr %3, align 2, !tbaa !13
  %i.ajl = sext <4 x i16> %i.ajk to <4 x i32>
  %i.ajm = mul nsw <4 x i32> %i.ajl, %i.ajj
  %i.ajn = getelementptr [2 x i8], ptr %2, i64 %indvars.iv
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 2
  %i.ajp = load i16, ptr %i.ajo, align 2, !tbaa !13
  %i.ajq = zext i16 %i.ajp to i32
  %i.ajr = load i16, ptr %i.agj, align 2, !tbaa !13
  %i.ajs = sext i16 %i.ajr to i32
  %i.ajt = mul nsw i32 %i.ajs, %i.ajq
  %i.aju = getelementptr [2 x i8], ptr %2, i64 %indvars.iv
  %i.ajv = getelementptr i8, ptr %i.aju, i64 4
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !13
  %i.ajx = zext i16 %i.ajw to i32
  %i.ajy = load i16, ptr %i.agk, align 2, !tbaa !13
  %i.ajz = sext i16 %i.ajy to i32
  %i.aka = mul nsw i32 %i.ajz, %i.ajx
  %i.akb = getelementptr [2 x i8], ptr %2, i64 %indvars.iv
  %i.akc = getelementptr i8, ptr %i.akb, i64 6
  %i.akd = load i16, ptr %i.akc, align 2, !tbaa !13
  %i.ake = zext i16 %i.akd to i32
  %i.akf = load i16, ptr %i.agl, align 2, !tbaa !13
  %i.akg = sext i16 %i.akf to i32
  %i.akh = mul nsw i32 %i.akg, %i.ake
  %i.aki = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ajm)
  %op.rdx642 = add i32 %i.aki, %i.ajt
  %op.rdx643 = add i32 %i.aka, %i.akh
  %op.rdx645 = add i32 %op.rdx642, %op.rdx643
  %op.rdx646 = add i32 %op.rdx645, %op.rdx644
  %i.akj = ashr i32 %op.rdx646, %i.c              ; 2 uses
  %i.akk = icmp slt i32 %i.akj, 0
  %i.akl = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.akj, i32 %i.age)
  %i.akm = trunc i32 %i.akl to i16
  %i.akn = select i1 %i.akk, i16 0, i16 %i.akm
  %i.ako = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.akn, ptr %i.ako, align 2, !tbaa !13
  %exitcond.not = icmp eq i64 %i.ajh, %wide.trip.count
  br i1 %exitcond.not, label %.preheader193, label %scalar.ph, !llvm.loop !180

bb.i:                                             ; preds = %.lr.ph211, %bb.i
  %indvars.iv262 = phi i64 [ %i.ajd, %.lr.ph211 ], [ %indvars.iv.next263, %bb.i ] ; 6 uses
  %i.akp = trunc nuw nsw i64 %indvars.iv262 to i32 ; 6 uses
  %i.akq = add nsw i32 %i.akp, -3                 ; 2 uses
  %.not183 = icmp slt i32 %i.akq, %4
  %i.akr = zext nneg i32 %i.akq to i64
  %i.aks = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.akr
  %.sink502.in = select i1 %.not183, ptr %i.aks, ptr %i.ajb
  %.sink502 = load i16, ptr %.sink502.in, align 2, !tbaa !13
  %i.akt = zext i16 %.sink502 to i32
  %i.aku = load i16, ptr %3, align 2, !tbaa !13
  %i.akv = sext i16 %i.aku to i32
  %i.akw = mul nsw i32 %i.akv, %i.akt
  %.1 = add nsw i32 %i.akw, %i.aiy
  %i.akx = add nsw i32 %i.akp, -2                 ; 2 uses
  %.not183.1 = icmp slt i32 %i.akx, %4
  %i.aky = zext nneg i32 %i.akx to i64
  %i.akz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aky
  %.sink504.in.in = select i1 %.not183.1, ptr %i.akz, ptr %i.ajb
  %.sink504.in = load i16, ptr %.sink504.in.in, align 2, !tbaa !13
  %.sink504 = zext i16 %.sink504.in to i32
  %.sink505 = load i16, ptr %.sink505.in, align 2, !tbaa !13
  %i.ala = sext i16 %.sink505 to i32
  %i.alb = mul nsw i32 %i.ala, %.sink504
  %.1.1 = add nsw i32 %i.alb, %.1
  %.not183.2.not = icmp slt i32 %4, %i.akp
  %i.alc = add nuw i64 %indvars.iv262, 4294967295
  %i.ald = and i64 %i.alc, 4294967295
  %i.ale = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ald
  %.sink507.in.in = select i1 %.not183.2.not, ptr %i.ajb, ptr %i.ale
  %.sink507.in = load i16, ptr %.sink507.in.in, align 2, !tbaa !13
  %.sink507 = zext i16 %.sink507.in to i32
  %.sink508 = load i16, ptr %.sink508.in, align 2, !tbaa !13
  %i.alf = sext i16 %.sink508 to i32
  %i.alg = mul nsw i32 %i.alf, %.sink507
  %.1.2 = add nsw i32 %i.alg, %.1.1
  %.not183.3 = icmp samesign ult i64 %indvars.iv262, %i.aje
  %i.alh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv262
  %.sink510.in.in = select i1 %.not183.3, ptr %i.alh, ptr %i.ajb
  %.sink510.in = load i16, ptr %.sink510.in.in, align 2, !tbaa !13
  %.sink510 = zext i16 %.sink510.in to i32
  %.sink511 = load i16, ptr %.sink511.in, align 2, !tbaa !13
  %i.ali = sext i16 %.sink511 to i32
  %i.alj = mul nsw i32 %i.ali, %.sink510
  %.1.3 = add nsw i32 %i.alj, %.1.2
  %i.alk = add nuw i32 %i.akp, 1                  ; 2 uses
  %.not183.4 = icmp slt i32 %i.alk, %4
  %i.all = sext i32 %i.alk to i64
  %i.alm = getelementptr inbounds [2 x i8], ptr %2, i64 %i.all
  %.sink513.in.in = select i1 %.not183.4, ptr %i.alm, ptr %i.ajb
  %.sink513.in = load i16, ptr %.sink513.in.in, align 2, !tbaa !13
  %.sink513 = zext i16 %.sink513.in to i32
  %.sink514 = load i16, ptr %.sink514.in, align 2, !tbaa !13
  %i.aln = sext i16 %.sink514 to i32
  %i.alo = mul nsw i32 %i.aln, %.sink513
  %.1.4 = add nsw i32 %i.alo, %.1.3
  %i.alp = add nuw i32 %i.akp, 2                  ; 2 uses
  %.not183.5 = icmp slt i32 %i.alp, %4
  %i.alq = sext i32 %i.alp to i64
  %i.alr = getelementptr inbounds [2 x i8], ptr %2, i64 %i.alq
  %.sink516.in.in = select i1 %.not183.5, ptr %i.alr, ptr %i.ajb
  %.sink516.in = load i16, ptr %.sink516.in.in, align 2, !tbaa !13
  %.sink516 = zext i16 %.sink516.in to i32
  %.sink517 = load i16, ptr %.sink517.in, align 2, !tbaa !13
  %i.als = sext i16 %.sink517 to i32
  %i.alt = mul nsw i32 %i.als, %.sink516
  %.1.5 = add nsw i32 %i.alt, %.1.4
  %i.alu = add nuw i32 %i.akp, 3                  ; 2 uses
  %.not183.6 = icmp slt i32 %i.alu, %4
  %i.alv = sext i32 %i.alu to i64
  %i.alw = getelementptr inbounds [2 x i8], ptr %2, i64 %i.alv
  %.sink519.in.in = select i1 %.not183.6, ptr %i.alw, ptr %i.ajb
  %.sink519.in = load i16, ptr %.sink519.in.in, align 2, !tbaa !13
  %.sink519 = zext i16 %.sink519.in to i32
  %.sink520 = load i16, ptr %.sink520.in, align 2, !tbaa !13
  %i.alx = sext i16 %.sink520 to i32
  %i.aly = mul nsw i32 %i.alx, %.sink519
  %.1.6 = add nsw i32 %i.aly, %.1.5
  %i.alz = add nsw i32 %.1.6, %.finite
  %i.ama = ashr i32 %i.alz, %i.c                  ; 2 uses
  %i.amb = icmp slt i32 %i.ama, 0
  %i.amc = tail call i32 @llvm.smin.i32(i32 range(i32 -268435456, 268435456) %i.ama, i32 %i.ajc)
  %i.amd = trunc i32 %i.amc to i16
  %i.ame = select i1 %i.amb, i16 0, i16 %i.amd
  %i.amf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv262
  store i16 %i.ame, ptr %i.amf, align 2, !tbaa !13
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %i.amg = icmp samesign ult i64 %indvars.iv.next263, %i.aje
  br i1 %i.amg, label %bb.i, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %.split.peel.next, %.split.1, %.thread384.2, %.thread384.3, %.split.us, %.split.us.us228.peel.next, %.split.us.us228.1, %.split.us.us228.2, %.split.us.us228.3, %.split215.us.us, %middle.block621, %.split215.split.peel, %.split215.split.us.us.split.us.peel, %.split215.split.us.us.split.us.peel298, %.split215.split.us.us.split.us234.peel, %.preheader193, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sgr_box5_row_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = and i32 %5, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not56 = icmp eq ptr %2, null
  br i1 %.not56, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.in = load i16, ptr %3, align 2, !tbaa !13     ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.in65 = load i16, ptr %i.f, align 2, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.in5873 = load i16, ptr %i.g, align 2, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 6
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %3, i64 -6
  %.in6568 = load i16, ptr %i.i, align 2, !tbaa !13
  %i.j = getelementptr inbounds i8, ptr %3, i64 -4
  %.in587377 = load i16, ptr %i.j, align 2, !tbaa !13
  %i.k = getelementptr inbounds i8, ptr %3, i64 -2
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.in80 = phi i16 [ %.in587377, %bb.e ], [ %.in5873, %bb.d ], [ %.in, %bb.c ]
  %.in81 = phi i16 [ %.in6568, %bb.e ], [ %.in65, %bb.d ], [ %.in, %bb.c ]
  %.in60.in = phi ptr [ %i.k, %bb.e ], [ %i.h, %bb.d ], [ %3, %bb.c ]
  %.not6182 = icmp slt i32 %4, -1
  br i1 %.not6182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.l = load i16, ptr %3, align 2, !tbaa !13
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %.in60 = load i16, ptr %.in60.in, align 2, !tbaa !13
  %i.n = zext i16 %.in60 to i32                   ; 3 uses
  %i.o = zext i16 %.in80 to i32                   ; 3 uses
  %i.p = zext i16 %.in81 to i32                   ; 3 uses
  %i.q = and i32 %5, 2
  %.not62 = icmp eq i32 %i.q, 0
  %i.r = sext i32 %4 to i64                       ; 2 uses
  %i.s = getelementptr [2 x i8], ptr %3, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -2
  %i.u = add i32 %4, 1                            ; 2 uses
  %wide.trip.count94 = zext i32 %i.u to i64       ; 3 uses
  br i1 %.not62, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.v = add nuw nsw i64 %wide.trip.count94, 1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 3
  %i.w = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.w, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.v, 8589934588               ; 3 uses
  %i.x = add nsw i64 %n.vec, -1
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.m, i64 3
  %vector.recur.init99 = insertelement <4 x i32> poison, i32 %i.n, i64 3
  %vector.recur.init101 = insertelement <4 x i32> poison, i32 %i.o, i64 3
  %vector.recur.init103 = insertelement <4 x i32> poison, i32 %i.p, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.aa, %vector.body ]
  %vector.recur100 = phi <4 x i32> [ %vector.recur.init99, %vector.ph ], [ %i.ab, %vector.body ]
  %vector.recur102 = phi <4 x i32> [ %vector.recur.init101, %vector.ph ], [ %i.ac, %vector.body ]
  %vector.recur104 = phi <4 x i32> [ %vector.recur.init103, %vector.ph ], [ %i.ad, %vector.body ]
  %i.y = getelementptr [2 x i8], ptr %3, i64 %index
  %i.z = getelementptr i8, ptr %i.y, i64 2
  %wide.load = load <4 x i16>, ptr %i.z, align 2, !tbaa !13
  %i.aa = zext <4 x i16> %wide.load to <4 x i32>  ; 9 uses
  %i.ab = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.aa, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 5 uses
  %i.ac = shufflevector <4 x i32> %vector.recur100, <4 x i32> %i.ab, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 5 uses
  %i.ad = shufflevector <4 x i32> %vector.recur102, <4 x i32> %i.ac, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 5 uses
  %i.ae = shufflevector <4 x i32> %vector.recur104, <4 x i32> %i.ad, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 3 uses
  %i.af = add nuw nsw <4 x i32> %i.ad, %i.ae
  %i.ag = add nuw nsw <4 x i32> %i.af, %i.ac
  %i.ah = add nuw nsw <4 x i32> %i.ag, %i.ab
  %i.ai = add nuw nsw <4 x i32> %i.ah, %i.aa
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %index
  store <4 x i32> %i.ai, ptr %i.aj, align 4, !tbaa !9
  %i.ak = mul nuw nsw <4 x i32> %i.ae, %i.ae
  %i.al = mul nuw nsw <4 x i32> %i.ad, %i.ad
  %i.am = add nuw nsw <4 x i32> %i.al, %i.ak
  %i.an = mul nuw nsw <4 x i32> %i.ac, %i.ac
  %i.ao = add nuw nsw <4 x i32> %i.am, %i.an
  %i.ap = mul nuw nsw <4 x i32> %i.ab, %i.ab
  %i.aq = add nuw nsw <4 x i32> %i.ao, %i.ap
  %i.ar = mul nuw nsw <4 x i32> %i.aa, %i.aa
  %i.as = add nuw nsw <4 x i32> %i.aq, %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %index
  store <4 x i32> %i.as, ptr %i.at, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.aa, i64 3
  %vector.recur.extract105 = extractelement <4 x i32> %i.aa, i64 2
  %vector.recur.extract106 = extractelement <4 x i32> %i.aa, i64 1
  %vector.recur.extract107 = extractelement <4 x i32> %i.aa, i64 0
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader111

.lr.ph.split.us.preheader111:                     ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ -1, %.lr.ph.split.us.preheader ], [ %i.x, %middle.block ]
  %.05086.us.ph = phi i32 [ %i.m, %.lr.ph.split.us.preheader ], [ %vector.recur.extract, %middle.block ]
  %.05185.us.ph = phi i32 [ %i.n, %.lr.ph.split.us.preheader ], [ %vector.recur.extract105, %middle.block ]
  %.05284.us.ph = phi i32 [ %i.o, %.lr.ph.split.us.preheader ], [ %vector.recur.extract106, %middle.block ]
  %.05383.us.ph = phi i32 [ %i.p, %.lr.ph.split.us.preheader ], [ %vector.recur.extract107, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader111, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ %indvars.iv.ph, %.lr.ph.split.us.preheader111 ] ; 4 uses
  %.05086.us = phi i32 [ %i.ax, %.lr.ph.split.us ], [ %.05086.us.ph, %.lr.ph.split.us.preheader111 ] ; 4 uses
  %.05185.us = phi i32 [ %.05086.us, %.lr.ph.split.us ], [ %.05185.us.ph, %.lr.ph.split.us.preheader111 ] ; 4 uses
  %.05284.us = phi i32 [ %.05185.us, %.lr.ph.split.us ], [ %.05284.us.ph, %.lr.ph.split.us.preheader111 ] ; 4 uses
  %.05383.us = phi i32 [ %.05284.us, %.lr.ph.split.us ], [ %.05383.us.ph, %.lr.ph.split.us.preheader111 ] ; 3 uses
  %i.av = getelementptr [2 x i8], ptr %3, i64 %indvars.iv
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.in63.us = load i16, ptr %i.aw, align 2, !tbaa !13
  %i.ax = zext i16 %.in63.us to i32               ; 4 uses
  %i.ay = add nuw nsw i32 %.05284.us, %.05383.us
  %i.az = add nuw nsw i32 %i.ay, %.05185.us
  %i.ba = add nuw nsw i32 %i.az, %.05086.us
  %i.bb = add nuw nsw i32 %i.ba, %i.ax
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !9
  %i.bd = mul nuw nsw i32 %.05383.us, %.05383.us
  %i.be = mul nuw nsw i32 %.05284.us, %.05284.us
  %i.bf = add nuw nsw i32 %i.be, %i.bd
  %i.bg = mul nuw nsw i32 %.05185.us, %.05185.us
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = mul nuw nsw i32 %.05086.us, %.05086.us
  %i.bj = add nuw nsw i32 %i.bh, %i.bi
  %i.bk = mul nuw nsw i32 %i.ax, %i.ax
  %i.bl = add nuw nsw i32 %i.bj, %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count94
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !191

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.lr.ph.split, %middle.block, %bb.f
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.lr.ph.split ], [ -1, %.lr.ph ] ; 4 uses
  %.05086 = phi i32 [ %i.bp, %.lr.ph.split ], [ %i.m, %.lr.ph ] ; 4 uses
  %.05185 = phi i32 [ %.05086, %.lr.ph.split ], [ %i.n, %.lr.ph ] ; 4 uses
  %.05284 = phi i32 [ %.05185, %.lr.ph.split ], [ %i.o, %.lr.ph ] ; 4 uses
  %.05383 = phi i32 [ %.05284, %.lr.ph.split ], [ %i.p, %.lr.ph ] ; 3 uses
  %i.bn = add nsw i64 %indvars.iv91, 2            ; 2 uses
  %.not88 = icmp slt i64 %i.bn, %i.r
  %i.bo = getelementptr inbounds [2 x i8], ptr %3, i64 %i.bn
  %spec.select = select i1 %.not88, ptr %i.bo, ptr %i.t
  %.in63 = load i16, ptr %spec.select, align 2, !tbaa !13
  %i.bp = zext i16 %.in63 to i32                  ; 4 uses
  %i.bq = add nuw nsw i32 %.05284, %.05383
  %i.br = add nuw nsw i32 %i.bq, %.05185
  %i.bs = add nuw nsw i32 %i.br, %.05086
  %i.bt = add nuw nsw i32 %i.bs, %i.bp
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv91
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !9
  %i.bv = mul nuw nsw i32 %.05383, %.05383
end_hunk_1
