Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gaussian?download=true
inline.NumInlined: 10
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @dt_gaussian_memory_use(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = sext i32 %0 to i64
  %i.c = sext i32 %1 to i64
  %i.d = shl nsw i64 %i.b, 2
  %i.e = mul i64 %i.d, %i.c
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
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #16 ; 11 uses
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
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #17 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !21
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #17 ; 4 uses
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
  %i.t = tail call ptr @dt_alloc_aligned(i64 noundef %i.s) #18 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 64) ]
  store ptr %i.t, ptr %i.f, align 8, !tbaa !20
  %.not43 = icmp eq ptr %i.t, null
  br i1 %.not43, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.b
  tail call void @free(ptr noundef %i.h) #18
  tail call void @free(ptr noundef %i.j) #18
  tail call void @free(ptr noundef nonnull %i.a) #18
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
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  %i.c = alloca [4 x float], align 16             ; 9 uses
  %i.d = alloca [4 x float], align 16             ; 10 uses
  %i.e = alloca [4 x float], align 16             ; 10 uses
  %i.f = alloca [4 x float], align 16             ; 10 uses
  %i.g = alloca [4 x float], align 16             ; 10 uses
  %i.h = alloca [4 x float], align 16             ; 9 uses
  %i.i = alloca [4 x float], align 16             ; 9 uses
  %i.j = alloca [4 x float], align 16             ; 9 uses
  %i.k = alloca [4 x float], align 16             ; 10 uses
  %i.l = alloca [4 x float], align 16             ; 10 uses
  %i.m = alloca [4 x float], align 16             ; 10 uses
  %i.n = alloca [4 x float], align 16             ; 10 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17   ; 15 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.s, i32 4) ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !19
  %i.x = fdiv reassoc nsz arcp contract afn float 1.695000e+00, %i.u ; 7 uses
  %i.y = fneg reassoc nsz arcp contract afn float %i.x
  %i.z = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.y) ; 16 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.x, -2.000000e+00
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.aa) ; 21 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.z, -2.000000e+00
  switch i32 %i.w, label %bb.b [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.ad = fneg reassoc nsz arcp contract afn float %i.ab
  %i.ae = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.z ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.ae
  %i.ag = fmul reassoc nsz arcp contract afn float %i.x, 2.000000e+00
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.z
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, 1.000000e+00
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.ab
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.af, %i.aj ; 4 uses
  %i.al = fadd reassoc nsz arcp contract afn float %i.x, -1.000000e+00
  %i.am = fmul reassoc nsz arcp contract afn float %i.z, %i.al
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.ak
  %i.ao = fadd reassoc nsz arcp contract afn float %i.x, 1.000000e+00
  %i.ap = fmul reassoc nsz arcp contract afn float %i.z, %i.ao
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.ak
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ak, %i.ad
  br label %_compute_gauss_params.exit

bb.c:                                             ; preds = %bb.a
  %i.as = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.z ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, %i.as ; 2 uses
  %i.au = fneg reassoc nsz arcp contract afn float %i.at
  br label %_compute_gauss_params.exit

bb.d:                                             ; preds = %bb.a
  %i.av = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.aw = fmul reassoc nsz arcp contract afn float %i.x, 2.000000e+00
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.z
  %i.ay = fmul reassoc nsz arcp contract afn float %i.z, 3.000000e+00 ; 3 uses
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, -1.000000e+00
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ay, %i.z ; 2 uses
  %i.bb = fsub reassoc nsz arcp contract afn float %i.az, %i.ba
  %i.bc = fmul reassoc nsz arcp contract afn float %i.z, %i.z
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, %i.z ; 2 uses
  %i.be = fadd reassoc nsz arcp contract afn float %i.bb, %i.bd
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, -2.000000e+00
  %i.bg = fadd reassoc nsz arcp contract afn float %i.ay, 1.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, %i.ba
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bd
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bf, %i.bi ; 3 uses
  %i.bk = fneg reassoc nsz arcp contract afn float %i.bj ; 2 uses
  %i.bl = fmul reassoc nsz arcp contract afn float %i.av, %i.x
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bl, %i.ax ; 2 uses
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, 1.000000e+00
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.z
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.bk
  %i.bq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bm
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.z
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.bj
  %i.bt = fmul reassoc nsz arcp contract afn float %i.ab, %i.bk
  br label %_compute_gauss_params.exit

_compute_gauss_params.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0397 = phi nsz float [ %i.ak, %bb.b ], [ %i.bj, %bb.d ], [ %i.at, %bb.c ] ; 9 uses
  %.0396 = phi nsz float [ %i.an, %bb.b ], [ %i.bp, %bb.d ], [ 0.000000e+00, %bb.c ] ; 9 uses
  %.0395 = phi nsz float [ %i.aq, %bb.b ], [ %i.bs, %bb.d ], [ %i.au, %bb.c ] ; 9 uses
  %.sink.i = phi float [ %i.ar, %bb.b ], [ %i.bt, %bb.d ], [ 0.000000e+00, %bb.c ] ; 9 uses
  %i.bu = fadd reassoc nsz arcp contract afn float %.0396, %.0397
  %i.bv = fadd reassoc nsz arcp contract afn float %i.ac, 1.000000e+00
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.ab ; 2 uses
  %i.bx = fdiv reassoc nsz arcp contract afn float %i.bu, %i.bw ; 2 uses
  %i.by = fadd reassoc nsz arcp contract afn float %.sink.i, %.0395
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.by, %i.bw ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !20 ; 18 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 22 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !22 ; 22 uses
  %i.cg = icmp sgt i32 %i.o, 0                    ; 3 uses
  br i1 %i.cg, label %.lr.ph449, label %.preheader424

.lr.ph449:                                        ; preds = %_compute_gauss_params.exit
  %i.ch = icmp slt i32 %i.s, 1                    ; 4 uses
  %i.ci = sext i32 %spec.select to i64            ; 4 uses
  %i.cj = icmp slt i32 %i.q, 1                    ; 2 uses
  %i.ck = zext nneg i32 %i.o to i64               ; 4 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.z, 2.000000e+00 ; 8 uses
  %i.cl = add nsw i32 %i.q, -1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.cm, %i.ck
  %i.co = zext i32 %i.q to i64                    ; 2 uses
  %wide.trip.count = zext i32 %spec.select to i64 ; 3 uses
  %wide.trip.count491 = zext nneg i32 %spec.select to i64
  %broadcast.splatinsert569 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat570 = shufflevector <4 x float> %broadcast.splatinsert569, <4 x float> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %wide.trip.count, -1
  %broadcast.splatinsert567 = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat568 = shufflevector <4 x i64> %broadcast.splatinsert567, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cp = icmp uge <4 x i64> %broadcast.splat568, <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %exitcond482.not = icmp eq i32 %i.s, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %exitcond482.not.1 = icmp eq i32 %i.s, 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %exitcond482.not.2 = icmp eq i32 %i.s, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %min.iters.check = icmp ult i32 %spec.select, 8
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bz, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %brmerge = or i1 %i.cj, %i.ch
  %exitcond497.not = icmp eq i32 %i.s, 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %exitcond497.not.1 = icmp eq i32 %i.s, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %exitcond497.not.2 = icmp eq i32 %i.s, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  br label %bb.e

.preheader424:                                    ; preds = %._crit_edge447.split, %_compute_gauss_params.exit
  %i.dx = icmp sgt i32 %i.q, 0
  br i1 %i.dx, label %.lr.ph475, label %._crit_edge476

.lr.ph475:                                        ; preds = %.preheader424
  %i.dy = icmp sgt i32 %i.s, 0                    ; 4 uses
  %i.dz = sext i32 %i.o to i64                    ; 4 uses
  %i.ea = sext i32 %spec.select to i64            ; 4 uses
  %i.eb = mul nsw i64 %i.ea, %i.dz
  %factor.op.fmul454 = fmul reassoc nsz arcp contract afn float %i.z, 2.000000e+00 ; 8 uses
  %i.ec = zext i32 %i.o to i64                    ; 2 uses
  %wide.trip.count537 = zext nneg i32 %i.q to i64
  %wide.trip.count509 = zext i32 %spec.select to i64 ; 3 uses
  %wide.trip.count524 = zext nneg i32 %spec.select to i64
  %broadcast.splatinsert602 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat603 = shufflevector <4 x float> %broadcast.splatinsert602, <4 x float> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1599 = add nsw i64 %wide.trip.count509, -1
  %broadcast.splatinsert600 = insertelement <4 x i64> poison, i64 %trip.count.minus.1599, i64 0
  %broadcast.splat601 = shufflevector <4 x i64> %broadcast.splatinsert600, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ed = icmp uge <4 x i64> %broadcast.splat601, <i64 0, i64 1, i64 2, i64 3> ; 6 uses
  %exitcond515.not = icmp eq i32 %i.s, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %exitcond515.not.1 = icmp eq i32 %i.s, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond515.not.2 = icmp eq i32 %i.s, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %min.iters.check580 = icmp ult i32 %spec.select, 8
  %n.vec582 = and i64 %wide.trip.count509, 4294967288 ; 3 uses
  %broadcast.splatinsert583 = insertelement <8 x float> poison, float %i.bz, i64 0
  %broadcast.splat584 = shufflevector <8 x float> %broadcast.splatinsert583, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n593 = icmp eq i64 %n.vec582, %wide.trip.count509
  %exitcond530.not = icmp eq i32 %i.s, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %exitcond530.not.1 = icmp eq i32 %i.s, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %exitcond530.not.2 = icmp eq i32 %i.s, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  br label %bb.ad

bb.e:                                             ; preds = %.lr.ph449, %._crit_edge447.split
  %indvars.iv501 = phi i64 [ 0, %.lr.ph449 ], [ %indvars.iv.next502, %._crit_edge447.split ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %i.ch, label %._crit_edge, label %vector.body571

vector.body571:                                   ; preds = %bb.e
  %i.fl = mul nuw nsw i64 %indvars.iv501, %i.ci
  %i.fm = getelementptr [4 x i8], ptr %1, i64 %i.fl
  %wide.masked.load573 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.fm, <4 x i1> %i.cp, <4 x float> poison), !tbaa !23 ; 3 uses
  %wide.masked.load574 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cf, <4 x i1> %i.cp, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.fn = fcmp reassoc nsz arcp contract afn oge <4 x float> %wide.masked.load573, %wide.masked.load574 ; 2 uses
  %i.fo = select <4 x i1> %i.cp, <4 x i1> %i.fn, <4 x i1> zeroinitializer
  %wide.masked.load575 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cd, <4 x i1> %i.fo, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.fp = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load573, %wide.masked.load575
  %i.fq = select reassoc nsz arcp contract afn <4 x i1> %i.fp, <4 x float> %wide.masked.load573, <4 x float> %wide.masked.load575
  %predphi576 = select reassoc nsz arcp contract afn <4 x i1> %i.fn, <4 x float> %i.fq, <4 x float> %wide.masked.load574 ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %predphi576, ptr align 16 %i.a, <4 x i1> %i.cp), !tbaa !23
  %i.fr = fmul reassoc nsz arcp contract afn <4 x float> %predphi576, %broadcast.splat570 ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.fr, ptr align 16 %i.b, <4 x i1> %i.cp), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.fr, ptr align 16 %i.c, <4 x i1> %i.cp), !tbaa !23
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body571, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br i1 %i.cj, label %.preheader427.thread560, label %.lr.ph436

.lr.ph436:                                        ; preds = %._crit_edge
  br i1 %i.ch, label %._crit_edge447.split, label %.lr.ph432.preheader

.lr.ph432.preheader:                              ; preds = %.lr.ph436
  %.promoted = load float, ptr %i.a, align 16, !tbaa !23
  %.promoted614 = load float, ptr %i.c, align 16, !tbaa !23
  %.promoted616 = load float, ptr %i.b, align 16, !tbaa !23
  %.promoted618 = load float, ptr %i.cs, align 4
  %.promoted620 = load float, ptr %i.ct, align 4
  %.promoted622 = load float, ptr %i.cu, align 4
  %.promoted624 = load float, ptr %i.cx, align 8
  %.promoted626 = load float, ptr %i.cy, align 8
  %.promoted628 = load float, ptr %i.cz, align 8
  %.promoted630 = load float, ptr %i.dc, align 4
  %.promoted632 = load float, ptr %i.dd, align 4
  %.promoted634 = load float, ptr %i.de, align 4
  br label %.lr.ph432

.preheader427.thread560:                          ; preds = %._crit_edge
  br i1 %i.ch, label %._crit_edge447.split, label %.lr.ph438

.lr.ph438.loopexit:                               ; preds = %._crit_edge433
  store float %i.hk, ptr %i.a, align 16, !tbaa !23
  store float %i.hp, ptr %i.c, align 16, !tbaa !23
  store float %i.gr, ptr %i.b, align 16, !tbaa !23
  store float %i.hi, ptr %i.cs, align 4
  store float %i.hh, ptr %i.ct, align 4
  store float %i.hg, ptr %i.cu, align 4
  store float %i.hf, ptr %i.cx, align 8
  store float %i.he, ptr %i.cy, align 8
  store float %i.hd, ptr %i.cz, align 8
  store float %i.hc, ptr %i.dc, align 4
  store float %i.hb, ptr %i.dd, align 4
  store float %i.ha, ptr %i.de, align 4
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.loopexit, %.preheader427.thread560
  %i.fs = add nsw i64 %i.cn, %indvars.iv501
  %i.ft = mul i64 %i.fs, %i.ci
  %i.fu = getelementptr [4 x i8], ptr %1, i64 %i.ft ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph438, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph438 ] ; 8 uses
  %i.fv = getelementptr [4 x i8], ptr %i.fu, i64 %index
  %wide.load = load <8 x float>, ptr %i.fv, align 4, !tbaa !23 ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index
  %wide.load563 = load <8 x float>, ptr %i.fw, align 4, !tbaa !23 ; 2 uses
  %i.fx = fcmp reassoc nsz arcp contract afn oge <8 x float> %wide.load, %wide.load563 ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %i.cd, i64 %index
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fy, <8 x i1> %i.fx, <8 x float> poison), !tbaa !23 ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load, %wide.masked.load
  %i.ga = select reassoc nsz arcp contract afn <8 x i1> %i.fz, <8 x float> %wide.load, <8 x float> %wide.masked.load
  %predphi = select reassoc nsz arcp contract afn <8 x i1> %i.fx, <8 x float> %i.ga, <8 x float> %wide.load563 ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  store <8 x float> %predphi, ptr %i.gb, align 16, !tbaa !23
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <8 x float> %predphi, ptr %i.gc, align 16, !tbaa !23
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %predphi, %broadcast.splat ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  store <8 x float> %i.gd, ptr %i.ge, align 16, !tbaa !23
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index
  store <8 x float> %i.gd, ptr %i.gf, align 16, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader426, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph438, %middle.block
  %indvars.iv488.ph = phi i64 [ 0, %.lr.ph438 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph432:                                        ; preds = %.lr.ph432.preheader, %._crit_edge433
  %i.gh = phi float [ %i.ha, %._crit_edge433 ], [ %.promoted634, %.lr.ph432.preheader ] ; 4 uses
  %i.gi = phi float [ %i.hb, %._crit_edge433 ], [ %.promoted632, %.lr.ph432.preheader ] ; 5 uses
  %i.gj = phi float [ %i.hc, %._crit_edge433 ], [ %.promoted630, %.lr.ph432.preheader ] ; 4 uses
  %i.gk = phi float [ %i.hd, %._crit_edge433 ], [ %.promoted628, %.lr.ph432.preheader ] ; 3 uses
  %i.gl = phi float [ %i.he, %._crit_edge433 ], [ %.promoted626, %.lr.ph432.preheader ] ; 5 uses
  %i.gm = phi float [ %i.hf, %._crit_edge433 ], [ %.promoted624, %.lr.ph432.preheader ] ; 3 uses
  %i.gn = phi float [ %i.hg, %._crit_edge433 ], [ %.promoted622, %.lr.ph432.preheader ] ; 2 uses
  %i.go = phi float [ %i.hh, %._crit_edge433 ], [ %.promoted620, %.lr.ph432.preheader ] ; 5 uses
  %i.gp = phi float [ %i.hi, %._crit_edge433 ], [ %.promoted618, %.lr.ph432.preheader ] ; 2 uses
  %i.gq = phi float [ %i.gr, %._crit_edge433 ], [ %.promoted616, %.lr.ph432.preheader ]
  %i.gr = phi float [ %i.hp, %._crit_edge433 ], [ %.promoted614, %.lr.ph432.preheader ] ; 3 uses
  %i.gs = phi float [ %i.hk, %._crit_edge433 ], [ %.promoted, %.lr.ph432.preheader ]
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge433 ], [ 0, %.lr.ph432.preheader ] ; 2 uses
  %i.gt = mul nuw nsw i64 %indvars.iv483, %i.ck
  %i.gu = add nuw nsw i64 %i.gt, %indvars.iv501
  %i.gv = mul i64 %i.gu, %i.ci                    ; 5 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !23 ; 3 uses
  %i.gy = load float, ptr %i.cf, align 4, !tbaa !23 ; 2 uses
  %i.gz = fcmp reassoc nsz arcp contract afn ult float %i.gx, %i.gy
  br i1 %i.gz, label %bb.g, label %bb.f

._crit_edge433:                                   ; preds = %bb.p, %bb.m, %bb.j, %bb.g
  %i.ha = phi float [ %i.gi, %bb.p ], [ %i.gh, %bb.m ], [ %i.gh, %bb.j ], [ %i.gh, %bb.g ] ; 2 uses
  %i.hb = phi float [ %i.jc, %bb.p ], [ %i.gi, %bb.m ], [ %i.gi, %bb.j ], [ %i.gi, %bb.g ] ; 2 uses
  %i.hc = phi float [ %i.ix, %bb.p ], [ %i.gj, %bb.m ], [ %i.gj, %bb.j ], [ %i.gj, %bb.g ] ; 2 uses
  %i.hd = phi float [ %i.gl, %bb.p ], [ %i.gl, %bb.m ], [ %i.gk, %bb.j ], [ %i.gk, %bb.g ] ; 2 uses
  %i.he = phi float [ %i.ip, %bb.p ], [ %i.ip, %bb.m ], [ %i.gl, %bb.j ], [ %i.gl, %bb.g ] ; 2 uses
  %i.hf = phi float [ %i.ik, %bb.p ], [ %i.ik, %bb.m ], [ %i.gm, %bb.j ], [ %i.gm, %bb.g ] ; 2 uses
  %i.hg = phi float [ %i.go, %bb.p ], [ %i.go, %bb.m ], [ %i.go, %bb.j ], [ %i.gn, %bb.g ] ; 2 uses
  %i.hh = phi float [ %i.ic, %bb.p ], [ %i.ic, %bb.m ], [ %i.ic, %bb.j ], [ %i.go, %bb.g ] ; 2 uses
  %i.hi = phi float [ %i.hx, %bb.p ], [ %i.hx, %bb.m ], [ %i.hx, %bb.j ], [ %i.gp, %bb.g ] ; 2 uses
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %exitcond487.not = icmp eq i64 %indvars.iv.next484, %i.co
  br i1 %exitcond487.not, label %.lr.ph438.loopexit, label %.lr.ph432

bb.f:                                             ; preds = %.lr.ph432
  %i.hj = load float, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  %.inv403 = fcmp reassoc nsz arcp contract afn ole float %i.gx, %i.hj
  %.360 = select reassoc nsz arcp contract afn i1 %.inv403, float %i.gx, float %i.hj
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph432, %bb.f
  %i.hk = phi reassoc nsz arcp contract afn float [ %.360, %bb.f ], [ %i.gy, %.lr.ph432 ] ; 3 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, %.0397
  %i.hm = fmul reassoc nsz arcp contract afn float %i.gs, %.0396
  %.neg418.reass = fmul reassoc nsz arcp contract afn float %i.gr, %factor.op.fmul
  %i.hn = fmul reassoc nsz arcp contract afn float %i.ab, %i.gq
  %reass.add421 = fsub reassoc nsz arcp contract afn float %.neg418.reass, %i.hn
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hm, %i.hl
  %i.hp = fadd reassoc nsz arcp contract afn float %i.ho, %reass.add421 ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.gv
  store float %i.hp, ptr %i.hq, align 4, !tbaa !23
  br i1 %exitcond482.not, label %._crit_edge433, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hr = add i64 %i.gv, 1                        ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !23 ; 3 uses
  %i.hu = load float, ptr %i.cq, align 4, !tbaa !23 ; 2 uses
  %i.hv = fcmp reassoc nsz arcp contract afn ult float %i.ht, %i.hu
  br i1 %i.hv, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hw = load float, ptr %i.cr, align 4, !tbaa !23 ; 2 uses
  %.inv403.1 = fcmp reassoc nsz arcp contract afn ole float %i.ht, %i.hw
  %.360.1 = select reassoc nsz arcp contract afn i1 %.inv403.1, float %i.ht, float %i.hw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.hx = phi reassoc nsz arcp contract afn float [ %.360.1, %bb.i ], [ %i.hu, %bb.h ] ; 4 uses
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, %.0397
  %i.hz = fmul reassoc nsz arcp contract afn float %i.gp, %.0396
  %.neg418.reass.1 = fmul reassoc nsz arcp contract afn float %i.go, %factor.op.fmul
  %i.ia = fmul reassoc nsz arcp contract afn float %i.ab, %i.gn
  %reass.add421.1 = fsub reassoc nsz arcp contract afn float %.neg418.reass.1, %i.ia
  %i.ib = fadd reassoc nsz arcp contract afn float %i.hz, %i.hy
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, %reass.add421.1 ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.hr
  store float %i.ic, ptr %i.id, align 4, !tbaa !23
  br i1 %exitcond482.not.1, label %._crit_edge433, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ie = add i64 %i.gv, 2                        ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !23 ; 3 uses
  %i.ih = load float, ptr %i.cv, align 4, !tbaa !23 ; 2 uses
  %i.ii = fcmp reassoc nsz arcp contract afn ult float %i.ig, %i.ih
  br i1 %i.ii, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ij = load float, ptr %i.cw, align 4, !tbaa !23 ; 2 uses
  %.inv403.2 = fcmp reassoc nsz arcp contract afn ole float %i.ig, %i.ij
  %.360.2 = select reassoc nsz arcp contract afn i1 %.inv403.2, float %i.ig, float %i.ij
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ik = phi reassoc nsz arcp contract afn float [ %.360.2, %bb.l ], [ %i.ih, %bb.k ] ; 3 uses
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %.0397
  %i.im = fmul reassoc nsz arcp contract afn float %i.gm, %.0396
  %.neg418.reass.2 = fmul reassoc nsz arcp contract afn float %i.gl, %factor.op.fmul
  %i.in = fmul reassoc nsz arcp contract afn float %i.ab, %i.gk
  %reass.add421.2 = fsub reassoc nsz arcp contract afn float %.neg418.reass.2, %i.in
  %i.io = fadd reassoc nsz arcp contract afn float %i.im, %i.il
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, %reass.add421.2 ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ie
  store float %i.ip, ptr %i.iq, align 4, !tbaa !23
  br i1 %exitcond482.not.2, label %._crit_edge433, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ir = add i64 %i.gv, 3                        ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !23 ; 3 uses
  %i.iu = load float, ptr %i.da, align 4, !tbaa !23 ; 2 uses
  %i.iv = fcmp reassoc nsz arcp contract afn ult float %i.it, %i.iu
  br i1 %i.iv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.iw = load float, ptr %i.db, align 4, !tbaa !23 ; 2 uses
  %.inv403.3 = fcmp reassoc nsz arcp contract afn ole float %i.it, %i.iw
  %.360.3 = select reassoc nsz arcp contract afn i1 %.inv403.3, float %i.it, float %i.iw
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ix = phi reassoc nsz arcp contract afn float [ %.360.3, %bb.o ], [ %i.iu, %bb.n ] ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, %.0397
  %i.iz = fmul reassoc nsz arcp contract afn float %i.gj, %.0396
  %.neg418.reass.3 = fmul reassoc nsz arcp contract afn float %i.gi, %factor.op.fmul
  %i.ja = fmul reassoc nsz arcp contract afn float %i.ab, %i.gh
  %reass.add421.3 = fsub reassoc nsz arcp contract afn float %.neg418.reass.3, %i.ja
  %i.jb = fadd reassoc nsz arcp contract afn float %i.iz, %i.iy
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %reass.add421.3 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ir
  store float %i.jc, ptr %i.jd, align 4, !tbaa !23
  br label %._crit_edge433

.preheader426:                                    ; preds = %bb.r, %middle.block
  br i1 %brmerge, label %._crit_edge447.split, label %.lr.ph443.preheader

.lr.ph443.preheader:                              ; preds = %.preheader426
  %.promoted636 = load float, ptr %i.d, align 16, !tbaa !23
  %.promoted638 = load float, ptr %i.e, align 16, !tbaa !23
  %.promoted640 = load float, ptr %i.f, align 16, !tbaa !23
  %.promoted642 = load float, ptr %i.g, align 16, !tbaa !23
  %.promoted644 = load float, ptr %i.dh, align 4
  %.promoted646 = load float, ptr %i.di, align 4
  %.promoted648 = load float, ptr %i.dj, align 4
  %.promoted650 = load float, ptr %i.dk, align 4
  %.promoted652 = load float, ptr %i.dn, align 8
  %.promoted654 = load float, ptr %i.do, align 8
  %.promoted656 = load float, ptr %i.dp, align 8
  %.promoted658 = load float, ptr %i.dq, align 8
  %.promoted660 = load float, ptr %i.dt, align 4
  %.promoted662 = load float, ptr %i.du, align 4
  %.promoted664 = load float, ptr %i.dv, align 4
  %.promoted666 = load float, ptr %i.dw, align 4
  br label %.lr.ph443

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %indvars.iv488 = phi i64 [ %indvars.iv.next489, %bb.r ], [ %indvars.iv488.ph, %scalar.ph.preheader ] ; 8 uses
  %i.je = getelementptr [4 x i8], ptr %i.fu, i64 %indvars.iv488
  %i.jf = load float, ptr %i.je, align 4, !tbaa !23 ; 3 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv488
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !23 ; 2 uses
  %i.ji = fcmp reassoc nsz arcp contract afn ult float %i.jf, %i.jh
  br i1 %i.ji, label %bb.r, label %bb.q

bb.q:                                             ; preds = %scalar.ph
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv488
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !23 ; 2 uses
  %.inv402 = fcmp reassoc nsz arcp contract afn ole float %i.jf, %i.jk
  %.361 = select reassoc nsz arcp contract afn i1 %.inv402, float %i.jf, float %i.jk
  br label %bb.r

bb.r:                                             ; preds = %scalar.ph, %bb.q
  %i.jl = phi reassoc nsz arcp contract afn float [ %.361, %bb.q ], [ %i.jh, %scalar.ph ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv488
  store float %i.jl, ptr %i.jm, align 4, !tbaa !23
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv488
  store float %i.jl, ptr %i.jn, align 4, !tbaa !23
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jl, %i.bz ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv488
  store float %i.jo, ptr %i.jp, align 4, !tbaa !23
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv488
  store float %i.jo, ptr %i.jq, align 4, !tbaa !23
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %.preheader426, label %scalar.ph, !llvm.loop !25

..loopexit425_crit_edge:                          ; preds = %bb.ac, %bb.z, %bb.w, %bb.t
  %i.jr = phi float [ %i.kf, %bb.ac ], [ %i.ke, %bb.z ], [ %i.ke, %bb.w ], [ %i.ke, %bb.t ] ; 2 uses
  %i.js = phi float [ %i.na, %bb.ac ], [ %i.kf, %bb.z ], [ %i.kf, %bb.w ], [ %i.kf, %bb.t ] ; 2 uses
  %i.jt = phi float [ %i.kh, %bb.ac ], [ %i.kg, %bb.z ], [ %i.kg, %bb.w ], [ %i.kg, %bb.t ] ; 2 uses
  %i.ju = phi float [ %i.mv, %bb.ac ], [ %i.kh, %bb.z ], [ %i.kh, %bb.w ], [ %i.kh, %bb.t ] ; 2 uses
  %i.jv = phi float [ %i.kj, %bb.ac ], [ %i.kj, %bb.z ], [ %i.ki, %bb.w ], [ %i.ki, %bb.t ] ; 2 uses
  %i.jw = phi float [ %i.ml, %bb.ac ], [ %i.ml, %bb.z ], [ %i.kj, %bb.w ], [ %i.kj, %bb.t ] ; 2 uses
  %i.jx = phi float [ %i.kl, %bb.ac ], [ %i.kl, %bb.z ], [ %i.kk, %bb.w ], [ %i.kk, %bb.t ] ; 2 uses
  %i.jy = phi float [ %i.mg, %bb.ac ], [ %i.mg, %bb.z ], [ %i.kl, %bb.w ], [ %i.kl, %bb.t ] ; 2 uses
  %i.jz = phi float [ %i.kn, %bb.ac ], [ %i.kn, %bb.z ], [ %i.kn, %bb.w ], [ %i.km, %bb.t ] ; 2 uses
  %i.ka = phi float [ %i.lw, %bb.ac ], [ %i.lw, %bb.z ], [ %i.lw, %bb.w ], [ %i.kn, %bb.t ] ; 2 uses
  %i.kb = phi float [ %i.kp, %bb.ac ], [ %i.kp, %bb.z ], [ %i.kp, %bb.w ], [ %i.ko, %bb.t ] ; 2 uses
  %i.kc = phi float [ %i.lr, %bb.ac ], [ %i.lr, %bb.z ], [ %i.lr, %bb.w ], [ %i.kp, %bb.t ] ; 2 uses
  %i.kd = icmp sgt i64 %indvars.iv498, 1
  br i1 %i.kd, label %.lr.ph443, label %._crit_edge447.split.loopexit

._crit_edge447.split.loopexit:                    ; preds = %..loopexit425_crit_edge
  store float %i.lc, ptr %i.d, align 16, !tbaa !23
  store float %i.kt, ptr %i.e, align 16, !tbaa !23
  store float %i.lh, ptr %i.f, align 16, !tbaa !23
  store float %i.kr, ptr %i.g, align 16, !tbaa !23
  store float %i.kc, ptr %i.dh, align 4
  store float %i.kb, ptr %i.di, align 4
  store float %i.ka, ptr %i.dj, align 4
  store float %i.jz, ptr %i.dk, align 4
  store float %i.jy, ptr %i.dn, align 8
  store float %i.jx, ptr %i.do, align 8
  store float %i.jw, ptr %i.dp, align 8
  store float %i.jv, ptr %i.dq, align 8
  store float %i.ju, ptr %i.dt, align 4
  store float %i.jt, ptr %i.du, align 4
  store float %i.js, ptr %i.dv, align 4
  store float %i.jr, ptr %i.dw, align 4
  br label %._crit_edge447.split

._crit_edge447.split:                             ; preds = %._crit_edge447.split.loopexit, %.preheader426, %.preheader427.thread560, %.lr.ph436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %i.ck
  br i1 %exitcond505.not, label %.preheader424, label %bb.e

.lr.ph443:                                        ; preds = %.lr.ph443.preheader, %..loopexit425_crit_edge
  %i.ke = phi float [ %i.jr, %..loopexit425_crit_edge ], [ %.promoted666, %.lr.ph443.preheader ] ; 4 uses
  %i.kf = phi float [ %i.js, %..loopexit425_crit_edge ], [ %.promoted664, %.lr.ph443.preheader ] ; 5 uses
  %i.kg = phi float [ %i.jt, %..loopexit425_crit_edge ], [ %.promoted662, %.lr.ph443.preheader ] ; 4 uses
  %i.kh = phi float [ %i.ju, %..loopexit425_crit_edge ], [ %.promoted660, %.lr.ph443.preheader ] ; 5 uses
  %i.ki = phi float [ %i.jv, %..loopexit425_crit_edge ], [ %.promoted658, %.lr.ph443.preheader ] ; 3 uses
  %i.kj = phi float [ %i.jw, %..loopexit425_crit_edge ], [ %.promoted656, %.lr.ph443.preheader ] ; 5 uses
  %i.kk = phi float [ %i.jx, %..loopexit425_crit_edge ], [ %.promoted654, %.lr.ph443.preheader ] ; 3 uses
  %i.kl = phi float [ %i.jy, %..loopexit425_crit_edge ], [ %.promoted652, %.lr.ph443.preheader ] ; 5 uses
  %i.km = phi float [ %i.jz, %..loopexit425_crit_edge ], [ %.promoted650, %.lr.ph443.preheader ] ; 2 uses
  %i.kn = phi float [ %i.ka, %..loopexit425_crit_edge ], [ %.promoted648, %.lr.ph443.preheader ] ; 5 uses
  %i.ko = phi float [ %i.kb, %..loopexit425_crit_edge ], [ %.promoted646, %.lr.ph443.preheader ] ; 2 uses
  %i.kp = phi float [ %i.kc, %..loopexit425_crit_edge ], [ %.promoted644, %.lr.ph443.preheader ] ; 5 uses
  %i.kq = phi float [ %i.kr, %..loopexit425_crit_edge ], [ %.promoted642, %.lr.ph443.preheader ]
  %i.kr = phi float [ %i.lh, %..loopexit425_crit_edge ], [ %.promoted640, %.lr.ph443.preheader ] ; 3 uses
  %i.ks = phi float [ %i.kt, %..loopexit425_crit_edge ], [ %.promoted638, %.lr.ph443.preheader ]
  %i.kt = phi float [ %i.lc, %..loopexit425_crit_edge ], [ %.promoted636, %.lr.ph443.preheader ] ; 3 uses
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %..loopexit425_crit_edge ], [ %i.co, %.lr.ph443.preheader ] ; 2 uses
  %indvars.iv.next499 = add nsw i64 %indvars.iv498, -1 ; 2 uses
  %i.ku = mul nuw nsw i64 %indvars.iv.next499, %i.ck
  %i.kv = add nuw nsw i64 %i.ku, %indvars.iv501
  %i.kw = mul i64 %i.kv, %i.ci                    ; 5 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kw
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !23 ; 3 uses
  %i.kz = load float, ptr %i.cf, align 4, !tbaa !23 ; 2 uses
  %i.la = fcmp reassoc nsz arcp contract afn ult float %i.ky, %i.kz
  br i1 %i.la, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph443
  %i.lb = load float, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  %.inv401 = fcmp reassoc nsz arcp contract afn ole float %i.ky, %i.lb
  %.362 = select reassoc nsz arcp contract afn i1 %.inv401, float %i.ky, float %i.lb
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph443, %bb.s
  %i.lc = phi reassoc nsz arcp contract afn float [ %.362, %bb.s ], [ %i.kz, %.lr.ph443 ] ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.kt, %.0395
  %i.le = fmul reassoc nsz arcp contract afn float %i.ks, %.sink.i
  %.neg413.reass = fmul reassoc nsz arcp contract afn float %i.kr, %factor.op.fmul
  %i.lf = fmul reassoc nsz arcp contract afn float %i.ab, %i.kq
  %reass.add416 = fsub reassoc nsz arcp contract afn float %.neg413.reass, %i.lf
  %i.lg = fadd reassoc nsz arcp contract afn float %i.le, %i.ld
  %i.lh = fadd reassoc nsz arcp contract afn float %i.lg, %reass.add416 ; 3 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.kw ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !23
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, %i.lh
  store float %i.lk, ptr %i.li, align 4, !tbaa !23
  br i1 %exitcond497.not, label %..loopexit425_crit_edge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ll = add i64 %i.kw, 1                        ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ll
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !23 ; 3 uses
  %i.lo = load float, ptr %i.df, align 4, !tbaa !23 ; 2 uses
  %i.lp = fcmp reassoc nsz arcp contract afn ult float %i.ln, %i.lo
  br i1 %i.lp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lq = load float, ptr %i.dg, align 4, !tbaa !23 ; 2 uses
  %.inv401.1 = fcmp reassoc nsz arcp contract afn ole float %i.ln, %i.lq
  %.362.1 = select reassoc nsz arcp contract afn i1 %.inv401.1, float %i.ln, float %i.lq
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.lr = phi reassoc nsz arcp contract afn float [ %.362.1, %bb.v ], [ %i.lo, %bb.u ] ; 3 uses
  %i.ls = fmul reassoc nsz arcp contract afn float %i.kp, %.0395
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ko, %.sink.i
  %.neg413.reass.1 = fmul reassoc nsz arcp contract afn float %i.kn, %factor.op.fmul
  %i.lu = fmul reassoc nsz arcp contract afn float %i.ab, %i.km
  %reass.add416.1 = fsub reassoc nsz arcp contract afn float %.neg413.reass.1, %i.lu
  %i.lv = fadd reassoc nsz arcp contract afn float %i.lt, %i.ls
  %i.lw = fadd reassoc nsz arcp contract afn float %i.lv, %reass.add416.1 ; 4 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ll ; 2 uses
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !23
  %i.lz = fadd reassoc nsz arcp contract afn float %i.ly, %i.lw
  store float %i.lz, ptr %i.lx, align 4, !tbaa !23
  br i1 %exitcond497.not.1, label %..loopexit425_crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ma = add i64 %i.kw, 2                        ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ma
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !23 ; 3 uses
  %i.md = load float, ptr %i.dl, align 4, !tbaa !23 ; 2 uses
  %i.me = fcmp reassoc nsz arcp contract afn ult float %i.mc, %i.md
  br i1 %i.me, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mf = load float, ptr %i.dm, align 4, !tbaa !23 ; 2 uses
  %.inv401.2 = fcmp reassoc nsz arcp contract afn ole float %i.mc, %i.mf
  %.362.2 = select reassoc nsz arcp contract afn i1 %.inv401.2, float %i.mc, float %i.mf
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.mg = phi reassoc nsz arcp contract afn float [ %.362.2, %bb.y ], [ %i.md, %bb.x ] ; 2 uses
  %i.mh = fmul reassoc nsz arcp contract afn float %i.kl, %.0395
  %i.mi = fmul reassoc nsz arcp contract afn float %i.kk, %.sink.i
  %.neg413.reass.2 = fmul reassoc nsz arcp contract afn float %i.kj, %factor.op.fmul
  %i.mj = fmul reassoc nsz arcp contract afn float %i.ab, %i.ki
  %reass.add416.2 = fsub reassoc nsz arcp contract afn float %.neg413.reass.2, %i.mj
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mi, %i.mh
  %i.ml = fadd reassoc nsz arcp contract afn float %i.mk, %reass.add416.2 ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ma ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !23
  %i.mo = fadd reassoc nsz arcp contract afn float %i.mn, %i.ml
  store float %i.mo, ptr %i.mm, align 4, !tbaa !23
  br i1 %exitcond497.not.2, label %..loopexit425_crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mp = add i64 %i.kw, 3                        ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mp
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !23 ; 3 uses
  %i.ms = load float, ptr %i.dr, align 4, !tbaa !23 ; 2 uses
  %i.mt = fcmp reassoc nsz arcp contract afn ult float %i.mr, %i.ms
  br i1 %i.mt, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mu = load float, ptr %i.ds, align 4, !tbaa !23 ; 2 uses
  %.inv401.3 = fcmp reassoc nsz arcp contract afn ole float %i.mr, %i.mu
  %.362.3 = select reassoc nsz arcp contract afn i1 %.inv401.3, float %i.mr, float %i.mu
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.mv = phi reassoc nsz arcp contract afn float [ %.362.3, %bb.ab ], [ %i.ms, %bb.aa ]
  %i.mw = fmul reassoc nsz arcp contract afn float %i.kh, %.0395
  %i.mx = fmul reassoc nsz arcp contract afn float %i.kg, %.sink.i
  %.neg413.reass.3 = fmul reassoc nsz arcp contract afn float %i.kf, %factor.op.fmul
  %i.my = fmul reassoc nsz arcp contract afn float %i.ab, %i.ke
  %reass.add416.3 = fsub reassoc nsz arcp contract afn float %.neg413.reass.3, %i.my
  %i.mz = fadd reassoc nsz arcp contract afn float %i.mx, %i.mw
  %i.na = fadd reassoc nsz arcp contract afn float %i.mz, %reass.add416.3 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.mp ; 2 uses
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !23
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nc, %i.na
  store float %i.nd, ptr %i.nb, align 4, !tbaa !23
  br label %..loopexit425_crit_edge

._crit_edge476:                                   ; preds = %._crit_edge473.split, %.preheader424
  ret void

bb.ad:                                            ; preds = %.lr.ph475, %._crit_edge473.split
  %indvars.iv534 = phi i64 [ 0, %.lr.ph475 ], [ %indvars.iv.next535, %._crit_edge473.split ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br i1 %i.dy, label %vector.body604, label %._crit_edge453

vector.body604:                                   ; preds = %bb.ad
  %i.ne = mul i64 %i.eb, %indvars.iv534
  %i.nf = getelementptr [4 x i8], ptr %i.cb, i64 %i.ne
  %wide.masked.load607 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.nf, <4 x i1> %i.ed, <4 x float> poison), !tbaa !23 ; 3 uses
  %wide.masked.load608 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cf, <4 x i1> %i.ed, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.ng = fcmp reassoc nsz arcp contract afn oge <4 x float> %wide.masked.load607, %wide.masked.load608 ; 2 uses
  %i.nh = select <4 x i1> %i.ed, <4 x i1> %i.ng, <4 x i1> zeroinitializer
  %wide.masked.load609 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.cd, <4 x i1> %i.nh, <4 x float> poison), !tbaa !23 ; 2 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ole <4 x float> %wide.masked.load607, %wide.masked.load609
  %i.nj = select reassoc nsz arcp contract afn <4 x i1> %i.ni, <4 x float> %wide.masked.load607, <4 x float> %wide.masked.load609
  %predphi610 = select reassoc nsz arcp contract afn <4 x i1> %i.ng, <4 x float> %i.nj, <4 x float> %wide.masked.load608 ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %predphi610, ptr align 16 %i.h, <4 x i1> %i.ed), !tbaa !23
  %i.nk = fmul reassoc nsz arcp contract afn <4 x float> %predphi610, %broadcast.splat603 ; 2 uses
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.nk, ptr align 16 %i.i, <4 x i1> %i.ed), !tbaa !23
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.nk, ptr align 16 %i.j, <4 x i1> %i.ed), !tbaa !23
  br label %._crit_edge453

._crit_edge453:                                   ; preds = %vector.body604, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br i1 %i.cg, label %.lr.ph462, label %.preheader423.thread561

.lr.ph462:                                        ; preds = %._crit_edge453
  %i.nl = mul nuw nsw i64 %indvars.iv534, %i.dz
  br i1 %i.dy, label %.lr.ph458.preheader, label %._crit_edge473.split

.lr.ph458.preheader:                              ; preds = %.lr.ph462
  %.promoted668 = load float, ptr %i.h, align 16, !tbaa !23
  %.promoted670 = load float, ptr %i.j, align 16, !tbaa !23
  %.promoted672 = load float, ptr %i.i, align 16, !tbaa !23
  %.promoted674 = load float, ptr %i.eg, align 4
  %.promoted676 = load float, ptr %i.eh, align 4
  %.promoted678 = load float, ptr %i.ei, align 4
  %.promoted680 = load float, ptr %i.el, align 8
  %.promoted682 = load float, ptr %i.em, align 8
  %.promoted684 = load float, ptr %i.en, align 8
  %.promoted686 = load float, ptr %i.eq, align 4
  %.promoted688 = load float, ptr %i.er, align 4
  %.promoted690 = load float, ptr %i.es, align 4
  br label %.lr.ph458

.preheader423.thread561:                          ; preds = %._crit_edge453
  br i1 %i.dy, label %.lr.ph464, label %._crit_edge473.split

.lr.ph464.loopexit:                               ; preds = %._crit_edge459
  store float %i.pf, ptr %i.h, align 16, !tbaa !23
  store float %i.pk, ptr %i.j, align 16, !tbaa !23
  store float %i.on, ptr %i.i, align 16, !tbaa !23
  store float %i.pd, ptr %i.eg, align 4
  store float %i.pc, ptr %i.eh, align 4
  store float %i.pb, ptr %i.ei, align 4
  store float %i.pa, ptr %i.el, align 8
  store float %i.oz, ptr %i.em, align 8
  store float %i.oy, ptr %i.en, align 8
  store float %i.ox, ptr %i.eq, align 4
  store float %i.ow, ptr %i.er, align 4
  store float %i.ov, ptr %i.es, align 4
  br label %.lr.ph464

.lr.ph464:                                        ; preds = %.lr.ph464.loopexit, %.preheader423.thread561
  %i.nm = add nuw nsw i64 %indvars.iv534, 1
  %i.nn = mul nsw i64 %i.nm, %i.dz
  %i.no = add nsw i64 %i.nn, -1
  %i.np = mul i64 %i.no, %i.ea
  %i.nq = getelementptr [4 x i8], ptr %i.cb, i64 %i.np ; 2 uses
  br i1 %min.iters.check580, label %scalar.ph579.preheader, label %vector.body585

vector.body585:                                   ; preds = %.lr.ph464, %vector.body585
  %index586 = phi i64 [ %index.next591, %vector.body585 ], [ 0, %.lr.ph464 ] ; 8 uses
  %i.nr = getelementptr [4 x i8], ptr %i.nq, i64 %index586
  %wide.load587 = load <8 x float>, ptr %i.nr, align 4, !tbaa !23 ; 3 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index586
  %wide.load588 = load <8 x float>, ptr %i.ns, align 4, !tbaa !23 ; 2 uses
  %i.nt = fcmp reassoc nsz arcp contract afn oge <8 x float> %wide.load587, %wide.load588 ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %i.cd, i64 %index586
  %wide.masked.load589 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.nu, <8 x i1> %i.nt, <8 x float> poison), !tbaa !23 ; 2 uses
  %i.nv = fcmp reassoc nsz arcp contract afn ole <8 x float> %wide.load587, %wide.masked.load589
  %i.nw = select reassoc nsz arcp contract afn <8 x i1> %i.nv, <8 x float> %wide.load587, <8 x float> %wide.masked.load589
  %predphi590 = select reassoc nsz arcp contract afn <8 x i1> %i.nt, <8 x float> %i.nw, <8 x float> %wide.load588 ; 3 uses
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index586
  store <8 x float> %predphi590, ptr %i.nx, align 16, !tbaa !23
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index586
  store <8 x float> %predphi590, ptr %i.ny, align 16, !tbaa !23
  %i.nz = fmul reassoc nsz arcp contract afn <8 x float> %predphi590, %broadcast.splat584 ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index586
  store <8 x float> %i.nz, ptr %i.oa, align 16, !tbaa !23
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index586
  store <8 x float> %i.nz, ptr %i.ob, align 16, !tbaa !23
  %index.next591 = add nuw i64 %index586, 8       ; 2 uses
  %i.oc = icmp eq i64 %index.next591, %n.vec582
  br i1 %i.oc, label %middle.block592, label %vector.body585, !llvm.loop !26

middle.block592:                                  ; preds = %vector.body585
  br i1 %cmp.n593, label %.preheader, label %scalar.ph579.preheader

scalar.ph579.preheader:                           ; preds = %.lr.ph464, %middle.block592
  %indvars.iv521.ph = phi i64 [ 0, %.lr.ph464 ], [ %n.vec582, %middle.block592 ]
  br label %scalar.ph579

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %._crit_edge459
  %i.od = phi float [ %i.ov, %._crit_edge459 ], [ %.promoted690, %.lr.ph458.preheader ] ; 4 uses
  %i.oe = phi float [ %i.ow, %._crit_edge459 ], [ %.promoted688, %.lr.ph458.preheader ] ; 5 uses
  %i.of = phi float [ %i.ox, %._crit_edge459 ], [ %.promoted686, %.lr.ph458.preheader ] ; 4 uses
  %i.og = phi float [ %i.oy, %._crit_edge459 ], [ %.promoted684, %.lr.ph458.preheader ] ; 3 uses
  %i.oh = phi float [ %i.oz, %._crit_edge459 ], [ %.promoted682, %.lr.ph458.preheader ] ; 5 uses
  %i.oi = phi float [ %i.pa, %._crit_edge459 ], [ %.promoted680, %.lr.ph458.preheader ] ; 3 uses
  %i.oj = phi float [ %i.pb, %._crit_edge459 ], [ %.promoted678, %.lr.ph458.preheader ] ; 2 uses
  %i.ok = phi float [ %i.pc, %._crit_edge459 ], [ %.promoted676, %.lr.ph458.preheader ] ; 5 uses
  %i.ol = phi float [ %i.pd, %._crit_edge459 ], [ %.promoted674, %.lr.ph458.preheader ] ; 2 uses
  %i.om = phi float [ %i.on, %._crit_edge459 ], [ %.promoted672, %.lr.ph458.preheader ]
  %i.on = phi float [ %i.pk, %._crit_edge459 ], [ %.promoted670, %.lr.ph458.preheader ] ; 3 uses
  %i.oo = phi float [ %i.pf, %._crit_edge459 ], [ %.promoted668, %.lr.ph458.preheader ]
  %indvars.iv516 = phi i64 [ %indvars.iv.next517, %._crit_edge459 ], [ 0, %.lr.ph458.preheader ] ; 2 uses
  %i.op = add nuw nsw i64 %i.nl, %indvars.iv516
  %i.oq = mul i64 %i.op, %i.ea                    ; 5 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.oq
  %i.os = load float, ptr %i.or, align 4, !tbaa !23 ; 3 uses
  %i.ot = load float, ptr %i.cf, align 4, !tbaa !23 ; 2 uses
  %i.ou = fcmp reassoc nsz arcp contract afn ult float %i.os, %i.ot
  br i1 %i.ou, label %bb.af, label %bb.ae

._crit_edge459:                                   ; preds = %bb.ao, %bb.al, %bb.ai, %bb.af
  %i.ov = phi float [ %i.oe, %bb.ao ], [ %i.od, %bb.al ], [ %i.od, %bb.ai ], [ %i.od, %bb.af ] ; 2 uses
  %i.ow = phi float [ %i.qx, %bb.ao ], [ %i.oe, %bb.al ], [ %i.oe, %bb.ai ], [ %i.oe, %bb.af ] ; 2 uses
  %i.ox = phi float [ %i.qs, %bb.ao ], [ %i.of, %bb.al ], [ %i.of, %bb.ai ], [ %i.of, %bb.af ] ; 2 uses
  %i.oy = phi float [ %i.oh, %bb.ao ], [ %i.oh, %bb.al ], [ %i.og, %bb.ai ], [ %i.og, %bb.af ] ; 2 uses
  %i.oz = phi float [ %i.qk, %bb.ao ], [ %i.qk, %bb.al ], [ %i.oh, %bb.ai ], [ %i.oh, %bb.af ] ; 2 uses
  %i.pa = phi float [ %i.qf, %bb.ao ], [ %i.qf, %bb.al ], [ %i.oi, %bb.ai ], [ %i.oi, %bb.af ] ; 2 uses
  %i.pb = phi float [ %i.ok, %bb.ao ], [ %i.ok, %bb.al ], [ %i.ok, %bb.ai ], [ %i.oj, %bb.af ] ; 2 uses
  %i.pc = phi float [ %i.px, %bb.ao ], [ %i.px, %bb.al ], [ %i.px, %bb.ai ], [ %i.ok, %bb.af ] ; 2 uses
  %i.pd = phi float [ %i.ps, %bb.ao ], [ %i.ps, %bb.al ], [ %i.ps, %bb.ai ], [ %i.ol, %bb.af ] ; 2 uses
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %exitcond520.not = icmp eq i64 %indvars.iv.next517, %i.ec
  br i1 %exitcond520.not, label %.lr.ph464.loopexit, label %.lr.ph458

bb.ae:                                            ; preds = %.lr.ph458
  %i.pe = load float, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  %.inv399 = fcmp reassoc nsz arcp contract afn ole float %i.os, %i.pe
  %.364 = select reassoc nsz arcp contract afn i1 %.inv399, float %i.os, float %i.pe
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph458, %bb.ae
  %i.pf = phi reassoc nsz arcp contract afn float [ %.364, %bb.ae ], [ %i.ot, %.lr.ph458 ] ; 3 uses
  %i.pg = fmul reassoc nsz arcp contract afn float %i.pf, %.0397
  %i.ph = fmul reassoc nsz arcp contract afn float %i.oo, %.0396
  %.neg408.reass = fmul reassoc nsz arcp contract afn float %i.on, %factor.op.fmul454
  %i.pi = fmul reassoc nsz arcp contract afn float %i.ab, %i.om
  %reass.add411 = fsub reassoc nsz arcp contract afn float %.neg408.reass, %i.pi
  %i.pj = fadd reassoc nsz arcp contract afn float %i.ph, %i.pg
  %i.pk = fadd reassoc nsz arcp contract afn float %i.pj, %reass.add411 ; 3 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.oq
  store float %i.pk, ptr %i.pl, align 4, !tbaa !23
  br i1 %exitcond515.not, label %._crit_edge459, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.pm = add i64 %i.oq, 1                        ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.pm
  %i.po = load float, ptr %i.pn, align 4, !tbaa !23 ; 3 uses
  %i.pp = load float, ptr %i.ee, align 4, !tbaa !23 ; 2 uses
  %i.pq = fcmp reassoc nsz arcp contract afn ult float %i.po, %i.pp
  br i1 %i.pq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pr = load float, ptr %i.ef, align 4, !tbaa !23 ; 2 uses
  %.inv399.1 = fcmp reassoc nsz arcp contract afn ole float %i.po, %i.pr
  %.364.1 = select reassoc nsz arcp contract afn i1 %.inv399.1, float %i.po, float %i.pr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ps = phi reassoc nsz arcp contract afn float [ %.364.1, %bb.ah ], [ %i.pp, %bb.ag ] ; 4 uses
  %i.pt = fmul reassoc nsz arcp contract afn float %i.ps, %.0397
  %i.pu = fmul reassoc nsz arcp contract afn float %i.ol, %.0396
  %.neg408.reass.1 = fmul reassoc nsz arcp contract afn float %i.ok, %factor.op.fmul454
  %i.pv = fmul reassoc nsz arcp contract afn float %i.ab, %i.oj
  %reass.add411.1 = fsub reassoc nsz arcp contract afn float %.neg408.reass.1, %i.pv
  %i.pw = fadd reassoc nsz arcp contract afn float %i.pu, %i.pt
  %i.px = fadd reassoc nsz arcp contract afn float %i.pw, %reass.add411.1 ; 4 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pm
  store float %i.px, ptr %i.py, align 4, !tbaa !23
  br i1 %exitcond515.not.1, label %._crit_edge459, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.pz = add i64 %i.oq, 2                        ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.pz
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !23 ; 3 uses
  %i.qc = load float, ptr %i.ej, align 4, !tbaa !23 ; 2 uses
  %i.qd = fcmp reassoc nsz arcp contract afn ult float %i.qb, %i.qc
  br i1 %i.qd, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.qe = load float, ptr %i.ek, align 4, !tbaa !23 ; 2 uses
  %.inv399.2 = fcmp reassoc nsz arcp contract afn ole float %i.qb, %i.qe
  %.364.2 = select reassoc nsz arcp contract afn i1 %.inv399.2, float %i.qb, float %i.qe
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.qf = phi reassoc nsz arcp contract afn float [ %.364.2, %bb.ak ], [ %i.qc, %bb.aj ] ; 3 uses
  %i.qg = fmul reassoc nsz arcp contract afn float %i.qf, %.0397
  %i.qh = fmul reassoc nsz arcp contract afn float %i.oi, %.0396
  %.neg408.reass.2 = fmul reassoc nsz arcp contract afn float %i.oh, %factor.op.fmul454
  %i.qi = fmul reassoc nsz arcp contract afn float %i.ab, %i.og
  %reass.add411.2 = fsub reassoc nsz arcp contract afn float %.neg408.reass.2, %i.qi
  %i.qj = fadd reassoc nsz arcp contract afn float %i.qh, %i.qg
  %i.qk = fadd reassoc nsz arcp contract afn float %i.qj, %reass.add411.2 ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pz
  store float %i.qk, ptr %i.ql, align 4, !tbaa !23
  br i1 %exitcond515.not.2, label %._crit_edge459, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qm = add i64 %i.oq, 3                        ; 2 uses
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.qm
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !23 ; 3 uses
  %i.qp = load float, ptr %i.eo, align 4, !tbaa !23 ; 2 uses
  %i.qq = fcmp reassoc nsz arcp contract afn ult float %i.qo, %i.qp
  br i1 %i.qq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qr = load float, ptr %i.ep, align 4, !tbaa !23 ; 2 uses
  %.inv399.3 = fcmp reassoc nsz arcp contract afn ole float %i.qo, %i.qr
  %.364.3 = select reassoc nsz arcp contract afn i1 %.inv399.3, float %i.qo, float %i.qr
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.qs = phi reassoc nsz arcp contract afn float [ %.364.3, %bb.an ], [ %i.qp, %bb.am ] ; 2 uses
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qs, %.0397
  %i.qu = fmul reassoc nsz arcp contract afn float %i.of, %.0396
  %.neg408.reass.3 = fmul reassoc nsz arcp contract afn float %i.oe, %factor.op.fmul454
  %i.qv = fmul reassoc nsz arcp contract afn float %i.ab, %i.od
  %reass.add411.3 = fsub reassoc nsz arcp contract afn float %.neg408.reass.3, %i.qv
  %i.qw = fadd reassoc nsz arcp contract afn float %i.qu, %i.qt
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qw, %reass.add411.3 ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.qm
  store float %i.qx, ptr %i.qy, align 4, !tbaa !23
  br label %._crit_edge459

.preheader:                                       ; preds = %bb.aq, %middle.block592
  br i1 %i.cg, label %.lr.ph472, label %._crit_edge473.split

.lr.ph472:                                        ; preds = %.preheader
  %i.qz = mul nuw nsw i64 %indvars.iv534, %i.dz
  br i1 %i.dy, label %.lr.ph469.preheader, label %._crit_edge473.split

.lr.ph469.preheader:                              ; preds = %.lr.ph472
  %.promoted692 = load float, ptr %i.k, align 16, !tbaa !23
  %.promoted694 = load float, ptr %i.l, align 16, !tbaa !23
  %.promoted696 = load float, ptr %i.m, align 16, !tbaa !23
  %.promoted698 = load float, ptr %i.n, align 16, !tbaa !23
  %.promoted700 = load float, ptr %i.ev, align 4
  %.promoted702 = load float, ptr %i.ew, align 4
  %.promoted704 = load float, ptr %i.ex, align 4
  %.promoted706 = load float, ptr %i.ey, align 4
  %.promoted708 = load float, ptr %i.fb, align 8
  %.promoted710 = load float, ptr %i.fc, align 8
  %.promoted712 = load float, ptr %i.fd, align 8
  %.promoted714 = load float, ptr %i.fe, align 8
  %.promoted716 = load float, ptr %i.fh, align 4
  %.promoted718 = load float, ptr %i.fi, align 4
  %.promoted720 = load float, ptr %i.fj, align 4
  %.promoted722 = load float, ptr %i.fk, align 4
  br label %.lr.ph469

scalar.ph579:                                     ; preds = %scalar.ph579.preheader, %bb.aq
  %indvars.iv521 = phi i64 [ %indvars.iv.next522, %bb.aq ], [ %indvars.iv521.ph, %scalar.ph579.preheader ] ; 8 uses
  %i.ra = getelementptr [4 x i8], ptr %i.nq, i64 %indvars.iv521
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !23 ; 3 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv521
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !23 ; 2 uses
  %i.re = fcmp reassoc nsz arcp contract afn ult float %i.rb, %i.rd
  br i1 %i.re, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %scalar.ph579
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv521
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !23 ; 2 uses
  %.inv398 = fcmp reassoc nsz arcp contract afn ole float %i.rb, %i.rg
  %.365 = select reassoc nsz arcp contract afn i1 %.inv398, float %i.rb, float %i.rg
  br label %bb.aq

bb.aq:                                            ; preds = %scalar.ph579, %bb.ap
  %i.rh = phi reassoc nsz arcp contract afn float [ %.365, %bb.ap ], [ %i.rd, %scalar.ph579 ] ; 3 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv521
  store float %i.rh, ptr %i.ri, align 4, !tbaa !23
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv521
  store float %i.rh, ptr %i.rj, align 4, !tbaa !23
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rh, %i.bz ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv521
  store float %i.rk, ptr %i.rl, align 4, !tbaa !23
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv521
  store float %i.rk, ptr %i.rm, align 4, !tbaa !23
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, %wide.trip.count524
  br i1 %exitcond525.not, label %.preheader, label %scalar.ph579, !llvm.loop !27

..loopexit_crit_edge:                             ; preds = %bb.bb, %bb.ay, %bb.av, %bb.as
  %i.rn = phi float [ %i.sb, %bb.bb ], [ %i.sa, %bb.ay ], [ %i.sa, %bb.av ], [ %i.sa, %bb.as ] ; 2 uses
  %i.ro = phi float [ %i.uv, %bb.bb ], [ %i.sb, %bb.ay ], [ %i.sb, %bb.av ], [ %i.sb, %bb.as ] ; 2 uses
  %i.rp = phi float [ %i.sd, %bb.bb ], [ %i.sc, %bb.ay ], [ %i.sc, %bb.av ], [ %i.sc, %bb.as ] ; 2 uses
  %i.rq = phi float [ %i.uq, %bb.bb ], [ %i.sd, %bb.ay ], [ %i.sd, %bb.av ], [ %i.sd, %bb.as ] ; 2 uses
  %i.rr = phi float [ %i.sf, %bb.bb ], [ %i.sf, %bb.ay ], [ %i.se, %bb.av ], [ %i.se, %bb.as ] ; 2 uses
  %i.rs = phi float [ %i.ug, %bb.bb ], [ %i.ug, %bb.ay ], [ %i.sf, %bb.av ], [ %i.sf, %bb.as ] ; 2 uses
  %i.rt = phi float [ %i.sh, %bb.bb ], [ %i.sh, %bb.ay ], [ %i.sg, %bb.av ], [ %i.sg, %bb.as ] ; 2 uses
  %i.ru = phi float [ %i.ub, %bb.bb ], [ %i.ub, %bb.ay ], [ %i.sh, %bb.av ], [ %i.sh, %bb.as ] ; 2 uses
  %i.rv = phi float [ %i.sj, %bb.bb ], [ %i.sj, %bb.ay ], [ %i.sj, %bb.av ], [ %i.si, %bb.as ] ; 2 uses
  %i.rw = phi float [ %i.tr, %bb.bb ], [ %i.tr, %bb.ay ], [ %i.tr, %bb.av ], [ %i.sj, %bb.as ] ; 2 uses
  %i.rx = phi float [ %i.sl, %bb.bb ], [ %i.sl, %bb.ay ], [ %i.sl, %bb.av ], [ %i.sk, %bb.as ] ; 2 uses
  %i.ry = phi float [ %i.tm, %bb.bb ], [ %i.tm, %bb.ay ], [ %i.tm, %bb.av ], [ %i.sl, %bb.as ] ; 2 uses
  %i.rz = icmp sgt i64 %indvars.iv531, 1
  br i1 %i.rz, label %.lr.ph469, label %._crit_edge473.split.loopexit

._crit_edge473.split.loopexit:                    ; preds = %..loopexit_crit_edge
  store float %i.sx, ptr %i.k, align 16, !tbaa !23
  store float %i.sp, ptr %i.l, align 16, !tbaa !23
  store float %i.tc, ptr %i.m, align 16, !tbaa !23
  store float %i.sn, ptr %i.n, align 16, !tbaa !23
  store float %i.ry, ptr %i.ev, align 4
  store float %i.rx, ptr %i.ew, align 4
  store float %i.rw, ptr %i.ex, align 4
  store float %i.rv, ptr %i.ey, align 4
  store float %i.ru, ptr %i.fb, align 8
  store float %i.rt, ptr %i.fc, align 8
  store float %i.rs, ptr %i.fd, align 8
  store float %i.rr, ptr %i.fe, align 8
  store float %i.rq, ptr %i.fh, align 4
  store float %i.rp, ptr %i.fi, align 4
  store float %i.ro, ptr %i.fj, align 4
  store float %i.rn, ptr %i.fk, align 4
  br label %._crit_edge473.split

._crit_edge473.split:                             ; preds = %._crit_edge473.split.loopexit, %.preheader423.thread561, %.lr.ph462, %.lr.ph472, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %indvars.iv.next535 = add nuw nsw i64 %indvars.iv534, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next535, %wide.trip.count537
  br i1 %exitcond538.not, label %._crit_edge476, label %bb.ad

.lr.ph469:                                        ; preds = %.lr.ph469.preheader, %..loopexit_crit_edge
  %i.sa = phi float [ %i.rn, %..loopexit_crit_edge ], [ %.promoted722, %.lr.ph469.preheader ] ; 4 uses
  %i.sb = phi float [ %i.ro, %..loopexit_crit_edge ], [ %.promoted720, %.lr.ph469.preheader ] ; 5 uses
  %i.sc = phi float [ %i.rp, %..loopexit_crit_edge ], [ %.promoted718, %.lr.ph469.preheader ] ; 4 uses
  %i.sd = phi float [ %i.rq, %..loopexit_crit_edge ], [ %.promoted716, %.lr.ph469.preheader ] ; 5 uses
  %i.se = phi float [ %i.rr, %..loopexit_crit_edge ], [ %.promoted714, %.lr.ph469.preheader ] ; 3 uses
  %i.sf = phi float [ %i.rs, %..loopexit_crit_edge ], [ %.promoted712, %.lr.ph469.preheader ] ; 5 uses
  %i.sg = phi float [ %i.rt, %..loopexit_crit_edge ], [ %.promoted710, %.lr.ph469.preheader ] ; 3 uses
  %i.sh = phi float [ %i.ru, %..loopexit_crit_edge ], [ %.promoted708, %.lr.ph469.preheader ] ; 5 uses
  %i.si = phi float [ %i.rv, %..loopexit_crit_edge ], [ %.promoted706, %.lr.ph469.preheader ] ; 2 uses
  %i.sj = phi float [ %i.rw, %..loopexit_crit_edge ], [ %.promoted704, %.lr.ph469.preheader ] ; 5 uses
  %i.sk = phi float [ %i.rx, %..loopexit_crit_edge ], [ %.promoted702, %.lr.ph469.preheader ] ; 2 uses
  %i.sl = phi float [ %i.ry, %..loopexit_crit_edge ], [ %.promoted700, %.lr.ph469.preheader ] ; 5 uses
  %i.sm = phi float [ %i.sn, %..loopexit_crit_edge ], [ %.promoted698, %.lr.ph469.preheader ]
  %i.sn = phi float [ %i.tc, %..loopexit_crit_edge ], [ %.promoted696, %.lr.ph469.preheader ] ; 3 uses
  %i.so = phi float [ %i.sp, %..loopexit_crit_edge ], [ %.promoted694, %.lr.ph469.preheader ]
  %i.sp = phi float [ %i.sx, %..loopexit_crit_edge ], [ %.promoted692, %.lr.ph469.preheader ] ; 3 uses
  %indvars.iv531 = phi i64 [ %indvars.iv.next532, %..loopexit_crit_edge ], [ %i.ec, %.lr.ph469.preheader ] ; 2 uses
  %indvars.iv.next532 = add nsw i64 %indvars.iv531, -1 ; 2 uses
  %i.sq = add nuw nsw i64 %i.qz, %indvars.iv.next532
  %i.sr = mul i64 %i.sq, %i.ea                    ; 5 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.sr
  %i.st = load float, ptr %i.ss, align 4, !tbaa !23 ; 3 uses
  %i.su = load float, ptr %i.cf, align 4, !tbaa !23 ; 2 uses
  %i.sv = fcmp reassoc nsz arcp contract afn ult float %i.st, %i.su
  br i1 %i.sv, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph469
  %i.sw = load float, ptr %i.cd, align 4, !tbaa !23 ; 2 uses
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.st, %i.sw
  %.366 = select reassoc nsz arcp contract afn i1 %.inv, float %i.st, float %i.sw
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph469, %bb.ar
  %i.sx = phi reassoc nsz arcp contract afn float [ %.366, %bb.ar ], [ %i.su, %.lr.ph469 ] ; 2 uses
  %i.sy = fmul reassoc nsz arcp contract afn float %i.sp, %.0395
  %i.sz = fmul reassoc nsz arcp contract afn float %i.so, %.sink.i
  %.neg405.reass = fmul reassoc nsz arcp contract afn float %i.sn, %factor.op.fmul454
  %i.ta = fmul reassoc nsz arcp contract afn float %i.ab, %i.sm
  %reass.add = fsub reassoc nsz arcp contract afn float %.neg405.reass, %i.ta
  %i.tb = fadd reassoc nsz arcp contract afn float %i.sz, %i.sy
  %i.tc = fadd reassoc nsz arcp contract afn float %i.tb, %reass.add ; 3 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.sr ; 2 uses
  %i.te = load float, ptr %i.td, align 4, !tbaa !23
  %i.tf = fadd reassoc nsz arcp contract afn float %i.te, %i.tc
  store float %i.tf, ptr %i.td, align 4, !tbaa !23
  br i1 %exitcond530.not, label %..loopexit_crit_edge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.tg = add i64 %i.sr, 1                        ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.tg
  %i.ti = load float, ptr %i.th, align 4, !tbaa !23 ; 3 uses
  %i.tj = load float, ptr %i.et, align 4, !tbaa !23 ; 2 uses
  %i.tk = fcmp reassoc nsz arcp contract afn ult float %i.ti, %i.tj
  br i1 %i.tk, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.tl = load float, ptr %i.eu, align 4, !tbaa !23 ; 2 uses
  %.inv.1 = fcmp reassoc nsz arcp contract afn ole float %i.ti, %i.tl
  %.366.1 = select reassoc nsz arcp contract afn i1 %.inv.1, float %i.ti, float %i.tl
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.tm = phi reassoc nsz arcp contract afn float [ %.366.1, %bb.au ], [ %i.tj, %bb.at ] ; 3 uses
  %i.tn = fmul reassoc nsz arcp contract afn float %i.sl, %.0395
  %i.to = fmul reassoc nsz arcp contract afn float %i.sk, %.sink.i
  %.neg405.reass.1 = fmul reassoc nsz arcp contract afn float %i.sj, %factor.op.fmul454
  %i.tp = fmul reassoc nsz arcp contract afn float %i.ab, %i.si
  %reass.add.1 = fsub reassoc nsz arcp contract afn float %.neg405.reass.1, %i.tp
  %i.tq = fadd reassoc nsz arcp contract afn float %i.to, %i.tn
  %i.tr = fadd reassoc nsz arcp contract afn float %i.tq, %reass.add.1 ; 4 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tg ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !23
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tt, %i.tr
  store float %i.tu, ptr %i.ts, align 4, !tbaa !23
  br i1 %exitcond530.not.1, label %..loopexit_crit_edge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.tv = add i64 %i.sr, 2                        ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.tv
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !23 ; 3 uses
  %i.ty = load float, ptr %i.ez, align 4, !tbaa !23 ; 2 uses
  %i.tz = fcmp reassoc nsz arcp contract afn ult float %i.tx, %i.ty
  br i1 %i.tz, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ua = load float, ptr %i.fa, align 4, !tbaa !23 ; 2 uses
  %.inv.2 = fcmp reassoc nsz arcp contract afn ole float %i.tx, %i.ua
  %.366.2 = select reassoc nsz arcp contract afn i1 %.inv.2, float %i.tx, float %i.ua
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ub = phi reassoc nsz arcp contract afn float [ %.366.2, %bb.ax ], [ %i.ty, %bb.aw ] ; 2 uses
  %i.uc = fmul reassoc nsz arcp contract afn float %i.sh, %.0395
  %i.ud = fmul reassoc nsz arcp contract afn float %i.sg, %.sink.i
  %.neg405.reass.2 = fmul reassoc nsz arcp contract afn float %i.sf, %factor.op.fmul454
  %i.ue = fmul reassoc nsz arcp contract afn float %i.ab, %i.se
  %reass.add.2 = fsub reassoc nsz arcp contract afn float %.neg405.reass.2, %i.ue
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ud, %i.uc
  %i.ug = fadd reassoc nsz arcp contract afn float %i.uf, %reass.add.2 ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tv ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !23
  %i.uj = fadd reassoc nsz arcp contract afn float %i.ui, %i.ug
  store float %i.uj, ptr %i.uh, align 4, !tbaa !23
  br i1 %exitcond530.not.2, label %..loopexit_crit_edge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.uk = add i64 %i.sr, 3                        ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.uk
  %i.um = load float, ptr %i.ul, align 4, !tbaa !23 ; 3 uses
  %i.un = load float, ptr %i.ff, align 4, !tbaa !23 ; 2 uses
  %i.uo = fcmp reassoc nsz arcp contract afn ult float %i.um, %i.un
  br i1 %i.uo, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.up = load float, ptr %i.fg, align 4, !tbaa !23 ; 2 uses
  %.inv.3 = fcmp reassoc nsz arcp contract afn ole float %i.um, %i.up
  %.366.3 = select reassoc nsz arcp contract afn i1 %.inv.3, float %i.um, float %i.up
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.uq = phi reassoc nsz arcp contract afn float [ %.366.3, %bb.ba ], [ %i.un, %bb.az ]
  %i.ur = fmul reassoc nsz arcp contract afn float %i.sd, %.0395
  %i.us = fmul reassoc nsz arcp contract afn float %i.sc, %.sink.i
  %.neg405.reass.3 = fmul reassoc nsz arcp contract afn float %i.sb, %factor.op.fmul454
  %i.ut = fmul reassoc nsz arcp contract afn float %i.ab, %i.sa
  %reass.add.3 = fsub reassoc nsz arcp contract afn float %.neg405.reass.3, %i.ut
  %i.uu = fadd reassoc nsz arcp contract afn float %i.us, %i.ur
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, %reass.add.3 ; 2 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uk ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !23
  %i.uy = fadd reassoc nsz arcp contract afn float %i.ux, %i.uv
  store float %i.uy, ptr %i.uw, align 4, !tbaa !23
  br label %..loopexit_crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_gaussian_blur_4c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16   ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !19
  %i.j = fdiv reassoc nsz arcp contract afn float 1.695000e+00, %i.g ; 7 uses
  %i.k = fneg reassoc nsz arcp contract afn float %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.k) ; 16 uses
  %i.m = fmul reassoc nsz arcp contract afn float %i.j, -2.000000e+00
  %i.n = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.m) ; 11 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.l, -2.000000e+00
  switch i32 %i.i, label %bb.b [
    i32 2, label %bb.d
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = fneg reassoc nsz arcp contract afn float %i.n
  %i.q = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.l ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.q
  %i.s = fmul reassoc nsz arcp contract afn float %i.j, 2.000000e+00
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.l
  %i.u = fadd reassoc nsz arcp contract afn float %i.t, 1.000000e+00
  %i.v = fsub reassoc nsz arcp contract afn float %i.u, %i.n
  %i.w = fdiv reassoc nsz arcp contract afn float %i.r, %i.v ; 3 uses
  %i.x = fadd reassoc nsz arcp contract afn float %i.j, -1.000000e+00
  %i.y = fmul reassoc nsz arcp contract afn float %i.l, %i.x
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.j, 1.000000e+00
  %i.ab = fmul reassoc nsz arcp contract afn float %i.l, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.p, i64 1
  %i.ag = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, %i.af
  br label %_compute_gauss_params.exit

bb.c:                                             ; preds = %bb.a
  %i.ah = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.l ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ah ; 2 uses
  %i.aj = fneg reassoc nsz arcp contract afn float %i.ai
  %i.ak = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aj, i64 0
  br label %_compute_gauss_params.exit

bb.d:                                             ; preds = %bb.a
  %i.al = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.am = fmul reassoc nsz arcp contract afn float %i.j, 2.000000e+00
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.l
  %i.ao = fmul reassoc nsz arcp contract afn float %i.l, 3.000000e+00 ; 3 uses
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, -1.000000e+00
end_hunk_0
begin_hunk_1_@dt_gaussian_blur_4c:bb.a

.lr.ph385:                                        ; preds = %.preheader363
  %.idx297 = mul i64 %i.cy, %.0263395
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx297
  %i.is = load <4 x float>, ptr %i.ir, align 4, !tbaa !23 ; 3 uses
  %i.it = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.is, %i.cb
  %i.iu = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.is, %i.cc
  %i.iv = select <4 x i1> %i.iu, <4 x float> %i.is, <4 x float> %i.cc
  %i.iw = select <4 x i1> %i.it, <4 x float> %i.cb, <4 x float> %i.iv ; 5 uses
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %i.iw, %i.de ; 5 uses
  %i.iy = mul i64 %.0263395, %i.b
  %i.iz = extractelement <4 x float> %i.ix, i64 0
  %i.ja = extractelement <4 x float> %i.ix, i64 1
  %i.jb = extractelement <4 x float> %i.ix, i64 2
  %i.jc = extractelement <4 x float> %i.ix, i64 3
  %i.jd = extractelement <4 x float> %i.iw, i64 0
  %i.je = extractelement <4 x float> %i.iw, i64 1
  %i.jf = extractelement <4 x float> %i.iw, i64 2
  %i.jg = extractelement <4 x float> %i.iw, i64 3
  br label %bb.f

._crit_edge386:                                   ; preds = %bb.f, %.preheader363
  %i.jh = add nuw i64 %.0263395, 1                ; 3 uses
  br i1 %i.cz, label %.lr.ph393, label %._crit_edge394

bb.f:                                             ; preds = %.lr.ph385, %bb.f
  %.sroa.11435.0 = phi nsz float [ %i.jg, %.lr.ph385 ], [ %i.lb, %bb.f ]
  %.sroa.8434.0 = phi nsz float [ %i.jf, %.lr.ph385 ], [ %i.kv, %bb.f ]
  %.sroa.5433.0 = phi nsz float [ %i.je, %.lr.ph385 ], [ %i.kp, %bb.f ]
  %.sroa.0432.0 = phi nsz float [ %i.jd, %.lr.ph385 ], [ %i.jo, %bb.f ]
  %.sroa.11431.0 = phi nsz float [ %i.jc, %.lr.ph385 ], [ %i.kk, %bb.f ]
  %.sroa.8430.0 = phi nsz float [ %i.jb, %.lr.ph385 ], [ %i.ke, %bb.f ]
  %.sroa.5429.0 = phi nsz float [ %i.ja, %.lr.ph385 ], [ %i.jy, %bb.f ]
  %.sroa.0428.0 = phi nsz float [ %i.iz, %.lr.ph385 ], [ %i.jr, %bb.f ]
  %.0261384 = phi i64 [ 0, %.lr.ph385 ], [ %i.lg, %bb.f ] ; 2 uses
  %i.ji = phi <4 x float> [ %i.ix, %.lr.ph385 ], [ %i.lk, %bb.f ] ; 4 uses
  %i.jj = add i64 %.0261384, %i.iy
  %i.jk = shl i64 %i.jj, 2                        ; 5 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.jk
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !23 ; 3 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ult float %i.jm, %i.df
  %.inv339 = fcmp reassoc nsz arcp contract afn ole float %i.jm, %i.dj
  %.304 = select reassoc nsz arcp contract afn i1 %.inv339, float %i.jm, float %i.dj
  %i.jo = select reassoc nsz arcp contract afn i1 %i.jn, float %i.df, float %.304 ; 2 uses
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, %.0337
  %i.jq = fmul reassoc nsz arcp contract afn float %.sroa.0432.0, %.0336
  %i.jr = extractelement <4 x float> %i.ji, i64 0 ; 2 uses
  %.neg348.reass = fmul reassoc nsz arcp contract afn float %i.jr, %factor.op.fmul381
  %i.js = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.0428.0
  %reass.add351 = fsub reassoc nsz arcp contract afn float %.neg348.reass, %i.js
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jq, %i.jp
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jk
  %i.jv = or disjoint i64 %i.jk, 1                ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.jv
  %i.jx = fmul reassoc nsz arcp contract afn float %.sroa.5433.0, %.0336
  %i.jy = extractelement <4 x float> %i.ji, i64 1 ; 2 uses
  %.neg348.reass.1 = fmul reassoc nsz arcp contract afn float %i.jy, %factor.op.fmul381
  %i.jz = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.5429.0
  %reass.add351.1 = fsub reassoc nsz arcp contract afn float %.neg348.reass.1, %i.jz
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jv
  %i.kb = or disjoint i64 %i.jk, 2                ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.kb
  %i.kd = fmul reassoc nsz arcp contract afn float %.sroa.8434.0, %.0336
  %i.ke = extractelement <4 x float> %i.ji, i64 2 ; 2 uses
  %.neg348.reass.2 = fmul reassoc nsz arcp contract afn float %i.ke, %factor.op.fmul381
  %i.kf = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.8430.0
  %reass.add351.2 = fsub reassoc nsz arcp contract afn float %.neg348.reass.2, %i.kf
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kb
  %i.kh = or disjoint i64 %i.jk, 3                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.kh
  %i.kj = fmul reassoc nsz arcp contract afn float %.sroa.11435.0, %.0336
  %i.kk = extractelement <4 x float> %i.ji, i64 3 ; 2 uses
  %.neg348.reass.3 = fmul reassoc nsz arcp contract afn float %i.kk, %factor.op.fmul381
  %i.kl = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.11431.0
  %reass.add351.3 = fsub reassoc nsz arcp contract afn float %.neg348.reass.3, %i.kl
  %i.km = fadd reassoc nsz arcp contract afn float %i.jt, %reass.add351 ; 2 uses
  store float %i.km, ptr %i.ju, align 4, !tbaa !23
  %i.kn = load float, ptr %i.jw, align 4, !tbaa !23 ; 3 uses
  %i.ko = fcmp reassoc nsz arcp contract afn ult float %i.kn, %i.dg
  %.inv339.1 = fcmp reassoc nsz arcp contract afn ole float %i.kn, %i.dk
  %.304.1 = select reassoc nsz arcp contract afn i1 %.inv339.1, float %i.kn, float %i.dk
  %i.kp = select reassoc nsz arcp contract afn i1 %i.ko, float %i.dg, float %.304.1 ; 2 uses
  %i.kq = fmul reassoc nsz arcp contract afn float %i.kp, %.0337
  %i.kr = fadd reassoc nsz arcp contract afn float %i.jx, %i.kq
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kr, %reass.add351.1 ; 2 uses
  store float %i.ks, ptr %i.ka, align 4, !tbaa !23
  %i.kt = load float, ptr %i.kc, align 4, !tbaa !23 ; 3 uses
  %i.ku = fcmp reassoc nsz arcp contract afn ult float %i.kt, %i.dh
  %.inv339.2 = fcmp reassoc nsz arcp contract afn ole float %i.kt, %i.dl
  %.304.2 = select reassoc nsz arcp contract afn i1 %.inv339.2, float %i.kt, float %i.dl
  %i.kv = select reassoc nsz arcp contract afn i1 %i.ku, float %i.dh, float %.304.2 ; 2 uses
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, %.0337
  %i.kx = fadd reassoc nsz arcp contract afn float %i.kd, %i.kw
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kx, %reass.add351.2 ; 2 uses
  store float %i.ky, ptr %i.kg, align 4, !tbaa !23
  %i.kz = load float, ptr %i.ki, align 4, !tbaa !23 ; 3 uses
  %i.la = fcmp reassoc nsz arcp contract afn ult float %i.kz, %i.di
  %.inv339.3 = fcmp reassoc nsz arcp contract afn ole float %i.kz, %i.dm
  %.304.3 = select reassoc nsz arcp contract afn i1 %.inv339.3, float %i.kz, float %i.dm
  %i.lb = select reassoc nsz arcp contract afn i1 %i.la, float %i.di, float %.304.3 ; 2 uses
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, %.0337
  %i.ld = fadd reassoc nsz arcp contract afn float %i.kj, %i.lc
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, %reass.add351.3 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kh
  store float %i.le, ptr %i.lf, align 4, !tbaa !23
  %i.lg = add nuw i64 %.0261384, 1                ; 2 uses
  %exitcond407.not = icmp eq i64 %i.lg, %i.b
  %i.lh = insertelement <4 x float> poison, float %i.km, i64 0
  %i.li = insertelement <4 x float> %i.lh, float %i.ks, i64 1
  %i.lj = insertelement <4 x float> %i.li, float %i.ky, i64 2
  %i.lk = insertelement <4 x float> %i.lj, float %i.le, i64 3
  br i1 %exitcond407.not, label %._crit_edge386, label %bb.f

.lr.ph393:                                        ; preds = %._crit_edge386
  %.idx = mul i64 %i.cy, %i.jh
  %i.ll = getelementptr i8, ptr %i.bw, i64 %.idx
  %i.lm = getelementptr i8, ptr %i.ll, i64 -16
  %i.ln = load <4 x float>, ptr %i.lm, align 4, !tbaa !23 ; 3 uses
  %i.lo = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ln, %i.cb
  %i.lp = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.ln, %i.cc
  %i.lq = select <4 x i1> %i.lp, <4 x float> %i.ln, <4 x float> %i.cc
  %i.lr = select <4 x i1> %i.lo, <4 x float> %i.cb, <4 x float> %i.lq ; 3 uses
  %i.ls = fmul reassoc nsz arcp contract afn <4 x float> %i.lr, %i.dc ; 2 uses
  %i.lt = mul i64 %.0263395, %i.b
  br label %.loopexit

._crit_edge394:                                   ; preds = %.loopexit, %._crit_edge386
  %exitcond411.not = icmp eq i64 %i.jh, %i.e
  br i1 %exitcond411.not, label %._crit_edge397, label %.preheader363

.loopexit:                                        ; preds = %.lr.ph393, %.loopexit
  %indvars.iv = phi i64 [ %i.da, %.lr.ph393 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.lu = phi <4 x float> [ %i.ls, %.lr.ph393 ], [ %i.mr, %.loopexit ] ; 2 uses
  %i.lv = phi <4 x float> [ %i.lr, %.lr.ph393 ], [ %i.ns, %.loopexit ] ; 2 uses
  %i.lw = phi <4 x float> [ %i.lr, %.lr.ph393 ], [ %i.nq, %.loopexit ] ; 2 uses
  %i.lx = phi <4 x float> [ %i.ls, %.lr.ph393 ], [ %i.lu, %.loopexit ]
  %i.ly = add i64 %i.lt, %indvars.iv
  %i.lz = shl i64 %i.ly, 2                        ; 5 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !23
  %i.mc = fmul reassoc nsz arcp contract afn <4 x float> %i.lw, %i.dn
  %i.md = fmul reassoc nsz arcp contract afn <4 x float> %i.lv, %i.bo
  %i.me = fmul reassoc nsz arcp contract afn <4 x float> %i.lu, %i.dp
  %i.mf = fmul reassoc nsz arcp contract afn <4 x float> %i.dr, %i.lx
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lz ; 2 uses
  %i.mh = or disjoint i64 %i.lz, 1                ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.mh
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mh
  %i.mk = or disjoint i64 %i.lz, 2                ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mk
  %i.mn = or disjoint i64 %i.lz, 3                ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.mn
  %i.mp = fsub reassoc nsz arcp contract afn <4 x float> %i.me, %i.mf
  %i.mq = fadd reassoc nsz arcp contract afn <4 x float> %i.md, %i.mc
  %i.mr = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mp ; 2 uses
  %i.ms = insertelement <2 x float> poison, float %i.mb, i64 0
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mn
  %i.mu = load <4 x float>, ptr %i.mg, align 4, !tbaa !23
  %i.mv = fadd reassoc nsz arcp contract afn <4 x float> %i.mu, %i.mr ; 4 uses
  %i.mw = extractelement <4 x float> %i.mv, i64 0
  store float %i.mw, ptr %i.mg, align 4, !tbaa !23
  %i.mx = load float, ptr %i.mi, align 4, !tbaa !23
  %i.my = extractelement <4 x float> %i.mv, i64 1
  store float %i.my, ptr %i.mj, align 4, !tbaa !23
  %i.mz = load float, ptr %i.ml, align 4, !tbaa !23
  %i.na = insertelement <2 x float> %i.ms, float %i.mz, i64 1 ; 3 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.na, %i.du
  %i.nc = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.na, %i.dv
  %i.nd = select <2 x i1> %i.nc, <2 x float> %i.na, <2 x float> %i.dv
  %i.ne = select <2 x i1> %i.nb, <2 x float> %i.du, <2 x float> %i.nd
  %i.nf = extractelement <4 x float> %i.mv, i64 2
  store float %i.nf, ptr %i.mm, align 4, !tbaa !23
  %i.ng = load float, ptr %i.mo, align 4, !tbaa !23
  %i.nh = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.ni = insertelement <2 x float> %i.nh, float %i.ng, i64 1 ; 3 uses
  %i.nj = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.ni, %i.ds
  %i.nk = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.ni, %i.dt
  %i.nl = select <2 x i1> %i.nk, <2 x float> %i.ni, <2 x float> %i.dt
  %i.nm = select <2 x i1> %i.nj, <2 x float> %i.ds, <2 x float> %i.nl
  %i.nn = extractelement <4 x float> %i.mv, i64 3
  store float %i.nn, ptr %i.mt, align 4, !tbaa !23
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.no = icmp sgt i64 %indvars.iv, 0
  %i.np = shufflevector <2 x float> %i.ne, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.nq = shufflevector <4 x float> %i.np, <4 x float> %i.lv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.nr = shufflevector <2 x float> %i.nm, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.ns = shufflevector <4 x float> %i.lw, <4 x float> %i.nr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  br i1 %i.no, label %.loopexit, label %._crit_edge394
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @dt_gaussian_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.f) #18
  tail call void @free(ptr noundef nonnull %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_gaussian_fast_blur(ptr nofree noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [25 x float], align 16            ; 21 uses
  %i.b = alloca [25 x float], align 16            ; 21 uses
  %.sroa.0 = alloca float, align 16               ; 5 uses
  %.sroa.7 = alloca float, align 4                ; 5 uses
  %i.c = alloca [25 x float], align 16            ; 14 uses
  %i.d = icmp eq ptr %0, %1                       ; 2 uses
  %i.e = sext i32 %7 to i64
  %i.f = sext i32 %2 to i64                       ; 4 uses
  %i.g = sext i32 %3 to i64
  %i.h = mul nsw i64 %i.g, %i.f
  %i.i = mul i64 %i.h, %i.e                       ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = shl i64 %i.i, 2
  %i.k = tail call ptr @dt_alloc_aligned(i64 noundef %i.j) #18 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]    ; 5 uses
  switch i32 %7, label %bb.z [
    i32 1, label %bb.d
    i32 2, label %bb.u
    i32 4, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call fastcc void @_calc_9x9_gauss_coeffs(ptr noundef %i.c, float noundef %4)
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.preheader269.lr.ph.i, label %_fast_9x9_kernel_1.exit

.preheader269.lr.ph.i:                            ; preds = %bb.d
  %i.m = shl nuw nsw i32 %2, 2
  %i.n = mul nuw nsw i32 %2, 3
  %i.o = shl nuw nsw i32 %2, 1
  %i.p = icmp sgt i32 %2, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = load float, ptr %i.q, align 8
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = zext nneg i32 %i.o to i64                ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %0, i64 %i.t
  %invariant.gep275.i = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.v = load float, ptr %i.u, align 4
  %invariant.gep277.i = getelementptr [4 x i8], ptr %0, i64 %i.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load float, ptr %i.w, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %8 = load float, ptr %i.y, align 8
  %9 = zext nneg i32 %i.n to i64                  ; 2 uses
  %invariant.gep279.i = getelementptr [4 x i8], ptr %0, i64 %9
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %10 = load float, ptr %i.z, align 4
  %11 = load <13 x float>, ptr %i.c, align 16
  %12 = shufflevector <13 x float> %11, <13 x float> poison, <8 x i32> <i32 0, i32 3, i32 8, i32 2, i32 7, i32 12, i32 1, i32 6>
  br i1 %i.p, label %.preheader269.preheader.i, label %_fast_9x9_kernel_1.exit

.preheader269.preheader.i:                        ; preds = %.preheader269.lr.ph.i
  %i.aa = add nsw i32 %3, -4
  %i.ab = add nsw i32 %2, -4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = zext nneg i32 %2 to i64                 ; 5 uses
  %i.ae = sext i32 %i.aa to i64
  %wide.trip.count288.i = zext nneg i32 %3 to i64
  br label %.preheader269.i

.preheader269.i:                                  ; preds = %._crit_edge.i, %.preheader269.preheader.i
  %indvars.iv285.i = phi i64 [ 0, %.preheader269.preheader.i ], [ %indvars.iv.next286.i, %._crit_edge.i ] ; 5 uses
  %i.af = mul nuw nsw i64 %indvars.iv285.i, %i.f
  %i.ag = icmp samesign ugt i64 %indvars.iv285.i, 3
  %i.ah = icmp slt i64 %indvars.iv285.i, %i.ae
  %i.ai = trunc nuw nsw i64 %indvars.iv285.i to i32
  br label %bb.e

._crit_edge.i:                                    ; preds = %.loopexit268.i
  %indvars.iv.next286.i = add nuw nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %exitcond289.not.i = icmp eq i64 %indvars.iv.next286.i, %wide.trip.count288.i
  br i1 %exitcond289.not.i, label %_fast_9x9_kernel_1.exit, label %.preheader269.i

bb.e:                                             ; preds = %.loopexit268.i, %.preheader269.i
  %indvars.iv.i = phi i64 [ 0, %.preheader269.i ], [ %indvars.iv.next.i.pre-phi, %.loopexit268.i ] ; 10 uses
  %i.aj = add nuw nsw i64 %indvars.iv.i, %i.af    ; 10 uses
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 3
  %or.cond.i = select i1 %i.ak, i1 %i.ag, i1 false
  %i.al = icmp slt i64 %indvars.iv.i, %i.ac
  %or.cond262.i = select i1 %or.cond.i, i1 %i.al, i1 false
  %or.cond264.i = select i1 %or.cond262.i, i1 %i.ah, i1 false
  br i1 %or.cond264.i, label %bb.f, label %.preheader267.preheader.i

.preheader267.preheader.i:                        ; preds = %bb.e
  %i.am = trunc i64 %indvars.iv.i to i32          ; 4 uses
  %i.an = add i32 %i.am, -4                       ; 2 uses
  %or.cond266.i = icmp ult i32 %i.an, %2
  %i.ao = add i32 %i.am, -3                       ; 2 uses
  %or.cond266.1.i = icmp ult i32 %i.ao, %2
  %i.ap = add i32 %i.am, -2                       ; 2 uses
  %or.cond266.2.i = icmp ult i32 %i.ap, %2
  %i.aq = add i32 %i.am, -1                       ; 2 uses
  %or.cond266.3.i = icmp ult i32 %i.aq, %2
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.as = add nuw nsw i64 %indvars.iv.i, 1        ; 3 uses
  %or.cond266.5.i = icmp samesign ult i64 %i.as, %i.ad
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as
  %i.au = add nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %or.cond266.6.i = icmp samesign ult i64 %i.au, %i.ad
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %i.aw = add nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %or.cond266.7.i = icmp samesign ult i64 %i.aw, %i.ad
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.ay = add nuw nsw i64 %indvars.iv.i, 4        ; 2 uses
  %or.cond266.8.i = icmp samesign ult i64 %i.ay, %i.ad
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  br label %.preheader267.i

bb.f:                                             ; preds = %bb.e
  %i.ba = sub nsw i64 %i.aj, %i.s
  %i.bb = getelementptr [4 x i8], ptr %0, i64 %i.ba ; 5 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !23
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !23
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.bd
  %i.bh = sub nsw i64 %i.aj, %i.t
  %i.bi = getelementptr [4 x i8], ptr %0, i64 %i.bh ; 6 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -16
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !23
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bg, %i.bk
  %i.bm = getelementptr i8, ptr %i.bi, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !23
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bl, %i.bn
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.aj ; 7 uses
  %i.bp = getelementptr i8, ptr %gep.i, i64 -16
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !23
  %i.br = fadd reassoc nsz arcp contract afn float %i.bo, %i.bq
  %i.bs = getelementptr i8, ptr %gep.i, i64 16
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !23
  %i.bu = fadd reassoc nsz arcp contract afn float %i.br, %i.bt
  %gep276.i = getelementptr [4 x i8], ptr %invariant.gep275.i, i64 %i.aj ; 5 uses
  %i.bv = getelementptr i8, ptr %gep276.i, i64 -8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !23
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bu, %i.bw
  %i.by = getelementptr i8, ptr %gep276.i, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !23
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bx, %i.bz
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.r
  %i.cc = getelementptr i8, ptr %i.bb, i64 -4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !23
  %i.ce = getelementptr i8, ptr %i.bb, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !23
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.cd
  %i.ch = sub nsw i64 %i.aj, %i.f
  %i.ci = getelementptr [4 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !23
  %i.cl = fadd reassoc nsz arcp contract afn float %i.cg, %i.ck
  %i.cm = getelementptr i8, ptr %i.ci, i64 16
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !23
  %i.co = fadd reassoc nsz arcp contract afn float %i.cl, %i.cn
  %gep278.i = getelementptr [4 x i8], ptr %invariant.gep277.i, i64 %i.aj ; 5 uses
  %i.cp = getelementptr i8, ptr %gep278.i, i64 -16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !23
  %i.cr = fadd reassoc nsz arcp contract afn float %i.co, %i.cq
  %i.cs = getelementptr i8, ptr %gep278.i, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !23
  %i.cu = fadd reassoc nsz arcp contract afn float %i.cr, %i.ct
  %i.cv = getelementptr i8, ptr %gep276.i, i64 -4
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !23
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cu, %i.cw
  %i.cy = getelementptr i8, ptr %gep276.i, i64 4
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !23
  %i.da = fadd reassoc nsz arcp contract afn float %i.cx, %i.cz
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.v
  %i.dc = load float, ptr %i.bb, align 4, !tbaa !23
  %i.dd = getelementptr [4 x i8], ptr %0, i64 %i.aj ; 5 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -16
  %i.df = load float, ptr %i.de, align 4, !tbaa !23
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, %i.dc
  %i.dh = getelementptr i8, ptr %i.dd, i64 16
  %i.di = load float, ptr %i.dh, align 4, !tbaa !23
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dg, %i.di
  %i.dk = load float, ptr %gep276.i, align 4, !tbaa !23
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dj, %i.dk
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.x
  %i.dn = sub nsw i64 %i.aj, %9
  %i.do = getelementptr [4 x i8], ptr %0, i64 %i.dn ; 6 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 -12
  %13 = load float, ptr %i.dp, align 4, !tbaa !23
  %i.dq = getelementptr i8, ptr %i.do, i64 12
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !23
  %14 = fadd reassoc nsz arcp contract afn float %i.dr, %13
  %gep280.i = getelementptr [4 x i8], ptr %invariant.gep279.i, i64 %i.aj ; 6 uses
  %i.ds = getelementptr i8, ptr %gep280.i, i64 -12
  %15 = load float, ptr %i.ds, align 4, !tbaa !23
  %16 = fadd reassoc nsz arcp contract afn float %14, %15
  %i.dt = getelementptr i8, ptr %gep280.i, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !23
  %17 = fadd reassoc nsz arcp contract afn float %16, %i.du
  %18 = fmul reassoc nsz arcp contract afn float %17, %8
  %i.dv = getelementptr i8, ptr %i.do, i64 -8
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !23
  %i.dx = getelementptr i8, ptr %i.do, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !23
  %19 = fadd reassoc nsz arcp contract afn float %i.dy, %i.dw
  %i.dz = getelementptr i8, ptr %i.bi, i64 -12
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !23
  %20 = fadd reassoc nsz arcp contract afn float %19, %i.ea
  %i.eb = getelementptr i8, ptr %i.bi, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !23
  %21 = fadd reassoc nsz arcp contract afn float %20, %i.ec
  %22 = getelementptr i8, ptr %gep.i, i64 -12
  %23 = load float, ptr %22, align 4, !tbaa !23
  %24 = fadd reassoc nsz arcp contract afn float %21, %23
  %25 = getelementptr i8, ptr %gep.i, i64 12
  %26 = load float, ptr %25, align 4, !tbaa !23
  %27 = fadd reassoc nsz arcp contract afn float %24, %26
  %28 = getelementptr i8, ptr %gep280.i, i64 -8
  %29 = load float, ptr %28, align 4, !tbaa !23
  %30 = fadd reassoc nsz arcp contract afn float %27, %29
  %31 = getelementptr i8, ptr %gep280.i, i64 8
  %32 = load float, ptr %31, align 4, !tbaa !23
  %33 = fadd reassoc nsz arcp contract afn float %30, %32
  %34 = fmul reassoc nsz arcp contract afn float %33, %10
  %35 = getelementptr i8, ptr %i.do, i64 -4
  %36 = getelementptr i8, ptr %i.do, i64 4
  %37 = load float, ptr %36, align 4, !tbaa !23
  %38 = getelementptr i8, ptr %i.ci, i64 -12
  %39 = getelementptr i8, ptr %gep278.i, i64 -12
  %40 = getelementptr i8, ptr %gep280.i, i64 -4
  %41 = getelementptr i8, ptr %gep280.i, i64 4
  %42 = load float, ptr %41, align 4, !tbaa !23
  %43 = getelementptr i8, ptr %i.dd, i64 -12
  %44 = getelementptr i8, ptr %i.bi, i64 -8
  %45 = getelementptr i8, ptr %gep.i, i64 -8
  %46 = getelementptr i8, ptr %gep.i, i64 8
  %47 = load float, ptr %46, align 4, !tbaa !23
  %48 = getelementptr i8, ptr %i.ci, i64 8
  %i.ed = getelementptr i8, ptr %i.dd, i64 8
  %49 = getelementptr i8, ptr %i.ci, i64 -4
  %i.ee = getelementptr i8, ptr %gep278.i, i64 -4
  %50 = load <2 x float>, ptr %35, align 4, !tbaa !23
  %51 = load <2 x float>, ptr %40, align 4, !tbaa !23 ; 2 uses
  %52 = load <4 x float>, ptr %44, align 4, !tbaa !23 ; 3 uses
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %54 = insertelement <2 x float> %53, float %37, i64 0
  %55 = shufflevector <2 x float> %50, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %56 = shufflevector <4 x float> %55, <4 x float> %52, <2 x i32> <i32 0, i32 5>
  %57 = fadd reassoc nsz arcp contract afn <2 x float> %54, %56
  %58 = load <2 x float>, ptr %38, align 4, !tbaa !23
  %59 = fadd reassoc nsz arcp contract afn <2 x float> %57, %58
  %60 = load <2 x float>, ptr %48, align 4, !tbaa !23
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %62 = fadd reassoc nsz arcp contract afn <2 x float> %59, %61
  %63 = load <2 x float>, ptr %39, align 4, !tbaa !23
  %64 = fadd reassoc nsz arcp contract afn <2 x float> %62, %63
  %65 = load <2 x float>, ptr %45, align 4, !tbaa !23
  %66 = load <2 x float>, ptr %i.ed, align 4, !tbaa !23
  %67 = load <2 x float>, ptr %gep.i, align 4, !tbaa !23
  %68 = load <2 x float>, ptr %49, align 4, !tbaa !23
  %69 = insertelement <4 x ptr> poison, ptr %gep278.i, i64 0
  %70 = insertelement <4 x ptr> %69, ptr %i.bi, i64 1
  %71 = insertelement <4 x ptr> %70, ptr %i.dd, i64 2
  %72 = insertelement <4 x ptr> %71, ptr %i.ci, i64 3
  %73 = getelementptr i8, <4 x ptr> %72, <4 x i64> <i64 8, i64 8, i64 -4, i64 4>
  %74 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %73, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !23
  %75 = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %i.ee, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !23 ; 2 uses
  %76 = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %43, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x float> poison), !tbaa !23 ; 3 uses
  %77 = shufflevector <5 x float> %76, <5 x float> %75, <8 x i32> <i32 poison, i32 0, i32 9, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %78 = insertelement <8 x float> %77, float -0.000000e+00, i64 0
  %79 = shufflevector <4 x float> %74, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %80 = shufflevector <8 x float> %78, <8 x float> %79, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %81 = shufflevector <4 x float> %55, <4 x float> %52, <8 x i32> <i32 poison, i32 1, i32 poison, i32 6, i32 poison, i32 4, i32 poison, i32 poison>
  %82 = insertelement <8 x float> %81, float -0.000000e+00, i64 0
  %83 = shufflevector <2 x float> %68, <2 x float> %64, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 0, i32 2, i32 3>
  %84 = shufflevector <8 x float> %83, <8 x float> %82, <8 x i32> <i32 8, i32 9, i32 6, i32 11, i32 7, i32 13, i32 4, i32 5>
  %85 = fadd reassoc arcp contract afn <8 x float> %80, %84
  %86 = shufflevector <2 x float> %66, <2 x float> %51, <8 x i32> <i32 poison, i32 1, i32 2, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %87 = insertelement <8 x float> %86, float -0.000000e+00, i64 0
  %88 = shufflevector <5 x float> %76, <5 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison>
  %89 = shufflevector <8 x float> %87, <8 x float> %88, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 12, i32 poison>
  %90 = shufflevector <5 x float> %75, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison> ; 2 uses
  %91 = shufflevector <8 x float> %89, <8 x float> %90, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 8>
  %92 = shufflevector <2 x float> %65, <2 x float> poison, <8 x i32> <i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %93 = shufflevector <8 x float> %91, <8 x float> %92, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %94 = fadd reassoc arcp contract afn <8 x float> %93, %85
  %95 = shufflevector <2 x float> %51, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %96 = shufflevector <5 x float> %76, <5 x float> %95, <8 x i32> <i32 3, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %97 = shufflevector <2 x float> %67, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %98 = shufflevector <8 x float> %96, <8 x float> %97, <8 x i32> <i32 0, i32 1, i32 poison, i32 8, i32 9, i32 poison, i32 poison, i32 poison>
  %99 = shufflevector <8 x float> %98, <8 x float> %90, <8 x i32> <i32 0, i32 1, i32 poison, i32 3, i32 4, i32 poison, i32 9, i32 10>
  %100 = insertelement <8 x float> %99, float %42, i64 2
  %101 = insertelement <8 x float> %100, float %47, i64 5
  %102 = fadd reassoc arcp contract afn <8 x float> %101, %94
  %103 = fmul reassoc nsz arcp contract afn <8 x float> %102, %12
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.db, <8 x float> %103)
  %op.rdx264 = fadd reassoc nsz arcp contract afn float %i.cb, %i.dm
  %op.rdx265 = fadd reassoc nsz arcp contract afn float %18, %34
  %op.rdx266 = fadd reassoc nsz arcp contract afn float %op.rdx, %op.rdx264
  %op.rdx267 = fadd reassoc nsz arcp contract afn float %op.rdx266, %op.rdx265
  %.pre = add nuw nsw i64 %indvars.iv.i, 1
  br label %.loopexit268.i

.preheader267.i:                                  ; preds = %.loopexit.i, %.preheader267.preheader.i
  %.0252273.i = phi i32 [ %i.hc, %.loopexit.i ], [ -4, %.preheader267.preheader.i ] ; 3 uses
  %.0253272.i = phi float [ %.3.i, %.loopexit.i ], [ 0.000000e+00, %.preheader267.preheader.i ] ; 3 uses
  %i.ef = add nsw i32 %.0252273.i, %i.ai          ; 2 uses
  %or.cond265.i = icmp ult i32 %i.ef, %3
  br i1 %or.cond265.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.preheader267.i
  %i.eg = tail call i32 @llvm.abs.i32(i32 %.0252273.i, i1 true)
  %i.eh = mul nuw nsw i32 %i.eg, 5                ; 4 uses
  %i.ei = mul nuw nsw i32 %i.ef, %2               ; 5 uses
  br i1 %or.cond266.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load float, ptr %i.el, align 4, !tbaa !23
  %i.en = add nuw nsw i32 %i.ei, %i.an
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !23
  %i.er = fmul reassoc nsz arcp contract afn float %i.eq, %i.em
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, %.0253272.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.i
  %.2.i = phi nsz float [ %i.es, %bb.g ], [ %.0253272.i, %.preheader.i ] ; 2 uses
  br i1 %or.cond266.1.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.et = zext nneg i32 %i.eh to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !23
  %i.ex = add nuw nsw i32 %i.ei, %i.ao
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !23
  %i.fb = fmul reassoc nsz arcp contract afn float %i.fa, %i.ew
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fb, %.2.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.1.i = phi nsz float [ %i.fc, %bb.i ], [ %.2.i, %bb.h ] ; 2 uses
  br i1 %or.cond266.2.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fd = zext nneg i32 %i.eh to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !23
  %i.fh = add nuw nsw i32 %i.ei, %i.ap
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !23
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.fg
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %.2.1.i
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.2.i = phi nsz float [ %i.fm, %bb.k ], [ %.2.1.i, %bb.j ] ; 2 uses
  %i.fn = zext nneg i32 %i.eh to i64              ; 2 uses
  br i1 %or.cond266.3.i, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !23
  %i.fr = add nuw nsw i32 %i.ei, %i.aq
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !23
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, %i.fq
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, %.2.2.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %.2.3.i = phi nsz float [ %i.fw, %bb.m ], [ %.2.2.i, %bb.l ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fn ; 5 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !23
  %i.fz = zext nneg i32 %i.ei to i64              ; 5 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !23
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.fy
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %.2.3.i ; 2 uses
  br i1 %or.cond266.5.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !23
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fz
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !23
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.gf
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %i.gd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.2.5.i = phi nsz float [ %i.gj, %bb.n ], [ %i.gd, %._crit_edge ] ; 2 uses
  br i1 %or.cond266.6.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !23
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.fz
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !23
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.gl
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %.2.5.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.6.i = phi nsz float [ %i.gp, %bb.p ], [ %.2.5.i, %bb.o ] ; 2 uses
  br i1 %or.cond266.7.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !23
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.fz
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !23
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.gr
  %i.gv = fadd reassoc nsz arcp contract afn float %i.gu, %.2.6.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.7.i = phi nsz float [ %i.gv, %bb.r ], [ %.2.6.i, %bb.q ] ; 2 uses
  br i1 %or.cond266.8.i, label %bb.t, label %.loopexit.i

bb.t:                                             ; preds = %bb.s
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !23
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.fz
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !23
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.gx
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, %.2.7.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.t, %bb.s, %.preheader267.i
  %.3.i = phi nsz float [ %.0253272.i, %.preheader267.i ], [ %i.hb, %bb.t ], [ %.2.7.i, %bb.s ] ; 2 uses
  %i.hc = add nsw i32 %.0252273.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hc, 5
  br i1 %exitcond.not.i, label %.loopexit268.i, label %.preheader267.i

.loopexit268.i:                                   ; preds = %.loopexit.i, %bb.f
  %indvars.iv.next.i.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.as, %.loopexit.i ] ; 2 uses
  %.4.i = phi nsz float [ %op.rdx267, %bb.f ], [ %.3.i, %.loopexit.i ] ; 3 uses
  %i.hd = fcmp reassoc nsz arcp contract afn ult float %.4.i, %5
  %i.he = fcmp reassoc nsz arcp contract afn ole float %.4.i, %6
  %i.hf = select reassoc nsz arcp contract afn i1 %i.he, float %.4.i, float %6
  %i.hg = select reassoc nsz arcp contract afn i1 %i.hd, float %5, float %i.hf
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.aj
  store float %i.hg, ptr %i.hh, align 4, !tbaa !23
  %exitcond284.not.i = icmp eq i64 %indvars.iv.next.i.pre-phi, %i.ad
  br i1 %exitcond284.not.i, label %._crit_edge.i, label %bb.e

_fast_9x9_kernel_1.exit:                          ; preds = %._crit_edge.i, %bb.d, %.preheader269.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.z

bb.u:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call fastcc void @_calc_9x9_gauss_coeffs(ptr noundef %i.b, float noundef %4)
  %i.hi = icmp sgt i32 %3, 0
  br i1 %i.hi, label %.preheader355.lr.ph.i, label %_fast_9x9_kernel_2.exit

.preheader355.lr.ph.i:                            ; preds = %bb.u
  %i.hj = shl nuw nsw i32 %2, 3
  %i.hk = mul nuw nsw i32 %2, 6
  %i.hl = shl nuw nsw i32 %2, 2
  %i.hm = shl nuw nsw i32 %2, 1
  %i.hn = icmp sgt i32 %2, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.hp = load float, ptr %i.ho, align 8
  %i.hq = zext nneg i32 %i.hj to i64              ; 2 uses
  %i.hr = zext nneg i32 %i.hl to i64              ; 2 uses
  %invariant.gep.i38 = getelementptr [4 x i8], ptr %0, i64 %i.hr
  %invariant.gep362.i = getelementptr [4 x i8], ptr %0, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ht = load float, ptr %i.hs, align 4
  %i.hu = zext nneg i32 %i.hm to i64              ; 2 uses
  %invariant.gep364.i = getelementptr [4 x i8], ptr %0, i64 %i.hu
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hw = load float, ptr %i.hv, align 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.hy = load float, ptr %i.hx, align 8
  %i.hz = zext nneg i32 %i.hk to i64              ; 2 uses
  %invariant.gep366.i = getelementptr [4 x i8], ptr %0, i64 %i.hz
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ib = load float, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.id = load float, ptr %i.ic, align 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.if = load float, ptr %i.ie, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ih = load float, ptr %i.ig, align 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.il = load float, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.in = load float, ptr %i.im, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ip = load float, ptr %i.io, align 4
  %i.iq = load float, ptr %i.b, align 16
  br i1 %i.hn, label %.preheader355.preheader.i, label %_fast_9x9_kernel_2.exit

.preheader355.preheader.i:                        ; preds = %.preheader355.lr.ph.i
  %i.ir = add nsw i32 %3, -4
  %i.is = add nsw i32 %2, -4
  %i.it = sext i32 %i.is to i64
  %i.iu = zext nneg i32 %2 to i64                 ; 6 uses
  %i.iv = sext i32 %i.ir to i64
  %wide.trip.count383.i = zext nneg i32 %3 to i64
  %i.iw = insertelement <2 x float> poison, float %5, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iy = insertelement <2 x float> poison, float %6, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader355.i

.preheader355.i:                                  ; preds = %._crit_edge.i41, %.preheader355.preheader.i
  %indvars.iv380.i = phi i64 [ 0, %.preheader355.preheader.i ], [ %indvars.iv.next381.i, %._crit_edge.i41 ] ; 5 uses
  %i.ja = mul nuw nsw i64 %indvars.iv380.i, %i.iu
  %i.jb = icmp samesign ugt i64 %indvars.iv380.i, 3
  %i.jc = icmp slt i64 %indvars.iv380.i, %i.iv
  %i.jd = trunc nuw nsw i64 %indvars.iv380.i to i32
  br label %bb.v

._crit_edge.i41:                                  ; preds = %.loopexit352.i
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond384.not.i = icmp eq i64 %indvars.iv.next381.i, %wide.trip.count383.i
  br i1 %exitcond384.not.i, label %_fast_9x9_kernel_2.exit, label %.preheader355.i

bb.v:                                             ; preds = %.loopexit352.i, %.preheader355.i
  %indvars.iv376.i = phi i64 [ 0, %.preheader355.i ], [ %indvars.iv.next377.i.pre-phi, %.loopexit352.i ] ; 10 uses
  %i.je = add nuw nsw i64 %indvars.iv376.i, %i.ja
  %i.jf = shl nuw nsw i64 %i.je, 1                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  store float 0.000000e+00, ptr %.sroa.0, align 16
  store float 0.000000e+00, ptr %.sroa.7, align 4
  %i.jg = icmp samesign ugt i64 %indvars.iv376.i, 3
  %or.cond.i39 = select i1 %i.jg, i1 %i.jb, i1 false
  %i.jh = icmp slt i64 %indvars.iv376.i, %i.it
  %or.cond345.i = select i1 %or.cond.i39, i1 %i.jh, i1 false
  %or.cond347.i = select i1 %or.cond345.i, i1 %i.jc, i1 false
  br i1 %or.cond347.i, label %.preheader351.i, label %.preheader353.preheader.i

.preheader353.preheader.i:                        ; preds = %bb.v
  %i.ji = trunc i64 %indvars.iv376.i to i32       ; 4 uses
  %i.jj = add i32 %i.ji, -4                       ; 2 uses
  %or.cond349.i = icmp ult i32 %i.jj, %2
  %i.jk = add i32 %i.ji, -3                       ; 2 uses
  %or.cond349.1.i = icmp ult i32 %i.jk, %2
  %i.jl = add i32 %i.ji, -2                       ; 2 uses
  %or.cond349.2.i = icmp ult i32 %i.jl, %2
  %i.jm = add i32 %i.ji, -1                       ; 2 uses
  %or.cond349.3.i = icmp ult i32 %i.jm, %2
  %i.jn = add nuw nsw i64 %indvars.iv376.i, 1     ; 3 uses
  %or.cond349.5.i = icmp samesign ult i64 %i.jn, %i.iu
  %i.jo = add nuw nsw i64 %indvars.iv376.i, 2     ; 2 uses
  %or.cond349.6.i = icmp samesign ult i64 %i.jo, %i.iu
  %i.jp = add nuw nsw i64 %indvars.iv376.i, 3     ; 2 uses
  %or.cond349.7.i = icmp samesign ult i64 %i.jp, %i.iu
  %i.jq = add nuw nsw i64 %indvars.iv376.i, 4     ; 2 uses
  %or.cond349.8.i = icmp samesign ult i64 %i.jq, %i.iu
  br label %.preheader353.i

.preheader351.i:                                  ; preds = %bb.v
  %i.jr = sub nsw i64 %i.jf, %i.hq
  %i.js = getelementptr [4 x i8], ptr %0, i64 %i.jr ; 5 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 -16
  %i.ju = getelementptr i8, ptr %i.js, i64 16
  %i.jv = sub nsw i64 %i.jf, %i.hr
  %i.jw = getelementptr [4 x i8], ptr %0, i64 %i.jv ; 9 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 -32
  %i.jy = getelementptr i8, ptr %i.jw, i64 32
  %gep.i44 = getelementptr [4 x i8], ptr %invariant.gep.i38, i64 %i.jf ; 9 uses
  %i.jz = getelementptr i8, ptr %gep.i44, i64 -32
  %i.ka = getelementptr i8, ptr %gep.i44, i64 32
  %gep363.i = getelementptr [4 x i8], ptr %invariant.gep362.i, i64 %i.jf ; 5 uses
  %i.kb = getelementptr i8, ptr %gep363.i, i64 -16
  %i.kc = getelementptr i8, ptr %gep363.i, i64 16
  %i.kd = getelementptr i8, ptr %i.js, i64 -8
  %i.ke = getelementptr i8, ptr %i.js, i64 8
  %i.kf = sub nsw i64 %i.jf, %i.hu
  %i.kg = getelementptr [4 x i8], ptr %0, i64 %i.kf ; 9 uses
  %i.kh = getelementptr i8, ptr %i.kg, i64 -32
  %i.ki = getelementptr i8, ptr %i.kg, i64 32
  %gep365.i = getelementptr [4 x i8], ptr %invariant.gep364.i, i64 %i.jf ; 9 uses
  %i.kj = getelementptr i8, ptr %gep365.i, i64 -32
  %i.kk = getelementptr i8, ptr %gep365.i, i64 32
  %i.kl = getelementptr i8, ptr %gep363.i, i64 -8
  %i.km = getelementptr i8, ptr %gep363.i, i64 8
  %i.kn = getelementptr [4 x i8], ptr %0, i64 %i.jf ; 9 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 -32
  %i.kp = getelementptr i8, ptr %i.kn, i64 32
  %i.kq = sub nsw i64 %i.jf, %i.hz
  %i.kr = getelementptr [4 x i8], ptr %0, i64 %i.kq ; 7 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -24
  %i.kt = getelementptr i8, ptr %i.kr, i64 24
  %gep367.i = getelementptr [4 x i8], ptr %invariant.gep366.i, i64 %i.jf ; 7 uses
  %i.ku = getelementptr i8, ptr %gep367.i, i64 -24
  %i.kv = getelementptr i8, ptr %gep367.i, i64 24
  %i.kw = getelementptr i8, ptr %i.kr, i64 -16
  %i.kx = getelementptr i8, ptr %i.kr, i64 16
  %i.ky = getelementptr i8, ptr %i.jw, i64 -24
  %i.kz = getelementptr i8, ptr %i.jw, i64 24
  %i.la = getelementptr i8, ptr %gep.i44, i64 -24
  %i.lb = getelementptr i8, ptr %gep.i44, i64 24
  %i.lc = getelementptr i8, ptr %gep367.i, i64 -16
  %i.ld = getelementptr i8, ptr %gep367.i, i64 16
  %i.le = getelementptr i8, ptr %i.kr, i64 -8
  %i.lf = getelementptr i8, ptr %i.kr, i64 8
  %i.lg = getelementptr i8, ptr %i.kg, i64 -24
  %i.lh = getelementptr i8, ptr %i.kg, i64 24
  %i.li = getelementptr i8, ptr %gep365.i, i64 -24
  %i.lj = getelementptr i8, ptr %gep365.i, i64 24
  %i.lk = getelementptr i8, ptr %gep367.i, i64 -8
  %i.ll = getelementptr i8, ptr %gep367.i, i64 8
  %i.lm = getelementptr i8, ptr %i.kn, i64 -24
  %i.ln = getelementptr i8, ptr %i.kn, i64 24
  %i.lo = getelementptr i8, ptr %i.jw, i64 -16
  %i.lp = getelementptr i8, ptr %i.jw, i64 16
  %i.lq = getelementptr i8, ptr %gep.i44, i64 -16
  %i.lr = getelementptr i8, ptr %gep.i44, i64 16
  %i.ls = getelementptr i8, ptr %i.jw, i64 -8
  %i.lt = getelementptr i8, ptr %i.jw, i64 8
  %i.lu = getelementptr i8, ptr %i.kg, i64 -16
  %i.lv = getelementptr i8, ptr %i.kg, i64 16
  %i.lw = getelementptr i8, ptr %gep365.i, i64 -16
  %i.lx = getelementptr i8, ptr %gep365.i, i64 16
  %i.ly = getelementptr i8, ptr %gep.i44, i64 -8
  %i.lz = getelementptr i8, ptr %gep.i44, i64 8
  %i.ma = getelementptr i8, ptr %i.kn, i64 -16
  %i.mb = getelementptr i8, ptr %i.kn, i64 16
  %i.mc = getelementptr i8, ptr %i.kg, i64 -8
  %i.md = getelementptr i8, ptr %i.kg, i64 8
  %i.me = getelementptr i8, ptr %gep365.i, i64 -8
  %i.mf = getelementptr i8, ptr %gep365.i, i64 8
  %i.mg = getelementptr i8, ptr %i.kn, i64 -8
  %i.mh = getelementptr i8, ptr %i.kn, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader351.i
  %i.mi = phi i1 [ true, %.preheader351.i ], [ false, %bb.w ]
  %indvars.iv.i45.sroa.phi = phi ptr [ %.sroa.0, %.preheader351.i ], [ %.sroa.7, %bb.w ]
  %indvars.iv.i45 = phi i64 [ 0, %.preheader351.i ], [ 1, %bb.w ] ; 69 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i45
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !23
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.i45
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !23
  %i.mn = fadd reassoc nsz arcp contract afn float %i.mm, %i.mk
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv.i45
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !23
  %i.mq = fadd reassoc nsz arcp contract afn float %i.mn, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i45
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !23
  %i.mt = fadd reassoc nsz arcp contract afn float %i.mq, %i.ms
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv.i45
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !23
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mt, %i.mv
end_hunk_1
begin_hunk_2_@dt_gaussian_fast_blur:bb.a
  %i.uu = phi <2 x float> [ %i.za, %.loopexit350.i ], [ zeroinitializer, %.preheader353.preheader.i ] ; 2 uses
  %i.uv = phi <2 x float> [ %i.zb, %.loopexit350.i ], [ zeroinitializer, %.preheader353.preheader.i ] ; 3 uses
  %i.uw = add nsw i32 %.0333358.i, %i.jd          ; 2 uses
  %or.cond348.i = icmp ult i32 %i.uw, %3
  br i1 %or.cond348.i, label %.preheader.i42, label %.loopexit350.i

.preheader.i42:                                   ; preds = %.preheader353.i
  %i.ux = tail call i32 @llvm.abs.i32(i32 %.0333358.i, i1 true)
  %i.uy = mul nuw nsw i32 %i.ux, 5                ; 4 uses
  %i.uz = mul nuw nsw i32 %i.uw, %2               ; 5 uses
  br i1 %or.cond349.i, label %.loopexit.loopexit.i, label %.loopexit.i43

.loopexit.loopexit.i:                             ; preds = %.preheader.i42
  %i.va = zext nneg i32 %i.uy to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !23
  %i.ve = add nuw nsw i32 %i.uz, %i.jj
  %i.vf = zext nneg i32 %i.ve to i64
  %.idx.i = shl nuw nsw i64 %i.vf, 3
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i
  %i.vh = load <2 x float>, ptr %i.vg, align 4, !tbaa !23
  %i.vi = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.vj = shufflevector <2 x float> %i.vi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vk = fmul reassoc nsz arcp contract afn <2 x float> %i.vh, %i.vj
  %i.vl = fadd reassoc nsz arcp contract afn <2 x float> %i.vk, %i.uv ; 2 uses
  br label %.loopexit.i43

.loopexit.i43:                                    ; preds = %.loopexit.loopexit.i, %.preheader.i42
  %i.vm = phi <2 x float> [ %i.vl, %.loopexit.loopexit.i ], [ %i.uv, %.preheader.i42 ] ; 2 uses
  %i.vn = phi <2 x float> [ %i.vl, %.loopexit.loopexit.i ], [ %i.uu, %.preheader.i42 ]
  br i1 %or.cond349.1.i, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i43
  %i.vo = zext nneg i32 %i.uy to i64
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !23
  %i.vs = add nuw nsw i32 %i.uz, %i.jk
  %i.vt = zext nneg i32 %i.vs to i64
  %.idx.1.i = shl nuw nsw i64 %i.vt, 3
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.1.i
  %i.vv = load <2 x float>, ptr %i.vu, align 4, !tbaa !23
  %i.vw = insertelement <2 x float> poison, float %i.vr, i64 0
  %i.vx = shufflevector <2 x float> %i.vw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vy = fmul reassoc nsz arcp contract afn <2 x float> %i.vv, %i.vx
  %i.vz = fadd reassoc nsz arcp contract afn <2 x float> %i.vy, %i.vm ; 2 uses
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i43
  %i.wa = phi <2 x float> [ %i.vz, %.loopexit.loopexit.1.i ], [ %i.vm, %.loopexit.i43 ] ; 2 uses
  %i.wb = phi <2 x float> [ %i.vz, %.loopexit.loopexit.1.i ], [ %i.vn, %.loopexit.i43 ]
  br i1 %or.cond349.2.i, label %.loopexit.loopexit.2.i, label %.loopexit.2.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.wc = zext nneg i32 %i.uy to i64
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.wc
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load float, ptr %i.we, align 4, !tbaa !23
  %i.wg = add nuw nsw i32 %i.uz, %i.jl
  %i.wh = zext nneg i32 %i.wg to i64
  %.idx.2.i = shl nuw nsw i64 %i.wh, 3
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.2.i
  %i.wj = load <2 x float>, ptr %i.wi, align 4, !tbaa !23
  %i.wk = insertelement <2 x float> poison, float %i.wf, i64 0
  %i.wl = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wm = fmul reassoc nsz arcp contract afn <2 x float> %i.wj, %i.wl
  %i.wn = fadd reassoc nsz arcp contract afn <2 x float> %i.wm, %i.wa ; 2 uses
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.wo = phi <2 x float> [ %i.wn, %.loopexit.loopexit.2.i ], [ %i.wa, %.loopexit.1.i ]
  %i.wp = phi <2 x float> [ %i.wn, %.loopexit.loopexit.2.i ], [ %i.wb, %.loopexit.1.i ]
  %i.wq = zext nneg i32 %i.uy to i64              ; 2 uses
  br i1 %or.cond349.3.i, label %.loopexit.loopexit.3.i, label %.loopexit.4.i

.loopexit.loopexit.3.i:                           ; preds = %.loopexit.2.i
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 4
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !23
  %i.wu = add nuw nsw i32 %i.uz, %i.jm
  %i.wv = zext nneg i32 %i.wu to i64
  %.idx.3.i = shl nuw nsw i64 %i.wv, 3
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.3.i
  %i.wx = load <2 x float>, ptr %i.ww, align 4, !tbaa !23
  %i.wy = insertelement <2 x float> poison, float %i.wt, i64 0
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xa = fmul reassoc nsz arcp contract afn <2 x float> %i.wx, %i.wz
  %i.xb = fadd reassoc nsz arcp contract afn <2 x float> %i.xa, %i.wo
  br label %.loopexit.4.i

.loopexit.4.i:                                    ; preds = %.loopexit.2.i, %.loopexit.loopexit.3.i
  %i.xc = phi <2 x float> [ %i.xb, %.loopexit.loopexit.3.i ], [ %i.wp, %.loopexit.2.i ]
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.wq ; 5 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !23
  %i.xf = zext nneg i32 %i.uz to i64              ; 5 uses
  %i.xg = add nuw nsw i64 %indvars.iv376.i, %i.xf
  %.idx.4.i = shl nuw nsw i64 %i.xg, 3
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.4.i
  %i.xi = load <2 x float>, ptr %i.xh, align 4, !tbaa !23
  %i.xj = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xl = fmul reassoc nsz arcp contract afn <2 x float> %i.xi, %i.xk
  %i.xm = fadd reassoc nsz arcp contract afn <2 x float> %i.xl, %i.xc ; 2 uses
  br i1 %or.cond349.5.i, label %.loopexit.loopexit.5.i, label %.loopexit.5.i

.loopexit.loopexit.5.i:                           ; preds = %.loopexit.4.i
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !23
  %i.xp = add nuw nsw i64 %i.jn, %i.xf
  %.idx.5.i = shl nuw nsw i64 %i.xp, 3
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.5.i
  %i.xr = load <2 x float>, ptr %i.xq, align 4, !tbaa !23
  %i.xs = insertelement <2 x float> poison, float %i.xo, i64 0
  %i.xt = shufflevector <2 x float> %i.xs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xu = fmul reassoc nsz arcp contract afn <2 x float> %i.xr, %i.xt
  %i.xv = fadd reassoc nsz arcp contract afn <2 x float> %i.xu, %i.xm
  br label %.loopexit.5.i

.loopexit.5.i:                                    ; preds = %.loopexit.loopexit.5.i, %.loopexit.4.i
  %i.xw = phi <2 x float> [ %i.xv, %.loopexit.loopexit.5.i ], [ %i.xm, %.loopexit.4.i ] ; 2 uses
  br i1 %or.cond349.6.i, label %.loopexit.loopexit.6.i, label %.loopexit.6.i

.loopexit.loopexit.6.i:                           ; preds = %.loopexit.5.i
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !23
  %i.xz = add nuw nsw i64 %i.jo, %i.xf
  %.idx.6.i = shl nuw nsw i64 %i.xz, 3
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.6.i
  %i.yb = load <2 x float>, ptr %i.ya, align 4, !tbaa !23
  %i.yc = insertelement <2 x float> poison, float %i.xy, i64 0
  %i.yd = shufflevector <2 x float> %i.yc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ye = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.yd
  %i.yf = fadd reassoc nsz arcp contract afn <2 x float> %i.ye, %i.xw
  br label %.loopexit.6.i

.loopexit.6.i:                                    ; preds = %.loopexit.loopexit.6.i, %.loopexit.5.i
  %i.yg = phi <2 x float> [ %i.yf, %.loopexit.loopexit.6.i ], [ %i.xw, %.loopexit.5.i ] ; 2 uses
  br i1 %or.cond349.7.i, label %.loopexit.loopexit.7.i, label %.loopexit.7.i

.loopexit.loopexit.7.i:                           ; preds = %.loopexit.6.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !23
  %i.yj = add nuw nsw i64 %i.jp, %i.xf
  %.idx.7.i = shl nuw nsw i64 %i.yj, 3
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.7.i
  %i.yl = load <2 x float>, ptr %i.yk, align 4, !tbaa !23
  %i.ym = insertelement <2 x float> poison, float %i.yi, i64 0
  %i.yn = shufflevector <2 x float> %i.ym, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yo = fmul reassoc nsz arcp contract afn <2 x float> %i.yl, %i.yn
  %i.yp = fadd reassoc nsz arcp contract afn <2 x float> %i.yo, %i.yg
  br label %.loopexit.7.i

.loopexit.7.i:                                    ; preds = %.loopexit.loopexit.7.i, %.loopexit.6.i
  %i.yq = phi <2 x float> [ %i.yp, %.loopexit.loopexit.7.i ], [ %i.yg, %.loopexit.6.i ] ; 3 uses
  br i1 %or.cond349.8.i, label %.loopexit.loopexit.8.i, label %.loopexit350.i

.loopexit.loopexit.8.i:                           ; preds = %.loopexit.7.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !23
  %i.yt = add nuw nsw i64 %i.jq, %i.xf
  %.idx.8.i = shl nuw nsw i64 %i.yt, 3
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.8.i
  %i.yv = load <2 x float>, ptr %i.yu, align 4, !tbaa !23
  %i.yw = insertelement <2 x float> poison, float %i.ys, i64 0
  %i.yx = shufflevector <2 x float> %i.yw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yy = fmul reassoc nsz arcp contract afn <2 x float> %i.yv, %i.yx
  %i.yz = fadd reassoc nsz arcp contract afn <2 x float> %i.yy, %i.yq ; 2 uses
  br label %.loopexit350.i

.loopexit350.i:                                   ; preds = %.loopexit.loopexit.8.i, %.loopexit.7.i, %.preheader353.i
  %i.za = phi <2 x float> [ %i.uu, %.preheader353.i ], [ %i.yz, %.loopexit.loopexit.8.i ], [ %i.yq, %.loopexit.7.i ] ; 2 uses
  %i.zb = phi <2 x float> [ %i.uv, %.preheader353.i ], [ %i.yz, %.loopexit.loopexit.8.i ], [ %i.yq, %.loopexit.7.i ]
  %i.zc = add nsw i32 %.0333358.i, 1              ; 2 uses
  %exitcond.not.i40 = icmp eq i32 %i.zc, 5
  br i1 %exitcond.not.i40, label %.loopexit352.i, label %.preheader353.i

.loopexit352.loopexit.i:                          ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i = load float, ptr %.sroa.0, align 16, !tbaa !23
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.4..pre385.i = load float, ptr %.sroa.7, align 4, !tbaa !23
  %.pre129 = add nuw nsw i64 %indvars.iv376.i, 1
  %i.zd = insertelement <2 x float> poison, float %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre.i, i64 0
  %i.ze = insertelement <2 x float> %i.zd, float %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.4..pre385.i, i64 1
  br label %.loopexit352.i

.loopexit352.i:                                   ; preds = %.loopexit350.i, %.loopexit352.loopexit.i
  %indvars.iv.next377.i.pre-phi = phi i64 [ %.pre129, %.loopexit352.loopexit.i ], [ %i.jn, %.loopexit350.i ] ; 2 uses
  %i.zf = phi <2 x float> [ %i.ze, %.loopexit352.loopexit.i ], [ %i.za, %.loopexit350.i ] ; 3 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.jf
  %i.zh = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.zf, %i.ix
  %i.zi = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.zf, %i.iz
  %i.zj = select <2 x i1> %i.zi, <2 x float> %i.zf, <2 x float> %i.iz
  %i.zk = select <2 x i1> %i.zh, <2 x float> %i.ix, <2 x float> %i.zj
  store <2 x float> %i.zk, ptr %i.zg, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next377.i.pre-phi, %i.iu
  br i1 %exitcond379.not.i, label %._crit_edge.i41, label %bb.v

_fast_9x9_kernel_2.exit:                          ; preds = %._crit_edge.i41, %bb.u, %.preheader355.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.z

bb.x:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call fastcc void @_calc_9x9_gauss_coeffs(ptr noundef %i.a, float noundef %4)
  %i.zl = icmp sgt i32 %3, 0
  br i1 %i.zl, label %.preheader355.lr.ph.i46, label %_fast_9x9_kernel_4.exit

.preheader355.lr.ph.i46:                          ; preds = %bb.x
  %i.zm = shl nuw nsw i32 %2, 4
  %i.zn = mul nuw nsw i32 %2, 12
  %i.zo = shl nuw nsw i32 %2, 3
  %i.zp = shl nuw nsw i32 %2, 2
  %i.zq = icmp sgt i32 %2, 0
  %i.zr = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.zs = load <1 x float>, ptr %i.zr, align 8
  %i.zt = zext nneg i32 %i.zm to i64              ; 2 uses
  %i.zu = zext nneg i32 %i.zo to i64              ; 2 uses
  %invariant.gep.i47 = getelementptr [4 x i8], ptr %0, i64 %i.zu
  %invariant.gep362.i48 = getelementptr [4 x i8], ptr %0, i64 %i.zt
  %i.zv = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.zw = load <1 x float>, ptr %i.zv, align 4
  %i.zx = zext nneg i32 %i.zp to i64              ; 2 uses
  %invariant.gep364.i49 = getelementptr [4 x i8], ptr %0, i64 %i.zx
  %i.zy = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.zz = load <1 x float>, ptr %i.zy, align 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aab = load <1 x float>, ptr %i.aaa, align 8
  %i.aac = zext nneg i32 %i.zn to i64             ; 2 uses
  %invariant.gep366.i50 = getelementptr [4 x i8], ptr %0, i64 %i.aac
  %i.aad = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.aae = load <1 x float>, ptr %i.aad, align 4
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aag = load <1 x float>, ptr %i.aaf, align 16
  %i.aah = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.aai = load <1 x float>, ptr %i.aah, align 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aak = load <1 x float>, ptr %i.aaj, align 16
  %i.aal = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.aam = load <1 x float>, ptr %i.aal, align 4
  %i.aan = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aao = load <1 x float>, ptr %i.aan, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aaq = load <1 x float>, ptr %i.aap, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aas = load <1 x float>, ptr %i.aar, align 4
  %i.aat = load <1 x float>, ptr %i.a, align 16
  br i1 %i.zq, label %.preheader355.preheader.i51, label %_fast_9x9_kernel_4.exit

.preheader355.preheader.i51:                      ; preds = %.preheader355.lr.ph.i46
  %i.aau = add nsw i32 %3, -4
  %i.aav = add nsw i32 %2, -4
  %i.aaw = zext nneg i32 %2 to i64                ; 7 uses
  %i.aax = sext i32 %i.aav to i64
  %i.aay = sext i32 %i.aau to i64
  %wide.trip.count392.i = zext nneg i32 %3 to i64
  %i.aaz = insertelement <4 x float> poison, float %5, i64 0
  %i.aba = shufflevector <4 x float> %i.aaz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abb = insertelement <4 x float> poison, float %6, i64 0
  %i.abc = shufflevector <4 x float> %i.abb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat195 = shufflevector <1 x float> %i.aat, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat193 = shufflevector <1 x float> %i.aas, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat191 = shufflevector <1 x float> %i.aaq, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat189 = shufflevector <1 x float> %i.aao, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat187 = shufflevector <1 x float> %i.aam, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat185 = shufflevector <1 x float> %i.aak, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <1 x float> %i.aai, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat181 = shufflevector <1 x float> %i.aag, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat179 = shufflevector <1 x float> %i.aae, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat177 = shufflevector <1 x float> %i.aab, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat175 = shufflevector <1 x float> %i.zz, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat173 = shufflevector <1 x float> %i.zw, <1 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat = shufflevector <1 x float> %i.zs, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader355.i53

.preheader355.i53:                                ; preds = %._crit_edge.i74, %.preheader355.preheader.i51
  %indvars.iv389.i = phi i64 [ 0, %.preheader355.preheader.i51 ], [ %indvars.iv.next390.i, %._crit_edge.i74 ] ; 5 uses
  %i.abd = mul nuw nsw i64 %indvars.iv389.i, %i.aaw
  %i.abe = icmp samesign ugt i64 %indvars.iv389.i, 3
  %i.abf = icmp slt i64 %indvars.iv389.i, %i.aay
  br label %bb.y

._crit_edge.i74:                                  ; preds = %.loopexit352.i69
  %indvars.iv.next390.i = add nuw nsw i64 %indvars.iv389.i, 1 ; 2 uses
  %exitcond393.not.i = icmp eq i64 %indvars.iv.next390.i, %wide.trip.count392.i
  br i1 %exitcond393.not.i, label %_fast_9x9_kernel_4.exit, label %.preheader355.i53

bb.y:                                             ; preds = %.loopexit352.i69, %.preheader355.i53
  %indvars.iv382.i = phi i64 [ 0, %.preheader355.i53 ], [ %indvars.iv.next383.i.pre-phi, %.loopexit352.i69 ] ; 13 uses
  %i.abg = add nuw nsw i64 %indvars.iv382.i, %i.abd
  %i.abh = shl nuw nsw i64 %i.abg, 2              ; 10 uses
  %i.abi = icmp samesign ugt i64 %indvars.iv382.i, 3
  %or.cond.i54 = select i1 %i.abi, i1 %i.abe, i1 false
  %i.abj = icmp slt i64 %indvars.iv382.i, %i.aax
  %or.cond345.i55 = select i1 %or.cond.i54, i1 %i.abj, i1 false
  %or.cond347.i56 = select i1 %or.cond345.i55, i1 %i.abf, i1 false
  br i1 %or.cond347.i56, label %.preheader351.i91, label %.preheader353.preheader.i57

.preheader353.preheader.i57:                      ; preds = %bb.y
  %i.abk = add nsw i64 %indvars.iv382.i, -4       ; 2 uses
  %i.abl = trunc nsw i64 %i.abk to i32
  %or.cond349.i58 = icmp ugt i32 %2, %i.abl
  %i.abm = add nsw i64 %indvars.iv382.i, -3       ; 2 uses
  %i.abn = trunc nsw i64 %i.abm to i32
  %or.cond349.1.i59 = icmp ugt i32 %2, %i.abn
  %i.abo = add nsw i64 %indvars.iv382.i, -2       ; 2 uses
  %i.abp = trunc nsw i64 %i.abo to i32
  %or.cond349.2.i60 = icmp ugt i32 %2, %i.abp
  %i.abq = add nsw i64 %indvars.iv382.i, -1       ; 2 uses
  %i.abr = trunc nsw i64 %i.abq to i32
  %or.cond349.3.i61 = icmp ugt i32 %2, %i.abr
  %i.abs = add nuw nsw i64 %indvars.iv382.i, 1    ; 3 uses
  %i.abt = icmp samesign ult i64 %i.abs, %i.aaw
  %i.abu = add nuw nsw i64 %indvars.iv382.i, 2    ; 2 uses
  %i.abv = icmp samesign ult i64 %i.abu, %i.aaw
  %i.abw = add nuw nsw i64 %indvars.iv382.i, 3    ; 2 uses
  %i.abx = icmp samesign ult i64 %i.abw, %i.aaw
  %i.aby = add nuw nsw i64 %indvars.iv382.i, 4    ; 2 uses
  %i.abz = icmp samesign ult i64 %i.aby, %i.aaw
  br label %.preheader353.i63

.preheader351.i91:                                ; preds = %bb.y
  %i.aca = sub nsw i64 %i.abh, %i.zt
  %i.acb = getelementptr [4 x i8], ptr %0, i64 %i.aca ; 5 uses
  %i.acc = getelementptr i8, ptr %i.acb, i64 -32
  %i.acd = getelementptr i8, ptr %i.acb, i64 32
  %i.ace = sub nsw i64 %i.abh, %i.zu
  %i.acf = getelementptr [4 x i8], ptr %0, i64 %i.ace ; 9 uses
  %i.acg = getelementptr i8, ptr %i.acf, i64 -64
  %i.ach = getelementptr i8, ptr %i.acf, i64 64
  %gep.i92 = getelementptr [4 x i8], ptr %invariant.gep.i47, i64 %i.abh ; 9 uses
  %i.aci = getelementptr i8, ptr %gep.i92, i64 -64
  %i.acj = getelementptr i8, ptr %gep.i92, i64 64
  %gep363.i93 = getelementptr [4 x i8], ptr %invariant.gep362.i48, i64 %i.abh ; 5 uses
  %i.ack = getelementptr i8, ptr %gep363.i93, i64 -32
  %i.acl = getelementptr i8, ptr %gep363.i93, i64 32
  %i.acm = getelementptr i8, ptr %i.acb, i64 -16
  %i.acn = getelementptr i8, ptr %i.acb, i64 16
  %i.aco = sub nsw i64 %i.abh, %i.zx
  %i.acp = getelementptr [4 x i8], ptr %0, i64 %i.aco ; 9 uses
  %i.acq = getelementptr i8, ptr %i.acp, i64 -64
  %i.acr = getelementptr i8, ptr %i.acp, i64 64
  %gep365.i94 = getelementptr [4 x i8], ptr %invariant.gep364.i49, i64 %i.abh ; 9 uses
  %i.acs = getelementptr i8, ptr %gep365.i94, i64 -64
  %i.act = getelementptr i8, ptr %gep365.i94, i64 64
  %i.acu = getelementptr i8, ptr %gep363.i93, i64 -16
  %i.acv = getelementptr i8, ptr %gep363.i93, i64 16
  %i.acw = getelementptr [4 x i8], ptr %0, i64 %i.abh ; 9 uses
  %i.acx = getelementptr i8, ptr %i.acw, i64 -64
  %i.acy = getelementptr i8, ptr %i.acw, i64 64
  %i.acz = sub nsw i64 %i.abh, %i.aac
  %i.ada = getelementptr [4 x i8], ptr %0, i64 %i.acz ; 7 uses
  %i.adb = getelementptr i8, ptr %i.ada, i64 -48
  %i.adc = getelementptr i8, ptr %i.ada, i64 48
  %gep367.i95 = getelementptr [4 x i8], ptr %invariant.gep366.i50, i64 %i.abh ; 7 uses
  %i.add = getelementptr i8, ptr %gep367.i95, i64 -48
  %i.ade = getelementptr i8, ptr %gep367.i95, i64 48
  %i.adf = getelementptr i8, ptr %i.ada, i64 -32
  %i.adg = getelementptr i8, ptr %i.ada, i64 32
  %i.adh = getelementptr i8, ptr %i.acf, i64 -48
  %i.adi = getelementptr i8, ptr %i.acf, i64 48
  %i.adj = getelementptr i8, ptr %gep.i92, i64 -48
  %i.adk = getelementptr i8, ptr %gep.i92, i64 48
  %i.adl = getelementptr i8, ptr %gep367.i95, i64 -32
  %i.adm = getelementptr i8, ptr %gep367.i95, i64 32
  %i.adn = getelementptr i8, ptr %i.ada, i64 -16
  %i.ado = getelementptr i8, ptr %i.ada, i64 16
  %i.adp = getelementptr i8, ptr %i.acp, i64 -48
  %i.adq = getelementptr i8, ptr %i.acp, i64 48
  %i.adr = getelementptr i8, ptr %gep365.i94, i64 -48
  %i.ads = getelementptr i8, ptr %gep365.i94, i64 48
  %i.adt = getelementptr i8, ptr %gep367.i95, i64 -16
  %i.adu = getelementptr i8, ptr %gep367.i95, i64 16
  %i.adv = getelementptr i8, ptr %i.acw, i64 -48
  %i.adw = getelementptr i8, ptr %i.acw, i64 48
  %i.adx = getelementptr i8, ptr %i.acf, i64 -32
  %i.ady = getelementptr i8, ptr %i.acf, i64 32
  %i.adz = getelementptr i8, ptr %gep.i92, i64 -32
  %i.aea = getelementptr i8, ptr %gep.i92, i64 32
  %i.aeb = getelementptr i8, ptr %i.acf, i64 -16
  %i.aec = getelementptr i8, ptr %i.acf, i64 16
  %i.aed = getelementptr i8, ptr %i.acp, i64 -32
  %i.aee = getelementptr i8, ptr %i.acp, i64 32
  %i.aef = getelementptr i8, ptr %gep365.i94, i64 -32
  %i.aeg = getelementptr i8, ptr %gep365.i94, i64 32
  %i.aeh = getelementptr i8, ptr %gep.i92, i64 -16
  %i.aei = getelementptr i8, ptr %gep.i92, i64 16
  %i.aej = getelementptr i8, ptr %i.acw, i64 -32
  %i.aek = getelementptr i8, ptr %i.acw, i64 32
  %i.ael = getelementptr i8, ptr %i.acp, i64 -16
  %i.aem = getelementptr i8, ptr %i.acp, i64 16
  %i.aen = getelementptr i8, ptr %gep365.i94, i64 -16
  %i.aeo = getelementptr i8, ptr %gep365.i94, i64 16
  %i.aep = getelementptr i8, ptr %i.acw, i64 -16
  %i.aeq = getelementptr i8, ptr %i.acw, i64 16
  %wide.load = load <4 x float>, ptr %i.acc, align 4, !tbaa !23
  %wide.load196 = load <4 x float>, ptr %i.acd, align 4, !tbaa !23
  %i.aer = fadd reassoc nsz arcp contract afn <4 x float> %wide.load196, %wide.load
  %wide.load197 = load <4 x float>, ptr %i.acg, align 4, !tbaa !23
  %i.aes = fadd reassoc nsz arcp contract afn <4 x float> %i.aer, %wide.load197
  %wide.load198 = load <4 x float>, ptr %i.ach, align 4, !tbaa !23
  %i.aet = fadd reassoc nsz arcp contract afn <4 x float> %i.aes, %wide.load198
  %wide.load199 = load <4 x float>, ptr %i.aci, align 4, !tbaa !23
  %i.aeu = fadd reassoc nsz arcp contract afn <4 x float> %i.aet, %wide.load199
end_hunk_2
begin_hunk_3_@dt_gaussian_fast_blur:bb.a
  %i.aho = fadd reassoc nsz arcp contract afn <4 x float> %i.ahn, %wide.load261
  %wide.load262 = load <4 x float>, ptr %gep365.i94, align 4, !tbaa !23
  %i.ahp = fadd reassoc nsz arcp contract afn <4 x float> %i.aho, %wide.load262
  %i.ahq = fmul reassoc nsz arcp contract afn <4 x float> %i.ahp, %broadcast.splat193
  %i.ahr = fadd reassoc nsz arcp contract afn <4 x float> %i.ahm, %i.ahq
  %wide.load263 = load <4 x float>, ptr %i.acw, align 4, !tbaa !23
  %i.ahs = fmul reassoc nsz arcp contract afn <4 x float> %wide.load263, %broadcast.splat195
  %i.aht = fadd reassoc nsz arcp contract afn <4 x float> %i.ahr, %i.ahs
  %.pre130 = add nuw nsw i64 %indvars.iv382.i, 1
  br label %.loopexit352.i69

.preheader353.i63:                                ; preds = %.loopexit350.i66, %.preheader353.preheader.i57
  %indvars.iv.i64 = phi i64 [ -4, %.preheader353.preheader.i57 ], [ %indvars.iv.next.i67, %.loopexit350.i66 ] ; 3 uses
  %i.ahu = phi <4 x float> [ zeroinitializer, %.preheader353.preheader.i57 ], [ %i.aly, %.loopexit350.i66 ] ; 3 uses
  %i.ahv = phi <4 x float> [ zeroinitializer, %.preheader353.preheader.i57 ], [ %i.alx, %.loopexit350.i66 ] ; 2 uses
  %i.ahw = add nsw i64 %indvars.iv.i64, %indvars.iv389.i ; 2 uses
  %i.ahx = trunc nsw i64 %i.ahw to i32
  %or.cond348.i65 = icmp ugt i32 %3, %i.ahx
  br i1 %or.cond348.i65, label %.preheader.i75, label %.loopexit350.i66

.preheader.i75:                                   ; preds = %.preheader353.i63
  %i.ahy = trunc nsw i64 %indvars.iv.i64 to i32
  %i.ahz = tail call i32 @llvm.abs.i32(i32 %i.ahy, i1 true)
  %i.aia = mul nuw nsw i32 %i.ahz, 5              ; 4 uses
  %i.aib = mul nuw nsw i64 %i.ahw, %i.aaw         ; 9 uses
  br i1 %or.cond349.i58, label %.loopexit.loopexit.i90, label %.loopexit.i76

.loopexit.loopexit.i90:                           ; preds = %.preheader.i75
  %i.aic = zext nneg i32 %i.aia to i64
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aic
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !23
  %i.aig = add nuw nsw i64 %i.aib, %i.abk
  %.idx = shl nsw i64 %i.aig, 4
  %i.aih = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.aii = load <4 x float>, ptr %i.aih, align 4, !tbaa !23
  %i.aij = insertelement <4 x float> poison, float %i.aif, i64 0
  %i.aik = shufflevector <4 x float> %i.aij, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ail = fmul reassoc nsz arcp contract afn <4 x float> %i.aii, %i.aik
  %i.aim = fadd reassoc nsz arcp contract afn <4 x float> %i.ail, %i.ahu ; 2 uses
  br label %.loopexit.i76

.loopexit.i76:                                    ; preds = %.loopexit.loopexit.i90, %.preheader.i75
  %i.ain = phi <4 x float> [ %i.aim, %.loopexit.loopexit.i90 ], [ %i.ahu, %.preheader.i75 ] ; 2 uses
  %i.aio = phi <4 x float> [ %i.aim, %.loopexit.loopexit.i90 ], [ %i.ahv, %.preheader.i75 ]
  br i1 %or.cond349.1.i59, label %.loopexit.loopexit.1.i89, label %.loopexit.1.i77

.loopexit.loopexit.1.i89:                         ; preds = %.loopexit.i76
  %i.aip = zext nneg i32 %i.aia to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aip
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 12
  %i.ais = load float, ptr %i.air, align 4, !tbaa !23
  %i.ait = add nuw nsw i64 %i.aib, %i.abm
  %.idx99 = shl nsw i64 %i.ait, 4
  %i.aiu = getelementptr inbounds i8, ptr %0, i64 %.idx99
  %i.aiv = load <4 x float>, ptr %i.aiu, align 4, !tbaa !23
  %i.aiw = insertelement <4 x float> poison, float %i.ais, i64 0
  %i.aix = shufflevector <4 x float> %i.aiw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiy = fmul reassoc nsz arcp contract afn <4 x float> %i.aiv, %i.aix
  %i.aiz = fadd reassoc nsz arcp contract afn <4 x float> %i.aiy, %i.ain ; 2 uses
  br label %.loopexit.1.i77

.loopexit.1.i77:                                  ; preds = %.loopexit.loopexit.1.i89, %.loopexit.i76
  %i.aja = phi <4 x float> [ %i.aiz, %.loopexit.loopexit.1.i89 ], [ %i.ain, %.loopexit.i76 ] ; 2 uses
  %i.ajb = phi <4 x float> [ %i.aiz, %.loopexit.loopexit.1.i89 ], [ %i.aio, %.loopexit.i76 ]
  br i1 %or.cond349.2.i60, label %.loopexit.loopexit.2.i88, label %.loopexit.2.i78

.loopexit.loopexit.2.i88:                         ; preds = %.loopexit.1.i77
  %i.ajc = zext nneg i32 %i.aia to i64
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ajc
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !23
  %i.ajg = add nuw nsw i64 %i.aib, %i.abo
  %.idx100 = shl nsw i64 %i.ajg, 4
  %i.ajh = getelementptr inbounds i8, ptr %0, i64 %.idx100
  %i.aji = load <4 x float>, ptr %i.ajh, align 4, !tbaa !23
  %i.ajj = insertelement <4 x float> poison, float %i.ajf, i64 0
  %i.ajk = shufflevector <4 x float> %i.ajj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajl = fmul reassoc nsz arcp contract afn <4 x float> %i.aji, %i.ajk
  %i.ajm = fadd reassoc nsz arcp contract afn <4 x float> %i.ajl, %i.aja ; 2 uses
  br label %.loopexit.2.i78

.loopexit.2.i78:                                  ; preds = %.loopexit.loopexit.2.i88, %.loopexit.1.i77
  %i.ajn = phi <4 x float> [ %i.ajm, %.loopexit.loopexit.2.i88 ], [ %i.aja, %.loopexit.1.i77 ]
  %i.ajo = phi <4 x float> [ %i.ajm, %.loopexit.loopexit.2.i88 ], [ %i.ajb, %.loopexit.1.i77 ]
  %i.ajp = zext nneg i32 %i.aia to i64            ; 2 uses
  br i1 %or.cond349.3.i61, label %.loopexit.loopexit.3.i87, label %.loopexit.4.i79

.loopexit.loopexit.3.i87:                         ; preds = %.loopexit.2.i78
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !23
  %i.ajt = add nuw nsw i64 %i.aib, %i.abq
  %.idx101 = shl nsw i64 %i.ajt, 4
  %i.aju = getelementptr inbounds i8, ptr %0, i64 %.idx101
  %i.ajv = load <4 x float>, ptr %i.aju, align 4, !tbaa !23
  %i.ajw = insertelement <4 x float> poison, float %i.ajs, i64 0
  %i.ajx = shufflevector <4 x float> %i.ajw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajy = fmul reassoc nsz arcp contract afn <4 x float> %i.ajv, %i.ajx
  %i.ajz = fadd reassoc nsz arcp contract afn <4 x float> %i.ajy, %i.ajn
  br label %.loopexit.4.i79

.loopexit.4.i79:                                  ; preds = %.loopexit.2.i78, %.loopexit.loopexit.3.i87
  %i.aka = phi <4 x float> [ %i.ajz, %.loopexit.loopexit.3.i87 ], [ %i.ajo, %.loopexit.2.i78 ]
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ajp ; 5 uses
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !23
  %i.akd = add nuw nsw i64 %i.aib, %indvars.iv382.i
  %.idx102 = shl nsw i64 %i.akd, 4
  %i.ake = getelementptr inbounds i8, ptr %0, i64 %.idx102
  %i.akf = load <4 x float>, ptr %i.ake, align 4, !tbaa !23
  %i.akg = insertelement <4 x float> poison, float %i.akc, i64 0
  %i.akh = shufflevector <4 x float> %i.akg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aki = fmul reassoc nsz arcp contract afn <4 x float> %i.akf, %i.akh
  %i.akj = fadd reassoc nsz arcp contract afn <4 x float> %i.aki, %i.aka ; 2 uses
  br i1 %i.abt, label %.loopexit.loopexit.5.i86, label %.loopexit.5.i80

.loopexit.loopexit.5.i86:                         ; preds = %.loopexit.4.i79
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  %i.akl = load float, ptr %i.akk, align 4, !tbaa !23
  %i.akm = add nuw nsw i64 %i.aib, %i.abs
  %.idx103 = shl nsw i64 %i.akm, 4
  %i.akn = getelementptr inbounds i8, ptr %0, i64 %.idx103
  %i.ako = load <4 x float>, ptr %i.akn, align 4, !tbaa !23
  %i.akp = insertelement <4 x float> poison, float %i.akl, i64 0
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akr = fmul reassoc nsz arcp contract afn <4 x float> %i.ako, %i.akq
  %i.aks = fadd reassoc nsz arcp contract afn <4 x float> %i.akr, %i.akj
  br label %.loopexit.5.i80

.loopexit.5.i80:                                  ; preds = %.loopexit.loopexit.5.i86, %.loopexit.4.i79
  %i.akt = phi <4 x float> [ %i.aks, %.loopexit.loopexit.5.i86 ], [ %i.akj, %.loopexit.4.i79 ] ; 2 uses
  br i1 %i.abv, label %.loopexit.loopexit.6.i85, label %.loopexit.6.i81

.loopexit.loopexit.6.i85:                         ; preds = %.loopexit.5.i80
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !23
  %i.akw = add nuw nsw i64 %i.aib, %i.abu
  %.idx104 = shl nsw i64 %i.akw, 4
  %i.akx = getelementptr inbounds i8, ptr %0, i64 %.idx104
  %i.aky = load <4 x float>, ptr %i.akx, align 4, !tbaa !23
  %i.akz = insertelement <4 x float> poison, float %i.akv, i64 0
  %i.ala = shufflevector <4 x float> %i.akz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alb = fmul reassoc nsz arcp contract afn <4 x float> %i.aky, %i.ala
  %i.alc = fadd reassoc nsz arcp contract afn <4 x float> %i.alb, %i.akt
  br label %.loopexit.6.i81

.loopexit.6.i81:                                  ; preds = %.loopexit.loopexit.6.i85, %.loopexit.5.i80
  %i.ald = phi <4 x float> [ %i.alc, %.loopexit.loopexit.6.i85 ], [ %i.akt, %.loopexit.5.i80 ] ; 2 uses
  br i1 %i.abx, label %.loopexit.loopexit.7.i84, label %.loopexit.7.i82

.loopexit.loopexit.7.i84:                         ; preds = %.loopexit.6.i81
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akb, i64 12
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !23
  %i.alg = add nuw nsw i64 %i.aib, %i.abw
  %.idx105 = shl nsw i64 %i.alg, 4
  %i.alh = getelementptr inbounds i8, ptr %0, i64 %.idx105
  %i.ali = load <4 x float>, ptr %i.alh, align 4, !tbaa !23
  %i.alj = insertelement <4 x float> poison, float %i.alf, i64 0
  %i.alk = shufflevector <4 x float> %i.alj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.all = fmul reassoc nsz arcp contract afn <4 x float> %i.ali, %i.alk
  %i.alm = fadd reassoc nsz arcp contract afn <4 x float> %i.all, %i.ald
  br label %.loopexit.7.i82

.loopexit.7.i82:                                  ; preds = %.loopexit.loopexit.7.i84, %.loopexit.6.i81
  %i.aln = phi <4 x float> [ %i.alm, %.loopexit.loopexit.7.i84 ], [ %i.ald, %.loopexit.6.i81 ] ; 3 uses
  br i1 %i.abz, label %.loopexit.loopexit.8.i83, label %.loopexit350.i66

.loopexit.loopexit.8.i83:                         ; preds = %.loopexit.7.i82
  %i.alo = getelementptr inbounds nuw i8, ptr %i.akb, i64 16
  %i.alp = load float, ptr %i.alo, align 4, !tbaa !23
  %i.alq = add nuw nsw i64 %i.aib, %i.aby
  %.idx106 = shl nsw i64 %i.alq, 4
  %i.alr = getelementptr inbounds i8, ptr %0, i64 %.idx106
  %i.als = load <4 x float>, ptr %i.alr, align 4, !tbaa !23
  %i.alt = insertelement <4 x float> poison, float %i.alp, i64 0
  %i.alu = shufflevector <4 x float> %i.alt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alv = fmul reassoc nsz arcp contract afn <4 x float> %i.als, %i.alu
  %i.alw = fadd reassoc nsz arcp contract afn <4 x float> %i.alv, %i.aln ; 2 uses
  br label %.loopexit350.i66

.loopexit350.i66:                                 ; preds = %.loopexit.loopexit.8.i83, %.loopexit.7.i82, %.preheader353.i63
  %i.alx = phi <4 x float> [ %i.ahv, %.preheader353.i63 ], [ %i.alw, %.loopexit.loopexit.8.i83 ], [ %i.aln, %.loopexit.7.i82 ] ; 2 uses
  %i.aly = phi <4 x float> [ %i.ahu, %.preheader353.i63 ], [ %i.alw, %.loopexit.loopexit.8.i83 ], [ %i.aln, %.loopexit.7.i82 ]
  %indvars.iv.next.i67 = add nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, 5
  br i1 %exitcond.not.i68, label %.loopexit352.i69, label %.preheader353.i63

.loopexit352.i69:                                 ; preds = %.loopexit350.i66, %.preheader351.i91
  %indvars.iv.next383.i.pre-phi = phi i64 [ %.pre130, %.preheader351.i91 ], [ %i.abs, %.loopexit350.i66 ] ; 2 uses
  %i.alz = phi <4 x float> [ %i.aht, %.preheader351.i91 ], [ %i.alx, %.loopexit350.i66 ] ; 3 uses
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.abh
  %i.amb = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.alz, %i.aba
  %i.amc = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.alz, %i.abc
  %i.amd = select <4 x i1> %i.amc, <4 x float> %i.alz, <4 x float> %i.abc
  %i.ame = select <4 x i1> %i.amb, <4 x float> %i.aba, <4 x float> %i.amd
  store <4 x float> %i.ame, ptr %i.ama, align 4, !tbaa !23
  %exitcond388.not.i = icmp eq i64 %indvars.iv.next383.i.pre-phi, %i.aaw
  br i1 %exitcond388.not.i, label %._crit_edge.i74, label %bb.y

_fast_9x9_kernel_4.exit:                          ; preds = %._crit_edge.i74, %bb.x, %.preheader355.lr.ph.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.c, %_fast_9x9_kernel_2.exit, %_fast_9x9_kernel_4.exit, %_fast_9x9_kernel_1.exit
  br i1 %i.d, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @dt_iop_image_copy(ptr noundef %1, ptr noundef %.0, i64 noundef %i.i) #18
  tail call void @free(ptr noundef %.0) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  ret void
}

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_calc_9x9_gauss_coeffs(ptr nofree noundef nonnull writeonly captures(none) %0, float noundef %1) unnamed_addr #12 {
bb.a:
  %i.a = alloca [9 x [9 x float]], align 16       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fmul reassoc nsz arcp contract afn float %1, %1 ; 9 uses
  %i.c = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.d = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.f = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.g = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.h = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.i = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.j = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.k = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  br label %.preheader35

.preheader35:                                     ; preds = %bb.a, %bb.n
  %indvars.iv = phi i64 [ -4, %bb.a ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %.03238 = phi float [ 0.000000e+00, %bb.a ], [ %.2.8, %bb.n ] ; 6 uses
  %i.l = mul nsw i64 %indvars.iv, %indvars.iv     ; 12 uses
  %i.m = getelementptr [36 x i8], ptr %i.a, i64 %indvars.iv ; 19 uses
  %i.n = add nuw nsw i64 %i.l, 16                 ; 2 uses
  %i.o = icmp samesign ult i64 %i.l, 5            ; 2 uses
  br i1 %i.o, label %.thread, label %bb.b

.preheader34:                                     ; preds = %bb.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.q = load <12 x float>, ptr %i.p, align 16, !tbaa !23
  %i.r = shufflevector <12 x float> %i.q, <12 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 9, i32 10, i32 11>
  %i.s = insertelement <8 x float> poison, float %.2.8, i64 0
  %i.t = shufflevector <8 x float> %i.s, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.u = fdiv reassoc nsz arcp contract afn <8 x float> %i.r, %i.t
  store <8 x float> %i.u, ptr %0, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <16 x float>, ptr %i.v, align 16, !tbaa !23
  %i.y = shufflevector <16 x float> %i.x, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 6, i32 7, i32 8, i32 9, i32 10, i32 15>
  %i.z = fdiv reassoc nsz arcp contract afn <8 x float> %i.y, %i.t
  store <8 x float> %i.z, ptr %i.w, align 4, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load <12 x float>, ptr %i.aa, align 16, !tbaa !23
  %i.ad = shufflevector <12 x float> %i.ac, <12 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ae = fdiv reassoc nsz arcp contract afn <8 x float> %i.ad, %i.t
  store <8 x float> %i.ae, ptr %i.ab, align 4, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ag = load float, ptr %i.af, align 16, !tbaa !23
  %i.ah = fdiv reassoc nsz arcp contract afn float %i.ag, %.2.8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float %i.ah, ptr %i.ai, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.thread:                                          ; preds = %.preheader35
  %i.aj = trunc nuw nsw i64 %i.n to i32
  %i.ak = uitofp nsz nneg i32 %i.aj to float
  %i.al = fmul reassoc nnan nsz arcp contract afn float %i.ak, -5.000000e-01
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.c
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.am) ; 2 uses
  %i.ao = getelementptr i8, ptr %i.m, i64 144
  store float %i.an, ptr %i.ao, align 4, !tbaa !23
  %i.ap = fadd reassoc nsz arcp contract afn float %i.an, %.03238
  %i.aq = add nuw nsw i64 %i.l, 9
  br label %.thread61

bb.b:                                             ; preds = %.preheader35
  %i.ar = getelementptr i8, ptr %i.m, i64 144
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !23
  %i.as = add nuw nsw i64 %i.l, 9                 ; 3 uses
  %i.at = icmp samesign ult i64 %i.l, 12
  br i1 %i.at, label %.thread61, label %bb.c

.thread61:                                        ; preds = %bb.b, %.thread
  %i.au = phi i64 [ %i.aq, %.thread ], [ %i.as, %bb.b ] ; 2 uses
  %.260 = phi float [ %i.ap, %.thread ], [ %.03238, %bb.b ]
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = uitofp nsz nneg i32 %i.av to float
  %i.ax = fmul reassoc nnan nsz arcp contract afn float %i.aw, -5.000000e-01
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.d
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ay) ; 2 uses
  %i.ba = getelementptr i8, ptr %i.m, i64 148
  store float %i.az, ptr %i.ba, align 4, !tbaa !23
  %i.bb = fadd reassoc nsz arcp contract afn float %i.az, %.260
  %i.bc = add nuw nsw i64 %i.l, 4
  br label %.thread64

bb.c:                                             ; preds = %bb.b
  %i.bd = getelementptr i8, ptr %i.m, i64 148
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !23
  %i.be = add nuw nsw i64 %i.l, 4                 ; 2 uses
  %i.bf = icmp samesign ult i64 %i.l, 17
  br i1 %i.bf, label %.thread64, label %bb.d

.thread64:                                        ; preds = %bb.c, %.thread61
  %i.bg = phi i64 [ %i.bc, %.thread61 ], [ %i.be, %bb.c ] ; 2 uses
  %.2.163 = phi float [ %i.bb, %.thread61 ], [ %.03238, %bb.c ]
  %i.bh = phi i64 [ %i.au, %.thread61 ], [ %i.as, %bb.c ]
  %i.bi = phi i1 [ true, %.thread61 ], [ false, %bb.c ]
  %i.bj = trunc nuw nsw i64 %i.bg to i32
  %i.bk = uitofp nsz nneg i32 %i.bj to float
  %i.bl = fmul reassoc nnan nsz arcp contract afn float %i.bk, -5.000000e-01
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, %i.e
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.bm) ; 2 uses
  %i.bo = getelementptr i8, ptr %i.m, i64 152
  store float %i.bn, ptr %i.bo, align 4, !tbaa !23
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bn, %.2.163
  br label %.thread67

bb.d:                                             ; preds = %bb.c
  %i.bq = getelementptr i8, ptr %i.m, i64 152
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !23
  %i.br = icmp samesign ult i64 %i.l, 20
  br i1 %i.br, label %.thread67, label %bb.e

.thread67:                                        ; preds = %bb.d, %.thread64
  %.2.266 = phi float [ %i.bp, %.thread64 ], [ %.03238, %bb.d ]
  %i.bs = phi i1 [ %i.bi, %.thread64 ], [ false, %bb.d ]
  %i.bt = phi i64 [ %i.bh, %.thread64 ], [ %i.as, %bb.d ]
  %i.bu = phi i64 [ %i.bg, %.thread64 ], [ %i.be, %bb.d ]
  %i.bv = phi i1 [ true, %.thread64 ], [ false, %bb.d ]
  %i.bw = add nuw nsw i64 %i.l, 1                 ; 2 uses
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = uitofp nsz nneg i32 %i.bx to float
  %i.bz = fmul reassoc nnan nsz arcp contract afn float %i.by, -5.000000e-01
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.f
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ca) ; 2 uses
  %i.cc = getelementptr i8, ptr %i.m, i64 156
  store float %i.cb, ptr %i.cc, align 4, !tbaa !23
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cb, %.2.266
  %i.ce = trunc nuw nsw i64 %i.bw to i32
  %i.cf = uitofp nsz nneg i32 %i.ce to float
  %i.cg = fmul reassoc nnan nsz arcp contract afn float %i.cf, -5.000000e-01
  %i.ch = trunc nuw nsw i64 %i.bu to i32
  %i.ci = uitofp nsz nneg i32 %i.ch to float
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.ci, -5.000000e-01
  %i.ck = trunc nuw nsw i64 %i.bt to i32
  %i.cl = uitofp nsz nneg i32 %i.ck to float
  %i.cm = fmul reassoc nnan nsz arcp contract afn float %i.cl, -5.000000e-01
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cn = getelementptr i8, ptr %i.m, i64 156
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !23
  %i.co = icmp eq i64 %i.l, 20
  br i1 %i.co, label %bb.f, label %.thread84

.thread84:                                        ; preds = %bb.e
  %i.cp = getelementptr i8, ptr %i.m, i64 160
  store <2 x float> zeroinitializer, ptr %i.cp, align 4, !tbaa !23
  %i.cq = getelementptr i8, ptr %i.m, i64 168
  store float 0.000000e+00, ptr %i.cq, align 4, !tbaa !23
  br label %bb.i

bb.f:                                             ; preds = %bb.e, %.thread67
  %.2.369 = phi float [ %i.cd, %.thread67 ], [ %.03238, %bb.e ]
  %i.cr = phi i1 [ %i.bv, %.thread67 ], [ false, %bb.e ] ; 2 uses
  %i.cs = phi float [ %i.cj, %.thread67 ], [ -1.200000e+01, %bb.e ]
  %i.ct = phi float [ %i.cm, %.thread67 ], [ -1.450000e+01, %bb.e ]
  %i.cu = phi i1 [ %i.bs, %.thread67 ], [ false, %bb.e ] ; 2 uses
  %i.cv = phi float [ %i.cg, %.thread67 ], [ -1.050000e+01, %bb.e ]
  %i.cw = phi i1 [ true, %.thread67 ], [ false, %bb.e ]
  %i.cx = trunc nuw nsw i64 %i.l to i32
  %i.cy = uitofp nsz nneg i32 %i.cx to float
  %i.cz = fmul reassoc nnan nsz arcp contract afn float %i.cy, -5.000000e-01
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.g
  %i.db = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.da) ; 2 uses
  %i.dc = getelementptr i8, ptr %i.m, i64 160
  store float %i.db, ptr %i.dc, align 4, !tbaa !23
  %i.dd = fadd reassoc nsz arcp contract afn float %i.db, %.2.369 ; 3 uses
  br i1 %i.cw, label %.split, label %bb.g

.split:                                           ; preds = %bb.f
  %i.de = fmul reassoc nsz arcp contract afn float %i.cv, %i.h
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.de) ; 2 uses
  %i.dg = getelementptr i8, ptr %i.m, i64 164
  store float %i.df, ptr %i.dg, align 4, !tbaa !23
  %i.dh = fadd reassoc nsz arcp contract afn float %i.df, %i.dd ; 2 uses
  br i1 %i.cr, label %.split80, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.di = getelementptr i8, ptr %i.m, i64 164
  store float 0.000000e+00, ptr %i.di, align 4, !tbaa !23
  br i1 %i.cr, label %.split80, label %bb.h

.split80:                                         ; preds = %.split, %bb.g
  %.2.576 = phi float [ %i.dh, %.split ], [ %i.dd, %bb.g ]
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cs, %i.i
  %i.dk = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.dj) ; 2 uses
  %i.dl = getelementptr i8, ptr %i.m, i64 168
  store float %i.dk, ptr %i.dl, align 4, !tbaa !23
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dk, %.2.576 ; 2 uses
  br i1 %i.cu, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.g, %.split
  %.2.577 = phi float [ %i.dh, %.split ], [ %i.dd, %bb.g ] ; 2 uses
  %i.dn = getelementptr i8, ptr %i.m, i64 168
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !23
  br i1 %i.cu, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread84, %.split80, %bb.h
  %.2.683 = phi float [ %i.dm, %.split80 ], [ %.2.577, %bb.h ], [ %.03238, %.thread84 ]
  %i.do = getelementptr i8, ptr %i.m, i64 172
  store float 0.000000e+00, ptr %i.do, align 4, !tbaa !23
  br label %bb.k

bb.j:                                             ; preds = %.split80, %bb.h
  %.2.682 = phi float [ %i.dm, %.split80 ], [ %.2.577, %bb.h ]
  %i.dp = fmul reassoc nsz arcp contract afn float %i.ct, %i.j
  %i.dq = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.dp) ; 2 uses
  %i.dr = getelementptr i8, ptr %i.m, i64 172
  store float %i.dq, ptr %i.dr, align 4, !tbaa !23
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dq, %.2.682
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.7 = phi nsz float [ %i.ds, %bb.j ], [ %.2.683, %bb.i ] ; 2 uses
  br i1 %i.o, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr i8, ptr %i.m, i64 176
  store float 0.000000e+00, ptr %i.dt, align 4, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.du = trunc nuw nsw i64 %i.n to i32
  %i.dv = uitofp nsz nneg i32 %i.du to float
  %i.dw = fmul reassoc nnan nsz arcp contract afn float %i.dv, -5.000000e-01
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.k
  %i.dy = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.dx) ; 2 uses
  %i.dz = getelementptr i8, ptr %i.m, i64 176
  store float %i.dy, ptr %i.dz, align 4, !tbaa !23
  %i.ea = fadd reassoc nsz arcp contract afn float %i.dy, %.2.7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2.8 = phi nsz float [ %i.ea, %bb.m ], [ %.2.7, %bb.l ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %.preheader34, label %.preheader35
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f32.p0(<4 x float>, ptr captures(none), <4 x i1>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 float", !12, i64 0}
!14 = !{!"dt_gaussian_t", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 12, !8, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!14, !8, i64 0}
!16 = !{!14, !8, i64 4}
!17 = !{!14, !8, i64 8}
!18 = !{!14, !11, i64 12}
!19 = !{!14, !8, i64 16}
!20 = !{!14, !13, i64 40}
!21 = !{!14, !13, i64 24}
!22 = !{!14, !13, i64 32}
!23 = !{!11, !11, i64 0}
!24 = distinct !{!24, !28, !29}
!25 = distinct !{!25, !29, !28}
!26 = distinct !{!26, !28, !29}
!27 = distinct !{!27, !29, !28}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, i1 true, !"copy_pixel"}
!31 = distinct !{!31, !30, !"copy_pixel: argument 1"}
!32 = distinct !{!32, !30, !"copy_pixel: argument 0"}
!33 = distinct !{!33, i1 true, !"copy_pixel"}
!34 = distinct !{!34, !33, !"copy_pixel: argument 1"}
!35 = distinct !{!35, !33, !"copy_pixel: argument 0"}
!36 = distinct !{!36, i1 true, !"copy_pixel"}
!37 = distinct !{!37, !36, !"copy_pixel: argument 1"}
!38 = distinct !{!38, !36, !"copy_pixel: argument 0"}
!39 = !{!32, !31}
!40 = !{!35, !34}
!41 = !{!38, !37}
end_hunk_3
