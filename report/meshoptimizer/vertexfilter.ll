Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vertexfilter?download=true
inline.NumInlined: 39
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@meshopt_encodeFilterOct:bb.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.o ; 3 uses
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.v = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.q) ; 2 uses
  %shift = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.v, %shift
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.x = tail call float @llvm.fabs.f32(float %i.s)
  %i.y = fadd float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp oeq float %i.y, 0.000000e+00
  %i.aa = fdiv float 1.000000e+00, %i.y
  %i.ab = select i1 %i.z, float 0.000000e+00, float %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.q, %i.ad            ; 3 uses
  %i.af = fcmp ult float %i.s, 0.000000e+00
  br i1 %i.af, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ae)
  %i.ah = fcmp oge <2 x float> %i.ae, zeroinitializer
  %i.ai = fsub <2 x float> splat (float 1.000000e+00), %i.ag
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = fneg <2 x float> %i.aj
  %i.al = select <2 x i1> %i.ah, <2 x float> %i.aj, <2 x float> %i.ak
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.am = phi <2 x float> [ %i.al, %bb.c ], [ %i.ae, %bb.b ] ; 3 uses
  %i.an = fcmp oge <2 x float> %i.am, zeroinitializer
  %i.ao = fcmp oge <2 x float> %i.am, splat (float -1.000000e+00)
  %i.ap = select <2 x i1> %i.an, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.aq = select <2 x i1> %i.ao, <2 x float> %i.am, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.ar = fcmp ole <2 x float> %i.aq, splat (float 1.000000e+00)
  %i.as = select <2 x i1> %i.ar, <2 x float> %i.aq, <2 x float> splat (float 1.000000e+00)
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.n, <2 x float> %i.ap)
  %i.au = fptosi <2 x float> %i.at to <2 x i32>   ; 3 uses
  %i.av = fcmp oge float %i.u, 0.000000e+00
  %i.aw = select i1 %i.av, float 5.000000e-01, float -5.000000e-01
  %i.ax = fcmp oge float %i.u, -1.000000e+00
  %i.ay = select i1 %i.ax, float %i.u, float -1.000000e+00 ; 2 uses
  %i.az = fcmp ole float %i.ay, 1.000000e+00
  %i.ba = select i1 %i.az, float %i.ay, float 1.000000e+00
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.i, float %i.aw)
  %i.bc = fptosi float %i.bb to i32               ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.bd = bitcast <2 x i32> %i.au to <8 x i8>
  %i.be = extractelement <8 x i8> %i.bd, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 4 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !9
  %i.bg = bitcast <2 x i32> %i.au to <8 x i8>
  %i.bh = extractelement <8 x i8> %i.bg, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store i8 %i.l, ptr %i.bj, align 1, !tbaa !9
  %i.bk = trunc i32 %i.bc to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %.thread
  %i.bm = trunc <2 x i32> %i.au to <2 x i16>
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.o ; 3 uses
  store <2 x i16> %i.bm, ptr %i.bn, align 2, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i16 %i.k, ptr %i.bo, align 2, !tbaa !14
  %i.bp = trunc i32 %i.bc to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.br = add nuw i64 %.063, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @meshopt_encodeFilterQuat(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %3, -1
  %notmask.i = shl nsw i32 -1, %i.a
  %i.b = xor i32 %notmask.i, -1
  %i.c = uitofp nneg i32 %i.b to float            ; 3 uses
  %i.d = fadd float %i.c, 5.000000e-01
  %i.e = fptosi float %i.d to i32
  %i.f = and i32 %i.e, 65532
  %i.g = insertelement <2 x float> poison, float %i.c, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.045 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.b ] ; 2 uses
  %i.i = shl i64 %.045, 2                         ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.i ; 9 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.i
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !12
  %i.m = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.l) ; 2 uses
  %i.n = extractelement <2 x float> %i.m, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 1
  %i.p = fcmp ogt float %i.o, %i.n                ; 2 uses
  %i.q = zext i1 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = zext i1 %i.p to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = tail call float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp ogt float %i.t, %i.x
  %i.z = select i1 %i.y, i32 2, i32 %i.q          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = tail call float @llvm.fabs.f32(float %i.ab)
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp ogt float %i.ac, %i.ag
  %i.ai = select i1 %i.ah, i32 3, i32 %i.z        ; 5 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp olt float %i.al, 0.000000e+00
  %i.an = select i1 %i.am, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.ao = add nuw nsw i32 %i.ai, 1
  %i.ap = and i32 %i.ao, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = xor i32 %i.ai, 2
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = add nuw nsw i32 %i.ai, 3
  %i.ay = and i32 %i.ax, 3
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = fmul float %i.bb, f0x3FB504F3
  %i.bd = fmul float %i.an, %i.bc                 ; 3 uses
  %i.be = fcmp oge float %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, float 5.000000e-01, float -5.000000e-01
  %i.bg = fcmp oge float %i.bd, -1.000000e+00
  %i.bh = select i1 %i.bg, float %i.bd, float -1.000000e+00 ; 2 uses
  %i.bi = fcmp ole float %i.bh, 1.000000e+00
  %i.bj = select i1 %i.bi, float %i.bh, float 1.000000e+00
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.c, float %i.bf)
  %i.bl = fptosi float %i.bk to i32
  %i.bm = or disjoint i32 %i.ai, %i.f
  %i.bn = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.aw, i64 1
  %i.bp = fmul <2 x float> %i.bo, splat (float f0x3FB504F3)
  %i.bq = insertelement <2 x float> poison, float %i.an, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.bp, %i.br           ; 3 uses
  %i.bt = fcmp oge <2 x float> %i.bs, zeroinitializer
  %i.bu = select <2 x i1> %i.bt, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.bv = fcmp oge <2 x float> %i.bs, splat (float -1.000000e+00)
  %i.bw = select <2 x i1> %i.bv, <2 x float> %i.bs, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.bx = fcmp ole <2 x float> %i.bw, splat (float 1.000000e+00)
  %i.by = select <2 x i1> %i.bx, <2 x float> %i.bw, <2 x float> splat (float 1.000000e+00)
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.h, <2 x float> %i.bu)
  %i.ca = insertelement <4 x i32> poison, i32 %i.bl, i64 2
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bm, i64 3
  %i.cc = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cd = fptosi <4 x float> %i.cc to <4 x i32>
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> %i.cb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cf = trunc <4 x i32> %i.ce to <4 x i16>
  store <4 x i16> %i.cf, ptr %i.k, align 2, !tbaa !14
  %i.cg = add nuw i64 %.045, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  %.085117.us.us = phi i64 [ %i.cm, %._crit_edge116.us.us ], [ 0, %.lr.ph112.us.us.preheader.preheader ] ; 2 uses
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
  %.0113.us.us = phi i64 [ %i.cl, %scalar.ph220 ], [ %.0113.us.us.ph, %scalar.ph220.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.0113.us.us
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !12 ; 2 uses
  %i.ce = fcmp oge float %i.cd, 0.000000e+00
  %i.cf = select i1 %i.ce, float 5.000000e-01, float -5.000000e-01
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.bj, float %i.cf)
  %i.ch = fptosi float %i.cg to i32
  %i.ci = and i32 %i.ch, 16777215
  %i.cj = or disjoint i32 %i.ci, %i.bk
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.0113.us.us
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !41
  %i.cl = add nuw nsw i64 %.0113.us.us, 1         ; 2 uses
  %exitcond136.not = icmp eq i64 %i.cl, %i.b
  br i1 %exitcond136.not, label %._crit_edge116.us.us, label %scalar.ph220, !llvm.loop !33

._crit_edge116.us.us:                             ; preds = %scalar.ph220, %middle.block233
  %i.cm = add nuw i64 %.085117.us.us, 1           ; 2 uses
  %exitcond137.not = icmp eq i64 %i.cm, %1
  br i1 %exitcond137.not, label %._crit_edge120, label %.lr.ph112.us.us.preheader, !llvm.loop !34

._crit_edge120:                                   ; preds = %._crit_edge116, %._crit_edge116.us.us, %.lr.ph119.split.us, %.loopexit98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

.lr.ph119.split:                                  ; preds = %.lr.ph119.split.preheader, %._crit_edge116
  %.085117 = phi i64 [ %i.fp, %._crit_edge116 ], [ 0, %.lr.ph119.split.preheader ] ; 2 uses
  %i.cn = mul i64 %.085117, %i.b                  ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cn ; 6 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cn ; 2 uses
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
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index213 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load214 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !12
  %wide.load215 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !12
  %i.cs = lshr <4 x i32> %wide.load214, splat (i32 23)
  %i.ct = lshr <4 x i32> %wide.load215, splat (i32 23)
  %i.cu = and <4 x i32> %i.cs, splat (i32 255)
  %i.cv = and <4 x i32> %i.ct, splat (i32 255)
  %i.cw = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.cu, <4 x i32> splat (i32 126))
  %i.cx = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.cv, <4 x i32> splat (i32 126))
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index213 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <4 x i32> %i.cw, ptr %i.cy, align 16, !tbaa !41
  store <4 x i32> %i.cx, ptr %i.cz, align 16, !tbaa !41
  %index.next216 = add nuw i64 %index213, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.da, label %middle.block217, label %vector.body212, !llvm.loop !35

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
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index187 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load188 = load <4 x float>, ptr %i.db, align 4, !tbaa !12 ; 5 uses
  %wide.load189 = load <4 x float>, ptr %6, align 4, !tbaa !12 ; 5 uses
  %7 = fcmp une <4 x float> %wide.load188, zeroinitializer ; 4 uses
  %i.dc = fcmp une <4 x float> %wide.load189, zeroinitializer ; 4 uses
  %i.dd = extractelement <4 x i1> %7, i64 0
  br i1 %i.dd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body186
  %bc = bitcast <4 x float> %wide.load188 to <4 x i32>
  %8 = extractelement <4 x i32> %bc, i64 0
  %9 = lshr i32 %8, 23
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 26)
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %13 = add nsw i32 %11, -126
  store i32 %13, ptr %12, align 16, !tbaa !41
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body186
  %14 = extractelement <4 x i1> %7, i64 1
  br i1 %14, label %pred.store.if190, label %pred.store.continue191

pred.store.if190:                                 ; preds = %pred.store.continue
  %bc249 = bitcast <4 x float> %wide.load188 to <4 x i32>
  %15 = extractelement <4 x i32> %bc249, i64 1
  %16 = lshr i32 %15, 23
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 26)
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %21 = add nsw i32 %18, -126
  store i32 %21, ptr %20, align 4, !tbaa !41
  br label %pred.store.continue191

pred.store.continue191:                           ; preds = %pred.store.if190, %pred.store.continue
  %22 = extractelement <4 x i1> %7, i64 2
  br i1 %22, label %pred.store.if192, label %pred.store.continue193

pred.store.if192:                                 ; preds = %pred.store.continue191
  %bc250 = bitcast <4 x float> %wide.load188 to <4 x i32>
  %23 = extractelement <4 x i32> %bc250, i64 2
  %24 = lshr i32 %23, 23
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 26)
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %29 = add nsw i32 %26, -126
  store i32 %29, ptr %28, align 8, !tbaa !41
  br label %pred.store.continue193

pred.store.continue193:                           ; preds = %pred.store.if192, %pred.store.continue191
  %30 = extractelement <4 x i1> %7, i64 3
  br i1 %30, label %pred.store.if194, label %pred.store.continue195

pred.store.if194:                                 ; preds = %pred.store.continue193
  %bc251 = bitcast <4 x float> %wide.load188 to <4 x i32>
  %31 = extractelement <4 x i32> %bc251, i64 3
  %32 = lshr i32 %31, 23
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 26)
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 12
  %37 = add nsw i32 %34, -126
  store i32 %37, ptr %36, align 4, !tbaa !41
  br label %pred.store.continue195

pred.store.continue195:                           ; preds = %pred.store.if194, %pred.store.continue193
  %38 = extractelement <4 x i1> %i.dc, i64 0
  br i1 %38, label %pred.store.if196, label %pred.store.continue197

pred.store.if196:                                 ; preds = %pred.store.continue195
  %bc252 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.de = extractelement <4 x i32> %bc252, i64 0
  %i.df = lshr i32 %i.de, 23
  %i.dg = and i32 %i.df, 255
  %i.dh = tail call i32 @llvm.umax.i32(i32 %i.dg, i32 26)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %39 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dj = add nsw i32 %i.dh, -126
  store i32 %i.dj, ptr %39, align 16, !tbaa !41
  br label %pred.store.continue197

pred.store.continue197:                           ; preds = %pred.store.if196, %pred.store.continue195
  %i.dk = extractelement <4 x i1> %i.dc, i64 1
  br i1 %i.dk, label %pred.store.if198, label %pred.store.continue199

pred.store.if198:                                 ; preds = %pred.store.continue197
  %bc253 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.dl = extractelement <4 x i32> %bc253, i64 1
  %i.dm = lshr i32 %i.dl, 23
  %i.dn = and i32 %i.dm, 255
  %i.do = tail call i32 @llvm.umax.i32(i32 %i.dn, i32 26)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dr = add nsw i32 %i.do, -126
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !41
  br label %pred.store.continue199

pred.store.continue199:                           ; preds = %pred.store.if198, %pred.store.continue197
  %i.ds = extractelement <4 x i1> %i.dc, i64 2
  br i1 %i.ds, label %pred.store.if200, label %pred.store.continue201

pred.store.if200:                                 ; preds = %pred.store.continue199
  %bc254 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.dt = extractelement <4 x i32> %bc254, i64 2
  %i.du = lshr i32 %i.dt, 23
  %i.dv = and i32 %i.du, 255
  %i.dw = tail call i32 @llvm.umax.i32(i32 %i.dv, i32 26)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = add nsw i32 %i.dw, -126
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !41
  br label %pred.store.continue201

pred.store.continue201:                           ; preds = %pred.store.if200, %pred.store.continue199
  %i.ea = extractelement <4 x i1> %i.dc, i64 3
  br i1 %i.ea, label %pred.store.if202, label %pred.store.continue203

pred.store.if202:                                 ; preds = %pred.store.continue201
  %bc255 = bitcast <4 x float> %wide.load189 to <4 x i32>
  %i.eb = extractelement <4 x i32> %bc255, i64 3
  %i.ec = lshr i32 %i.eb, 23
  %i.ed = and i32 %i.ec, 255
  %i.ee = tail call i32 @llvm.umax.i32(i32 %i.ed, i32 26)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index187
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 28
  %i.eh = add nsw i32 %i.ee, -126
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !41
  br label %pred.store.continue203

pred.store.continue203:                           ; preds = %pred.store.if202, %pred.store.continue201
  %index.next204 = add nuw i64 %index187, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next204, %n.vec185
  br i1 %i.ei, label %middle.block205, label %vector.body186, !llvm.loop !36

middle.block205:                                  ; preds = %pred.store.continue203
  br i1 %cmp.n206, label %.lr.ph115.preheader, label %.lr.ph109.preheader261

.lr.ph109.preheader261:                           ; preds = %.lr.ph109.preheader, %middle.block205
  %.081108.ph = phi i64 [ 0, %.lr.ph109.preheader ], [ %n.vec185, %middle.block205 ]
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader261, %bb.c
  %.081108 = phi i64 [ %i.es, %bb.c ], [ %.081108.ph, %.lr.ph109.preheader261 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.081108
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !12 ; 2 uses
  %i.el = fcmp une float %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph109
  %i.em = bitcast float %i.ek to i32
  %i.en = lshr i32 %i.em, 23
  %i.eo = and i32 %i.en, 255
  %i.ep = tail call i32 @llvm.umax.i32(i32 %i.eo, i32 26)
  %i.eq = add nsw i32 %i.ep, -126
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.081108
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph109
  %i.es = add nuw nsw i64 %.081108, 1             ; 2 uses
  %exitcond132.not = icmp eq i64 %i.es, %i.b
  br i1 %exitcond132.not, label %.lr.ph115.preheader, label %.lr.ph109, !llvm.loop !37

.lr.ph107:                                        ; preds = %.lr.ph107.preheader262, %.lr.ph107
  %.080106 = phi i64 [ %i.ez, %.lr.ph107 ], [ %.080106.ph, %.lr.ph107.preheader262 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.080106
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !12
  %i.ev = lshr i32 %i.eu, 23
  %i.ew = and i32 %i.ev, 255
  %i.ex = tail call i32 @llvm.usub.sat.i32(i32 %i.ew, i32 126)
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.080106
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !41
  %i.ez = add nuw nsw i64 %.080106, 1             ; 2 uses
  %exitcond131.not = icmp eq i64 %i.ez, %i.b
  br i1 %exitcond131.not, label %.lr.ph115.preheader, label %.lr.ph107, !llvm.loop !38

.loopexit94:                                      ; preds = %.lr.ph119.split
  br i1 %.not, label %._crit_edge116, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %.lr.ph107, %bb.c, %middle.block217, %middle.block205, %.loopexit94
  br i1 %min.iters.check169, label %.lr.ph115.preheader260, label %vector.body174

vector.body174:                                   ; preds = %.lr.ph115.preheader, %vector.body174
  %index175 = phi i64 [ %index.next178, %vector.body174 ], [ 0, %.lr.ph115.preheader ] ; 4 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index175
  %wide.load176 = load <4 x i32>, ptr %i.fa, align 16, !tbaa !41
  %i.fb = add <4 x i32> %broadcast.splat173, %wide.load176 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index175
  %wide.load177 = load <4 x float>, ptr %i.fc, align 4, !tbaa !12 ; 2 uses
  %i.fd = shl <4 x i32> %i.fb, splat (i32 23)
  %i.fe = sub <4 x i32> splat (i32 1065353216), %i.fd
  %i.ff = bitcast <4 x i32> %i.fe to <4 x float>
  %i.fg = fcmp oge <4 x float> %wide.load177, zeroinitializer
  %i.fh = select <4 x i1> %i.fg, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load177, <4 x float> %i.ff, <4 x float> %i.fh)
  %i.fj = fptosi <4 x float> %i.fi to <4 x i32>
  %i.fk = and <4 x i32> %i.fj, splat (i32 16777215)
  %i.fl = shl <4 x i32> %i.fb, splat (i32 24)
  %i.fm = or disjoint <4 x i32> %i.fk, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index175
  store <4 x i32> %i.fm, ptr %i.fn, align 4, !tbaa !41
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.fo, label %middle.block179, label %vector.body174, !llvm.loop !39

middle.block179:                                  ; preds = %vector.body174
  br i1 %cmp.n180, label %._crit_edge116, label %.lr.ph115.preheader260

.lr.ph115.preheader260:                           ; preds = %.lr.ph115.preheader, %middle.block179
  %.0113.ph = phi i64 [ 0, %.lr.ph115.preheader ], [ %n.vec171, %middle.block179 ]
  br label %.lr.ph115

._crit_edge116:                                   ; preds = %.lr.ph115, %middle.block179, %.preheader93, %.preheader95, %.loopexit94
  %i.fp = add nuw i64 %.085117, 1                 ; 2 uses
  %exitcond134.not = icmp eq i64 %i.fp, %1
  br i1 %exitcond134.not, label %._crit_edge120, label %.lr.ph119.split, !llvm.loop !34

.lr.ph115:                                        ; preds = %.lr.ph115.preheader260, %.lr.ph115
  %.0113 = phi i64 [ %i.gg, %.lr.ph115 ], [ %.0113.ph, %.lr.ph115.preheader260 ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0113
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !41
  %i.fs = add i32 %.neg92, %i.fr                  ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0113
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !12 ; 2 uses
  %i.fv = shl i32 %i.fs, 23
  %i.fw = sub i32 1065353216, %i.fv
  %i.fx = bitcast i32 %i.fw to float
  %i.fy = fcmp oge float %i.fu, 0.000000e+00
  %i.fz = select i1 %i.fy, float 5.000000e-01, float -5.000000e-01
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fx, float %i.fz)
  %i.gb = fptosi float %i.ga to i32
  %i.gc = and i32 %i.gb, 16777215
  %i.gd = shl i32 %i.fs, 24
  %i.ge = or disjoint i32 %i.gc, %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.0113
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !41
  %i.gg = add nuw nsw i64 %.0113, 1               ; 2 uses
  %exitcond133.not = icmp eq i64 %i.gg, %i.b
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

end_hunk_0
