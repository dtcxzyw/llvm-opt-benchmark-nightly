Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri:bb.a
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = extractelement <4 x float> %i.fh, i64 0 ; 2 uses
  %i.fm = extractelement <4 x float> %i.fh, i64 1 ; 2 uses
  %i.fn = extractelement <4 x float> %i.fh, i64 2
  tail call void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fl, float noundef %i.fm, float noundef %i.fn, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.fo = load ptr, ptr %0, align 8, !tbaa !14
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = extractelement <4 x float> %i.fh, i64 3
  tail call void %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fl, float noundef %i.fm, float noundef %i.fr, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre75.i = load ptr, ptr %i.cp, align 8, !tbaa !101
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %.pre75.i, i64 %i.da
  %.pre77.i = load i8, ptr %.phi.trans.insert76.i, align 1, !tbaa !36
  %.pre81.i = zext i8 %.pre77.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi82.i = phi i32 [ %.pre81.i, %bb.g ], [ %.pre-phi80.i, %bb.f ]
  %i.fs = and i32 %.pre-phi82.i, 128
  %.not.3.i = icmp eq i32 %i.fs, 0
  br i1 %.not.3.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ft = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.fu = add i32 %i.ft, 1
  %i.fv = sitofp i32 %i.fu to float
  %i.fw = sitofp i32 %i.ft to float
  %i.fx = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fy = shufflevector <3 x float> %i.fx, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.fz = insertelement <4 x float> %i.cw, float %i.fv, i64 0
  %i.ga = insertelement <4 x float> %i.fz, float %i.dh, i64 1
  %i.gb = insertelement <4 x float> %i.ga, float %i.fw, i64 3
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.cg, <4 x float> %i.fy) ; 4 uses
  %i.gd = load ptr, ptr %0, align 8, !tbaa !14
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = extractelement <4 x float> %i.gc, i64 0
  %i.gh = extractelement <4 x float> %i.gc, i64 1 ; 2 uses
  %i.gi = extractelement <4 x float> %i.gc, i64 2 ; 2 uses
  tail call void %i.gf(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gg, float noundef %i.gh, float noundef %i.gi, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.gj = load ptr, ptr %0, align 8, !tbaa !14
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = extractelement <4 x float> %i.gc, i64 3
  tail call void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gm, float noundef %i.gh, float noundef %i.gi, i32 noundef -1) #6, !call_target !74, !inline_history !95
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cq
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit: ; preds = %._crit_edge.i, %._crit_edge110.split, %.preheader59.lr.ph.i
  %i.gn = load ptr, ptr %0, align 8, !tbaa !14
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.gp = load ptr, ptr %i.go, align 8
  tail call void %i.gp(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33, !inline_history !95
  ret void

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge110.split, label %.preheader

bb.j:                                             ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.gq = add nuw nsw i64 %indvars.iv, %i.by      ; 2 uses
  %i.gr = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !36
  %i.gu = zext i8 %i.gt to i32
  %i.gv = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gq
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.gx, label %bb.l [
    i8 63, label %bb.m
    i8 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.gy = zext i8 %i.gx to i32
  %i.gz = load ptr, ptr %0, align 8, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = tail call noundef i32 %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.gy) #6, !call_target !56 ; 4 uses
  %i.hd = shl i32 %i.hc, 5
  %i.he = lshr i32 %i.hc, 3
  %i.hf = lshr i32 %i.hc, 11
  %i.hg = lshr i32 %i.hc, 19
  %i.hh = insertelement <4 x i32> poison, i32 %i.hd, i64 0
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 1
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 2
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.hg, i64 3
  %i.hl = and <4 x i32> %i.hk, splat (i32 8160)
  %i.hm = add nuw nsw <4 x i32> %i.hl, %i.bw
  %i.hn = trunc <4 x i32> %i.hm to <4 x i16>
  %i.ho = udiv <4 x i16> %i.hn, splat (i16 255)
  %i.hp = zext nneg <4 x i16> %i.ho to <4 x i32>
  %i.hq = shl nuw <4 x i32> %i.hp, <i32 0, i32 8, i32 16, i32 24>
  %i.hr = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.hq)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.0 = phi i32 [ %i.hr, %bb.l ], [ %i.bm, %bb.k ], [ %i.bt, %bb.j ] ; 4 uses
  %i.hs = load float, ptr %1, align 8, !tbaa !35
  %i.ht = trunc nuw nsw i64 %indvars.iv to i32
  %i.hu = uitofp nneg i32 %i.ht to float
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.b, float %i.hs) ; 3 uses
  %i.hw = add nuw nsw i32 %i.gu, 1
  %i.hx = uitofp nneg i32 %i.hw to float
  %i.hy = load <2 x float>, ptr %i.m, align 4, !tbaa !35
  %i.hz = insertelement <2 x float> %i.cb, float %i.hx, i64 0
  %i.ia = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.d, <2 x float> %i.hy) ; 2 uses
  %i.ib = load ptr, ptr %0, align 8, !tbaa !14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = extractelement <2 x float> %i.ia, i64 0 ; 4 uses
  %i.if = extractelement <2 x float> %i.ia, i64 1 ; 3 uses
  tail call void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hv, float noundef %i.ie, float noundef %i.if, i32 noundef %.0) #6, !call_target !74
  %i.ig = fadd float %i.b, %i.if                  ; 2 uses
  %i.ih = load ptr, ptr %0, align 8, !tbaa !14
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ij = load ptr, ptr %i.ii, align 8
  tail call void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.hv, float noundef %i.ie, float noundef %i.ig, i32 noundef %.0) #6, !call_target !74
  %i.ik = fadd float %i.b, %i.hv                  ; 2 uses
  %i.il = load ptr, ptr %0, align 8, !tbaa !14
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = load ptr, ptr %i.im, align 8
  tail call void %i.in(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ik, float noundef %i.ie, float noundef %i.ig, i32 noundef %.0) #6, !call_target !74
  %i.io = load ptr, ptr %0, align 8, !tbaa !14
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8
  tail call void %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ik, float noundef %i.ie, float noundef %i.if, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %bb.j
}

declare void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @_Z28duDebugDrawHeightfieldLayersP11duDebugDrawRK21rcHeightfieldLayerSet(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i32 noundef %i.f)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !105
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z28duDebugDrawRegionConnectionsP11duDebugDrawRK12rcContourSetf(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 8              ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !35 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = load ptr, ptr %0, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph95, label %bb.c

.lr.ph95:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.m = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  br label %bb.d

._crit_edge96:                                    ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.ci, ptr %i.n, align 8, !tbaa !35
  store <2 x float> %i.ck, ptr %i.a, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge96, %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.r = load ptr, ptr %0, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 7.000000e+00) #6, !call_target !24
  %i.u = load i32, ptr %i.h, align 8, !tbaa !78
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.c
  %i.w = fmul float %2, 2.550000e+02
  %i.x = fptoui float %i.w to i8
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = extractelement <2 x float> %i.d, i64 1
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph95, %._crit_edge
  %i.ad = phi i32 [ %i.i, %.lr.ph95 ], [ %i.cj, %._crit_edge ] ; 2 uses
  %indvars.iv118 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next119, %._crit_edge ] ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %indvars.iv118 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !82 ; 8 uses
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ah to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ak = icmp eq i32 %i.ah, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %i.al = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bd, %bb.e ]
  %i.am = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.az, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i ; 2 uses
  %i.ao = load <2 x i32>, ptr %i.an, align 4, !tbaa !37
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = fadd <2 x float> %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.at = sitofp i32 %i.as to float
  %i.au = fadd float %i.al, %i.at
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load <2 x i32>, ptr %i.aw, align 4, !tbaa !37
  %i.ay = sitofp <2 x i32> %i.ax to <2 x float>
  %i.az = fadd <2 x float> %i.aq, %i.ay           ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !37
  %i.bc = sitofp i32 %i.bb to float
  %i.bd = fadd float %i.au, %i.bc                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, label %bb.e

_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bd, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %.epil.init166 = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.az, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %lcmp.mod169 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.epil ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !37
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = fadd <2 x float> %.epil.init166, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !37
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = fadd float %.epil.init, %i.bk
  br label %_ZL16getContourCenterPK9rcContourPKfffPf.exit

_ZL16getContourCenterPK9rcContourPKfffPf.exit:    ; preds = %.epil.preheader, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, %.preheader.i
  %i.bm = phi float [ 0.000000e+00, %.preheader.i ], [ %i.bd, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ], [ %i.bl, %.epil.preheader ]
  %i.bn = phi <2 x float> [ zeroinitializer, %.preheader.i ], [ %i.az, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ], [ %i.bh, %.epil.preheader ]
  %i.bo = sitofp i32 %i.ah to float
  %i.bp = fdiv nnan float 1.000000e+00, %i.bo
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x float> %i.d, %i.br            ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bn
  %i.bu = extractelement <2 x float> %i.bs, i64 0
  %i.bv = fmul float %i.bu, %i.bm
  %i.bw = load float, ptr %i.b, align 4, !tbaa !35
  %i.bx = load float, ptr %i.k, align 8, !tbaa !35
  %i.by = tail call float @llvm.fmuladd.f32(float %i.m, float 4.000000e+00, float %i.bx)
  %i.bz = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.by, i64 1
  %i.cb = fadd <2 x float> %i.bt, %i.ca           ; 4 uses
  %i.cc = load float, ptr %i.l, align 4, !tbaa !35
  %i.cd = fadd float %i.bv, %i.cc                 ; 3 uses
  %i.ce = icmp sgt i32 %i.ah, 0
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.cg = extractelement <2 x float> %i.cb, i64 0
  %i.ch = extractelement <2 x float> %i.cb, i64 1
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit.thread
  %.pre124 = load i32, ptr %i.h, align 8, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit, %_ZL16getContourCenterPK9rcContourPKfffPf.exit
  %i.ci = phi float [ %i.cd, %._crit_edge.loopexit ], [ %i.cd, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ 0.000000e+00, %bb.d ]
  %i.cj = phi i32 [ %.pre124, %._crit_edge.loopexit ], [ %i.ad, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ck = phi <2 x float> [ %i.cb, %._crit_edge.loopexit ], [ %i.cb, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ zeroinitializer, %bb.d ]
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %i.cl = sext i32 %i.cj to i64
  %i.cm = icmp slt i64 %indvars.iv.next119, %i.cl
  br i1 %i.cm, label %bb.d, label %._crit_edge96

bb.f:                                             ; preds = %.lr.ph, %_ZL18findContourFromSetRK12rcContourSett.exit.thread
  %i.cn = phi i32 [ %i.ah, %.lr.ph ], [ %i.fe, %_ZL18findContourFromSetRK12rcContourSett.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL18findContourFromSetRK12rcContourSett.exit.thread ] ; 2 uses
  %i.co = load ptr, ptr %i.af, align 8, !tbaa !83
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !37 ; 3 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = and i32 %i.cr, 65535
  %i.cu = load i16, ptr %i.cf, align 4, !tbaa !84
  %i.cv = zext i16 %i.cu to i32
  %i.cw = icmp samesign ult i32 %i.ct, %i.cv
  br i1 %i.cw, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cx = trunc i32 %i.cr to i16
  %.val = load ptr, ptr %1, align 8
  %.val53 = load i32, ptr %i.h, align 8           ; 2 uses
  %i.cy = icmp sgt i32 %.val53, 0
  br i1 %i.cy, label %.lr.ph.preheader.i, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i55 = zext nneg i32 %.val53 to i64
  br label %.lr.ph.i56

bb.i:                                             ; preds = %.lr.ph.i56
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next.i58, %wide.trip.count.i55
  br i1 %exitcond.not.i59, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i58, %bb.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %indvars.iv.i57 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.db = load i16, ptr %i.da, align 4, !tbaa !84
  %i.dc = icmp eq i16 %i.db, %i.cx
  br i1 %i.dc, label %_ZL18findContourFromSetRK12rcContourSett.exit, label %bb.i

_ZL18findContourFromSetRK12rcContourSett.exit:    ; preds = %.lr.ph.i56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !82 ; 6 uses
  %.not.i60 = icmp eq i32 %i.de, 0
  br i1 %.not.i60, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit69, label %.preheader.i61

.preheader.i61:                                   ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.i63, label %._crit_edge.i62

.lr.ph.i63:                                       ; preds = %.preheader.i61
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i64 = zext nneg i32 %i.de to i64 ; 2 uses
  %xtraiter171 = and i64 %wide.trip.count.i64, 1
  %i.dh = icmp eq i32 %i.de, 1
  br i1 %i.dh, label %.epil.preheader170, label %.lr.ph.i63.new

end_hunk_0
