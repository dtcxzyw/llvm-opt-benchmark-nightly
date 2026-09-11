Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z27duDebugDrawHeightfieldLayerP11duDebugDrawRK18rcHeightfieldLayeri:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi80.i = phi i32 [ %.pre79.i, %bb.e ], [ %.pre-phi.i, %bb.d ] ; 2 uses
  %i.fg = and i32 %.pre-phi80.i, 64
  %.not.2.i = icmp eq i32 %i.fg, 0
  br i1 %.not.2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fh = trunc i64 %indvars.iv.i to i32
  %i.fi = add i32 %i.fh, 1
  %i.fj = sitofp i32 %i.fi to float
  %i.fk = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.fl = shufflevector <3 x float> %i.fk, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.fm = insertelement <4 x float> %i.dg, float %i.fj, i64 0
  %i.fn = insertelement <4 x float> %i.fm, float %i.do, i64 1
  %i.fo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.cn, <4 x float> %i.fl) ; 4 uses
  %i.fp = load ptr, ptr %0, align 8, !tbaa !14
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = extractelement <4 x float> %i.fo, i64 0 ; 2 uses
  %i.ft = extractelement <4 x float> %i.fo, i64 1 ; 2 uses
  %i.fu = extractelement <4 x float> %i.fo, i64 2
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fs, float noundef %i.ft, float noundef %i.fu, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.fv = load ptr, ptr %0, align 8, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = extractelement <4 x float> %i.fo, i64 3
  tail call void %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fs, float noundef %i.ft, float noundef %i.fy, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %.pre75.i = load ptr, ptr %i.cw, align 8, !tbaa !101
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %.pre75.i, i64 %i.dh
  %.pre77.i = load i8, ptr %.phi.trans.insert76.i, align 1, !tbaa !36
  %.pre81.i = zext i8 %.pre77.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi82.i = phi i32 [ %.pre81.i, %bb.g ], [ %.pre-phi80.i, %bb.f ]
  %i.fz = and i32 %.pre-phi82.i, 128
  %.not.3.i = icmp eq i32 %i.fz, 0
  br i1 %.not.3.i, label %.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ga = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.gb = add i32 %i.ga, 1
  %i.gc = sitofp i32 %i.gb to float
  %i.gd = sitofp i32 %i.ga to float
  %i.ge = load <3 x float>, ptr %1, align 8, !tbaa !35
  %i.gf = shufflevector <3 x float> %i.ge, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.gg = insertelement <4 x float> %i.dd, float %i.gc, i64 0
  %i.gh = insertelement <4 x float> %i.gg, float %i.do, i64 1
  %i.gi = insertelement <4 x float> %i.gh, float %i.gd, i64 3
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.cn, <4 x float> %i.gf) ; 4 uses
  %i.gk = load ptr, ptr %0, align 8, !tbaa !14
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 48
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = extractelement <4 x float> %i.gj, i64 0
  %i.go = extractelement <4 x float> %i.gj, i64 1 ; 2 uses
  %i.gp = extractelement <4 x float> %i.gj, i64 2 ; 2 uses
  tail call void %i.gm(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gn, float noundef %i.go, float noundef %i.gp, i32 noundef -1) #6, !call_target !74, !inline_history !95
  %i.gq = load ptr, ptr %0, align 8, !tbaa !14
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = extractelement <4 x float> %i.gj, i64 3
  tail call void %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gt, float noundef %i.go, float noundef %i.gp, i32 noundef -1) #6, !call_target !74, !inline_history !95
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cx
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.b

_ZL16drawLayerPortalsP11duDebugDrawPK18rcHeightfieldLayer.exit: ; preds = %._crit_edge.i, %._crit_edge110.split, %.preheader59.lr.ph.i
  %i.gu = load ptr, ptr %0, align 8, !tbaa !14
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 72
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33, !inline_history !95
  ret void

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %._crit_edge110.split, label %.preheader

bb.j:                                             ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.gx = add nuw nsw i64 %indvars.iv, %i.cf      ; 2 uses
  %i.gy = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gx
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !36
  %i.hb = zext i8 %i.ha to i32
  %i.hc = load ptr, ptr %i.ao, align 8, !tbaa !102
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gx
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.he, label %bb.l [
    i8 63, label %bb.m
    i8 0, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.hf = zext i8 %i.he to i32
  %i.hg = load ptr, ptr %0, align 8, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 80
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = tail call noundef i32 %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.hf) #6, !call_target !56 ; 4 uses
  %i.hk = lshr i32 %i.hj, 19
  %i.hl = lshr i32 %i.hj, 11
  %i.hm = lshr i32 %i.hj, 3
  %i.hn = shl i32 %i.hj, 5
  %i.ho = and i32 %i.hk, 8160
  %i.hp = and i32 %i.hl, 8160
  %i.hq = and i32 %i.hm, 8160
  %i.hr = and i32 %i.hn, 8160
  %i.hs = add nuw nsw i32 %i.ho, %i.cd
  %i.ht = add nuw nsw i32 %i.hp, %i.cc
  %i.hu = add nuw nsw i32 %i.hq, %i.cb
  %i.hv = add nuw nsw i32 %i.hr, %i.ca
  %.lhs.trunc90 = trunc i32 %i.hs to i16
  %.lhs.trunc88 = trunc i32 %i.ht to i16
  %.lhs.trunc86 = trunc i32 %i.hu to i16
  %.lhs.trunc = trunc i32 %i.hv to i16
  %i.hw = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.hx = insertelement <4 x i16> %i.hw, i16 %.lhs.trunc86, i64 1
  %i.hy = insertelement <4 x i16> %i.hx, i16 %.lhs.trunc88, i64 2
  %i.hz = insertelement <4 x i16> %i.hy, i16 %.lhs.trunc90, i64 3
  %i.ia = udiv <4 x i16> %i.hz, splat (i16 255)
  %i.ib = zext nneg <4 x i16> %i.ia to <4 x i32>
  %i.ic = shl nuw <4 x i32> %i.ib, <i32 0, i32 8, i32 16, i32 24>
  %i.id = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ic)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.0 = phi i32 [ %i.id, %bb.l ], [ %i.br, %bb.k ], [ %i.bw, %bb.j ] ; 4 uses
  %i.ie = load float, ptr %1, align 8, !tbaa !35
  %i.if = trunc nuw nsw i64 %indvars.iv to i32
  %i.ig = uitofp nneg i32 %i.if to float
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ig, float %i.b, float %i.ie) ; 3 uses
  %i.ii = add nuw nsw i32 %i.hb, 1
  %i.ij = uitofp nneg i32 %i.ii to float
  %i.ik = load <2 x float>, ptr %i.m, align 4, !tbaa !35
  %i.il = insertelement <2 x float> %i.ci, float %i.ij, i64 0
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.d, <2 x float> %i.ik) ; 2 uses
  %i.in = load ptr, ptr %0, align 8, !tbaa !14
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = extractelement <2 x float> %i.im, i64 0 ; 4 uses
  %i.ir = extractelement <2 x float> %i.im, i64 1 ; 3 uses
  tail call void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ih, float noundef %i.iq, float noundef %i.ir, i32 noundef %.0) #6, !call_target !74
  %i.is = fadd float %i.b, %i.ir                  ; 2 uses
  %i.it = load ptr, ptr %0, align 8, !tbaa !14
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8
  tail call void %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ih, float noundef %i.iq, float noundef %i.is, i32 noundef %.0) #6, !call_target !74
  %i.iw = fadd float %i.b, %i.ih                  ; 2 uses
  %i.ix = load ptr, ptr %0, align 8, !tbaa !14
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8
  tail call void %i.iz(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.iw, float noundef %i.iq, float noundef %i.is, i32 noundef %.0) #6, !call_target !74
  %i.ja = load ptr, ptr %0, align 8, !tbaa !14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8
  tail call void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.iw, float noundef %i.iq, float noundef %i.ir, i32 noundef %.0) #6, !call_target !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ce
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
  br i1 %.not, label %bb.l, label %bb.b

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
  br i1 %i.j, label %.lr.ph95, label %._crit_edge96.a

.lr.ph95:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.m = extractelement <2 x float> %i.d, i64 1   ; 2 uses
  br label %bb.c

._crit_edge96:                                    ; preds = %._crit_edge
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <2 x float> %5, ptr %i.a, align 8, !tbaa !35
  store float %4, ptr %3, align 8, !tbaa !35
  br label %._crit_edge96.a

._crit_edge96.a:                                  ; preds = %._crit_edge96, %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.q = load ptr, ptr %0, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 7.000000e+00) #6, !call_target !24
  %i.t = load i32, ptr %i.h, align 8, !tbaa !78
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %._crit_edge96.a
  %i.v = fmul float %2, 2.550000e+02
  %i.w = fptoui float %i.v to i8
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = extractelement <2 x float> %i.d, i64 1
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph95, %._crit_edge
  %i.ac = phi i32 [ %i.i, %.lr.ph95 ], [ %i.ch, %._crit_edge ] ; 2 uses
  %indvars.iv112 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next113, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv112 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !82 ; 8 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aj = icmp eq i32 %i.ag, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %i.ak = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bc, %bb.d ]
  %i.al = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.ay, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  %i.an = load <2 x i32>, ptr %i.am, align 4, !tbaa !37
  %i.ao = sitofp <2 x i32> %i.an to <2 x float>
  %i.ap = fadd <2 x float> %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !37
  %i.as = sitofp i32 %i.ar to float
  %i.at = fadd float %i.ak, %i.as
  %indvars.iv.next.i = shl i64 %indvars.iv.i, 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load <2 x i32>, ptr %i.av, align 4, !tbaa !37
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>
  %i.ay = fadd <2 x float> %i.ap, %i.ax           ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !37
  %i.bb = sitofp i32 %i.ba to float
  %i.bc = fadd float %i.at, %i.bb                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, label %bb.d

_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bc, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %.epil.init152 = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.ay, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ]
  %lcmp.mod155 = trunc i32 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod155)
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv.i.epil.init, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.epil ; 2 uses
  %i.be = load <2 x i32>, ptr %i.bd, align 4, !tbaa !37
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>
  %i.bg = fadd <2 x float> %.epil.init152, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !37
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fadd float %.epil.init, %i.bj
  br label %_ZL16getContourCenterPK9rcContourPKfffPf.exit

_ZL16getContourCenterPK9rcContourPKfffPf.exit:    ; preds = %.epil.preheader, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa, %.preheader.i
  %i.bl = phi float [ 0.000000e+00, %.preheader.i ], [ %i.bc, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ], [ %i.bk, %.epil.preheader ]
  %i.bm = phi <2 x float> [ zeroinitializer, %.preheader.i ], [ %i.ay, %_ZL16getContourCenterPK9rcContourPKfffPf.exit.loopexit.unr-lcssa ], [ %i.bg, %.epil.preheader ]
  %i.bn = sitofp i32 %i.ag to float
  %i.bo = fdiv nnan float 1.000000e+00, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.d, %i.bq            ; 2 uses
  %i.bs = fmul <2 x float> %i.br, %i.bm
  %i.bt = extractelement <2 x float> %i.br, i64 0
  %i.bu = fmul float %i.bt, %i.bl
  %i.bv = load float, ptr %i.b, align 4, !tbaa !35
  %i.bw = load float, ptr %i.k, align 8, !tbaa !35
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.m, float 4.000000e+00, float %i.bw)
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bx, i64 1
  %i.ca = fadd <2 x float> %i.bs, %i.bz           ; 4 uses
  %i.cb = load float, ptr %i.l, align 4, !tbaa !35
  %i.cc = fadd float %i.bu, %i.cb                 ; 3 uses
  %i.cd = icmp sgt i32 %i.ag, 0
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.cf = extractelement <2 x float> %i.ca, i64 0
  %i.cg = extractelement <2 x float> %i.ca, i64 1
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit.thread
  %.pre118 = load i32, ptr %i.h, align 8, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZL16getContourCenterPK9rcContourPKfffPf.exit
  %4 = phi float [ %i.cc, %._crit_edge.loopexit ], [ %i.cc, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ 0.000000e+00, %bb.c ]
  %i.ch = phi i32 [ %.pre118, %._crit_edge.loopexit ], [ %i.ac, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ %i.ac, %bb.c ] ; 2 uses
  %5 = phi <2 x float> [ %i.ca, %._crit_edge.loopexit ], [ %i.ca, %_ZL16getContourCenterPK9rcContourPKfffPf.exit ], [ zeroinitializer, %bb.c ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next113, %i.ci
  br i1 %i.cj, label %bb.c, label %._crit_edge96

bb.e:                                             ; preds = %.lr.ph, %_ZL18findContourFromSetRK12rcContourSett.exit.thread
  %i.ck = phi i32 [ %i.ag, %.lr.ph ], [ %i.fb, %_ZL18findContourFromSetRK12rcContourSett.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL18findContourFromSetRK12rcContourSett.exit.thread ] ; 2 uses
  %i.cl = load ptr, ptr %i.ae, align 8, !tbaa !83
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !37 ; 3 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = and i32 %i.co, 65535
  %i.cr = load i16, ptr %i.ce, align 4, !tbaa !84
  %i.cs = zext i16 %i.cr to i32
  %i.ct = icmp samesign ult i32 %i.cq, %i.cs
  br i1 %i.ct, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = trunc i32 %i.co to i16
  %.val = load ptr, ptr %1, align 8
  %.val53 = load i32, ptr %i.h, align 8           ; 2 uses
  %i.cv = icmp sgt i32 %.val53, 0
  br i1 %i.cv, label %.lr.ph.preheader.i, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i55 = zext nneg i32 %.val53 to i64
  br label %.lr.ph.i56

bb.h:                                             ; preds = %.lr.ph.i56
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next.i58, %wide.trip.count.i55
  br i1 %exitcond.not.i59, label %_ZL18findContourFromSetRK12rcContourSett.exit.thread, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i57 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i58, %bb.h ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %indvars.iv.i57 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 28
  %i.cy = load i16, ptr %i.cx, align 4, !tbaa !84
  %i.cz = icmp eq i16 %i.cy, %i.cu
  br i1 %i.cz, label %_ZL18findContourFromSetRK12rcContourSett.exit, label %bb.h

_ZL18findContourFromSetRK12rcContourSett.exit:    ; preds = %.lr.ph.i56
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !82 ; 6 uses
  %.not.i60 = icmp eq i32 %i.db, 0
  br i1 %.not.i60, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit69, label %.preheader.i61

.preheader.i61:                                   ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i63, label %._crit_edge.i62

.lr.ph.i63:                                       ; preds = %.preheader.i61
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i64 = zext nneg i32 %i.db to i64 ; 2 uses
  %xtraiter157 = and i64 %wide.trip.count.i64, 1
  %i.de = icmp eq i32 %i.db, 1
  br i1 %i.de, label %.epil.preheader156, label %.lr.ph.i63.new

.lr.ph.i63.new:                                   ; preds = %.lr.ph.i63
  %unroll_iter166 = and i64 %wide.trip.count.i64, 2147483646
  br label %bb.i

._crit_edge.i62.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod162.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod162.not, label %._crit_edge.i62, label %.epil.preheader156

.epil.preheader156:                               ; preds = %._crit_edge.i62.loopexit.unr-lcssa, %.lr.ph.i63
  %indvars.iv.i65.epil.init = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i67.1, %._crit_edge.i62.loopexit.unr-lcssa ]
  %.epil.init159 = phi float [ 0.000000e+00, %.lr.ph.i63 ], [ %i.ex, %._crit_edge.i62.loopexit.unr-lcssa ]
  %.epil.init161 = phi <2 x float> [ zeroinitializer, %.lr.ph.i63 ], [ %i.et, %._crit_edge.i62.loopexit.unr-lcssa ]
  %lcmp.mod165 = trunc i32 %i.db to i1
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %.idx.i66.epil = shl nuw nsw i64 %indvars.iv.i65.epil.init, 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i66.epil ; 2 uses
  %i.dg = load <2 x i32>, ptr %i.df, align 4, !tbaa !37
  %i.dh = sitofp <2 x i32> %i.dg to <2 x float>
  %i.di = fadd <2 x float> %.epil.init161, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !37
  %i.dl = sitofp i32 %i.dk to float
  %i.dm = fadd float %.epil.init159, %i.dl
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %.epil.preheader156, %._crit_edge.i62.loopexit.unr-lcssa, %.preheader.i61
  %i.dn = phi float [ 0.000000e+00, %.preheader.i61 ], [ %i.ex, %._crit_edge.i62.loopexit.unr-lcssa ], [ %i.dm, %.epil.preheader156 ]
  %i.do = phi <2 x float> [ zeroinitializer, %.preheader.i61 ], [ %i.et, %._crit_edge.i62.loopexit.unr-lcssa ], [ %i.di, %.epil.preheader156 ]
  %i.dp = sitofp i32 %i.db to float
  %i.dq = fdiv nnan float 1.000000e+00, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.d, %i.ds            ; 2 uses
  %i.du = fmul <2 x float> %i.dt, %i.do
  %i.dv = extractelement <2 x float> %i.dt, i64 0
  %i.dw = fmul float %i.dv, %i.dn
  %i.dx = load float, ptr %i.b, align 4, !tbaa !35
  %i.dy = load float, ptr %i.k, align 8, !tbaa !35
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.m, float 4.000000e+00, float %i.dy)
  %i.ea = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dz, i64 1
  %i.ec = fadd <2 x float> %i.du, %i.eb
  %i.ed = load float, ptr %i.l, align 4, !tbaa !35
  %i.ee = fadd float %i.dw, %i.ed
  br label %_ZL16getContourCenterPK9rcContourPKfffPf.exit69

bb.i:                                             ; preds = %bb.i, %.lr.ph.i63.new
  %indvars.iv.i65 = phi i64 [ 0, %.lr.ph.i63.new ], [ %indvars.iv.next.i67.1, %bb.i ] ; 3 uses
  %i.ef = phi float [ 0.000000e+00, %.lr.ph.i63.new ], [ %i.ex, %bb.i ]
  %i.eg = phi <2 x float> [ zeroinitializer, %.lr.ph.i63.new ], [ %i.et, %bb.i ]
  %niter167 = phi i64 [ 0, %.lr.ph.i63.new ], [ %niter167.next.1, %bb.i ]
  %.idx.i66 = shl nuw nsw i64 %indvars.iv.i65, 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx.i66 ; 2 uses
  %i.ei = load <2 x i32>, ptr %i.eh, align 4, !tbaa !37
  %i.ej = sitofp <2 x i32> %i.ei to <2 x float>
  %i.ek = fadd <2 x float> %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !37
  %i.en = sitofp i32 %i.em to float
  %i.eo = fadd float %i.ef, %i.en
  %indvars.iv.next.i67 = shl i64 %indvars.iv.i65, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.next.i67 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load <2 x i32>, ptr %i.eq, align 4, !tbaa !37
  %i.es = sitofp <2 x i32> %i.er to <2 x float>
  %i.et = fadd <2 x float> %i.ek, %i.es           ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !37
  %i.ew = sitofp i32 %i.ev to float
  %i.ex = fadd float %i.eo, %i.ew                 ; 3 uses
  %indvars.iv.next.i67.1 = add nuw nsw i64 %indvars.iv.i65, 2 ; 2 uses
  %niter167.next.1 = add i64 %niter167, 2         ; 2 uses
  %niter167.ncmp.1 = icmp eq i64 %niter167.next.1, %unroll_iter166
  br i1 %niter167.ncmp.1, label %._crit_edge.i62.loopexit.unr-lcssa, label %bb.i

_ZL16getContourCenterPK9rcContourPKfffPf.exit69:  ; preds = %_ZL18findContourFromSetRK12rcContourSett.exit, %._crit_edge.i62
  %.sroa.10.0 = phi float [ 0.000000e+00, %_ZL18findContourFromSetRK12rcContourSett.exit ], [ %i.ee, %._crit_edge.i62 ]
  %i.ey = phi <2 x float> [ zeroinitializer, %_ZL18findContourFromSetRK12rcContourSett.exit ], [ %i.ec, %._crit_edge.i62 ] ; 2 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0
  %i.fa = extractelement <2 x float> %i.ey, i64 1
  tail call void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef nonnull %0, float noundef %i.cf, float noundef %i.cg, float noundef %i.cc, float noundef %i.ez, float noundef %i.fa, float noundef %.sroa.10.0, float noundef 2.500000e-01, float noundef 6.000000e-01, float noundef 6.000000e-01, i32 noundef -1006632960) #6
  %.pre = load i32, ptr %i.af, align 8, !tbaa !82
  br label %_ZL18findContourFromSetRK12rcContourSett.exit.thread

_ZL18findContourFromSetRK12rcContourSett.exit.thread: ; preds = %bb.h, %bb.g, %_ZL16getContourCenterPK9rcContourPKfffPf.exit69, %bb.e, %bb.f
  %i.fb = phi i32 [ %i.ck, %bb.f ], [ %i.ck, %bb.g ], [ %.pre, %_ZL16getContourCenterPK9rcContourPKfffPf.exit69 ], [ %i.ck, %bb.e ], [ %i.ck, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %bb.e, label %._crit_edge.loopexit

._crit_edge100:                                   ; preds = %_ZL16getContourCenterPK9rcContourPKfffPf.exit79, %._crit_edge96.a
  %i.fe = load ptr, ptr %0, align 8, !tbaa !14
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph99, %_ZL16getContourCenterPK9rcContourPKfffPf.exit79
  %indvars.iv115 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next116, %_ZL16getContourCenterPK9rcContourPKfffPf.exit79 ] ; 2 uses
  %i.fh = load ptr, ptr %1, align 8, !tbaa !79
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %indvars.iv115 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 28
  %i.fk = load i16, ptr %i.fj, align 4, !tbaa !84
  %i.fl = zext i16 %i.fk to i32
  %i.fm = call noundef i32 @_Z10duIntToColii(i32 noundef %i.fl, i32 noundef %i.x) #6 ; 2 uses
  %i.fn = lshr i32 %i.fm, 1
  %i.fo = and i32 %i.fn, 8355711
  %i.fp = and i32 %i.fm, -16777216
  %i.fq = or disjoint i32 %i.fo, %i.fp
  store <2 x float> zeroinitializer, ptr %i.a, align 8, !tbaa !35
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !35
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !82 ; 6 uses
  %.not.i70 = icmp eq i32 %i.fs, 0
  br i1 %.not.i70, label %_ZL16getContourCenterPK9rcContourPKfffPf.exit79, label %.preheader.i71

.preheader.i71:                                   ; preds = %bb.j
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.i73, label %._crit_edge.i72

.lr.ph.i73:                                       ; preds = %.preheader.i71
  %i.fu = load ptr, ptr %i.fi, align 8, !tbaa !83 ; 3 uses
  %wide.trip.count.i74 = zext nneg i32 %i.fs to i64 ; 2 uses
  %xtraiter169 = and i64 %wide.trip.count.i74, 1
  %i.fv = icmp eq i32 %i.fs, 1
  br i1 %i.fv, label %.epil.preheader168, label %.lr.ph.i73.new

.lr.ph.i73.new:                                   ; preds = %.lr.ph.i73
  %unroll_iter178 = and i64 %wide.trip.count.i74, 2147483646
  br label %bb.k

._crit_edge.i72.loopexit.unr-lcssa:               ; preds = %bb.k
  %lcmp.mod174.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod174.not, label %._crit_edge.i72, label %.epil.preheader168

.epil.preheader168:                               ; preds = %._crit_edge.i72.loopexit.unr-lcssa, %.lr.ph.i73
  %indvars.iv.i75.epil.init = phi i64 [ 0, %.lr.ph.i73 ], [ %indvars.iv.next.i77.1, %._crit_edge.i72.loopexit.unr-lcssa ]
  %.epil.init171 = phi float [ 0.000000e+00, %.lr.ph.i73 ], [ %i.ho, %._crit_edge.i72.loopexit.unr-lcssa ]
end_hunk_0
