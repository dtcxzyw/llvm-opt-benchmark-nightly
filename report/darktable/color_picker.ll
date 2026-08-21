Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/color_picker?download=true
inline.NumInlined: 71
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 19
begin_hunk_0_@dt_color_picker_box:bb.a
  store i32 %., ptr %i.do, align 4, !tbaa !60
  %i.dx = add nsw i32 %i.dg, 1
  %i.dy = call i32 @llvm.smax.i32(i32 %i.dx, i32 %i.du) ; 4 uses
  store i32 %i.dy, ptr %i.dv, align 4, !tbaa !60
  %.not94 = icmp sgt i32 %i.l, %i.cz
  %.not95 = icmp sgt i32 %i.n, %i.dg
  %or.cond103 = select i1 %.not94, i1 %.not95, i1 false
  br i1 %or.cond103, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.split106.us
  %i.dz = icmp slt i32 %., 0
  %i.ea = icmp slt i32 %i.dy, 0
  %or.cond = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = call i32 @llvm.smax.i32(i32 %i.cz, i32 0) ; 2 uses
  store i32 %spec.select, ptr %4, align 4, !tbaa !60
  %spec.select100 = call i32 @llvm.smax.i32(i32 %i.dg, i32 0) ; 2 uses
  store i32 %spec.select100, ptr %i.dh, align 4, !tbaa !60
  %i.eb = icmp sgt i32 %., %i.l
  %spec.select101 = call i32 @llvm.umax.i32(i32 %., i32 1)
  %i.ec = select i1 %i.eb, i32 %i.l, i32 %spec.select101 ; 2 uses
  store i32 %i.ec, ptr %i.do, align 4, !tbaa !60
  %i.ed = icmp sgt i32 %i.dy, %i.n
  %spec.select102 = call i32 @llvm.umax.i32(i32 %i.dy, i32 1)
  %i.ee = select i1 %i.ed, i32 %i.n, i32 %spec.select102 ; 2 uses
  store i32 %i.ee, ptr %i.dv, align 4, !tbaa !60
  %.not98 = icmp sgt i32 %i.ec, %spec.select
  br i1 %.not98, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ef = icmp sle i32 %i.ee, %spec.select100
  %i.eg = zext i1 %i.ef to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.split106.us, %bb.d
  %.081 = phi i32 [ 1, %.split106.us ], [ 1, %bb.d ], [ %i.eg, %bb.f ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %.1 = phi i32 [ %.081, %bb.g ], [ 1, %bb.b ]
  ret i32 %.1
}

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @dt_color_picker_helper(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef writeonly initializes((0, 48)) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.rusage, align 16            ; 4 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = alloca [4 x i32], align 16               ; 7 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca [4 x float], align 16             ; 5 uses
  %i.g = alloca [4 x float], align 16             ; 5 uses
  %i.h = alloca [4 x i32], align 16               ; 7 uses
  %11 = alloca %struct.rusage, align 16           ; 4 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.j = and i32 %i.i, 16
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %dt_get_perf_times.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.k = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #14 ; 0 uses
  %i.l = load i64, ptr %12, align 8, !tbaa !131
  %i.m = add nsw i64 %i.l, -1290608000
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.p = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %11) #14 ; 0 uses
  %i.q = load <2 x i64>, ptr %11, align 16, !tbaa !134 ; 2 uses
  %i.r = shufflevector <2 x i64> %i.q, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x i64> %i.r, i64 %i.m, i64 0
  %i.t = sitofp <2 x i64> %i.s to <2 x double>
  %i.u = insertelement <2 x i64> %i.q, i64 %i.o, i64 0
  %i.v = sitofp <2 x i64> %i.u to <2 x double>
  %i.w = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.v, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.x = fadd reassoc nsz arcp contract afn <2 x double> %i.w, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %dt_get_perf_times.exit

dt_get_perf_times.exit:                           ; preds = %bb.a, %bb.b
  %i.y = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.x, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false), !tbaa !61
  store <8 x float> <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, ptr %i.z, align 4, !tbaa !61
  %i.ab = load i32, ptr %0, align 16, !tbaa !135
  switch i32 %i.ab, label %bb.ak [
    i32 4, label %bb.c
    i32 1, label %bb.ae
  ]

bb.c:                                             ; preds = %dt_get_perf_times.exit
  %.not102 = icmp eq i32 %4, 0
  br i1 %.not102, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !113
  %i.ae = shl nsw i32 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !114
  %i.ah = mul nsw i32 %i.ae, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = call ptr @dt_alloc_aligned(i64 noundef %i.aj) #14 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %.not103 = icmp eq ptr %i.ak, null
  br i1 %.not103, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.ac, align 4, !tbaa !113
  %i.am = shl nsw i32 %i.al, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = add nsw i64 %i.ao, 48
  %i.aq = and i64 %i.ap, -64
  %i.ar = call ptr @dt_alloc_aligned(i64 noundef %i.aq) #14 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = load i32, ptr %i.ac, align 4, !tbaa !113 ; 3 uses
  %i.at = sext i32 %i.as to i64                   ; 7 uses
  %i.au = load i32, ptr %i.af, align 4, !tbaa !114 ; 5 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %.not.i113 = icmp eq i32 %i.au, 0
  br i1 %.not.i113, label %blur_2D_Bspline.exit, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.e
  %i.aw = icmp slt i32 %i.au, 2
  %i.ax = shl nsw i64 %i.at, 2                    ; 5 uses
  %i.ay = add nsw i64 %i.av, -1                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  %i.az = add nsw i64 %i.at, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.as, 4
  %n.vec = and i64 %i.at, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph49.i
  %.02647.i = phi i64 [ 0, %.lr.ph49.i ], [ %i.cz, %._crit_edge.i ] ; 2 uses
  %i.ba = trunc i64 %.02647.i to i32              ; 3 uses
  br i1 %i.aw, label %dwt_interleave_rows.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = sdiv i32 %i.ba, %i.au
  %i.bc = srem i32 %i.ba, %i.au
  %i.bd = add nsw i32 %i.bc, %i.bb
  br label %dwt_interleave_rows.exit.i

dwt_interleave_rows.exit.i:                       ; preds = %bb.g, %bb.f
  %.1.i.i = phi i32 [ %i.bd, %bb.g ], [ %i.ba, %bb.f ] ; 3 uses
  %i.be = sext i32 %.1.i.i to i64                 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.bf = call i32 @llvm.smax.i32(i32 %.1.i.i, i32 2)
  %i.bg = add nsw i32 %i.bf, -2
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = mul i64 %i.ax, %i.bh                    ; 2 uses
  %i.bj = call i32 @llvm.smax.i32(i32 %.1.i.i, i32 1)
  %i.bk = add nsw i32 %i.bj, -1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = mul i64 %i.ax, %i.bl                    ; 2 uses
  %i.bn = mul i64 %i.ax, %i.be                    ; 2 uses
  %i.bo = add nsw i64 %i.be, 1
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.ay)
  %i.bp = mul i64 %..i.i, %i.ax                   ; 2 uses
  %i.bq = add nsw i64 %i.be, 2
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.ay)
  %i.bs = mul i64 %i.br, %i.ax                    ; 2 uses
  br i1 %.not.i.i, label %._crit_edge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dwt_interleave_rows.exit.i
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader444, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bt = shl i64 %index, 2                       ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt ; 5 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bt
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %i.bi
  %i.bx = getelementptr [4 x i8], ptr %i.bu, i64 %i.bm
  %i.by = getelementptr [4 x i8], ptr %i.bu, i64 %i.bn
  %i.bz = getelementptr [4 x i8], ptr %i.bu, i64 %i.bp
  %i.ca = getelementptr [4 x i8], ptr %i.bu, i64 %i.bs
  %wide.vec = load <16 x float>, ptr %i.bw, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %wide.vec415 = load <16 x float>, ptr %i.bx, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %wide.vec420 = load <16 x float>, ptr %i.by, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %wide.vec425 = load <16 x float>, ptr %i.bz, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %wide.vec430 = load <16 x float>, ptr %i.ca, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %13 = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec430, splat (float 6.250000e-02)
  %i.cb = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec, splat (float 6.250000e-02)
  %i.cc = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec415, splat (float 2.500000e-01)
  %i.cd = fadd reassoc nsz arcp contract afn <16 x float> %i.cb, %i.cc
  %14 = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec420, splat (float 3.750000e-01)
  %i.ce = fadd reassoc nsz arcp contract afn <16 x float> %i.cd, %14
  %i.cf = fmul reassoc nsz arcp contract afn <16 x float> %wide.vec425, splat (float 2.500000e-01)
  %15 = fadd reassoc nsz arcp contract afn <16 x float> %i.ce, %i.cf
  %interleaved.vec = fadd reassoc nsz arcp contract afn <16 x float> %13, %15
  store <16 x float> %interleaved.vec, ptr %i.bv, align 64, !tbaa !61, !alias.scope !150, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph.i, label %.lr.ph.i.i.preheader444

.lr.ph.i.i.preheader444:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.036.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader444, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %i.cx, %.lr.ph.i.i ], [ %.036.i.i.ph, %.lr.ph.i.i.preheader444 ] ; 2 uses
  %i.ch = shl i64 %.036.i.i, 2                    ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ch
  %i.ck = getelementptr [4 x i8], ptr %i.ci, i64 %i.bi
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %i.bm
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.bn
  %i.cn = getelementptr [4 x i8], ptr %i.ci, i64 %i.bp
  %i.co = getelementptr [4 x i8], ptr %i.ci, i64 %i.bs
  %i.cp = load <4 x float>, ptr %i.ck, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %16 = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, splat (float 6.250000e-02)
  %i.cq = load <4 x float>, ptr %i.cl, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %i.cr = fmul reassoc nsz arcp contract afn <4 x float> %i.cq, splat (float 2.500000e-01)
  %17 = fadd reassoc nsz arcp contract afn <4 x float> %16, %i.cr
  %i.cs = load <4 x float>, ptr %i.cm, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %18 = fmul reassoc nsz arcp contract afn <4 x float> %i.cs, splat (float 3.750000e-01)
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %17, %18
  %19 = load <4 x float>, ptr %i.cn, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %19, splat (float 2.500000e-01)
  %i.cv = fadd reassoc nsz arcp contract afn <4 x float> %i.ct, %i.cu
  %20 = load <4 x float>, ptr %i.co, align 4, !tbaa !61, !alias.scope !148, !noalias !149
  %21 = fmul reassoc nsz arcp contract afn <4 x float> %20, splat (float 6.250000e-02)
  %i.cw = fadd reassoc nsz arcp contract afn <4 x float> %21, %i.cv
  store <4 x float> %i.cw, ptr %i.cj, align 16, !tbaa !61, !alias.scope !150, !noalias !151
  %i.cx = add nuw i64 %.036.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cx, %i.at
  br i1 %exitcond.not.i.i, label %.lr.ph.i, label %.lr.ph.i.i, !llvm.loop !153

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %middle.block
  %i.cy = mul nsw i64 %i.be, %i.at
  br label %bb.h

._crit_edge.i:                                    ; preds = %bb.h, %dwt_interleave_rows.exit.i
  %i.cz = add nuw i64 %.02647.i, 1                ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.cz, %i.av
  br i1 %exitcond52.not.i, label %blur_2D_Bspline.exit, label %bb.f

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.046.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dl, %bb.h ] ; 5 uses
  %i.da = add i64 %.046.i, %i.cy
  %.idx.i = shl i64 %i.da, 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.dc = trunc i64 %.046.i to i32                ; 2 uses
  %i.dd = call i32 @llvm.smax.i32(i32 %i.dc, i32 2)
  %i.de = shl i32 %i.dd, 2
  %i.df = add i32 %i.de, -8
  %i.dg = sext i32 %i.df to i64
  %i.dh = call i32 @llvm.smax.i32(i32 %i.dc, i32 1)
  %i.di = shl i32 %i.dh, 2
  %i.dj = add i32 %i.di, -4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = add nuw i64 %.046.i, 1                  ; 3 uses
  %..i29.i = call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.az)
  %i.dm = add i64 %.046.i, 2
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dm, i64 %i.az)
  %i.do = getelementptr [4 x i8], ptr %i.ar, i64 %i.dg
  %i.dp = getelementptr [4 x i8], ptr %i.ar, i64 %i.dk
  %.idx.i.i = shl i64 %.046.i, 4
  %i.dq = getelementptr i8, ptr %i.ar, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i29.i, 4
  %i.dr = getelementptr i8, ptr %i.ar, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.dn, 4
  %i.ds = getelementptr i8, ptr %i.ar, i64 %.idx26.i.i
  %i.dt = load <4 x float>, ptr %i.do, align 16, !tbaa !61, !alias.scope !159, !noalias !160
  %22 = fmul reassoc nsz arcp contract afn <4 x float> %i.dt, splat (float 6.250000e-02)
  %i.du = load <4 x float>, ptr %i.dp, align 16, !tbaa !61, !alias.scope !159, !noalias !160
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %i.du, splat (float 2.500000e-01)
  %23 = fadd reassoc nsz arcp contract afn <4 x float> %22, %i.dv
  %i.dw = load <4 x float>, ptr %i.dq, align 16, !tbaa !61, !alias.scope !159, !noalias !160
  %24 = fmul reassoc nsz arcp contract afn <4 x float> %i.dw, splat (float 3.750000e-01)
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %23, %24
  %25 = load <4 x float>, ptr %i.dr, align 16, !tbaa !61, !alias.scope !159, !noalias !160
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %25, splat (float 2.500000e-01)
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dx, %i.dy
  %26 = load <4 x float>, ptr %i.ds, align 16, !tbaa !61, !alias.scope !159, !noalias !160
  %27 = fmul reassoc nsz arcp contract afn <4 x float> %26, splat (float 6.250000e-02)
  %i.ea = fadd reassoc nsz arcp contract afn <4 x float> %27, %i.dz
  store <4 x float> %i.ea, ptr %i.db, align 16, !tbaa !61, !alias.scope !161, !noalias !162
  %exitcond.not.i = icmp eq i64 %i.dl, %i.at
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h

blur_2D_Bspline.exit:                             ; preds = %._crit_edge.i, %bb.e
  call void @free(ptr noundef %i.ar) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str) #14
  br label %bb.j

bb.j:                                             ; preds = %blur_2D_Bspline.exit, %bb.i, %bb.c
  %.094 = phi ptr [ null, %bb.c ], [ null, %bb.i ], [ %i.ak, %blur_2D_Bspline.exit ]
  %.1 = phi ptr [ %1, %bb.c ], [ %1, %bb.i ], [ %i.ak, %blur_2D_Bspline.exit ] ; 8 uses
  %i.eb = icmp eq i32 %6, 0
  %i.ec = select i1 %i.eb, i32 2, i32 %6          ; 3 uses
  %i.ed = icmp eq i32 %i.ec, 1
  %i.ee = icmp eq i32 %7, 3
  %or.cond = and i1 %i.ee, %i.ed
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ef = getelementptr i8, ptr %2, i64 8
  %.val112 = load i32, ptr %i.ef, align 4, !tbaa !113
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !60 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !60 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !60 ; 2 uses
  %i.em = load i32, ptr %3, align 4, !tbaa !60    ; 3 uses
  %i.en = sub nsw i32 %i.el, %i.em                ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i64 %i.eo, 2
  %i.eq = shl nsw i32 %.val112, 2
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i32 %i.em, 2
  %i.et = sext i32 %i.es to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %.1, i64 %i.et
  %i.eu = icmp ult i32 %i.ej, %i.eh
  br i1 %i.eu, label %.lr.ph.preheader.i, label %_color_picker_work_4ch.exit

.lr.ph.preheader.i:                               ; preds = %bb.k
  %.not.i185 = icmp eq i32 %i.el, %i.em
  %i.ev = sext i32 %i.eh to i64
  br i1 %.not.i185, label %_color_picker_work_4ch.exit, label %.lr.ph.i114.preheader

.lr.ph.i114.preheader:                            ; preds = %.lr.ph.preheader.i
  %i.ew = sext i32 %i.ej to i64
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %.lr.ph.i114.preheader, %_color_picker_lch.exit.loopexit
  %.0291.i = phi i64 [ %i.ge, %_color_picker_lch.exit.loopexit ], [ %i.ew, %.lr.ph.i114.preheader ] ; 2 uses
  %i.ex = phi <4 x float> [ %i.fx, %_color_picker_lch.exit.loopexit ], [ zeroinitializer, %.lr.ph.i114.preheader ]
  %i.ey = phi <4 x float> [ %i.fz, %_color_picker_lch.exit.loopexit ], [ splat (float f0x7F7FFFFF), %.lr.ph.i114.preheader ]
  %i.ez = phi <4 x float> [ %i.gb, %_color_picker_lch.exit.loopexit ], [ splat (float f0xFF7FFFFF), %.lr.ph.i114.preheader ]
  %i.fa = mul i64 %.0291.i, %i.er
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fa
  br label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %.lr.ph.i114, %dt_Lab_2_LCH.exit.i
  %.08.i = phi i64 [ %i.gc, %dt_Lab_2_LCH.exit.i ], [ 0, %.lr.ph.i114 ] ; 2 uses
  %i.fb = phi <4 x float> [ %i.fx, %dt_Lab_2_LCH.exit.i ], [ %i.ex, %.lr.ph.i114 ]
  %i.fc = phi <4 x float> [ %i.fz, %dt_Lab_2_LCH.exit.i ], [ %i.ey, %.lr.ph.i114 ] ; 2 uses
  %i.fd = phi <4 x float> [ %i.gb, %dt_Lab_2_LCH.exit.i ], [ %i.ez, %.lr.ph.i114 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %gep.i, i64 %.08.i ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !61 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !61 ; 2 uses
  %i.fj = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.fg, float %i.fi) ; 3 uses
  %i.fk = fcmp reassoc nsz arcp contract afn ogt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i186
  %i.fl = fmul reassoc nnan nsz arcp contract afn float %i.fj, f0x3E22F983
  br label %dt_Lab_2_LCH.exit.i

bb.m:                                             ; preds = %.lr.ph.i186
  %i.fm = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fj)
  %i.fn = fmul reassoc nsz arcp contract afn float %i.fm, f0x3E22F983
  %i.fo = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fn
  br label %dt_Lab_2_LCH.exit.i

dt_Lab_2_LCH.exit.i:                              ; preds = %bb.m, %bb.l
  %.0.i.i = phi nsz float [ %i.fl, %bb.l ], [ %i.fo, %bb.m ] ; 3 uses
  %i.fp = load float, ptr %i.fe, align 4, !tbaa !61
  %i.fq = call reassoc nsz arcp contract afn float @hypotf(float noundef %i.fi, float noundef %i.fg) #15
  %i.fr = fcmp reassoc nsz arcp contract afn olt float %.0.i.i, 5.000000e-01
  %.v.i.i = select i1 %i.fr, float 5.000000e-01, float -5.000000e-01
  %i.fs = fadd reassoc nsz arcp contract afn float %.v.i.i, %.0.i.i
  %i.ft = insertelement <4 x float> poison, float %i.fp, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.fq, i64 1
  %i.fv = insertelement <4 x float> %i.fu, float %.0.i.i, i64 2
  %i.fw = insertelement <4 x float> %i.fv, float %i.fs, i64 3 ; 5 uses
  %i.fx = fadd reassoc nsz arcp contract afn <4 x float> %i.fw, %i.fb ; 3 uses
  %i.fy = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fc, %i.fw
  %i.fz = select <4 x i1> %i.fy, <4 x float> %i.fc, <4 x float> %i.fw ; 3 uses
  %i.ga = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fd, %i.fw
  %i.gb = select <4 x i1> %i.ga, <4 x float> %i.fd, <4 x float> %i.fw ; 3 uses
  %i.gc = add nuw i64 %.08.i, 4                   ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.ep
  br i1 %i.gd, label %.lr.ph.i186, label %_color_picker_lch.exit.loopexit

_color_picker_lch.exit.loopexit:                  ; preds = %dt_Lab_2_LCH.exit.i
  %i.ge = add nuw i64 %.0291.i, 1                 ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.ev
  br i1 %i.gf, label %.lr.ph.i114, label %_color_picker_work_4ch.exit

_color_picker_work_4ch.exit:                      ; preds = %_color_picker_lch.exit.loopexit, %.lr.ph.preheader.i, %bb.k
  %i.gg = phi <4 x float> [ zeroinitializer, %bb.k ], [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.fx, %_color_picker_lch.exit.loopexit ]
  %i.gh = phi <4 x float> [ splat (float f0x7F7FFFFF), %bb.k ], [ splat (float f0x7F7FFFFF), %.lr.ph.preheader.i ], [ %i.fz, %_color_picker_lch.exit.loopexit ]
  %i.gi = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.k ], [ splat (float f0xFF7FFFFF), %.lr.ph.preheader.i ], [ %i.gb, %_color_picker_lch.exit.loopexit ]
  %i.gj = sub nsw i32 %i.eh, %i.ej
  %i.gk = mul nsw i32 %i.en, %i.gj
  %i.gl = sext i32 %i.gk to i64
  %i.gm = uitofp reassoc nsz arcp contract afn i64 %i.gl to float
  %i.gn = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = fdiv reassoc nsz arcp contract afn <4 x float> %i.gg, %i.go
  store <4 x float> %i.gp, ptr %5, align 4, !tbaa !61
  store <4 x float> %i.gh, ptr %i.z, align 4, !tbaa !61
  store <4 x float> %i.gi, ptr %i.aa, align 4, !tbaa !61
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  %i.gq = icmp eq i32 %i.ec, 2                    ; 2 uses
  %i.gr = icmp eq i32 %7, 4
  %or.cond3 = and i1 %i.gr, %i.gq
  br i1 %or.cond3, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.gs = getelementptr i8, ptr %2, i64 8
  %.val111 = load i32, ptr %i.gs, align 4, !tbaa !113
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !60 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !60 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !60 ; 2 uses
  %i.gz = load i32, ptr %3, align 4, !tbaa !60    ; 3 uses
  %i.ha = sub nsw i32 %i.gy, %i.gz                ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = shl nsw i64 %i.hb, 2
  %i.hd = shl nsw i32 %.val111, 2
  %i.he = sext i32 %i.hd to i64
  %i.hf = shl nsw i32 %i.gz, 2
  %i.hg = sext i32 %i.hf to i64
  %invariant.gep.i115 = getelementptr [4 x i8], ptr %.1, i64 %i.hg
  %i.hh = icmp ult i32 %i.gw, %i.gu
  br i1 %i.hh, label %.lr.ph.preheader.i116, label %_color_picker_work_4ch.exit142

.lr.ph.preheader.i116:                            ; preds = %bb.o
  %.not.i188 = icmp eq i32 %i.gy, %i.gz
  %i.hi = sext i32 %i.gu to i64
  br i1 %.not.i188, label %_color_picker_work_4ch.exit142, label %.lr.ph.i117.preheader

.lr.ph.i117.preheader:                            ; preds = %.lr.ph.preheader.i116
  %i.hj = sext i32 %i.gw to i64
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117.preheader, %_color_picker_hsl.exit.loopexit
  %.0291.i118 = phi i64 [ %i.jm, %_color_picker_hsl.exit.loopexit ], [ %i.hj, %.lr.ph.i117.preheader ] ; 2 uses
  %i.hk = phi <8 x float> [ %i.jj, %_color_picker_hsl.exit.loopexit ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %.lr.ph.i117.preheader ]
  %i.hl = phi <4 x float> [ %i.jb, %_color_picker_hsl.exit.loopexit ], [ zeroinitializer, %.lr.ph.i117.preheader ]
  %i.hm = mul i64 %.0291.i118, %i.he
  %gep.i119 = getelementptr [4 x i8], ptr %invariant.gep.i115, i64 %i.hm
  br label %.lr.ph.i189

.lr.ph.i189:                                      ; preds = %.lr.ph.i117, %dt_RGB_2_HSL.exit.i
  %.08.i190 = phi i64 [ %i.jk, %dt_RGB_2_HSL.exit.i ], [ 0, %.lr.ph.i117 ] ; 2 uses
  %i.hn = phi <8 x float> [ %i.jj, %dt_RGB_2_HSL.exit.i ], [ %i.hk, %.lr.ph.i117 ] ; 3 uses
  %i.ho = phi <4 x float> [ %i.jb, %dt_RGB_2_HSL.exit.i ], [ %i.hl, %.lr.ph.i117 ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %gep.i119, i64 %.08.i190 ; 3 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !61 ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !61 ; 5 uses
  %i.ht = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hq, float %i.hs)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !61 ; 4 uses
  %i.hw = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ht, float %i.hv) ; 2 uses
  %i.hx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hq, float %i.hs)
  %i.hy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hx, float %i.hv) ; 5 uses
  %i.hz = fsub reassoc nsz arcp contract afn float %i.hy, %i.hw ; 5 uses
  %i.ia = fadd reassoc nsz arcp contract afn float %i.hy, %i.hw ; 3 uses
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, 5.000000e-01 ; 5 uses
  %i.ic = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hy)
  %i.id = fcmp reassoc nsz arcp contract afn ogt float %i.ic, f0x358637BD
  %i.ie = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hz)
  %i.if = fcmp reassoc nsz arcp contract afn ogt float %i.ie, f0x358637BD
  %or.cond.i.i = select i1 %i.id, i1 %i.if, i1 false
  br i1 %or.cond.i.i, label %bb.p, label %dt_RGB_2_HSL.exit.i

bb.p:                                             ; preds = %.lr.ph.i189
  %i.ig = fcmp reassoc nsz arcp contract afn olt float %i.ib, 5.000000e-01
  %i.ih = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.ia
  %.pn.i.i = select i1 %i.ig, float %i.ia, float %i.ih
  %.0.i.i198 = fdiv reassoc nsz arcp contract afn float %i.hz, %.pn.i.i
  %i.ii = fcmp reassoc nsz arcp contract afn oeq float %i.hq, %i.hy
end_hunk_0
begin_hunk_1_@dt_color_picker_helper:bb.a
  store float %i.om, ptr %5, align 4, !tbaa !61
  %i.on = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.oq = load <2 x i32>, ptr %i.on, align 4, !tbaa !60 ; 2 uses
  %i.or = icmp eq <2 x i32> %i.oq, zeroinitializer
  %i.os = load <2 x float>, ptr %i.oo, align 4
  %i.ot = uitofp <2 x i32> %i.oq to <2 x float>
  %i.ou = fdiv reassoc nsz arcp contract afn <2 x float> %i.os, %i.ot
  %i.ov = select <2 x i1> %i.or, <2 x float> zeroinitializer, <2 x float> %i.ou
  store <2 x float> %i.ov, ptr %i.op, align 4, !tbaa !61
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !60 ; 2 uses
  %.not.3.i = icmp eq i32 %i.ox, 0
  %i.oy = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.oz = load float, ptr %i.oy, align 4
  %i.pa = uitofp reassoc nsz arcp contract afn i32 %i.ox to float
  %i.pb = fdiv reassoc nsz arcp contract afn float %i.oz, %i.pa
  %i.pc = select reassoc nsz arcp contract afn i1 %.not.3.i, float 0.000000e+00, float %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.pc, ptr %i.pd, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !60 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !60 ; 2 uses
  %i.pl = icmp ult i32 %i.pi, %i.pk
  br i1 %i.pl, label %.lr.ph.i179, label %._crit_edge.thread.i175

._crit_edge.thread.i175:                          ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  br label %_color_picker_work_1ch.exit184

.lr.ph.i179:                                      ; preds = %bb.ai
  %i.pm = sext i32 %i.pg to i64
  %i.pn = load i32, ptr %3, align 4, !tbaa !60    ; 2 uses
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !60 ; 2 uses
  %i.pr = icmp ult i32 %i.pn, %i.pq
  %i.ps = sext i32 %i.pk to i64
  %i.pt = sext i32 %i.pq to i64
  br i1 %i.pr, label %.lr.ph.i179.split.split, label %._crit_edge.i181.split

.lr.ph.i179.split.split:                          ; preds = %.lr.ph.i179
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.pv = sext i32 %i.pi to i64
  %i.pw = load i32, ptr %i.pu, align 4, !tbaa !129
  %invariant.op270 = add i32 %i.pw, 600
  %i.px = load i32, ptr %2, align 4, !tbaa !128
  %invariant.op = add i32 %i.px, 600
  br label %.lr.ph.i206

._crit_edge.i181.split:                           ; preds = %_color_picker_xtrans.exit.loopexit243, %.lr.ph.i179
  %.pre.i182 = load i32, ptr %i.d, align 16, !tbaa !60 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !61, !alias.scope !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa !61, !alias.scope !176
  %.not.i183 = icmp eq i32 %.pre.i182, 0
  br i1 %.not.i183, label %_color_picker_work_1ch.exit184, label %bb.aj

.lr.ph.i206:                                      ; preds = %_color_picker_xtrans.exit.loopexit243, %.lr.ph.i179.split.split
  %.02123.i180 = phi i64 [ %i.pv, %.lr.ph.i179.split.split ], [ %i.rb, %_color_picker_xtrans.exit.loopexit243 ] ; 3 uses
  %i.py = mul i64 %.02123.i180, %i.pm
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.py
  %i.qa = trunc i64 %.02123.i180 to i32
  %.reass271 = add i32 %invariant.op270, %i.qa
  %i.qb = srem i32 %.reass271, 6
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds [6 x i8], ptr %i.pe, i64 %i.qc
  br label %FCxtrans.exit.i

FCxtrans.exit.i:                                  ; preds = %.lr.ph.i206, %FCxtrans.exit.i
  %.016.i = phi i64 [ %i.qz, %FCxtrans.exit.i ], [ %i.po, %.lr.ph.i206 ] ; 3 uses
  %i.qe = trunc i64 %.016.i to i32
  %.reass = add i32 %invariant.op, %i.qe
  %i.qf = srem i32 %.reass, 6
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds i8, ptr %i.qd, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !180
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %.016.i
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !61 ; 5 uses
  %i.ql = zext i8 %i.qi to i64                    ; 4 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ql ; 2 uses
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !61
  %i.qo = fadd reassoc nsz arcp contract afn float %i.qn, %i.qk
  store float %i.qo, ptr %i.qm, align 4, !tbaa !61
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ql ; 2 uses
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !61 ; 2 uses
  %i.qr = fcmp reassoc nsz arcp contract afn olt float %i.qq, %i.qk
  %..i.i208 = select reassoc nsz arcp contract afn i1 %i.qr, float %i.qq, float %i.qk
  store float %..i.i208, ptr %i.qp, align 4, !tbaa !61
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ql ; 2 uses
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !61 ; 2 uses
  %i.qu = fcmp reassoc nsz arcp contract afn ogt float %i.qt, %i.qk
  %i.qv = select reassoc nsz arcp contract afn i1 %i.qu, float %i.qt, float %i.qk
  store float %i.qv, ptr %i.qs, align 4, !tbaa !61
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ql ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !60
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.qw, align 4, !tbaa !60
  %i.qz = add nuw i64 %.016.i, 1                  ; 2 uses
  %i.ra = icmp ult i64 %i.qz, %i.pt
  br i1 %i.ra, label %FCxtrans.exit.i, label %_color_picker_xtrans.exit.loopexit243

_color_picker_xtrans.exit.loopexit243:            ; preds = %FCxtrans.exit.i
  %i.rb = add nuw i64 %.02123.i180, 1             ; 2 uses
  %i.rc = icmp ult i64 %i.rb, %i.ps
  br i1 %i.rc, label %.lr.ph.i206, label %._crit_edge.i181.split

bb.aj:                                            ; preds = %._crit_edge.i181.split
  %i.rd = load float, ptr %i.a, align 16, !tbaa !61
  %i.re = uitofp reassoc nsz arcp contract afn i32 %.pre.i182 to float
  %i.rf = fdiv reassoc nsz arcp contract afn float %i.rd, %i.re
  br label %_color_picker_work_1ch.exit184

_color_picker_work_1ch.exit184:                   ; preds = %._crit_edge.thread.i175, %._crit_edge.i181.split, %bb.aj
  %i.rg = phi reassoc nsz arcp contract afn float [ %i.rf, %bb.aj ], [ 0.000000e+00, %._crit_edge.i181.split ], [ 0.000000e+00, %._crit_edge.thread.i175 ]
  store float %i.rg, ptr %5, align 4, !tbaa !61
  %i.rh = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.rj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.rk = load <2 x i32>, ptr %i.rh, align 4, !tbaa !60 ; 2 uses
  %i.rl = icmp eq <2 x i32> %i.rk, zeroinitializer
  %i.rm = load <2 x float>, ptr %i.ri, align 4
  %i.rn = uitofp <2 x i32> %i.rk to <2 x float>
  %i.ro = fdiv reassoc nsz arcp contract afn <2 x float> %i.rm, %i.rn
  %i.rp = select <2 x i1> %i.rl, <2 x float> zeroinitializer, <2 x float> %i.ro
  store <2 x float> %i.rp, ptr %i.rj, align 4, !tbaa !61
  %i.rq = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !60 ; 2 uses
  %.not.3.i178 = icmp eq i32 %i.rr, 0
  %i.rs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.rt = load float, ptr %i.rs, align 4
  %i.ru = uitofp reassoc nsz arcp contract afn i32 %i.rr to float
  %i.rv = fdiv reassoc nsz arcp contract afn float %i.rt, %i.ru
  %i.rw = select reassoc nsz arcp contract afn i1 %.not.3.i178, float 0.000000e+00, float %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.rw, ptr %i.rx, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae, %dt_get_perf_times.exit
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 558, ptr noundef nonnull @__FUNCTION__.dt_color_picker_helper) #14
  unreachable

bb.al:                                            ; preds = %bb.ad, %_color_picker_work_1ch.exit184, %_color_picker_work_1ch.exit
  %i.ry = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !130
  %i.rz = and i32 %i.ry, 16
  %.not106.not = icmp eq i32 %i.rz, 0
  br i1 %.not106.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.sa = load i32, ptr %0, align 16, !tbaa !135
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !163
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.se = load <2 x i32>, ptr %i.sd, align 4, !tbaa !60
  %i.sf = load <2 x i32>, ptr %3, align 4, !tbaa !60
  %i.sg = sub nsw <2 x i32> %i.se, %i.sf          ; 2 uses
  %shift = shufflevector <2 x i32> %i.sg, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %i.sg, %shift
  %i.sh = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.si = sext i32 %i.sh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.sj = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.sk = load i64, ptr %10, align 8, !tbaa !131
  %i.sl = add nsw i64 %i.sk, -1290608000
  %i.sm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.so = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %9) #14 ; 0 uses
  %i.sp = load <2 x i64>, ptr %9, align 16, !tbaa !134 ; 2 uses
  %i.sq = shufflevector <2 x i64> %i.sp, <2 x i64> poison, <2 x i32> <i32 poison, i32 0>
  %i.sr = insertelement <2 x i64> %i.sq, i64 %i.sl, i64 0
  %i.ss = sitofp <2 x i64> %i.sr to <2 x double>
  %i.st = insertelement <2 x i64> %i.sp, i64 %i.sn, i64 0
  %i.su = sitofp <2 x i64> %i.st to <2 x double>
  %i.sv = fmul reassoc nnan nsz arcp contract afn <2 x double> %i.su, splat (double f0x3EB0C6F7A0B5ED8D)
  %28 = fadd reassoc nsz arcp contract afn <2 x double> %i.sv, %i.ss
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %29 = fsub reassoc nsz arcp contract afn <2 x double> %28, %i.y ; 2 uses
  %i.sw = extractelement <2 x double> %29, i64 0
  %i.sx = extractelement <2 x double> %29, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, i32 noundef %i.sa, i32 noundef %i.sc, i32 noundef %6, i32 noundef %7, i64 noundef %i.si, i32 noundef %4, double noundef %i.sw, double noundef %i.sx) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_work_4ch(ptr noundef %0, i32 %.8.val, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !60   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !60
  %i.j = load i32, ptr %1, align 4, !tbaa !60     ; 2 uses
  %i.k = sub nsw i32 %i.i, %i.j                   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = shl nsw i32 %.8.val, 2
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i32 %i.j, 2
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.low, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._color_picker_work_1ch.high, i64 16, i1 false)
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.r = icmp ult i32 %i.g, %i.e
  br i1 %i.r, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = sext i32 %i.g to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.t = load <4 x float>, ptr %i.a, align 16, !tbaa !61
  %i.u = load <4 x float>, ptr %i.b, align 16, !tbaa !61
  %i.v = load <4 x float>, ptr %i.c, align 16, !tbaa !61
  %i.w = shufflevector <4 x float> %i.u, <4 x float> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.x = phi <8 x float> [ %i.w, %.preheader.loopexit ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ]
  %i.y = phi <4 x float> [ %i.t, %.preheader.loopexit ], [ zeroinitializer, %bb.a ]
  %i.z = sub nsw i32 %i.e, %i.g
  %i.aa = mul nsw i32 %i.k, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = uitofp reassoc nsz arcp contract afn i64 %i.ab to float
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = fdiv reassoc nsz arcp contract afn <4 x float> %i.y, %i.af
  store <4 x float> %i.ag, ptr %2, align 4, !tbaa !61
  store <8 x float> %i.x, ptr %i.ad, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0291 = phi i64 [ %i.ai, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.ah = mul i64 %.0291, %i.o
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ah
  call void %4(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %gep, i64 noundef %i.m, ptr noundef %3) #14, !callees !181
  %i.ai = add nuw i64 %.0291, 1                   ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !60
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp ult i64 %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph, label %.preheader.loopexit
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_color_picker_nomat(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = load i32, ptr %4, align 64, !tbaa !182
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = tail call ptr @dt_colorspaces_get_profile(i32 noundef %i.b, ptr noundef nonnull %i.c, i32 noundef 1) #14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1032
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  %i.g = tail call ptr @dt_colorspaces_get_profile(i32 noundef 6, ptr noundef nonnull @.str.5, i32 noundef 63) #14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 516
  %i.k = load i32, ptr %i.j, align 4, !tbaa !186
  %i.l = tail call ptr @cmsCreateTransform(ptr noundef %i.f, i32 noundef 4456604, ptr noundef %i.i, i32 noundef 4849820, i32 noundef %i.k, i32 noundef 0) #14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !60   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !60   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !60   ; 2 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !60
  %i.t = icmp ult i32 %i.p, %i.n
  br i1 %i.t, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.a
  %i.u = sext i32 %i.p to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.b

._crit_edge100:                                   ; preds = %._crit_edge, %bb.a
  %i.x = phi <8 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %bb.a ], [ %i.at, %._crit_edge ]
  %i.y = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.au, %._crit_edge ]
  %i.z = sub nsw i32 %i.r, %i.s
  %i.aa = sub nsw i32 %i.n, %i.p
  %i.ab = mul nsw i32 %i.z, %i.aa
  %i.ac = sext i32 %i.ab to i64
  call void @cmsDeleteTransform(ptr noundef %i.l) #14
  %i.ad = uitofp reassoc nsz arcp contract afn i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = fdiv reassoc nsz arcp contract afn <4 x float> %i.y, %i.ag
  store <4 x float> %i.ah, ptr %3, align 4, !tbaa !61
  store <8 x float> %i.x, ptr %i.ae, align 4, !tbaa !61
  ret void

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge
  %i.ai = phi i32 [ %i.n, %.lr.ph99 ], [ %i.ar, %._crit_edge ]
  %i.aj = phi i32 [ %i.r, %.lr.ph99 ], [ %i.as, %._crit_edge ] ; 2 uses
  %.03297 = phi i64 [ %i.u, %.lr.ph99 ], [ %i.av, %._crit_edge ] ; 2 uses
  %i.ak = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph99 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.al = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph99 ], [ %i.az, %._crit_edge ] ; 2 uses
  %i.am = phi <4 x float> [ zeroinitializer, %.lr.ph99 ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.an = load i32, ptr %2, align 4, !tbaa !60    ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.aj
  %i.ap = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.aq = sext i32 %i.an to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.m, align 4, !tbaa !60
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ar = phi i32 [ %i.ai, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.as = phi i32 [ %i.aj, %bb.b ], [ %i.fw, %._crit_edge.loopexit ]
  %i.at = phi <8 x float> [ %i.ap, %bb.b ], [ %i.fu, %._crit_edge.loopexit ] ; 3 uses
  %i.au = phi <4 x float> [ %i.am, %bb.b ], [ %i.fo, %._crit_edge.loopexit ] ; 2 uses
  %i.av = add i64 %.03297, 1                      ; 2 uses
  %i.aw = sext i32 %i.ar to i64
  %i.ax = icmp ult i64 %i.av, %i.aw
  %i.ay = shufflevector <8 x float> %i.at, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.az = shufflevector <8 x float> %i.at, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br i1 %i.ax, label %bb.b, label %._crit_edge100

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03168 = phi i64 [ %i.fv, %.lr.ph ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %i.ba = phi <4 x float> [ %i.fz, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %i.bb = phi <4 x float> [ %i.ga, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi <4 x float> [ %i.fo, %.lr.ph ], [ %i.am, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.bd = load i32, ptr %i.v, align 4, !tbaa !113
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %.03297, %i.be
  %i.bg = add i64 %i.bf, %.03168
  %.idx = shl i64 %i.bg, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  call void @cmsDoTransform(ptr noundef %i.l, ptr noundef %i.bh, ptr noundef nonnull %i.a, i32 noundef 1) #14
  %i.bi = load float, ptr %i.a, align 16, !tbaa !61
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, 8.620690e-03
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, f0x3E0D3DCB ; 6 uses
  %i.bl = load <2 x float>, ptr %i.w, align 4, !tbaa !61
  %i.bm = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bm
  %i.bq = fsub reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bm
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.bk, f0x3E53DCB1
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bk, %i.bk
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.br, %i.br
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bt, %i.bk
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bk, f0x3E038026
  %i.bx = fmul reassoc nsz arcp contract afn <2 x float> %i.br, splat (float f0x3E038026)
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, f0xBC911AA6
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.br, splat (float f0x3E53DCB1)
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, %i.br
  %i.cb = fadd reassoc nsz arcp contract afn <2 x float> %i.bx, splat (float f0xBC911AA6)
end_hunk_1
