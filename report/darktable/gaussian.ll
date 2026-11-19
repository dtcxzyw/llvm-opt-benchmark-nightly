Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gaussian?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@dt_gaussian_memory_use:bb.a
  %i.f = mul i64 %i.e, %i.a
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @dt_gaussian_singlebuffer_size(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = sext i32 %0 to i64
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.b, 2
  %i.e = mul i64 %i.d, %i.c
  %i.f = mul i64 %i.e, %i.a
  ret i64 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @dt_gaussian_init(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #15 ; 11 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %5, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %6, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !20
  %i.g = sext i32 %2 to i64                       ; 3 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !21
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !22
  %.not41 = icmp eq ptr %i.j, null
  %.not42 = icmp eq ptr %i.h, null
  %or.cond = or i1 %.not42, %.not41
  br i1 %or.cond, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.l = icmp sgt i32 %2, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.m = zext nneg i32 %2 to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr align 4 %3, i64 %i.n, i1 false), !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %4, i64 %i.n, i1 false), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.o = sext i32 %0 to i64
  %i.p = sext i32 %1 to i64
  %i.q = shl nsw i64 %i.o, 2
  %i.r = mul i64 %i.q, %i.p
  %i.s = mul i64 %i.r, %i.g
  %i.t = tail call ptr @dt_alloc_aligned(i64 noundef %i.s) #17 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 64) ]
  store ptr %i.t, ptr %i.f, align 8, !tbaa !20
  %.not43 = icmp eq ptr %i.t, null
  br i1 %.not43, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.b
  tail call void @free(ptr noundef %i.h) #17
  tail call void @free(ptr noundef %i.j) #17
  tail call void @free(ptr noundef nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a, %bb.c
  %.039 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %._crit_edge ]
  ret ptr %.039
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_gaussian_blur(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca [4 x float], align 16             ; 11 uses
  %i.d = alloca [4 x float], align 16             ; 11 uses
  %i.e = alloca [4 x float], align 16             ; 11 uses
  %i.f = alloca [4 x float], align 16             ; 12 uses
  %i.g = alloca [4 x float], align 16             ; 12 uses
  %i.h = alloca [4 x float], align 16             ; 12 uses
  %i.i = alloca [4 x float], align 16             ; 12 uses
  %i.j = alloca [4 x float], align 16             ; 11 uses
  %i.k = alloca [4 x float], align 16             ; 11 uses
  %i.l = alloca [4 x float], align 16             ; 11 uses
  %i.m = alloca [4 x float], align 16             ; 10 uses
  %i.n = alloca [4 x float], align 16             ; 10 uses
  %i.o = alloca [4 x float], align 16             ; 10 uses
  %i.p = alloca [4 x float], align 16             ; 10 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17   ; 15 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.u, i32 4) ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !19
  %i.z = fdiv reassoc nsz arcp contract afn float 1.695000e+00, %i.w ; 7 uses
  %i.aa = fneg reassoc nsz arcp contract afn float %i.z
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.aa) ; 16 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.z, -2.000000e+00
  %i.ad = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ac) ; 24 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ab, -2.000000e+00
  switch i32 %i.y, label %bb.b [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.af = fneg reassoc nsz arcp contract afn float %i.ad
  %i.ag = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ab ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ag
  %i.ai = fmul reassoc nsz arcp contract afn float %i.z, 2.000000e+00
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.ab
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, 1.000000e+00
  %i.al = fsub reassoc nsz arcp contract afn float %i.ak, %i.ad
  %i.am = fdiv reassoc nsz arcp contract afn float %i.ah, %i.al ; 4 uses
  %i.an = fadd reassoc nsz arcp contract afn float %i.z, -1.000000e+00
  %i.ao = fmul reassoc nsz arcp contract afn float %i.ab, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, %i.am
  %i.aq = fadd reassoc nsz arcp contract afn float %i.z, 1.000000e+00
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ab, %i.aq
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.am
  %i.at = fmul reassoc nsz arcp contract afn float %i.am, %i.af
  br label %_compute_gauss_params.exit

bb.c:                                             ; preds = %bb.a
  %i.au = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ab ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, %i.au ; 2 uses
  %i.aw = fneg reassoc nsz arcp contract afn float %i.av
  br label %_compute_gauss_params.exit

bb.d:                                             ; preds = %bb.a
  %i.ax = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ad
  %i.ay = fmul reassoc nsz arcp contract afn float %i.z, 2.000000e+00
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.ab
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ab, 3.000000e+00 ; 3 uses
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, -1.000000e+00
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ba, %i.ab ; 2 uses
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fmul reassoc nsz arcp contract afn float %i.ab, %i.ab
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.ab ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bd, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, -2.000000e+00
  %i.bi = fadd reassoc nsz arcp contract afn float %i.ba, 1.000000e+00
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.bc
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.bf
  %i.bl = fdiv reassoc nsz arcp contract afn float %i.bh, %i.bk ; 3 uses
  %i.bm = fneg reassoc nsz arcp contract afn float %i.bl ; 2 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.ax, %i.z
  %i.bo = fdiv reassoc nsz arcp contract afn float %i.bn, %i.az ; 2 uses
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, 1.000000e+00
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, %i.ab
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bm
  %i.bs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bo
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.ab
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bl
  %i.bv = fmul reassoc nsz arcp contract afn float %i.ad, %i.bm
  br label %_compute_gauss_params.exit

_compute_gauss_params.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0397 = phi nsz float [ %i.am, %bb.b ], [ %i.bl, %bb.d ], [ %i.av, %bb.c ] ; 11 uses
  %.0396 = phi nsz float [ %i.ap, %bb.b ], [ %i.br, %bb.d ], [ 0.000000e+00, %bb.c ] ; 11 uses
  %.0395 = phi nsz float [ %i.as, %bb.b ], [ %i.bu, %bb.d ], [ %i.aw, %bb.c ] ; 10 uses
  %.sink.i = phi float [ %i.at, %bb.b ], [ %i.bv, %bb.d ], [ 0.000000e+00, %bb.c ] ; 10 uses
  %i.bw = fadd reassoc nsz arcp contract afn float %.0396, %.0397
  %i.bx = fadd reassoc nsz arcp contract afn float %i.ae, 1.000000e+00
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.ad ; 2 uses
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bw, %i.by ; 2 uses
  %i.ca = fadd reassoc nsz arcp contract afn float %.sink.i, %.0395
  %i.cb = fdiv reassoc nsz arcp contract afn float %i.ca, %i.by ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20 ; 25 uses
  %i.ce = ptrtoaddr ptr %i.cd to i64              ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !21 ; 28 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !22 ; 28 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64              ; 2 uses
  %i.cl = icmp sgt i32 %i.q, 0                    ; 3 uses
  br i1 %i.cl, label %.lr.ph449, label %.preheader424

.lr.ph449:                                        ; preds = %_compute_gauss_params.exit
  %i.cm = icmp slt i32 %i.u, 1                    ; 4 uses
  %i.cn = sext i32 %spec.select to i64            ; 9 uses
  %i.co = icmp slt i32 %i.s, 1                    ; 2 uses
  %i.cp = zext nneg i32 %i.q to i64               ; 7 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.ab, 2.000000e+00 ; 10 uses
  %i.cq = add nsw i32 %i.s, -1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, %i.cp
  %i.ct = zext i32 %i.s to i64                    ; 3 uses
  %wide.trip.count = zext i32 %spec.select to i64 ; 6 uses
  %wide.trip.count491 = zext nneg i32 %spec.select to i64
  %i.cu = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.cg, i64 %i.cu
  %3 = mul nsw i64 %i.cn, %i.cp
  %i.cv = mul i64 %3, -4
  %scevgep576 = getelementptr i8, ptr %i.cj, i64 %i.cu
  %i.cw = shl nsw i64 %i.cn, 2
  %i.cx = add nuw nsw i64 %i.ct, 4611686018427387903
  %i.cy = mul i64 %i.cx, %i.cn
  %i.cz = mul i64 %i.cy, %i.cp
  %i.da = shl i64 %i.cz, 2                        ; 2 uses
  %4 = add i64 %i.da, %i.cu
  %i.db = sub i64 %i.ce, %i.ch
  %i.dc = shl nsw i64 %i.cn, 2
  %i.dd = mul nsw i64 %i.cn, %i.cp
  %i.de = shl i64 %i.dd, 2
  %i.df = sub i64 %i.ce, %i.ck
  %5 = getelementptr i8, ptr %i.cd, i64 %i.cu
  %broadcast.splatinsert659.a = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat660.a = shufflevector <4 x float> %broadcast.splatinsert659.a, <4 x float> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1656 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert657 = insertelement <4 x i64> poison, i64 %trip.count.minus.1656, i64 0
  %broadcast.splat658 = shufflevector <4 x i64> %broadcast.splatinsert657, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dg = icmp uge <4 x i64> %broadcast.splat658, <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %i.dh = sub i64 %i.b, %i.ce
  %diff.check = icmp ugt i64 %i.dh, -16
  %invariant.op828 = add i64 %i.df, -1
  %invariant.op = add i64 %i.db, -1
  %broadcast.splatinsert637.a = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat638.a = shufflevector <4 x float> %broadcast.splatinsert637.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert635.a = insertelement <4 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat636.a = shufflevector <4 x float> %broadcast.splatinsert635.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert633.a = insertelement <4 x float> poison, float %.0396, i64 0
  %broadcast.splat634.a = shufflevector <4 x float> %broadcast.splatinsert633.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert631.a = insertelement <4 x float> poison, float %.0397, i64 0
  %broadcast.splat632.a = shufflevector <4 x float> %broadcast.splatinsert631.a, <4 x float> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1628 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert629 = insertelement <4 x i64> poison, i64 %trip.count.minus.1628, i64 0
  %broadcast.splat630 = shufflevector <4 x i64> %broadcast.splatinsert629, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.di = icmp uge <4 x i64> %broadcast.splat630, <i64 0, i64 1, i64 2, i64 3> ; 7 uses
  %exitcond482.not = icmp eq i32 %i.u, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %exitcond482.not.1 = icmp eq i32 %i.u, 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %exitcond482.not.2 = icmp eq i32 %i.u, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 8
  %n.vec604 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %broadcast.splatinsert605 = insertelement <8 x float> poison, float %i.cb, i64 0
  %broadcast.splat606 = shufflevector <8 x float> %broadcast.splatinsert605, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec604, %wide.trip.count
  %brmerge = or i1 %i.co, %i.cm
  %stride.check = icmp slt i64 %i.cv, 0
  %broadcast.splatinsert593.a = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat594.a = shufflevector <4 x float> %broadcast.splatinsert593.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert591.a = insertelement <4 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat592.a = shufflevector <4 x float> %broadcast.splatinsert591.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert589.a = insertelement <4 x float> poison, float %.sink.i, i64 0
  %broadcast.splat590.a = shufflevector <4 x float> %broadcast.splatinsert589.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert587 = insertelement <4 x float> poison, float %.0395, i64 0
  %broadcast.splat588 = shufflevector <4 x float> %broadcast.splatinsert587, <4 x float> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.dy = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 9 uses
  %exitcond497.not = icmp eq i32 %i.u, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %exitcond497.not.1 = icmp eq i32 %i.u, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond497.not.2 = icmp eq i32 %i.u, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  br label %bb.e

.preheader424:                                    ; preds = %._crit_edge447.split, %_compute_gauss_params.exit
  %i.er = icmp sgt i32 %i.s, 0
  br i1 %i.er, label %.lr.ph475, label %._crit_edge476

.lr.ph475:                                        ; preds = %.preheader424
  %i.es = icmp sgt i32 %i.u, 0                    ; 4 uses
  %i.et = sext i32 %i.q to i64                    ; 5 uses
  %i.eu = sext i32 %spec.select to i64            ; 6 uses
  %i.ev = mul nsw i64 %i.eu, %i.et
  %factor.op.fmul454 = fmul reassoc nsz arcp contract afn float %i.ab, 2.000000e+00 ; 9 uses
  %i.ew = zext i32 %i.q to i64                    ; 2 uses
  %wide.trip.count537 = zext nneg i32 %i.s to i64
  %wide.trip.count509 = zext i32 %spec.select to i64 ; 4 uses
  %wide.trip.count524 = zext nneg i32 %spec.select to i64
  %i.ex = sub i64 %i.a, %i.ch
  %i.ey = mul nsw i64 %i.eu, %i.et
  %i.ez = shl i64 %i.ey, 2
  %i.fa = shl nsw i64 %i.eu, 2
  %i.fb = sub i64 %i.a, %i.ck
  %broadcast.splatinsert802 = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat803 = shufflevector <4 x float> %broadcast.splatinsert802, <4 x float> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1799 = add nsw i64 %wide.trip.count509, -1
  %broadcast.splatinsert800 = insertelement <4 x i64> poison, i64 %trip.count.minus.1799, i64 0
  %broadcast.splat801 = shufflevector <4 x i64> %broadcast.splatinsert800, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fc = icmp uge <4 x i64> %broadcast.splat801, <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %i.fd = sub i64 %i.ce, %i.a
  %diff.check763 = icmp ugt i64 %i.fd, -16
  %invariant.op863 = add i64 %i.fb, -1
  %invariant.op864 = add i64 %i.ex, -1
  %broadcast.splatinsert780.a = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat781.a = shufflevector <4 x float> %broadcast.splatinsert780.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert778.a = insertelement <4 x float> poison, float %factor.op.fmul454, i64 0
  %broadcast.splat779.a = shufflevector <4 x float> %broadcast.splatinsert778.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert776.a = insertelement <4 x float> poison, float %.0396, i64 0
  %broadcast.splat777.a = shufflevector <4 x float> %broadcast.splatinsert776.a, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert774 = insertelement <4 x float> poison, float %.0397, i64 0
  %broadcast.splat775 = shufflevector <4 x float> %broadcast.splatinsert774, <4 x float> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1771 = add nsw i64 %wide.trip.count509, -1
  %broadcast.splatinsert772 = insertelement <4 x i64> poison, i64 %trip.count.minus.1771, i64 0
  %broadcast.splat773 = shufflevector <4 x i64> %broadcast.splatinsert772, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.fe = icmp uge <4 x i64> %broadcast.splat773, <i64 0, i64 1, i64 2, i64 3> ; 7 uses
  %exitcond515.not = icmp eq i32 %i.u, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %exitcond515.not.1 = icmp eq i32 %i.u, 2
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %exitcond515.not.2 = icmp eq i32 %i.u, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %min.iters.check740 = icmp ult i32 %spec.select, 8
  %n.vec742 = and i64 %wide.trip.count509, 4294967288 ; 3 uses
  %broadcast.splatinsert743 = insertelement <8 x float> poison, float %i.cb, i64 0
  %broadcast.splat744 = shufflevector <8 x float> %broadcast.splatinsert743, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n753 = icmp eq i64 %n.vec742, %wide.trip.count509
  %exitcond530.not = icmp eq i32 %i.u, 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %exitcond530.not.1 = icmp eq i32 %i.u, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %exitcond530.not.2 = icmp eq i32 %i.u, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 2 uses
  br label %bb.x

bb.e:                                             ; preds = %.lr.ph449, %._crit_edge447.split
  %indvars.iv501 = phi i64 [ 0, %.lr.ph449 ], [ %indvars.iv.next502, %._crit_edge447.split ] ; 7 uses
  %i.gm = mul i64 %i.dc, %indvars.iv501           ; 2 uses
  %i.gn = mul i64 %i.cw, %indvars.iv501           ; 3 uses
  %scevgep577 = getelementptr i8, ptr %5, i64 %i.gn ; 2 uses
  %i.go = add i64 %4, %i.gn                       ; 2 uses
  %scevgep576.a = getelementptr i8, ptr %1, i64 %i.go
  %i.gp = add i64 %i.da, %i.gn                    ; 2 uses
  %scevgep577.a = getelementptr i8, ptr %1, i64 %i.gp
  %scevgep578 = getelementptr i8, ptr %i.cd, i64 %i.go
  %scevgep579 = getelementptr i8, ptr %i.cd, i64 %i.gp ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br i1 %i.cm, label %._crit_edge, label %vector.body661

vector.body661:                                   ; preds = %bb.e
  %i.gq = mul nuw nsw i64 %indvars.iv501, %i.cn
  %i.gr = getelementptr [4 x i8], ptr %1, i64 %i.gq
  %wide.masked.load664 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.gr, <4 x i1> %i.dg, <4 x float> poison), !tbaa !23 ; 3 uses
  %wide.masked.load665 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cj, <4 x i1> %i.dg, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.gs = fcmp reassoc nsz arcp contract afn oge <4 x float> %wide.masked.load664, %wide.masked.load665 ; 2 uses
  %i.gt = select <4 x i1> %i.dg, <4 x i1> %i.gs, <4 x i1> zeroinitializer
  %wide.masked.load666 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cg, <4 x i1> %i.gt, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load664, %wide.masked.load666
  %i.gv = select reassoc nsz arcp contract afn <4 x i1> %i.gu, <4 x float> %wide.masked.load664, <4 x float> %wide.masked.load666
  %predphi667 = select reassoc nsz arcp contract afn <4 x i1> %i.gs, <4 x float> %i.gv, <4 x float> %wide.masked.load665 ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %predphi667, ptr align 16 %i.c, <4 x i1> %i.dg), !tbaa !23
  %i.gw = fmul reassoc nsz arcp contract afn <4 x float> %predphi667, %broadcast.splat660.a ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.gw, ptr align 16 %i.d, <4 x i1> %i.dg), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.gw, ptr align 16 %i.e, <4 x i1> %i.dg), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body661, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br i1 %i.co, label %.preheader427.thread560, label %.lr.ph436

.lr.ph436:                                        ; preds = %._crit_edge
  br i1 %i.cm, label %._crit_edge447.split, label %.lr.ph432.preheader

.lr.ph432.preheader:                              ; preds = %.lr.ph436
  %invariant.op.reass = add i64 %i.gm, %invariant.op828
  %invariant.op826.reass = add i64 %i.gm, %invariant.op
  br label %.lr.ph432

.preheader427.thread560:                          ; preds = %._crit_edge
  br i1 %i.cm, label %._crit_edge447.split, label %.lr.ph438

.lr.ph438:                                        ; preds = %._crit_edge433, %.preheader427.thread560
  %i.gx = add nsw i64 %i.cs, %indvars.iv501
  %i.gy = mul i64 %i.gx, %i.cn
  %i.gz = getelementptr [4 x i8], ptr %1, i64 %i.gy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph602.preheader, label %vector.body607

vector.body607:                                   ; preds = %.lr.ph438, %vector.body607
  %index608 = phi i64 [ %index.next612, %vector.body607 ], [ 0, %.lr.ph438 ] ; 8 uses
  %i.ha = getelementptr [4 x i8], ptr %i.gz, i64 %index608
  %wide.load = load <8 x float>, ptr %i.ha, align 4, !tbaa !23 ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index608
  %wide.load609 = load <8 x float>, ptr %i.hb, align 4, !tbaa !23 ; 2 uses
  %i.hc = fcmp reassoc nsz arcp contract afn oge <8 x float> %wide.load, %wide.load609 ; 2 uses
  %i.hd = getelementptr [4 x i8], ptr %i.cg, i64 %index608
  %wide.masked.load610 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.hd, <8 x i1> %i.hc, <8 x float> poison), !tbaa !23 ; 2 uses
  %i.he = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load, %wide.masked.load610
  %i.hf = select reassoc nsz arcp contract afn <8 x i1> %i.he, <8 x float> %wide.load, <8 x float> %wide.masked.load610
  %predphi611 = select reassoc nsz arcp contract afn <8 x i1> %i.hc, <8 x float> %i.hf, <8 x float> %wide.load609 ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index608
  store <8 x float> %predphi611, ptr %i.hg, align 16, !tbaa !23
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index608
  store <8 x float> %predphi611, ptr %i.hh, align 16, !tbaa !23
  %i.hi = fmul reassoc nsz arcp contract afn <8 x float> %predphi611, %broadcast.splat606 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index608
  store <8 x float> %i.hi, ptr %i.hj, align 16, !tbaa !23
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index608
  store <8 x float> %i.hi, ptr %i.hk, align 16, !tbaa !23
  %index.next612 = add nuw i64 %index608, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next612, %n.vec604
  br i1 %i.hl, label %middle.block613, label %vector.body607, !llvm.loop !24

middle.block613:                                  ; preds = %vector.body607
  br i1 %cmp.n, label %.preheader426, label %scalar.ph602.preheader

scalar.ph602.preheader:                           ; preds = %.lr.ph438, %middle.block613
  %indvars.iv488.ph = phi i64 [ 0, %.lr.ph438 ], [ %n.vec604, %middle.block613 ]
  br label %scalar.ph602

.lr.ph432:                                        ; preds = %.lr.ph432.preheader, %._crit_edge433
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge433 ], [ 0, %.lr.ph432.preheader ] ; 3 uses
  %i.hm = mul nuw nsw i64 %indvars.iv483, %i.cp
  %i.hn = add nuw nsw i64 %i.hm, %indvars.iv501
  %i.ho = mul i64 %i.hn, %i.cn                    ; 7 uses
  %i.hp = mul i64 %indvars.iv483, %i.de           ; 2 uses
  %.reass = add i64 %i.hp, %invariant.op.reass
  %diff.check621 = icmp ult i64 %.reass, 15
  %conflict.rdx622 = or i1 %diff.check, %diff.check621
  %.reass827 = add i64 %i.hp, %invariant.op826.reass
  %diff.check623 = icmp ult i64 %.reass827, 15
  %conflict.rdx624 = or i1 %conflict.rdx622, %diff.check623
  br i1 %conflict.rdx624, label %scalar.ph619, label %vector.body639

vector.body639:                                   ; preds = %.lr.ph432
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ho
  %wide.masked.load642 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.hq, <4 x i1> %i.di, <4 x float> poison), !tbaa !23 ; 3 uses
  %wide.masked.load643 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cj, <4 x i1> %i.di, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.hr = fcmp reassoc nsz arcp contract afn oge <4 x float> %wide.masked.load642, %wide.masked.load643 ; 2 uses
  %i.hs = select <4 x i1> %i.di, <4 x i1> %i.hr, <4 x i1> zeroinitializer
  %wide.masked.load644 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cg, <4 x i1> %i.hs, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.ht = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load642, %wide.masked.load644
  %i.hu = select reassoc nsz arcp contract afn <4 x i1> %i.ht, <4 x float> %wide.masked.load642, <4 x float> %wide.masked.load644
  %predphi645 = select reassoc nsz arcp contract afn <4 x i1> %i.hr, <4 x float> %i.hu, <4 x float> %wide.masked.load643 ; 2 uses
  %i.hv = fmul reassoc nsz arcp contract afn <4 x float> %predphi645, %broadcast.splat632.a
  %unmaskedload = load <4 x float>, ptr %i.c, align 16, !tbaa !23
  %i.hw = fmul reassoc nsz arcp contract afn <4 x float> %unmaskedload, %broadcast.splat634.a
  %unmaskedload817 = load <4 x float>, ptr %i.e, align 16, !tbaa !23 ; 2 uses
  %unmaskedload818 = load <4 x float>, ptr %i.d, align 16, !tbaa !23
  %i.hx = fmul reassoc nsz arcp contract afn <4 x float> %unmaskedload817, %broadcast.splat636.a
  %i.hy = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat638.a, %unmaskedload818
  %i.hz = fsub reassoc nsz arcp contract afn <4 x float> %i.hx, %i.hy
  %i.ia = fadd reassoc nsz arcp contract afn <4 x float> %i.hw, %i.hv
  %i.ib = fadd reassoc nsz arcp contract afn <4 x float> %i.ia, %i.hz ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ho
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ib, ptr align 4 %i.ic, <4 x i1> %i.di), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %predphi645, ptr align 16 %i.c, <4 x i1> %i.di), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %unmaskedload817, ptr align 16 %i.d, <4 x i1> %i.di), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ib, ptr align 16 %i.e, <4 x i1> %i.di), !tbaa !23
  br label %._crit_edge433

._crit_edge433:                                   ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %vector.body639
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %i.ct
  br i1 %exitcond487.not, label %.lr.ph438, label %.lr.ph432

scalar.ph619:                                     ; preds = %.lr.ph432
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ho
  %i.ie = load float, ptr %i.id, align 4, !tbaa !23 ; 3 uses
  %i.if = load float, ptr %i.cj, align 4, !tbaa !23 ; 2 uses
  %i.ig = fcmp reassoc nsz arcp contract afn ult float %i.ie, %i.if
  br i1 %i.ig, label %bb.g, label %bb.f

bb.f:                                             ; preds = %scalar.ph619
  %i.ih = load float, ptr %i.cg, align 4, !tbaa !23 ; 2 uses
  %.inv403 = fcmp reassoc nsz arcp contract afn ole float %i.ie, %i.ih
  %.360 = select reassoc nsz arcp contract afn i1 %.inv403, float %i.ie, float %i.ih
  br label %bb.g

bb.g:                                             ; preds = %scalar.ph619, %bb.f
  %i.ii = phi reassoc nsz arcp contract afn float [ %.360, %bb.f ], [ %i.if, %scalar.ph619 ] ; 2 uses
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %.0397
  %i.ik = load float, ptr %i.c, align 16, !tbaa !23
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %.0396
  %i.im = load float, ptr %i.e, align 16, !tbaa !23 ; 2 uses
  %i.in = load float, ptr %i.d, align 16, !tbaa !23
  %.neg418.reass = fmul reassoc nsz arcp contract afn float %i.im, %factor.op.fmul
  %i.io = fmul reassoc nsz arcp contract afn float %i.ad, %i.in
  %reass.add421 = fsub reassoc nsz arcp contract afn float %.neg418.reass, %i.io
  %i.ip = fadd reassoc nsz arcp contract afn float %i.il, %i.ij
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %reass.add421 ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ho
  store float %i.iq, ptr %i.ir, align 4, !tbaa !23
  store float %i.ii, ptr %i.c, align 16, !tbaa !23
  store float %i.im, ptr %i.d, align 16, !tbaa !23
  store float %i.iq, ptr %i.e, align 16, !tbaa !23
  br i1 %exitcond482.not, label %._crit_edge433, label %scalar.ph619.1

scalar.ph619.1:                                   ; preds = %bb.g
  %i.is = add i64 %i.ho, 1                        ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !23 ; 3 uses
  %i.iv = load float, ptr %i.dj, align 4, !tbaa !23 ; 2 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ult float %i.iu, %i.iv
  br i1 %i.iw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %scalar.ph619.1
  %i.ix = load float, ptr %i.dk, align 4, !tbaa !23 ; 2 uses
  %.inv403.1 = fcmp reassoc nsz arcp contract afn ole float %i.iu, %i.ix
  %.360.1 = select reassoc nsz arcp contract afn i1 %.inv403.1, float %i.iu, float %i.ix
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %scalar.ph619.1
  %i.iy = phi reassoc nsz arcp contract afn float [ %.360.1, %bb.h ], [ %i.iv, %scalar.ph619.1 ] ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, %.0397
  %i.ja = load float, ptr %i.dl, align 4, !tbaa !23
  %i.jb = fmul reassoc nsz arcp contract afn float %i.ja, %.0396
  %i.jc = load float, ptr %i.dm, align 4, !tbaa !23 ; 2 uses
  %i.jd = load float, ptr %i.dn, align 4, !tbaa !23
  %.neg418.reass.1 = fmul reassoc nsz arcp contract afn float %i.jc, %factor.op.fmul
  %i.je = fmul reassoc nsz arcp contract afn float %i.ad, %i.jd
  %reass.add421.1 = fsub reassoc nsz arcp contract afn float %.neg418.reass.1, %i.je
  %i.jf = fadd reassoc nsz arcp contract afn float %i.jb, %i.iz
  %i.jg = fadd reassoc nsz arcp contract afn float %i.jf, %reass.add421.1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.is
  store float %i.jg, ptr %i.jh, align 4, !tbaa !23
  store float %i.iy, ptr %i.dl, align 4, !tbaa !23
  store float %i.jc, ptr %i.dn, align 4, !tbaa !23
  store float %i.jg, ptr %i.dm, align 4, !tbaa !23
  br i1 %exitcond482.not.1, label %._crit_edge433, label %scalar.ph619.2

scalar.ph619.2:                                   ; preds = %bb.i
  %i.ji = add i64 %i.ho, 2                        ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ji
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !23 ; 3 uses
  %i.jl = load float, ptr %i.do, align 4, !tbaa !23 ; 2 uses
  %i.jm = fcmp reassoc nsz arcp contract afn ult float %i.jk, %i.jl
  br i1 %i.jm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %scalar.ph619.2
  %i.jn = load float, ptr %i.dp, align 4, !tbaa !23 ; 2 uses
  %.inv403.2 = fcmp reassoc nsz arcp contract afn ole float %i.jk, %i.jn
  %.360.2 = select reassoc nsz arcp contract afn i1 %.inv403.2, float %i.jk, float %i.jn
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %scalar.ph619.2
  %i.jo = phi reassoc nsz arcp contract afn float [ %.360.2, %bb.j ], [ %i.jl, %scalar.ph619.2 ] ; 2 uses
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, %.0397
  %i.jq = load float, ptr %i.dq, align 8, !tbaa !23
  %i.jr = fmul reassoc nsz arcp contract afn float %i.jq, %.0396
  %i.js = load float, ptr %i.dr, align 8, !tbaa !23 ; 2 uses
  %i.jt = load float, ptr %i.ds, align 8, !tbaa !23
  %.neg418.reass.2 = fmul reassoc nsz arcp contract afn float %i.js, %factor.op.fmul
  %i.ju = fmul reassoc nsz arcp contract afn float %i.ad, %i.jt
  %reass.add421.2 = fsub reassoc nsz arcp contract afn float %.neg418.reass.2, %i.ju
  %i.jv = fadd reassoc nsz arcp contract afn float %i.jr, %i.jp
  %i.jw = fadd reassoc nsz arcp contract afn float %i.jv, %reass.add421.2 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ji
  store float %i.jw, ptr %i.jx, align 4, !tbaa !23
  store float %i.jo, ptr %i.dq, align 8, !tbaa !23
  store float %i.js, ptr %i.ds, align 8, !tbaa !23
  store float %i.jw, ptr %i.dr, align 8, !tbaa !23
  br i1 %exitcond482.not.2, label %._crit_edge433, label %scalar.ph619.3

scalar.ph619.3:                                   ; preds = %bb.k
  %i.jy = add i64 %i.ho, 3                        ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !23 ; 3 uses
  %i.kb = load float, ptr %i.dt, align 4, !tbaa !23 ; 2 uses
  %i.kc = fcmp reassoc nsz arcp contract afn ult float %i.ka, %i.kb
  br i1 %i.kc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %scalar.ph619.3
  %i.kd = load float, ptr %i.du, align 4, !tbaa !23 ; 2 uses
  %.inv403.3 = fcmp reassoc nsz arcp contract afn ole float %i.ka, %i.kd
  %.360.3 = select reassoc nsz arcp contract afn i1 %.inv403.3, float %i.ka, float %i.kd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %scalar.ph619.3
  %i.ke = phi reassoc nsz arcp contract afn float [ %.360.3, %bb.l ], [ %i.kb, %scalar.ph619.3 ] ; 2 uses
  %i.kf = fmul reassoc nsz arcp contract afn float %i.ke, %.0397
  %i.kg = load float, ptr %i.dv, align 4, !tbaa !23
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, %.0396
  %i.ki = load float, ptr %i.dw, align 4, !tbaa !23 ; 2 uses
  %i.kj = load float, ptr %i.dx, align 4, !tbaa !23
  %.neg418.reass.3 = fmul reassoc nsz arcp contract afn float %i.ki, %factor.op.fmul
  %i.kk = fmul reassoc nsz arcp contract afn float %i.ad, %i.kj
  %reass.add421.3 = fsub reassoc nsz arcp contract afn float %.neg418.reass.3, %i.kk
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kh, %i.kf
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, %reass.add421.3 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.jy
  store float %i.km, ptr %i.kn, align 4, !tbaa !23
  store float %i.ke, ptr %i.dv, align 4, !tbaa !23
  store float %i.ki, ptr %i.dx, align 4, !tbaa !23
  store float %i.km, ptr %i.dw, align 4, !tbaa !23
  br label %._crit_edge433

.preheader426:                                    ; preds = %bb.o, %middle.block613
  br i1 %brmerge, label %._crit_edge447.split, label %.lr.ph443.preheader

.lr.ph443.preheader:                              ; preds = %.preheader426
  %bound0 = icmp ult ptr %scevgep579, %scevgep576.a
  %bound1 = icmp ult ptr %scevgep577.a, %scevgep578
  %found.conflict = and i1 %bound0, %bound1
  %bound0582 = icmp ult ptr %scevgep579, %scevgep576
  %bound0580 = icmp ult ptr %i.cj, %scevgep577
  %found.conflict584 = and i1 %bound0582, %bound0580
  %6 = or i1 %found.conflict584, %stride.check
  %conflict.rdx = or i1 %found.conflict, %6
  %bound0583 = icmp ult ptr %scevgep579, %scevgep
  %bound1584 = icmp ult ptr %i.cg, %scevgep577
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %conflict.rdx, %found.conflict585
  br label %.lr.ph443

scalar.ph602:                                     ; preds = %scalar.ph602.preheader, %bb.o
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %bb.o ], [ %indvars.iv488.ph, %scalar.ph602.preheader ] ; 8 uses
  %i.ko = getelementptr [4 x i8], ptr %i.gz, i64 %indvars.iv488
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !23 ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv488
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !23 ; 2 uses
  %i.ks = fcmp reassoc nsz arcp contract afn ult float %i.kp, %i.kr
  br i1 %i.ks, label %bb.o, label %bb.n

bb.n:                                             ; preds = %scalar.ph602
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv488
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !23 ; 2 uses
  %.inv402 = fcmp reassoc nsz arcp contract afn ole float %i.kp, %i.ku
  %.361 = select reassoc nsz arcp contract afn i1 %.inv402, float %i.kp, float %i.ku
  br label %bb.o

bb.o:                                             ; preds = %scalar.ph602, %bb.n
  %i.kv = phi reassoc nsz arcp contract afn float [ %.361, %bb.n ], [ %i.kr, %scalar.ph602 ] ; 3 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv488
  store float %i.kv, ptr %i.kw, align 4, !tbaa !23
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv488
  store float %i.kv, ptr %i.kx, align 4, !tbaa !23
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kv, %i.cb ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv488
  store float %i.ky, ptr %i.kz, align 4, !tbaa !23
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv488
  store float %i.ky, ptr %i.la, align 4, !tbaa !23
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %.preheader426, label %scalar.ph602, !llvm.loop !25

..loopexit425_crit_edge:                          ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %vector.body
  %i.lb = icmp sgt i64 %indvars.iv498, 1
  br i1 %i.lb, label %.lr.ph443, label %._crit_edge447.split

._crit_edge447.split:                             ; preds = %..loopexit425_crit_edge, %.preheader426, %.preheader427.thread560, %.lr.ph436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %i.cp
  br i1 %exitcond505.not, label %.preheader424, label %bb.e

.lr.ph443:                                        ; preds = %.lr.ph443.preheader, %..loopexit425_crit_edge
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %..loopexit425_crit_edge ], [ %i.ct, %.lr.ph443.preheader ] ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, -1 ; 2 uses
  %i.lc = mul nuw nsw i64 %indvars.iv.next499, %i.cp
  %i.ld = add nuw nsw i64 %i.lc, %indvars.iv501
  %i.le = mul i64 %i.ld, %i.cn                    ; 7 uses
  br i1 %conflict.rdx586, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph443
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.le
  %wide.masked.load = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.lf, <4 x i1> %i.dy, <4 x float> poison), !tbaa !23, !alias.scope !35 ; 3 uses
  %wide.masked.load595 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cj, <4 x i1> %i.dy, <4 x float> poison), !tbaa !23, !alias.scope !36 ; 2 uses
  %i.lg = fcmp reassoc nsz arcp contract afn oge <4 x float> %wide.masked.load, %wide.masked.load595 ; 2 uses
  %i.lh = select <4 x i1> %i.dy, <4 x i1> %i.lg, <4 x i1> zeroinitializer
  %wide.masked.load596 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cg, <4 x i1> %i.lh, <4 x float> poison), !tbaa !23, !alias.scope !37 ; 2 uses
  %i.li = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load, %wide.masked.load596
  %i.lj = select reassoc nsz arcp contract afn <4 x i1> %i.li, <4 x float> %wide.masked.load, <4 x float> %wide.masked.load596
  %predphi = select reassoc nsz arcp contract afn <4 x i1> %i.lg, <4 x float> %i.lj, <4 x float> %wide.masked.load595
  %unmaskedload819 = load <4 x float>, ptr %i.f, align 16, !tbaa !23 ; 2 uses
  %i.lk = fmul reassoc nsz arcp contract afn <4 x float> %unmaskedload819, %broadcast.splat588
  %unmaskedload820 = load <4 x float>, ptr %i.g, align 16, !tbaa !23
  %i.ll = fmul reassoc nsz arcp contract afn <4 x float> %unmaskedload820, %broadcast.splat590.a
  %unmaskedload821 = load <4 x float>, ptr %i.h, align 16, !tbaa !23 ; 2 uses
  %unmaskedload822 = load <4 x float>, ptr %i.i, align 16, !tbaa !23
  %i.lm = fmul reassoc nsz arcp contract afn <4 x float> %unmaskedload821, %broadcast.splat592.a
  %i.ln = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat594.a, %unmaskedload822
  %i.lo = fsub reassoc nsz arcp contract afn <4 x float> %i.lm, %i.ln
  %i.lp = fadd reassoc nsz arcp contract afn <4 x float> %i.ll, %i.lk
  %i.lq = fadd reassoc nsz arcp contract afn <4 x float> %i.lp, %i.lo ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %unmaskedload819, ptr align 16 %i.g, <4 x i1> %i.dy), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %predphi, ptr align 16 %i.f, <4 x i1> %i.dy), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %unmaskedload821, ptr align 16 %i.i, <4 x i1> %i.dy), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.lq, ptr align 16 %i.h, <4 x i1> %i.dy), !tbaa !23
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.le ; 2 uses
  %wide.masked.load601 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.lr, <4 x i1> %i.dy, <4 x float> poison), !tbaa !23, !alias.scope !38, !noalias !39
  %i.ls = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load601, %i.lq
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ls, ptr align 4 %i.lr, <4 x i1> %i.dy), !tbaa !23, !alias.scope !38, !noalias !39
  br label %..loopexit425_crit_edge

scalar.ph:                                        ; preds = %.lr.ph443
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.le
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !23 ; 3 uses
  %i.lv = load float, ptr %i.cj, align 4, !tbaa !23 ; 2 uses
  %i.lw = fcmp reassoc nsz arcp contract afn ult float %i.lu, %i.lv
  br i1 %i.lw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %scalar.ph
  %i.lx = load float, ptr %i.cg, align 4, !tbaa !23 ; 2 uses
  %.inv401 = fcmp reassoc nsz arcp contract afn ole float %i.lu, %i.lx
  %.362 = select reassoc nsz arcp contract afn i1 %.inv401, float %i.lu, float %i.lx
  br label %bb.q

bb.q:                                             ; preds = %scalar.ph, %bb.p
  %i.ly = phi reassoc nsz arcp contract afn float [ %.362, %bb.p ], [ %i.lv, %scalar.ph ]
  %i.lz = load float, ptr %i.f, align 16, !tbaa !23 ; 2 uses
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, %.0395
  %i.mb = load float, ptr %i.g, align 16, !tbaa !23
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %.sink.i
  %i.md = load float, ptr %i.h, align 16, !tbaa !23 ; 2 uses
  %i.me = load float, ptr %i.i, align 16, !tbaa !23
  %.neg413.reass = fmul reassoc nsz arcp contract afn float %i.md, %factor.op.fmul
  %i.mf = fmul reassoc nsz arcp contract afn float %i.ad, %i.me
  %reass.add416 = fsub reassoc nsz arcp contract afn float %.neg413.reass, %i.mf
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mc, %i.ma
  %i.mh = fadd reassoc nsz arcp contract afn float %i.mg, %reass.add416 ; 2 uses
  store float %i.lz, ptr %i.g, align 16, !tbaa !23
  store float %i.ly, ptr %i.f, align 16, !tbaa !23
  store float %i.md, ptr %i.i, align 16, !tbaa !23
  store float %i.mh, ptr %i.h, align 16, !tbaa !23
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.le ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !23
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mj, %i.mh
  store float %i.mk, ptr %i.mi, align 4, !tbaa !23
  br i1 %exitcond497.not, label %..loopexit425_crit_edge, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.q
  %i.ml = add i64 %i.le, 1                        ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ml
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !23 ; 3 uses
  %i.mo = load float, ptr %i.dz, align 4, !tbaa !23 ; 2 uses
  %i.mp = fcmp reassoc nsz arcp contract afn ult float %i.mn, %i.mo
  br i1 %i.mp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %scalar.ph.1
  %i.mq = load float, ptr %i.ea, align 4, !tbaa !23 ; 2 uses
  %.inv401.1 = fcmp reassoc nsz arcp contract afn ole float %i.mn, %i.mq
  %.362.1 = select reassoc nsz arcp contract afn i1 %.inv401.1, float %i.mn, float %i.mq
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %scalar.ph.1
  %i.mr = phi reassoc nsz arcp contract afn float [ %.362.1, %bb.r ], [ %i.mo, %scalar.ph.1 ]
  %i.ms = load float, ptr %i.eb, align 4, !tbaa !23 ; 2 uses
  %i.mt = fmul reassoc nsz arcp contract afn float %i.ms, %.0395
  %i.mu = load float, ptr %i.ec, align 4, !tbaa !23
  %i.mv = fmul reassoc nsz arcp contract afn float %i.mu, %.sink.i
  %i.mw = load float, ptr %i.ed, align 4, !tbaa !23 ; 2 uses
  %i.mx = load float, ptr %i.ee, align 4, !tbaa !23
  %.neg413.reass.1 = fmul reassoc nsz arcp contract afn float %i.mw, %factor.op.fmul
  %i.my = fmul reassoc nsz arcp contract afn float %i.ad, %i.mx
  %reass.add416.1 = fsub reassoc nsz arcp contract afn float %.neg413.reass.1, %i.my
  %i.mz = fadd reassoc nsz arcp contract afn float %i.mv, %i.mt
  %i.na = fadd reassoc nsz arcp contract afn float %i.mz, %reass.add416.1 ; 2 uses
  store float %i.ms, ptr %i.ec, align 4, !tbaa !23
  store float %i.mr, ptr %i.eb, align 4, !tbaa !23
  store float %i.mw, ptr %i.ee, align 4, !tbaa !23
  store float %i.na, ptr %i.ed, align 4, !tbaa !23
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ml ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !23
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nc, %i.na
  store float %i.nd, ptr %i.nb, align 4, !tbaa !23
  br i1 %exitcond497.not.1, label %..loopexit425_crit_edge, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %bb.s
  %i.ne = add i64 %i.le, 2                        ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ne
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !23 ; 3 uses
  %i.nh = load float, ptr %i.ef, align 4, !tbaa !23 ; 2 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ult float %i.ng, %i.nh
  br i1 %i.ni, label %bb.u, label %bb.t

bb.t:                                             ; preds = %scalar.ph.2
  %i.nj = load float, ptr %i.eg, align 4, !tbaa !23 ; 2 uses
  %.inv401.2 = fcmp reassoc nsz arcp contract afn ole float %i.ng, %i.nj
  %.362.2 = select reassoc nsz arcp contract afn i1 %.inv401.2, float %i.ng, float %i.nj
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %scalar.ph.2
  %i.nk = phi reassoc nsz arcp contract afn float [ %.362.2, %bb.t ], [ %i.nh, %scalar.ph.2 ]
  %i.nl = load float, ptr %i.eh, align 8, !tbaa !23 ; 2 uses
  %i.nm = fmul reassoc nsz arcp contract afn float %i.nl, %.0395
  %i.nn = load float, ptr %i.ei, align 8, !tbaa !23
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, %.sink.i
  %i.np = load float, ptr %i.ej, align 8, !tbaa !23 ; 2 uses
  %i.nq = load float, ptr %i.ek, align 8, !tbaa !23
  %.neg413.reass.2 = fmul reassoc nsz arcp contract afn float %i.np, %factor.op.fmul
  %i.nr = fmul reassoc nsz arcp contract afn float %i.ad, %i.nq
  %reass.add416.2 = fsub reassoc nsz arcp contract afn float %.neg413.reass.2, %i.nr
  %i.ns = fadd reassoc nsz arcp contract afn float %i.no, %i.nm
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %reass.add416.2 ; 2 uses
  store float %i.nl, ptr %i.ei, align 8, !tbaa !23
  store float %i.nk, ptr %i.eh, align 8, !tbaa !23
  store float %i.np, ptr %i.ek, align 8, !tbaa !23
  store float %i.nt, ptr %i.ej, align 8, !tbaa !23
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ne ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !23
  %i.nw = fadd reassoc nsz arcp contract afn float %i.nv, %i.nt
  store float %i.nw, ptr %i.nu, align 4, !tbaa !23
  br i1 %exitcond497.not.2, label %..loopexit425_crit_edge, label %scalar.ph.3

end_hunk_0
