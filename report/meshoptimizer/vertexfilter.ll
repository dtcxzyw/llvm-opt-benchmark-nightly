Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexfilter?download=true
inline.NumInlined: 39
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@meshopt_encodeFilterExp
define dso_local void @meshopt_encodeFilterExp(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 19 uses
  %i.b = lshr i64 %2, 2                           ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq i64 %i.b, 0                     ; 5 uses
  br i1 %.not, label %.loopexit98, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %5, 0
  %i.d = select i1 %i.c, i32 0, i32 -100          ; 2 uses
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.b, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.e, align 16, !tbaa !41
  store <4 x i32> %broadcast.splat, ptr %i.f, align 16, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.08299.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.h = icmp eq i32 %5, 2
  %i.i = icmp ne i64 %1, 0
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %.lr.ph102.preheader, label %.loopexit98

.lr.ph102.preheader:                              ; preds = %._crit_edge
  %min.iters.check156 = icmp ult i64 %2, 32
  %n.vec158 = and i64 %i.b, 4611686018427387896   ; 3 uses
  %cmp.n166 = icmp eq i64 %i.b, %n.vec158
  br label %.lr.ph102

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.08299 = phi i64 [ %i.k, %scalar.ph ], [ %.08299.ph, %scalar.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.08299
  store i32 %i.d, ptr %i.j, align 4, !tbaa !41
  %i.k = add nuw nsw i64 %.08299, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !26

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %._crit_edge103
  %.087104 = phi i64 [ %i.aa, %._crit_edge103 ], [ 0, %.lr.ph102.preheader ] ; 2 uses
  %i.l = mul i64 %.087104, %i.b
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.l ; 2 uses
  br i1 %min.iters.check156, label %scalar.ph155.preheader, label %vector.body159

vector.body159:                                   ; preds = %.lr.ph102, %vector.body159
  %index160 = phi i64 [ %index.next164, %vector.body159 ], [ 0, %.lr.ph102 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index160 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <4 x i32>, ptr %i.n, align 4, !tbaa !12
  %wide.load161 = load <4 x i32>, ptr %i.o, align 4, !tbaa !12
  %i.p = lshr <4 x i32> %wide.load, splat (i32 23)
  %i.q = lshr <4 x i32> %wide.load161, splat (i32 23)
  %i.r = and <4 x i32> %i.p, splat (i32 255)
  %i.s = and <4 x i32> %i.q, splat (i32 255)
  %i.t = add nsw <4 x i32> %i.r, splat (i32 -126)
  %i.u = add nsw <4 x i32> %i.s, splat (i32 -126)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index160 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.v, align 16, !tbaa !41
  %wide.load163 = load <4 x i32>, ptr %i.w, align 16, !tbaa !41
  %i.x = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load162, <4 x i32> %i.t)
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load163, <4 x i32> %i.u)
  store <4 x i32> %i.x, ptr %i.v, align 16, !tbaa !41
  store <4 x i32> %i.y, ptr %i.w, align 16, !tbaa !41
  %index.next164 = add nuw i64 %index160, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next164, %n.vec158
  br i1 %i.z, label %middle.block165, label %vector.body159, !llvm.loop !27

middle.block165:                                  ; preds = %vector.body159
  br i1 %cmp.n166, label %._crit_edge103, label %scalar.ph155.preheader

scalar.ph155.preheader:                           ; preds = %.lr.ph102, %middle.block165
  %.086100.ph = phi i64 [ 0, %.lr.ph102 ], [ %n.vec158, %middle.block165 ]
  br label %scalar.ph155

._crit_edge103:                                   ; preds = %scalar.ph155, %middle.block165
  %i.aa = add nuw i64 %.087104, 1                 ; 2 uses
  %exitcond130.not = icmp eq i64 %i.aa, %1
  br i1 %exitcond130.not, label %.lr.ph119, label %.lr.ph102, !llvm.loop !28

scalar.ph155:                                     ; preds = %scalar.ph155.preheader, %scalar.ph155
  %.086100 = phi i64 [ %i.ai, %scalar.ph155 ], [ %.086100.ph, %scalar.ph155.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.086100
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = lshr i32 %i.ac, 23
  %i.ae = and i32 %i.ad, 255
  %i.af = add nsw i32 %i.ae, -126
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.086100 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !41
  %. = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.af)
  store i32 %., ptr %i.ag, align 4, !tbaa !41
  %i.ai = add nuw nsw i64 %.086100, 1             ; 2 uses
  %exitcond129.not = icmp eq i64 %i.ai, %i.b
  br i1 %exitcond129.not, label %._crit_edge103, label %scalar.ph155, !llvm.loop !29

.loopexit98:                                      ; preds = %bb.a, %._crit_edge
  %.not122 = icmp eq i64 %1, 0
  br i1 %.not122, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge103, %.loopexit98
  %i.aj = icmp eq i32 %5, 1
  %.neg92 = sub i32 1, %3                         ; 3 uses
  br i1 %i.aj, label %.lr.ph119.split.us, label %.lr.ph119.split.preheader

.lr.ph119.split.preheader:                        ; preds = %.lr.ph119
  %min.iters.check209 = icmp ult i64 %2, 32
  %n.vec211 = and i64 %i.b, 4611686018427387896   ; 3 uses
  %cmp.n218 = icmp eq i64 %i.b, %n.vec211
  %min.iters.check183 = icmp ult i64 %2, 32
  %n.vec185 = and i64 %i.b, 4611686018427387896   ; 3 uses
  %cmp.n206 = icmp eq i64 %i.b, %n.vec185
  %min.iters.check169 = icmp ult i64 %2, 16
  %n.vec171 = and i64 %i.b, 4611686018427387900   ; 3 uses
  %broadcast.splatinsert172 = insertelement <4 x i32> poison, i32 %.neg92, i64 0
  %broadcast.splat173 = shufflevector <4 x i32> %broadcast.splatinsert172, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n180 = icmp eq i64 %i.b, %n.vec171
  br label %.lr.ph119.split

.lr.ph119.split.us:                               ; preds = %.lr.ph119
  br i1 %.not, label %._crit_edge120, label %.lr.ph112.us.us.preheader.preheader

.lr.ph112.us.us.preheader.preheader:              ; preds = %.lr.ph119.split.us
  %min.iters.check237 = icmp ult i64 %2, 32
  %n.vec239 = and i64 %i.b, 4611686018427387896   ; 3 uses
  %cmp.n247 = icmp eq i64 %i.b, %n.vec239
  %min.iters.check221 = icmp ult i64 %2, 32
  %n.vec223 = and i64 %i.b, 4611686018427387896   ; 3 uses
  %cmp.n234 = icmp eq i64 %i.b, %n.vec223
  br label %.lr.ph112.us.us.preheader

.lr.ph112.us.us.preheader:                        ; preds = %.lr.ph112.us.us.preheader.preheader, %._crit_edge116.us.us
  %.085117.us.us = phi i64 [ %i.cc, %._crit_edge116.us.us ], [ 0, %.lr.ph112.us.us.preheader.preheader ] ; 2 uses
  %i.ak = mul i64 %.085117.us.us, %i.b            ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  br i1 %min.iters.check237, label %.lr.ph112.us.us.preheader256, label %vector.body240

vector.body240:                                   ; preds = %.lr.ph112.us.us.preheader, %vector.body240
  %index241 = phi i64 [ %index.next245, %vector.body240 ], [ 0, %.lr.ph112.us.us.preheader ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.av, %vector.body240 ], [ splat (i32 -100), %.lr.ph112.us.us.preheader ]
  %vec.phi242 = phi <4 x i32> [ %i.aw, %vector.body240 ], [ splat (i32 -100), %.lr.ph112.us.us.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index241 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load243 = load <4 x i32>, ptr %i.an, align 4, !tbaa !12
  %wide.load244 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !12
  %i.ap = lshr <4 x i32> %wide.load243, splat (i32 23)
  %i.aq = lshr <4 x i32> %wide.load244, splat (i32 23)
  %i.ar = and <4 x i32> %i.ap, splat (i32 255)
  %i.as = and <4 x i32> %i.aq, splat (i32 255)
  %i.at = add nsw <4 x i32> %i.ar, splat (i32 -126)
  %i.au = add nsw <4 x i32> %i.as, splat (i32 -126)
  %i.av = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.at) ; 2 uses
  %i.aw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi242, <4 x i32> %i.au) ; 2 uses
  %index.next245 = add nuw i64 %index241, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next245, %n.vec239
  br i1 %i.ax, label %middle.block246, label %vector.body240, !llvm.loop !30

middle.block246:                                  ; preds = %vector.body240
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.av, <4 x i32> %i.aw)
  %i.ay = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n247, label %.loopexit.us.us, label %.lr.ph112.us.us.preheader256

.lr.ph112.us.us.preheader256:                     ; preds = %.lr.ph112.us.us.preheader, %middle.block246
  %.083111.us.us.ph = phi i64 [ 0, %.lr.ph112.us.us.preheader ], [ %n.vec239, %middle.block246 ]
  %.084110.us.us.ph = phi i32 [ -100, %.lr.ph112.us.us.preheader ], [ %i.ay, %middle.block246 ]
  br label %.lr.ph112.us.us

.lr.ph112.us.us:                                  ; preds = %.lr.ph112.us.us.preheader256, %.lr.ph112.us.us
  %.083111.us.us = phi i64 [ %i.bf, %.lr.ph112.us.us ], [ %.083111.us.us.ph, %.lr.ph112.us.us.preheader256 ] ; 2 uses
  %.084110.us.us = phi i32 [ %i.be, %.lr.ph112.us.us ], [ %.084110.us.us.ph, %.lr.ph112.us.us.preheader256 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.083111.us.us
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = lshr i32 %i.ba, 23
  %i.bc = and i32 %i.bb, 255
  %i.bd = add nsw i32 %i.bc, -126
  %i.be = tail call i32 @llvm.smax.i32(i32 %.084110.us.us, i32 %i.bd) ; 2 uses
  %i.bf = add nuw nsw i64 %.083111.us.us, 1       ; 2 uses
  %exitcond135.not = icmp eq i64 %i.bf, %i.b
  br i1 %exitcond135.not, label %.loopexit.us.us, label %.lr.ph112.us.us, !llvm.loop !31

.loopexit.us.us:                                  ; preds = %.lr.ph112.us.us, %middle.block246
  %.lcssa = phi i32 [ %i.ay, %middle.block246 ], [ %i.be, %.lr.ph112.us.us ]
  %i.bg = add i32 %.neg92, %.lcssa                ; 2 uses
  %i.bh = shl i32 %i.bg, 23
  %i.bi = sub i32 1065353216, %i.bh
  %i.bj = bitcast i32 %i.bi to float              ; 2 uses
  %i.bk = shl i32 %i.bg, 24                       ; 2 uses
  br i1 %min.iters.check221, label %scalar.ph220.preheader, label %vector.ph222

vector.ph222:                                     ; preds = %.loopexit.us.us
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert226 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat227 = shufflevector <4 x i32> %broadcast.splatinsert226, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph222
  %index229 = phi i64 [ 0, %vector.ph222 ], [ %index.next232, %vector.body228 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index229 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load230 = load <4 x float>, ptr %i.bl, align 4, !tbaa !12 ; 2 uses
  %wide.load231 = load <4 x float>, ptr %i.bm, align 4, !tbaa !12 ; 2 uses
  %i.bn = fcmp oge <4 x float> %wide.load230, zeroinitializer
  %i.bo = fcmp oge <4 x float> %wide.load231, zeroinitializer
  %i.bp = select <4 x i1> %i.bn, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.bq = select <4 x i1> %i.bo, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load230, <4 x float> %broadcast.splat225, <4 x float> %i.bp)
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load231, <4 x float> %broadcast.splat225, <4 x float> %i.bq)
  %i.bt = fptosi <4 x float> %i.br to <4 x i32>
  %i.bu = fptosi <4 x float> %i.bs to <4 x i32>
  %i.bv = and <4 x i32> %i.bt, splat (i32 16777215)
  %i.bw = and <4 x i32> %i.bu, splat (i32 16777215)
  %i.bx = or disjoint <4 x i32> %i.bv, %broadcast.splat227
  %i.by = or disjoint <4 x i32> %i.bw, %broadcast.splat227
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %index229 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <4 x i32> %i.bx, ptr %i.bz, align 4, !tbaa !41
  store <4 x i32> %i.by, ptr %i.ca, align 4, !tbaa !41
  %index.next232 = add nuw i64 %index229, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next232, %n.vec223
  br i1 %i.cb, label %middle.block233, label %vector.body228, !llvm.loop !32

middle.block233:                                  ; preds = %vector.body228
  br i1 %cmp.n234, label %._crit_edge116.us.us, label %scalar.ph220.preheader

scalar.ph220.preheader:                           ; preds = %.loopexit.us.us, %middle.block233
  %.0113.us.us.ph = phi i64 [ 0, %.loopexit.us.us ], [ %n.vec223, %middle.block233 ]
  br label %scalar.ph220

scalar.ph220:                                     ; preds = %scalar.ph220.preheader, %scalar.ph220
  %.0113.us.us = phi i64 [ %15, %scalar.ph220 ], [ %.0113.us.us.ph, %scalar.ph220.preheader ] ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0113.us.us
  %7 = load float, ptr %6, align 4, !tbaa !12     ; 2 uses
  %8 = fcmp oge float %7, 0.000000e+00
  %9 = select i1 %8, float 5.000000e-01, float -5.000000e-01
  %10 = tail call float @llvm.fmuladd.f32(float %7, float %i.bj, float %9)
  %11 = fptosi float %10 to i32
  %12 = and i32 %11, 16777215
  %13 = or disjoint i32 %12, %i.bk
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0113.us.us
  store i32 %13, ptr %14, align 4, !tbaa !41
  %15 = add nuw nsw i64 %.0113.us.us, 1           ; 2 uses
  %exitcond136.not = icmp eq i64 %15, %i.b
  br i1 %exitcond136.not, label %._crit_edge116.us.us, label %scalar.ph220, !llvm.loop !33

._crit_edge116.us.us:                             ; preds = %scalar.ph220, %middle.block233
  %i.cc = add nuw i64 %.085117.us.us, 1           ; 2 uses
  %exitcond137.not = icmp eq i64 %i.cc, %1
  br i1 %exitcond137.not, label %._crit_edge120, label %.lr.ph112.us.us.preheader, !llvm.loop !34

._crit_edge120:                                   ; preds = %._crit_edge116, %._crit_edge116.us.us, %.lr.ph119.split.us, %.loopexit98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

.lr.ph119.split:                                  ; preds = %.lr.ph119.split.preheader, %._crit_edge116
  %.085117 = phi i64 [ %i.gn, %._crit_edge116 ], [ 0, %.lr.ph119.split.preheader ] ; 2 uses
  %i.cd = mul i64 %.085117, %i.b                  ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cd ; 6 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cd ; 2 uses
  switch i32 %5, label %.loopexit94 [
    i32 0, label %.preheader93
    i32 3, label %.preheader95
  ]

.preheader95:                                     ; preds = %.lr.ph119.split
  br i1 %.not, label %._crit_edge116, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %.preheader95
  br i1 %min.iters.check209, label %.lr.ph107.preheader262, label %vector.body212

vector.body212:                                   ; preds = %.lr.ph107.preheader, %vector.body212
  %index213 = phi i64 [ %index.next216, %vector.body212 ], [ 0, %.lr.ph107.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index213 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load214 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !12
  %wide.load215 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !12
  %i.ci = lshr <4 x i32> %wide.load214, splat (i32 23)
  %i.cj = lshr <4 x i32> %wide.load215, splat (i32 23)
  %i.ck = and <4 x i32> %i.ci, splat (i32 255)
  %i.cl = and <4 x i32> %i.cj, splat (i32 255)
  %i.cm = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ck, <4 x i32> splat (i32 126))
  %i.cn = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.cl, <4 x i32> splat (i32 126))
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index213 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <4 x i32> %i.cm, ptr %i.co, align 16, !tbaa !41
  store <4 x i32> %i.cn, ptr %i.cp, align 16, !tbaa !41
  %index.next216 = add nuw i64 %index213, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.cq, label %middle.block217, label %vector.body212, !llvm.loop !35

middle.block217:                                  ; preds = %vector.body212
  br i1 %cmp.n218, label %.lr.ph115.preheader, label %.lr.ph107.preheader262

.lr.ph107.preheader262:                           ; preds = %.lr.ph107.preheader, %middle.block217
  %.080106.ph = phi i64 [ 0, %.lr.ph107.preheader ], [ %n.vec211, %middle.block217 ]
  br label %.lr.ph107

.preheader93:                                     ; preds = %.lr.ph119.split
  br i1 %.not, label %._crit_edge116, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.preheader93
  br i1 %min.iters.check183, label %.lr.ph109.preheader261, label %vector.body186

vector.body186:                                   ; preds = %.lr.ph109.preheader, %pred.store.continue203
  %index187 = phi i64 [ %index.next204, %pred.store.continue203 ], [ 0, %.lr.ph109.preheader ] ; 10 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index187 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load188 = load <4 x float>, ptr %i.cr, align 4, !tbaa !12 ; 5 uses
  %wide.load189 = load <4 x float>, ptr %i.cs, align 4, !tbaa !12 ; 5 uses
  %i.ct = fcmp une <4 x float> %wide.load188, zeroinitializer ; 4 uses
  %i.cu = fcmp une <4 x float> %wide.load189, zeroinitializer ; 4 uses
  %i.cv = extractelement <4 x i1> %i.ct, i64 0
  br i1 %i.cv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body186
  %bc = bitcast <4 x float> %wide.load188 to <4 x i32>
  %i.cw = extractelement <4 x i32> %bc, i64 0
  %i.cx = lshr i32 %i.cw, 23
  %i.cy = and i32 %i.cx, 255
  %i.cz = tail call i32 @llvm.umax.i32(i32 %i.cy, i32 26)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.db = add nsw i32 %i.cz, -126
  store i32 %i.db, ptr %i.da, align 16, !tbaa !41
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body186
  %i.dc = extractelement <4 x i1> %i.ct, i64 1
  br i1 %i.dc, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue
  %bc249 = bitcast <4 x float> %wide.load188 to <4 x i32>
  %i.dd = extractelement <4 x i32> %bc249, i64 1
  %i.de = lshr i32 %i.dd, 23
  %i.df = and i32 %i.de, 255
  %i.dg = tail call i32 @llvm.umax.i32(i32 %i.df, i32 26)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = add nsw i32 %i.dg, -126
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !41
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue
  %i.dk = extractelement <4 x i1> %i.ct, i64 2
  br i1 %i.dk, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  %bc250 = bitcast <4 x float> %wide.load188 to <4 x i32>
  %i.dl = extractelement <4 x i32> %bc250, i64 2
  %i.dm = lshr i32 %i.dl, 23
  %i.dn = and i32 %i.dm, 255
  %i.do = tail call i32 @llvm.umax.i32(i32 %i.dn, i32 26)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = add nsw i32 %i.do, -126
  store i32 %i.dr, ptr %i.dq, align 8, !tbaa !41
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %i.ds = extractelement <4 x i1> %i.ct, i64 3
  br i1 %i.ds, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  %bc251 = bitcast <4 x float> %wide.load188 to <4 x i32>
  %i.dt = extractelement <4 x i32> %bc251, i64 3
  %i.du = lshr i32 %i.dt, 23
  %i.dv = and i32 %i.du, 255
  %i.dw = tail call i32 @llvm.umax.i32(i32 %i.dv, i32 26)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.dz = add nsw i32 %i.dw, -126
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !41
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %i.ea = extractelement <4 x i1> %i.cu, i64 0
  br i1 %i.ea, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  %bc252 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.eb = extractelement <4 x i32> %bc252, i64 0
  %i.ec = lshr i32 %i.eb, 23
  %i.ed = and i32 %i.ec, 255
  %i.ee = tail call i32 @llvm.umax.i32(i32 %i.ed, i32 26)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = add nsw i32 %i.ee, -126
  store i32 %i.eh, ptr %i.eg, align 16, !tbaa !41
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.ei = extractelement <4 x i1> %i.cu, i64 1
  br i1 %i.ei, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  %bc253 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.ej = extractelement <4 x i32> %bc253, i64 1
  %i.ek = lshr i32 %i.ej, 23
  %i.el = and i32 %i.ek, 255
  %i.em = tail call i32 @llvm.umax.i32(i32 %i.el, i32 26)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = add nsw i32 %i.em, -126
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !41
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.eq = extractelement <4 x i1> %i.cu, i64 2
  br i1 %i.eq, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  %bc254 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.er = extractelement <4 x i32> %bc254, i64 2
  %i.es = lshr i32 %i.er, 23
  %i.et = and i32 %i.es, 255
  %i.eu = tail call i32 @llvm.umax.i32(i32 %i.et, i32 26)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = add nsw i32 %i.eu, -126
  store i32 %i.ex, ptr %i.ew, align 8, !tbaa !41
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.ey = extractelement <4 x i1> %i.cu, i64 3
  br i1 %i.ey, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  %bc255 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.ez = extractelement <4 x i32> %bc255, i64 3
  %i.fa = lshr i32 %i.ez, 23
  %i.fb = and i32 %i.fa, 255
  %i.fc = tail call i32 @llvm.umax.i32(i32 %i.fb, i32 26)
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.ff = add nsw i32 %i.fc, -126
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !41
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %index.next204 = add nuw i64 %index187, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next204, %n.vec185
  br i1 %i.fg, label %middle.block205, label %vector.body186, !llvm.loop !36

middle.block205:                                  ; preds = %pred.store.continue203
  br i1 %cmp.n206, label %.lr.ph115.preheader, label %.lr.ph109.preheader261

end_hunk_0
begin_hunk_1_@meshopt_encodeFilterExp:bb.a
  %i.hc = or disjoint i32 %i.ha, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0113
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !41
  %i.he = add nuw nsw i64 %.0113, 1               ; 2 uses
  %exitcond133.not = icmp eq i64 %i.he, %i.b
  br i1 %exitcond133.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !40
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_encodeFilterColor(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %notmask.i = shl nsw i32 -1, %3
  %i.a = xor i32 %notmask.i, -1
  %i.b = uitofp nneg i32 %i.a to float
  %i.c = add nsw i32 %3, -1
  %i.d = shl nuw i32 1, %i.c
  %i.e = icmp eq i64 %2, 4
  %i.f = insertelement <4 x float> poison, float %i.b, i64 0
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.051 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.e ] ; 2 uses
  %i.h = shl i64 %.051, 2                         ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h
  %i.j = load <4 x float>, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %i.k = fcmp oge <4 x float> %i.j, zeroinitializer
  %i.l = select <4 x i1> %i.k, <4 x float> %i.j, <4 x float> zeroinitializer ; 2 uses
  %i.m = fcmp ole <4 x float> %i.l, splat (float 1.000000e+00)
  %i.n = select <4 x i1> %i.m, <4 x float> %i.l, <4 x float> splat (float 1.000000e+00)
  %i.o = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.n, <4 x float> %i.g, <4 x float> splat (float 5.000000e-01)) ; 4 uses
  %i.p = extractelement <4 x float> %i.o, i64 0
  %i.q = fptosi float %i.p to i32
  %i.r = extractelement <4 x float> %i.o, i64 1
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <4 x float> %i.o, i64 2
  %i.u = fptosi float %i.t to i32                 ; 2 uses
  %i.v = sub nsw i32 %i.q, %i.u
  %i.w = sdiv i32 %i.v, 2                         ; 3 uses
  %i.x = add nsw i32 %i.w, %i.u                   ; 2 uses
  %i.y = sub nsw i32 %i.s, %i.x
  %i.z = sdiv i32 %i.y, 2                         ; 3 uses
  %i.aa = add nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = extractelement <4 x float> %i.o, i64 3
  %i.ac = fptosi float %i.ab to i32
  %i.ad = ashr i32 %i.ac, 1
  %i.ae = or i32 %i.ad, %i.d                      ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = trunc i32 %i.aa to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 4 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !9
  %i.ah = trunc i32 %i.w to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !9
  %i.aj = trunc i32 %i.z to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !9
  %i.al = trunc i32 %i.ae to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 %i.al, ptr %i.am, align 1, !tbaa !9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.an = trunc i32 %i.aa to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.h ; 4 uses
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !14
  %i.ap = trunc i32 %i.w to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !14
  %i.ar = trunc i32 %i.z to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !14
  %i.at = trunc i32 %i.ae to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  store i16 %i.at, ptr %i.au, align 2, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = add nuw i64 %.051, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"float", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!"long", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10, !42, !43}
!26 = distinct !{!26, !10, !43, !42}
!27 = distinct !{!27, !10, !42, !43}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10, !43, !42}
!30 = distinct !{!30, !10, !42, !43}
!31 = distinct !{!31, !10, !43, !42}
!32 = distinct !{!32, !10, !42, !43}
!33 = distinct !{!33, !10, !43, !42}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10, !42, !43}
!36 = distinct !{!36, !10, !42, !43}
!37 = distinct !{!37, !10, !43, !42}
!38 = distinct !{!38, !10, !43, !42}
!39 = distinct !{!39, !10, !42, !43}
!40 = distinct !{!40, !10, !43, !42}
!41 = !{!6, !6, i64 0}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !10}
end_hunk_1
