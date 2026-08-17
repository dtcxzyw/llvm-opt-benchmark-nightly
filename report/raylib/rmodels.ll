inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@par_shapes_unweld:bb.a
  %i.av = mul nsw i32 %i.au, 3
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 1
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #56 ; 6 uses
  %i.az = load i32, ptr %i.a, align 8             ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %iter.check, label %._crit_edge42

iter.check:                                       ; preds = %bb.c
  %i.bb = mul i32 %i.az, 3                        ; 3 uses
  %smax43 = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1) ; 2 uses
  %i.bc = zext nneg i32 %smax43 to i64            ; 5 uses
  %min.iters.check = icmp slt i32 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp slt i32 %i.bb, 16
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, 2147483632              ; 5 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %i.bf = shl nuw nsw i64 %n.vec, 1
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.bh = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %vec.ind, ptr %next.gep, align 2
  store <8 x i16> %step.add, ptr %i.bi, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bc
  br i1 %cmp.n, label %._crit_edge42, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.be, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.bc, 2147483644            ; 4 uses
  %i.bk = trunc nuw nsw i64 %n.vec47 to i32
  %i.bl = shl nuw nsw i64 %n.vec47, 1
  %i.bm = getelementptr i8, ptr %i.ay, i64 %i.bl
  %i.bn = trunc i32 %bc.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind49 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.bo = shl i64 %index48, 1
  %next.gep50 = getelementptr i8, ptr %i.ay, i64 %i.bo
  store <4 x i16> %vec.ind49, ptr %next.gep50, align 2
  %index.next51 = add nuw i64 %index48, 4         ; 2 uses
  %vec.ind.next52 = add <4 x i16> %vec.ind49, splat (i16 4)
  %i.bp = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec47, %i.bc
  br i1 %cmp.n53, label %._crit_edge42, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.039.ph = phi i32 [ 0, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.03038.ph = phi ptr [ %i.ay, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.lr.ph41

._crit_edge42:                                    ; preds = %.lr.ph41, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bq = load ptr, ptr %i.h, align 8
  tail call void @free(ptr noundef %i.bq) #54
  store ptr %i.ay, ptr %i.h, align 8
  br label %bb.d

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %.lr.ph41
  %.039 = phi i32 [ %i.bt, %.lr.ph41 ], [ %.039.ph, %.lr.ph41.preheader ] ; 2 uses
  %.03038 = phi ptr [ %i.bs, %.lr.ph41 ], [ %.03038.ph, %.lr.ph41.preheader ] ; 2 uses
  %i.br = trunc i32 %.039 to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.03038, i64 2
  store i16 %i.br, ptr %.03038, align 2
  %i.bt = add nuw nsw i32 %.039, 1                ; 2 uses
  %exitcond44.not = icmp eq i32 %i.bt, %smax43
  br i1 %exitcond44.not, label %._crit_edge42, label %.lr.ph41, !llvm.loop !106

bb.d:                                             ; preds = %._crit_edge42, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @par_shapes_create_subdivided_sphere(i32 noundef %0) local_unnamed_addr #0 {
.lr.ph.i:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 48, i64 noundef 1) #57 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = tail call noalias dereferenceable_or_null(144) ptr @malloc(i64 noundef 144) #56 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) @par_shapes_create_icosahedron.verts, i64 144, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i32 20, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(120) %i.e, ptr noundef nonnull align 16 dereferenceable(120) @par_shapes_create_icosahedron.faces, i64 120, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(720) ptr @malloc(i64 noundef 720) #56 ; 4 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.i
  %.03137.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.ah, %bb.a ] ; 7 uses
  %.03236.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.z, %bb.a ] ; 4 uses
  %.03335.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ai, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.03236.i, i64 2
  %i.i = load i16, ptr %.03236.i, align 2
  %i.j = zext i16 %i.i to i64
  %.idx.i = mul nuw nsw i64 %i.j, 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.03137.i, i64 8
  %i.m = load <2 x float>, ptr %i.k, align 4
  store <2 x float> %i.m, ptr %.03137.i, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.03137.i, i64 12
  store float %i.o, ptr %i.l, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.03236.i, i64 4
  %i.r = load i16, ptr %i.h, align 2
  %i.s = zext i16 %i.r to i64
  %.idx.i.1 = mul nuw nsw i64 %i.s, 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03137.i, i64 20
  %i.v = load <2 x float>, ptr %i.t, align 4
  store <2 x float> %i.v, ptr %i.p, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.03137.i, i64 24
  store float %i.x, ptr %i.u, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.03236.i, i64 6
  %i.aa = load i16, ptr %i.q, align 2
  %i.ab = zext i16 %i.aa to i64
  %.idx.i.2 = mul nuw nsw i64 %i.ab, 12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03137.i, i64 32
  %i.ae = load <2 x float>, ptr %i.ac, align 4
  store <2 x float> %i.ae, ptr %i.y, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.03137.i, i64 36
  store float %i.ag, ptr %i.ad, align 4
  %i.ai = add nuw nsw i32 %.03335.i, 3            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.ai, 60
  br i1 %exitcond.not.i.2, label %par_shapes_unweld.exit, label %bb.a

par_shapes_unweld.exit:                           ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.c) #54
  store ptr %i.g, ptr %i.a, align 8
  store i32 60, ptr %i.b, align 8
  tail call void @free(ptr noundef nonnull %i.e) #54
  %.not26 = icmp eq i32 %0, 0
  br i1 %.not26, label %.lr.ph32, label %.lr.ph

.preheader:                                       ; preds = %par_shapes__subdivide.exit
  %i.aj = mul nsw i32 %i.ap, 12                   ; 2 uses
  store i32 %i.dp, ptr %i.d, align 8
  store ptr %i.au, ptr %i.a, align 8
  store i32 %i.aj, ptr %i.b, align 8
  %i.ak = icmp sgt i32 %i.ap, 0
  br i1 %i.ak, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %par_shapes_unweld.exit, %.preheader
  %i.al = phi i32 [ %i.aj, %.preheader ], [ 60, %par_shapes_unweld.exit ]
  %i.am = phi ptr [ %i.au, %.preheader ], [ %i.g, %par_shapes_unweld.exit ] ; 2 uses
  %i.an = phi i32 [ %i.dp, %.preheader ], [ 20, %par_shapes_unweld.exit ]
  %wide.trip.count = zext nneg i32 %i.al to i64
  br label %bb.b

.lr.ph:                                           ; preds = %par_shapes_unweld.exit, %par_shapes__subdivide.exit
  %i.ao = phi ptr [ %i.au, %par_shapes__subdivide.exit ], [ %i.g, %par_shapes_unweld.exit ] ; 2 uses
  %i.ap = phi i32 [ %i.dp, %par_shapes__subdivide.exit ], [ 20, %par_shapes_unweld.exit ] ; 6 uses
  %.027 = phi i32 [ %i.aq, %par_shapes__subdivide.exit ], [ %0, %par_shapes_unweld.exit ]
  %i.aq = add nsw i32 %.027, -1                   ; 2 uses
  %i.ar = mul nsw i32 %i.ap, 36
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = tail call noalias ptr @calloc(i64 noundef %i.at, i64 noundef 1) #57 ; 5 uses
  %i.av = icmp sgt i32 %i.ap, 0
  br i1 %i.av, label %.lr.ph.i24, label %par_shapes__subdivide.exit

.lr.ph.i24:                                       ; preds = %.lr.ph, %.lr.ph.i24
  %.053.i = phi ptr [ %i.do, %.lr.ph.i24 ], [ %i.au, %.lr.ph ] ; 20 uses
  %.04952.i = phi ptr [ %i.dn, %.lr.ph.i24 ], [ %i.ao, %.lr.ph ] ; 12 uses
  %.05051.i = phi i32 [ %i.dm, %.lr.ph.i24 ], [ 0, %.lr.ph ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.04952.i, i64 12 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04952.i, i64 24 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.053.i, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %.053.i, i64 24
  %1 = load float, ptr %i.aw, align 4
  %2 = load float, ptr %.04952.i, align 4
  %3 = fmul float %2, 5.000000e-01
  %i.ba = getelementptr inbounds nuw i8, ptr %.04952.i, i64 16 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %.04952.i, i64 4 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.04952.i, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %.04952.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.053.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.04952.i, i64 28 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04952.i, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.053.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.053.i, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.053.i, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.053.i, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.053.i, i64 44 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.ba, align 4
  %i.bl = load <2 x float>, ptr %4, align 4
  %i.bm = fmul <2 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bm) ; 3 uses
  store <2 x float> %i.bn, ptr %i.bc, align 4
  %6 = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = getelementptr inbounds nuw i8, ptr %.053.i, i64 60 ; 2 uses
  %7 = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %3) ; 3 uses
  store float %7, ptr %.053.i, align 4
  %8 = load float, ptr %i.ax, align 4
  %9 = load float, ptr %i.aw, align 4
  %10 = fmul float %9, 5.000000e-01
  %11 = load float, ptr %i.bh, align 4
  %i.bp = load float, ptr %i.bi, align 4
  %12 = load <4 x float>, ptr %i.bj, align 4
  %13 = load <4 x float>, ptr %i.bo, align 4
  %14 = getelementptr inbounds nuw i8, ptr %.053.i, i64 76 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.053.i, i64 84 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.053.i, i64 88 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %.053.i, i64 92 ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bd, align 4
  %i.br = load <2 x float>, ptr %i.ba, align 4
  %i.bs = fmul <2 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bs) ; 3 uses
  store <2 x float> %i.bt, ptr %i.bf, align 4
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bv = getelementptr inbounds nuw i8, ptr %.053.i, i64 108 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %8, float 5.000000e-01, float %10) ; 3 uses
  store float %i.bw, ptr %i.ay, align 4
  %i.bx = load float, ptr %i.be, align 4
  %i.by = load float, ptr %i.bb, align 4
  %i.bz = fmul float %i.by, 5.000000e-01
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bx, float 5.000000e-01, float %i.bz) ; 2 uses
  %i.cb = load <2 x float>, ptr %i.ax, align 4
  %i.cc = load <2 x float>, ptr %.04952.i, align 4
  %i.cd = fmul <2 x float> %i.cc, splat (float 5.000000e-01)
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cd) ; 2 uses
  store <2 x float> %i.ce, ptr %i.az, align 4
  store float %i.ca, ptr %i.bg, align 4
  %i.cf = load float, ptr %.04952.i, align 4
  %i.cg = fadd float %i.cf, %11
  store float %i.cg, ptr %i.bh, align 4
  %i.ch = load float, ptr %4, align 4
  %i.ci = fadd float %i.ch, %i.bp
  store float %i.ci, ptr %i.bi, align 4
  %i.cj = load float, ptr %i.bb, align 4
  %i.ck = insertelement <4 x float> poison, float %i.cj, i64 0
  %18 = insertelement <4 x float> %i.ck, float %7, i64 1
  %19 = shufflevector <4 x float> %18, <4 x float> %6, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = fadd <4 x float> %19, %12
  store <4 x float> %i.cl, ptr %i.bj, align 4
  %i.cm = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float %i.ca, i64 2 ; 2 uses
  %20 = insertelement <4 x float> %i.cn, float %7, i64 3
  %i.co = fadd <4 x float> %20, %13
  store <4 x float> %i.co, ptr %i.bo, align 4
  %21 = load <2 x float>, ptr %14, align 4
  %22 = fadd <2 x float> %i.bn, %21
  store <2 x float> %22, ptr %14, align 4
  %23 = load float, ptr %i.aw, align 4
  %i.cp = load float, ptr %15, align 4
  %i.cq = fadd float %23, %i.cp
  store float %i.cq, ptr %15, align 4
  %24 = load float, ptr %i.ba, align 4
  %i.cr = load float, ptr %16, align 4
  %i.cs = fadd float %24, %i.cr
  store float %i.cs, ptr %16, align 4
  %i.ct = load float, ptr %5, align 4
  %i.cu = load <4 x float>, ptr %17, align 4
  %i.cv = insertelement <4 x float> poison, float %i.ct, i64 0
  %25 = insertelement <4 x float> %i.cv, float %i.bw, i64 1
  %26 = shufflevector <4 x float> %25, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cw = fadd <4 x float> %26, %i.cu
  store <4 x float> %i.cw, ptr %17, align 4
  %i.cx = load <4 x float>, ptr %i.bv, align 4
  %27 = insertelement <4 x float> %i.cn, float %i.bw, i64 3
  %i.cy = fadd <4 x float> %27, %i.cx
  store <4 x float> %i.cy, ptr %i.bv, align 4
  %28 = getelementptr inbounds nuw i8, ptr %.053.i, i64 124 ; 2 uses
  %29 = load <2 x float>, ptr %28, align 4
  %i.cz = fadd <2 x float> %i.bt, %29
  store <2 x float> %i.cz, ptr %28, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.053.i, i64 132 ; 2 uses
  %i.db = load float, ptr %i.ax, align 4
  %i.dc = load float, ptr %i.da, align 4
  %i.dd = fadd float %i.db, %i.dc
  store float %i.dd, ptr %i.da, align 4
  %i.de = load float, ptr %i.bd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.053.i, i64 136 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = fadd float %i.de, %i.dg
  store float %i.dh, ptr %i.df, align 4
  %i.di = load float, ptr %i.be, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.053.i, i64 140 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = fadd float %i.di, %i.dk
  store float %i.dl, ptr %i.dj, align 4
  %i.dm = add nuw nsw i32 %.05051.i, 1            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.04952.i, i64 36
  %i.do = getelementptr inbounds nuw i8, ptr %.053.i, i64 144
  %exitcond.not.i25 = icmp eq i32 %i.dm, %i.ap
  br i1 %exitcond.not.i25, label %par_shapes__subdivide.exit, label %.lr.ph.i24

par_shapes__subdivide.exit:                       ; preds = %.lr.ph.i24, %.lr.ph
  %i.dp = shl nsw i32 %i.ap, 2                    ; 4 uses
  tail call void @free(ptr noundef %i.ao) #54
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %par_shapes__normalize3.exit, %.preheader
  %i.dq = phi ptr [ %i.au, %.preheader ], [ %i.am, %par_shapes__normalize3.exit ]
  %i.dr = phi i32 [ %i.dp, %.preheader ], [ %i.an, %par_shapes__normalize3.exit ] ; 2 uses
  %i.ds = mul nsw i32 %i.dr, 3                    ; 4 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 1
  %i.dv = tail call noalias ptr @malloc(i64 noundef %i.du) #56 ; 5 uses
  store ptr %i.dv, ptr %i.f, align 8
  %i.dw = icmp sgt i32 %i.dr, 0
  br i1 %i.dw, label %iter.check, label %._crit_edge36

iter.check:                                       ; preds = %._crit_edge
  %wide.trip.count43 = zext nneg i32 %i.ds to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ds, 4
  br i1 %min.iters.check, label %.lr.ph35.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check53 = icmp ult i32 %i.ds, 16
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dx = and i64 %wide.trip.count43, 12
  %n.vec = and i64 %wide.trip.count43, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <8 x i16> %vec.ind, ptr %i.dy, align 2
  store <8 x i16> %step.add, ptr %i.dz, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count43
  br i1 %cmp.n, label %._crit_edge36, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph35.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec54 = and i64 %wide.trip.count43, 2147483644 ; 3 uses
  %i.eb = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.eb, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind56 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next58, %vec.epilog.vector.body ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %index55
  store <4 x i16> %vec.ind56, ptr %i.ec, align 2
  %index.next57 = add nuw i64 %index55, 4         ; 2 uses
  %vec.ind.next58 = add <4 x i16> %vec.ind56, splat (i16 4)
  %i.ed = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.ed, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %n.vec54, %wide.trip.count43
  br i1 %cmp.n59, label %._crit_edge36, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv40.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec54, %vec.epilog.middle.block ]
  br label %.lr.ph35

bb.b:                                             ; preds = %.lr.ph32, %par_shapes__normalize3.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph32 ], [ %indvars.iv.next, %par_shapes__normalize3.exit ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx ; 3 uses
  %i.ef = load <2 x float>, ptr %i.ee, align 4    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ef, %i.ef
  %i.eg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.eh = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.eg)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4          ; 3 uses
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ei) ; 2 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.c, label %par_shapes__normalize3.exit

bb.c:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.el)
  %i.en = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ef, %i.ep
  store <2 x float> %i.eq, ptr %i.ee, align 4
  %i.er = fmul float %i.ek, %i.en
  store float %i.er, ptr %i.ej, align 4
  br label %par_shapes__normalize3.exit

par_shapes__normalize3.exit:                      ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge36:                                    ; preds = %.lr.ph35, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %i.es = tail call ptr @par_shapes_weld(ptr noundef nonnull %i.a, float noundef f0x3C23D70A, ptr noundef null) ; 2 uses
  tail call void @free(ptr noundef %i.dq) #54
  tail call void @free(ptr noundef %i.dv) #54
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void @free(ptr noundef %i.eu) #54
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void @free(ptr noundef %i.ew) #54
  tail call void @free(ptr noundef nonnull %i.a) #54
  tail call void @par_shapes_compute_normals(ptr noundef %i.es)
  ret ptr %i.es

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %.lr.ph35
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph35 ], [ %indvars.iv40.ph, %.lr.ph35.preheader ] ; 3 uses
  %i.ex = trunc i64 %indvars.iv40 to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv40
  store i16 %i.ex, ptr %i.ey, align 2
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !109
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @par_shapes_create_rock(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 36 uses
  %i.b = tail call ptr @par_shapes_create_subdivided_sphere(i32 noundef %1) ; 4 uses
  %i.c = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 9 uses
  %.not.i = icmp eq ptr %calloc.i, null           ; 2 uses
  br i1 %.not.i, label %par__simplex_noise.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #56 ; 4 uses
  store ptr %i.d, ptr %calloc.i, align 8
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.f = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #56 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8
  %.not9.i.i = icmp eq ptr %i.f, null
  br i1 %.not9.i.i, label %bb.d, label %vector.body

vector.body:                                      ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %i.a, align 16
  store <8 x i16> <i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> <i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23>, ptr %i.h, align 16
  store <8 x i16> <i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39>, ptr %i.j, align 16
  store <8 x i16> <i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47>, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> <i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55>, ptr %i.l, align 16
  store <8 x i16> <i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <8 x i16> <i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71>, ptr %i.n, align 16
  store <8 x i16> <i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79>, ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <8 x i16> <i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87>, ptr %i.p, align 16
  store <8 x i16> <i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95>, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <8 x i16> <i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103>, ptr %i.r, align 16
  store <8 x i16> <i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111>, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <8 x i16> <i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119>, ptr %i.t, align 16
  store <8 x i16> <i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127>, ptr %i.u, align 16
end_hunk_0
