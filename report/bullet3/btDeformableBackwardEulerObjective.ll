Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBackwardEulerObjective?download=true
inline.NumInlined: 675
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN34btDeformableBackwardEulerObjective10applyForceER20btAlignedObjectArrayI9btVector3Eb:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 212
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !68 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 228
  %i.am = load float, ptr %i.al, align 4, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 236
  %i.ao = load float, ptr %i.an, align 4, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !68
  %i.ar = fmul float %i.af, %i.aq
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ad, float %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 244
  %i.au = load float, ptr %i.at, align 4, !tbaa !68
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.aj, float %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.ax = load <2 x float>, ptr %i.z, align 4, !tbaa !68 ; 2 uses
  %i.ay = load <2 x float>, ptr %i.ak, align 4, !tbaa !68 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bc = fmul <2 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.be = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.bf, <2 x float> %i.bc)
  %i.bh = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.am, i64 1
  %i.bj = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bg)
  %i.bm = load <2 x float>, ptr %i.aw, align 8, !tbaa !68
  %i.bn = fadd <2 x float> %i.bl, %i.bm
  store <2 x float> %i.bn, ptr %i.aw, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !68
  %i.bq = fadd float %i.av, %i.bp
  store float %i.bq, ptr %i.bo, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2.us = phi i64 [ %i.aa, %bb.c ], [ %.147.us, %bb.b ] ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.loopexit42.us, label %bb.b, !llvm.loop !276

.loopexit42.us:                                   ; preds = %bb.d, %.preheader41.us, %_ZNK17btCollisionObject8isActiveEv.exit.us
  %.5.us = phi i64 [ %i.t, %_ZNK17btCollisionObject8isActiveEv.exit.us ], [ %.03751.us, %.preheader41.us ], [ %.2.us, %bb.d ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count72
  br i1 %exitcond73.not, label %._crit_edge, label %.lr.ph53.split.us, !llvm.loop !277

.lr.ph49.us:                                      ; preds = %.preheader41.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 944
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !242
  %wide.trip.count67 = zext nneg i32 %i.r to i64
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit44, %.loopexit42.us, %bb.a
  br i1 %2, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph55, label %.loopexit

.lr.ph55:                                         ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

.lr.ph53.split:                                   ; preds = %.lr.ph53, %.loopexit44
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %.loopexit44 ], [ 0, %.lr.ph53 ] ; 2 uses
  %.03751 = phi i64 [ %.5, %.loopexit44 ], [ 0, %.lr.ph53 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv59
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !235 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !268
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 932
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !237 ; 3 uses
  switch i32 %i.ca, label %.preheader43 [
    i32 6, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 2, label %_ZNK17btCollisionObject8isActiveEv.exit
    i32 5, label %_ZNK17btCollisionObject8isActiveEv.exit
  ]

_ZNK17btCollisionObject8isActiveEv.exit:          ; preds = %.lr.ph53.split, %.lr.ph53.split, %.lr.ph53.split
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add i64 %.03751, %i.cd
  br label %.loopexit44

.preheader43:                                     ; preds = %.lr.ph53.split
  %i.cf = icmp sgt i32 %i.cc, 0
  br i1 %i.cf, label %.lr.ph, label %.loopexit44

.lr.ph:                                           ; preds = %.preheader43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 944
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !242
  %wide.trip.count = zext nneg i32 %i.cc to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.345 = phi i64 [ %.03751, %.lr.ph ], [ %i.cn, %bb.e ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [256 x i8], ptr %i.ch, i64 %indvars.iv ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !243 ; 2 uses
  %i.cl = fcmp oeq float %i.ck, 0.000000e+00
  %i.cm = select i1 %i.cl, float 0.000000e+00, float %i.ck ; 2 uses
  %i.cn = add i64 %.345, 1                        ; 2 uses
  %sext = shl i64 %.345, 32
  %i.co = ashr exact i64 %sext, 28
  %i.cp = getelementptr inbounds i8, ptr %i.l, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !68
  %i.cs = fmul float %i.cm, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.cp, align 4, !tbaa !68
  %i.cv = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = fmul <2 x float> %i.cu, %i.cw
  %i.cy = load <2 x float>, ptr %i.ct, align 8, !tbaa !68
  %i.cz = fadd <2 x float> %i.cx, %i.cy
  store <2 x float> %i.cz, ptr %i.ct, align 8, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  %i.db = load float, ptr %i.da, align 8, !tbaa !68
  %i.dc = fadd float %i.cs, %i.db
  store float %i.dc, ptr %i.da, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit44, label %bb.e, !llvm.loop !278

.loopexit44:                                      ; preds = %bb.e, %.preheader43, %_ZNK17btCollisionObject8isActiveEv.exit
  %.5 = phi i64 [ %i.ce, %_ZNK17btCollisionObject8isActiveEv.exit ], [ %.03751, %.preheader43 ], [ %i.cn, %bb.e ]
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count72
  br i1 %exitcond63.not, label %._crit_edge, label %.lr.ph53.split, !llvm.loop !277

bb.f:                                             ; preds = %.lr.ph55, %bb.f
  %indvars.iv74 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next75, %bb.f ] ; 2 uses
  %i.dd = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %indvars.iv74
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.df = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next75, %i.dg
  br i1 %i.dh, label %bb.f, label %.loopexit, !llvm.loop !279

.loopexit:                                        ; preds = %bb.f, %.preheader, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableBackwardEulerObjective15computeResidualEfR20btAlignedObjectArrayI9btVector3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, float noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.7)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !125
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.b:                                             ; preds = %.invoke, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.g = load i8, ptr %i.d, align 8, !tbaa !200, !range !34, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !231  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %.invoke, label %4

4:                                                ; preds = %bb.e
  br label %.invoke

.invoke:                                          ; preds = %bb.c, %bb.e, %4
  %.sink14 = phi i64 [ 56, %4 ], [ 16, %bb.e ], [ 16, %bb.c ]
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !231  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink14
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %i.s, float noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %.invoke
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !125
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %._crit_edge, !llvm.loop !280
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local noundef float @_ZNK34btDeformableBackwardEulerObjective11computeNormERK20btAlignedObjectArrayI9btVector3E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(504) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.067.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !68 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !68 ; 2 uses
  %i.k = fmul float %i.j, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !68 ; 2 uses
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.l)
  %i.p = fadd float %.067.epil.init, %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.06.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.al, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %.epil.preheader ]
  %i.q = tail call noundef float @sqrtf(float noundef %.06.lcssa) #22
  ret float %i.q

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.067 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.al, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !68 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !68 ; 2 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !68 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.w)
  %i.aa = fadd float %.067, %i.z
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !68 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !68 ; 2 uses
  %i.ag = fmul float %i.af, %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !68 ; 2 uses
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ah)
  %i.al = fadd float %i.aa, %i.ak                 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !281
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN34btDeformableBackwardEulerObjective11totalEnergyEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, float noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !125
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.06.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.n, %bb.b ]
  ret float %.06.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.067 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.n, %bb.b ]
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !231  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef double %i.j(ptr noundef nonnull align 8 dereferenceable(48) %i.g, float noundef %1)
  %i.l = fpext float %.067 to double
  %i.m = fadd double %i.k, %i.l
  %i.n = fptrunc double %i.m to float             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !125
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !282
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableBackwardEulerObjective18applyExplicitForceER20btAlignedObjectArrayI9btVector3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225, !nonnull !46, !align !226 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !227
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %i.v, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.h = load i8, ptr %i.g, align 8, !tbaa !200, !range !34, !noundef !46
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !125
  %i.l = icmp sgt i32 %i.k, 0                     ; 2 uses
  br i1 %i.i, label %.preheader55, label %.preheader56

.preheader56:                                     ; preds = %._crit_edge
  br i1 %i.l, label %.lr.ph61, label %.loopexit

.lr.ph61:                                         ; preds = %.preheader56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

.preheader55:                                     ; preds = %._crit_edge
  br i1 %i.l, label %.lr.ph66, label %.preheader

.lr.ph66:                                         ; preds = %.preheader55
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.q = phi ptr [ %i.v, %.lr.ph ], [ %i.b, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !235
  tail call void @_ZN10btSoftBody18advanceDeformationEv(ptr noundef nonnull align 8 dereferenceable(2064) %i.u)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !225, !nonnull !46, !align !226 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !227
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !283

.preheader54:                                     ; preds = %bb.e
  %i.aa = icmp sgt i32 %i.aw, 0
  br i1 %i.aa, label %.lr.ph70, label %.preheader

.lr.ph70:                                         ; preds = %.preheader54
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph66, %bb.e
  %indvars.iv86 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next87, %bb.e ] ; 3 uses
  %.sroa.552.064 = phi float [ undef, %.lr.ph66 ], [ %.sroa.552.1, %bb.e ]
  %i.ad = phi <2 x float> [ undef, %.lr.ph66 ], [ %i.av, %bb.e ]
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv86
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !231 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
end_hunk_0
