Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@nsvg__addPath:bb.a

bb.h:                                             ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %calloc, i64 16 ; 2 uses
  call fastcc void @nsvg__curveBounds(ptr noundef %i.a, ptr noundef nonnull %i.s)
  %i.bf = load <4 x float>, ptr %i.a, align 16, !tbaa !30 ; 2 uses
  store <4 x float> %i.bf, ptr %i.be, align 8, !tbaa !30
  %i.bg = icmp samesign ugt i32 %i.n, 4
  br i1 %i.bg, label %.peel.next, label %._crit_edge

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bh = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bh
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !30 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.bl, %i.ad
  %i.bn = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.ac, <2 x float> %i.bm)
  %i.bp = fadd <2 x float> %i.ae, %i.bo
  store <2 x float> %i.bp, ptr %i.bi, align 4, !tbaa !30
  %indvars.iv.next = shl i64 %indvars.iv, 1
  %i.bq = add i64 %indvars.iv.next, 2             ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bq
  %i.bt = load <2 x float>, ptr %i.bs, align 4, !tbaa !30 ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x float> %i.bu, %i.ad
  %i.bw = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.ac, <2 x float> %i.bv)
  %i.by = fadd <2 x float> %i.ae, %i.bx
  store <2 x float> %i.by, ptr %i.br, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader, label %scalar.ph, !llvm.loop !299

.peel.next:                                       ; preds = %bb.h, %.peel.next
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.peel.next ], [ 3, %bb.h ] ; 2 uses
  %i.bz = phi <4 x float> [ %i.cf, %.peel.next ], [ %i.bf, %bb.h ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv64, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  call fastcc void @nsvg__curveBounds(ptr noundef %i.a, ptr noundef nonnull %i.ca)
  %i.cb = load <4 x float>, ptr %i.a, align 16, !tbaa !30 ; 3 uses
  %i.cc = fcmp olt <4 x float> %i.bz, %i.cb
  %i.cd = fcmp ogt <4 x float> %i.bz, %i.cb
  %i.ce = shufflevector <4 x i1> %i.cc, <4 x i1> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cf = select <4 x i1> %i.ce, <4 x float> %i.bz, <4 x float> %i.cb ; 2 uses
  store <4 x float> %i.cf, ptr %i.be, align 8, !tbaa !30
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 3 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next65 to i32
  %i.ch = icmp sgt i32 %i.bd, %i.cg
  br i1 %i.ch, label %.peel.next, label %._crit_edge, !llvm.loop !300

._crit_edge:                                      ; preds = %.peel.next, %bb.g, %bb.h, %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 39960 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !72
  store ptr %calloc, ptr %i.ci, align 8, !tbaa !71
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %calloc) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.d, %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__addShape(ptr nofree noundef captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39936
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [312 x i8], ptr %0, i64 %i.c ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 39960 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias dereferenceable_or_null(336) ptr @malloc(i64 noundef 336) #33 ; 32 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.h, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.j, i8 0, i64 272, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.l, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 4 dereferenceable(64) %i.n, i64 64, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30 ; 2 uses
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !30 ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.s
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.t)
  %i.v = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %i.w = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.v)
  %i.x = fmul float %i.w, 5.000000e-01            ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !30
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.aa, %i.ac
  store <2 x float> %i.ad, ptr %i.z, align 4, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !150 ; 4 uses
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 140
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !65
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 244 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 108 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.x, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x float>, ptr %i.al, align 4, !tbaa !30
  %wide.load116 = load <4 x float>, ptr %i.am, align 4, !tbaa !30
  %i.an = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ao = fmul <4 x float> %broadcast.splat, %wide.load116
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <4 x float> %i.an, ptr %i.ap, align 4, !tbaa !30
  store <4 x float> %i.ao, ptr %i.aq, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.at = load float, ptr %i.as, align 4, !tbaa !30
  %i.au = fmul float %i.x, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  store float %i.au, ptr %i.av, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !304

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !152
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 141
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !125
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 281
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 142
  store i8 %i.ba, ptr %i.bb, align 2, !tbaa !126
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 284
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store float %i.bd, ptr %i.be, align 8, !tbaa !124
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !153
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  store i8 %i.bg, ptr %i.bh, align 4, !tbaa !123
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !146
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store float %i.bj, ptr %i.bk, align 8, !tbaa !122
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 311
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 149
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !107
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  store ptr %i.f, ptr %i.bo, align 8, !tbaa !86
  store ptr null, ptr %i.e, align 8, !tbaa !71
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %i.h, i64 152 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %2 = load float, ptr %i.bp, align 8, !tbaa !30  ; 2 uses
  store float %2, ptr %1, align 8, !tbaa !30
  %i.br = load float, ptr %i.bq, align 4, !tbaa !30 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  store float %i.br, ptr %i.bs, align 4, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %3 = getelementptr inbounds nuw i8, ptr %i.h, i64 160 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %4 = load float, ptr %i.bt, align 8, !tbaa !30  ; 2 uses
  store float %4, ptr %3, align 8, !tbaa !30
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !30 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 164
  %.097.in103 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.097104 = load ptr, ptr %.097.in103, align 8, !tbaa !72 ; 2 uses
  %.not105 = icmp eq ptr %.097104, null
  br i1 %.not105, label %._crit_edge110.a, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %._crit_edge
  %5 = insertelement <2 x float> poison, float %4, i64 0
  %6 = insertelement <2 x float> %5, float %i.bv, i64 1
  %7 = insertelement <2 x float> poison, float %2, i64 0
  %8 = insertelement <2 x float> %7, float %i.br, i64 1
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %.097107 = phi ptr [ %.097, %.lr.ph109 ], [ %.097104, %.lr.ph109.preheader ] ; 3 uses
  %9 = phi <2 x float> [ %13, %.lr.ph109 ], [ %8, %.lr.ph109.preheader ] ; 2 uses
  %10 = phi <2 x float> [ %16, %.lr.ph109 ], [ %6, %.lr.ph109.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.097107, i64 16
  %11 = load <2 x float>, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %12 = fcmp olt <2 x float> %9, %11
  %13 = select <2 x i1> %12, <2 x float> %9, <2 x float> %11 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.097107, i64 24
  %14 = load <2 x float>, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %15 = fcmp ogt <2 x float> %10, %14
  %16 = select <2 x i1> %15, <2 x float> %10, <2 x float> %14 ; 3 uses
  %.097.in = getelementptr inbounds nuw i8, ptr %.097107, i64 32
  %.097 = load ptr, ptr %.097.in, align 8, !tbaa !72 ; 2 uses
  %.not = icmp eq ptr %.097, null
  br i1 %.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !305

._crit_edge110:                                   ; preds = %.lr.ph109
  store <2 x float> %13, ptr %1, align 8, !tbaa !30
  %17 = extractelement <2 x float> %16, i64 0
  store float %17, ptr %3, align 8, !tbaa !30
  %18 = extractelement <2 x float> %16, i64 1
  br label %._crit_edge110.a

._crit_edge110.a:                                 ; preds = %._crit_edge110, %._crit_edge
  %storemerge.lcssa = phi float [ %18, %._crit_edge110 ], [ %i.bv, %._crit_edge ]
  store float %storemerge.lcssa, ptr %i.bw, align 4, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !36
  switch i8 %i.ca, label %bb.g [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge110.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 0, ptr %i.cb, align 8, !tbaa !43
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge110.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 1, ptr %i.cc, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !145
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !147
  %i.ci = fmul float %i.ch, 2.550000e+02
  %i.cj = fptoui float %i.ci to i32
  %i.ck = shl i32 %i.cj, 24
  %i.cl = or i32 %i.ck, %i.ce
  store i32 %i.cl, ptr %i.cf, align 8, !tbaa !16
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge110.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i8 -1, ptr %i.cm, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge110.a, %bb.e, %bb.f, %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 309
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !148
  switch i8 %i.co, label %bb.k [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 0, ptr %i.cp, align 8, !tbaa !44
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 1, ptr %i.cq, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !149
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !32
  %i.cw = fmul float %i.cv, 2.550000e+02
  %i.cx = fptoui float %i.cw to i32
  %i.cy = shl i32 %i.cx, 24
  %i.cz = or i32 %i.cy, %i.cs
  store i32 %i.cz, ptr %i.ct, align 8, !tbaa !16
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i8 -1, ptr %i.da, align 8, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 310
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !37
  %.not101 = icmp ne i8 %i.dc, 0
  %i.dd = zext i1 %.not101 to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.h, i64 150
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !106
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 39968
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !46
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr %i.h, ptr %i.dh, align 8, !tbaa !46
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 39992
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !306
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 328
  store ptr %i.h, ptr %i.dm, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 39992
  store ptr %i.h, ptr %i.dn, align 8, !tbaa !306
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__lineTo(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 39952 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %nsvg__addPoint.exit41

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 39944 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 3 uses
  %i.f = shl nuw i32 %i.b, 1                      ; 2 uses
  %i.g = add i32 %i.f, -2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !30 ; 2 uses
  %i.k = insertelement <2 x float> poison, float %1, i64 0
  %i.l = insertelement <2 x float> %i.k, float %2, i64 1 ; 2 uses
  %i.m = fsub <2 x float> %i.l, %i.j
  %i.n = fdiv <2 x float> %i.m, splat (float 3.000000e+00) ; 2 uses
  %i.o = fadd <2 x float> %i.j, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 39956 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !83   ; 3 uses
  %.not.i = icmp slt i32 %i.b, %i.q
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not16.i = icmp eq i32 %i.q, 0
  %i.r = shl nsw i32 %i.q, 1
  %spec.select.i = select i1 %.not16.i, i32 8, i32 %i.r ; 2 uses
  store i32 %spec.select.i, ptr %i.p, align 4, !tbaa !83
  %i.s = shl nsw i32 %spec.select.i, 1
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.u) #32 ; 3 uses
  store ptr %i.v, ptr %i.d, align 8, !tbaa !78
  %.not17.i = icmp eq ptr %i.v, null
  %.pre = load i32, ptr %i.a, align 8, !tbaa !82  ; 3 uses
  br i1 %.not17.i, label %nsvg__addPoint.exit, label %._crit_edge18.i

._crit_edge18.i:                                  ; preds = %bb.c
  %.pre43 = shl nsw i32 %.pre, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %._crit_edge18.i
  %.pre-phi = phi i32 [ %i.f, %bb.b ], [ %.pre43, %._crit_edge18.i ]
  %i.w = phi i32 [ %i.b, %bb.b ], [ %.pre, %._crit_edge18.i ]
  %i.x = phi ptr [ %i.e, %bb.b ], [ %i.v, %._crit_edge18.i ] ; 2 uses
  %i.y = sext i32 %.pre-phi to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  store <2 x float> %i.o, ptr %i.z, align 4, !tbaa !30
  %i.aa = add nsw i32 %i.w, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !82
  br label %nsvg__addPoint.exit

nsvg__addPoint.exit:                              ; preds = %bb.c, %._crit_edge.i
  %.pre.i30 = phi ptr [ null, %bb.c ], [ %i.x, %._crit_edge.i ] ; 2 uses
  %i.ab = phi i32 [ %.pre, %bb.c ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %i.ac = fsub <2 x float> %i.l, %i.n
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !83  ; 3 uses
  %.not.i22 = icmp slt i32 %i.ab, %i.ad
  br i1 %.not.i22, label %._crit_edge.i28, label %bb.d

bb.d:                                             ; preds = %nsvg__addPoint.exit
  %.not16.i23 = icmp eq i32 %i.ad, 0
  %i.ae = shl nsw i32 %i.ad, 1
  %spec.select.i24 = select i1 %.not16.i23, i32 8, i32 %i.ae ; 2 uses
  store i32 %spec.select.i24, ptr %i.p, align 4, !tbaa !83
  %i.af = shl nsw i32 %spec.select.i24, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call ptr @realloc(ptr noundef %.pre.i30, i64 noundef %i.ah) #32 ; 3 uses
  store ptr %i.ai, ptr %i.d, align 8, !tbaa !78
  %.not17.i25 = icmp eq ptr %i.ai, null
  %.pre42 = load i32, ptr %i.a, align 8, !tbaa !82 ; 2 uses
  br i1 %.not17.i25, label %nsvg__addPoint.exit31, label %._crit_edge.i28

._crit_edge.i28:                                  ; preds = %bb.d, %nsvg__addPoint.exit
  %i.aj = phi i32 [ %i.ab, %nsvg__addPoint.exit ], [ %.pre42, %bb.d ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i30, %nsvg__addPoint.exit ], [ %i.ai, %bb.d ] ; 2 uses
  %i.al = shl nsw i32 %i.aj, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  store <2 x float> %i.ac, ptr %i.an, align 4, !tbaa !30
  %i.ao = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !82
  br label %nsvg__addPoint.exit31

nsvg__addPoint.exit31:                            ; preds = %bb.d, %._crit_edge.i28
  %.pre.i40 = phi ptr [ null, %bb.d ], [ %i.ak, %._crit_edge.i28 ] ; 2 uses
  %i.ap = phi i32 [ %.pre42, %bb.d ], [ %i.ao, %._crit_edge.i28 ] ; 2 uses
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !83  ; 3 uses
  %.not.i32 = icmp slt i32 %i.ap, %i.aq
  br i1 %.not.i32, label %._crit_edge.i38, label %bb.e

bb.e:                                             ; preds = %nsvg__addPoint.exit31
  %.not16.i33 = icmp eq i32 %i.aq, 0
  %i.ar = shl nsw i32 %i.aq, 1
  %spec.select.i34 = select i1 %.not16.i33, i32 8, i32 %i.ar ; 2 uses
end_hunk_0
