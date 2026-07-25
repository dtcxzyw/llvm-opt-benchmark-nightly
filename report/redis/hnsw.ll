inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_reconnect_nodes:bb.a
  %wide.load614 = load <4 x i8>, ptr %i.em, align 1, !tbaa !32
  %wide.load615 = load <4 x i8>, ptr %i.en, align 1, !tbaa !32
  %i.eo = sext <4 x i8> %wide.load614 to <4 x i32>
  %i.ep = sext <4 x i8> %wide.load615 to <4 x i32>
  %i.eq = mul nsw <4 x i32> %i.eo, %i.ek
  %i.er = mul nsw <4 x i32> %i.ep, %i.el
  %i.es = add <4 x i32> %i.eq, %vec.phi           ; 2 uses
  %i.et = add <4 x i32> %i.er, %vec.phi612        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.et, %i.es
  %i.ev = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.ed, %.lr.ph92.preheader.i ], [ %i.ef, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.ev, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i357:                                      ; preds = %.lr.ph.i357, %.lr.ph.preheader.i
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359, %.lr.ph.i357 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ho, %.lr.ph.i357 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gf, %.lr.ph.i357 ]
  %i.ew = or disjoint i64 %indvars.iv.i358, 7     ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i358
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !32
  %i.ez = sext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.i358
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !32
  %i.fc = sext i8 %i.fb to i32
  %i.fd = mul nsw i32 %i.fc, %i.ez
  %i.fe = or disjoint i64 %indvars.iv.i358, 1     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !32
  %i.fh = sext i8 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fe
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !32
  %i.fk = sext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.fk, %i.fh
  %i.fm = or disjoint i64 %indvars.iv.i358, 2     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !32
  %i.fp = sext i8 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fm
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !32
  %i.fs = sext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.fs, %i.fp
  %i.fu = or disjoint i64 %indvars.iv.i358, 3     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !32
  %i.fx = sext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.fu
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !32
  %i.ga = sext i8 %i.fz to i32
  %i.gb = mul nsw i32 %i.ga, %i.fx
  %i.gc = add i32 %i.fd, %.07285.i
  %i.gd = add i32 %i.gc, %i.fl
  %i.ge = add i32 %i.gd, %i.ft
  %i.gf = add i32 %i.ge, %i.gb                    ; 2 uses
  %i.gg = or disjoint i64 %indvars.iv.i358, 4     ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !32
  %i.gj = sext i8 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gg
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !32
  %i.gm = sext i8 %i.gl to i32
  %i.gn = mul nsw i32 %i.gm, %i.gj
  %i.go = or disjoint i64 %indvars.iv.i358, 5     ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !32
  %i.gr = sext i8 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.go
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !32
  %i.gu = sext i8 %i.gt to i32
  %i.gv = mul nsw i32 %i.gu, %i.gr
  %i.gw = or disjoint i64 %indvars.iv.i358, 6     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !32
  %i.gz = sext i8 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.gw
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !32
  %i.hc = sext i8 %i.hb to i32
  %i.hd = mul nsw i32 %i.hc, %i.gz
  %i.he = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ew
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !32
  %i.hg = sext i8 %i.hf to i32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ew
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !32
  %i.hj = sext i8 %i.hi to i32
  %i.hk = mul nsw i32 %i.hj, %i.hg
  %i.hl = add i32 %i.gn, %.07186.i
  %i.hm = add i32 %i.hl, %i.gv
  %i.hn = add i32 %i.hm, %i.hd
  %i.ho = add i32 %i.hn, %i.hk                    ; 2 uses
  %indvars.iv.next.i359 = add nuw nsw i64 %indvars.iv.i358, 8 ; 2 uses
  %i.hp = or disjoint i64 %indvars.iv.next.i359, 7
  %i.hq = icmp samesign ult i64 %i.hp, %i.ea
  br i1 %i.hq, label %.lr.ph.i357, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17390.i = phi i32 [ %i.hy, %.lr.ph92.i ], [ %.17390.i.ph, %.lr.ph92.i.preheader ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv98.i
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !32
  %i.ht = sext i8 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv98.i
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !32
  %i.hw = sext i8 %i.hv to i32
  %i.hx = mul nsw i32 %i.hw, %i.ht
  %i.hy = add nsw i32 %i.hx, %.17390.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !169

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i356
  %.173.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader.i356 ], [ %i.ev, %middle.block ], [ %i.hy, %.lr.ph92.i ]
  %i.hz = add nsw i32 %.173.lcssa.i, %.071.lcssa.i
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = fmul float %i.dy, %i.ia
  %i.ic = fsub float 1.000000e+00, %i.ib          ; 3 uses
  %i.id = fcmp olt float %i.ic, 0.000000e+00
  br i1 %i.id, label %hnsw_distance.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.ie = fcmp ogt float %i.ic, 2.000000e+00
  br i1 %i.ie, label %bb.x, label %hnsw_distance.exit

bb.x:                                             ; preds = %bb.w
  br label %hnsw_distance.exit

bb.y:                                             ; preds = %bb.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !15
  %i.ih = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !15
  %i.ij = load i32, ptr %i.h, align 8, !tbaa !73
  %i.ik = tail call float @vectors_distance_bin(ptr noundef %i.ig, ptr noundef %i.ii, i32 noundef %i.ij)
  br label %hnsw_distance.exit

bb.z:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.x, %bb.w, %._crit_edge.i, %bb.u, %bb.t, %bb.r, %._crit_edge.i364, %bb.n, %bb.k, %bb.y
  %.0.i = phi float [ %i.ik, %bb.y ], [ %i.db, %._crit_edge.i364 ], [ %i.as, %bb.k ], [ %i.aw, %bb.n ], [ %i.do, %bb.r ], [ %i.ds, %bb.t ], [ 1.000000e+00, %bb.u ], [ %i.ic, %bb.w ], [ 2.000000e+00, %bb.x ], [ 0.000000e+00, %._crit_edge.i ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv457
  store float %.0.i, ptr %gep, align 4, !tbaa !27
  %i.il = mul nuw nsw i64 %indvars.iv457, %i.c
  %gep578 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep577, i64 %i.il
  store float %.0.i, ptr %gep578, align 4, !tbaa !27
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next458, %i.c
  br i1 %exitcond.not, label %.loopexit382, label %bb.i, !llvm.loop !170

._crit_edge405:                                   ; preds = %._crit_edge402.us
  %i.im = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.in = tail call ptr %i.im(i64 noundef %i.e) #34 ; 13 uses
  %.not326 = icmp eq ptr %i.in, null
  br i1 %.not326, label %.sink.split.sink.split, label %.preheader378.lr.ph

.preheader378.lr.ph:                              ; preds = %._crit_edge405
  %i.io = zext i32 %3 to i64                      ; 3 uses
  %i.ip = icmp sgt i32 %2, 2
  %i.iq = add nsw i32 %2, -1
  %i.ir = uitofp nneg i32 %i.iq to float
  %i.is = add nsw i32 %2, -2
  %i.it = uitofp nneg i32 %i.is to float
  br i1 %i.ip, label %.preheader378.us.preheader, label %.preheader378

.preheader378.us.preheader:                       ; preds = %.preheader378.lr.ph
  %i.iu = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x float> poison, float %i.it, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader378.us

.preheader378.us:                                 ; preds = %.preheader378.us.preheader, %._crit_edge412.split.us.us
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %._crit_edge412.split.us.us ], [ 0, %.preheader378.us.preheader ] ; 6 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv501
  %i.iz = mul nuw nsw i64 %indvars.iv501, %i.c    ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv501
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv501
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.iz
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.preheader378.us
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %bb.ae ], [ 0, %.preheader378.us ] ; 6 uses
  %i.jd = icmp eq i64 %indvars.iv501, %indvars.iv496
  br i1 %i.jd, label %bb.ad, label %.preheader377.us.us

bb.ab:                                            ; preds = %4
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %.critedge.us.us, label %4, !llvm.loop !171

.critedge.us.us:                                  ; preds = %bb.ab, %.preheader377.us.us
  %i.je = add nuw nsw i64 %indvars.iv496, %i.iz   ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !27 ; 2 uses
  %i.jh = load float, ptr %i.ja, align 4, !tbaa !27
  %i.ji = fneg float %i.jg
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv496
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !27
  %i.jl = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jm = insertelement <2 x float> %i.jl, float %i.jk, i64 1
  %i.jn = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.iv, <2 x float> %i.jo)
  %i.jq = fdiv <2 x float> %i.jp, %i.ix           ; 2 uses
  %shift617 = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop618 = fadd <2 x float> %i.jq, %shift617
  %i.jr = extractelement <2 x float> %foldExtExtBinop618, i64 0
  %i.js = fmul float %i.jr, 5.000000e-01
  %i.jt = fmul float %i.js, 3.000000e-01
  %i.ju = fsub float 2.000000e+00, %i.jg
  %i.jv = tail call float @llvm.fmuladd.f32(float %i.ju, float f0x3F333333, float %i.jt)
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.je
  store float %i.jv, ptr %i.jw, align 4, !tbaa !27
  br label %bb.ae

4:                                                ; preds = %.lr.ph408.us.us, %bb.ab
  %indvars.iv491 = phi i64 [ 0, %.lr.ph408.us.us ], [ %indvars.iv.next492, %bb.ab ] ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv491
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = icmp eq ptr %6, %i.ke
  br i1 %7, label %bb.ac, label %bb.ab

bb.ac:                                            ; preds = %4
  %gep584 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv496
  store float -1.000000e+00, ptr %gep584, align 4, !tbaa !27
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  store float -1.000000e+00, ptr %i.jc, align 4, !tbaa !27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.critedge.us.us
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %i.c
  br i1 %exitcond500.not, label %._crit_edge412.split.us.us, label %bb.aa, !llvm.loop !172

.preheader377.us.us:                              ; preds = %bb.aa
  %i.jx = load ptr, ptr %i.iy, align 8, !tbaa !26
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 312
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.jy, i64 %i.io ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !132 ; 2 uses
  %.not343406.us.us.not = icmp eq i32 %i.kb, 0
  br i1 %.not343406.us.us.not, label %.critedge.us.us, label %.lr.ph408.us.us

.lr.ph408.us.us:                                  ; preds = %.preheader377.us.us
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !135
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv496
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !26
  %wide.trip.count494 = zext i32 %i.kb to i64
  br label %4

._crit_edge412.split.us.us:                       ; preds = %bb.ae
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %i.c
  br i1 %exitcond505.not, label %._crit_edge415.split, label %.preheader378.us, !llvm.loop !173

._crit_edge415.split:                             ; preds = %.preheader378, %._crit_edge412.split, %._crit_edge412.split.1, %._crit_edge412.split.us.us
  %i.kf = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.kg = tail call ptr %i.kf(i64 noundef %i.d) #34 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kg, i8 0, i64 %i.d, i1 false)
  %.not327 = icmp eq ptr %i.kg, null
  br i1 %.not327, label %.sink.split.sink.split.sink.split, label %.preheader376

.preheader376:                                    ; preds = %._crit_edge415.split
  %i.kh = zext i32 %3 to i64                      ; 13 uses
  %wide.trip.count515 = zext nneg i32 %2 to i64   ; 2 uses
  br label %.lr.ph431

.preheader378.1:                                  ; preds = %._crit_edge412.split
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 8
  %invariant.gep581.1 = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.c
  %i.kj = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.c
  %i.kl = load ptr, ptr %i.ki, align 8, !tbaa !26
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 312
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %i.io ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !132 ; 2 uses
  %.not343406.not.1639 = icmp eq i32 %i.kp, 0
  br i1 %.not343406.not.1639, label %.critedge.1647, label %.lr.ph408.1642

.lr.ph408.1642:                                   ; preds = %.preheader378.1
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !135
  %i.kr = load ptr, ptr %1, align 8, !tbaa !26
  %wide.trip.count478.1641 = zext i32 %i.kp to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph408.1642
  %indvars.iv475.1643 = phi i64 [ 0, %.lr.ph408.1642 ], [ %indvars.iv.next476.1644, %bb.ag ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv475.1643
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !26
  %i.ku = icmp eq ptr %i.kt, %i.kr
  br i1 %i.ku, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next476.1644 = add nuw nsw i64 %indvars.iv475.1643, 1 ; 2 uses
  %exitcond479.not.1645 = icmp eq i64 %indvars.iv.next476.1644, %wide.trip.count478.1641
  br i1 %exitcond479.not.1645, label %.critedge.1647, label %bb.af, !llvm.loop !171

bb.ah:                                            ; preds = %bb.af
  store float -1.000000e+00, ptr %invariant.gep581.1, align 4, !tbaa !27
  br label %._crit_edge412.split.1

.critedge.1647:                                   ; preds = %bb.ag, %.preheader378.1
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !27
  %i.kx = fsub float 2.000000e+00, %i.kw
  %i.ky = tail call float @llvm.fmuladd.f32(float %i.kx, float f0x3F333333, float 0.000000e+00)
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.c
  store float %i.ky, ptr %i.kz, align 4, !tbaa !27
  br label %._crit_edge412.split.1

._crit_edge412.split.1:                           ; preds = %.critedge.1647, %bb.ah
  store float -1.000000e+00, ptr %i.kk, align 4, !tbaa !27
  br label %._crit_edge415.split

.preheader378:                                    ; preds = %.preheader378.lr.ph
  store float -1.000000e+00, ptr %i.in, align 4, !tbaa !27
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %._crit_edge415.split, label %.preheader377.1

.preheader377.1:                                  ; preds = %.preheader378
  %i.la = load ptr, ptr %1, align 8, !tbaa !26
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 312
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %i.io ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !132 ; 2 uses
  %.not343406.not.1 = icmp eq i32 %i.le, 0
  br i1 %.not343406.not.1, label %.critedge.1, label %.lr.ph408.1

.lr.ph408.1:                                      ; preds = %.preheader377.1
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !135
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !26
  %wide.trip.count478.1 = zext i32 %i.le to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.lr.ph408.1
  %indvars.iv475.1 = phi i64 [ 0, %.lr.ph408.1 ], [ %indvars.iv.next476.1, %bb.aj ] ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv475.1
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !26
  %i.lk = icmp eq ptr %i.lj, %i.lh
  br i1 %i.lk, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next476.1 = add nuw nsw i64 %indvars.iv475.1, 1 ; 2 uses
  %exitcond479.not.1 = icmp eq i64 %indvars.iv.next476.1, %wide.trip.count478.1
  br i1 %exitcond479.not.1, label %.critedge.1, label %bb.ai, !llvm.loop !171

bb.ak:                                            ; preds = %bb.ai
  %gep582.1 = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store float -1.000000e+00, ptr %gep582.1, align 4, !tbaa !27
  br label %._crit_edge412.split

.critedge.1:                                      ; preds = %bb.aj, %.preheader377.1
  %i.ll = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !27
  %i.ln = fsub float 2.000000e+00, %i.lm
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.ln, float f0x3F333333, float 0.000000e+00)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store float %i.lo, ptr %i.lp, align 4, !tbaa !27
  br label %._crit_edge412.split

._crit_edge412.split:                             ; preds = %.critedge.1, %bb.ak
  %exitcond490.not = icmp eq i32 %2, 1
  br i1 %exitcond490.not, label %._crit_edge415.split, label %.preheader378.1

.lr.ph431:                                        ; preds = %.lr.ph431.backedge, %.preheader376
  %indvars.iv512 = phi i64 [ 0, %.preheader376 ], [ %indvars.iv512.be, %.lr.ph431.backedge ] ; 6 uses
  %.0293427.us = phi i32 [ -1, %.preheader376 ], [ %.0293427.us.be, %.lr.ph431.backedge ] ; 3 uses
  %.0296426.us = phi i32 [ -1, %.preheader376 ], [ %.0296426.us.be, %.lr.ph431.backedge ] ; 3 uses
  %.0302425.us = phi float [ -1.000000e+00, %.preheader376 ], [ %.0302425.us.be, %.lr.ph431.backedge ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv512
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !9
  %.not339.us = icmp eq i32 %i.lr, 0
  br i1 %.not339.us, label %bb.al, label %..loopexit_crit_edge.us

bb.al:                                            ; preds = %.lr.ph431
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv512
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !26
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 312
  %i.lv = getelementptr inbounds nuw [24 x i8], ptr %i.lu, i64 %i.kh ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !132
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !128
  %.not340.us = icmp ult i32 %i.lx, %i.lz
  br i1 %.not340.us, label %.preheader.us, label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.ar, %bb.al, %.lr.ph431
  %.5307.us = phi float [ %.0302425.us, %.lr.ph431 ], [ %.0302425.us, %bb.al ], [ %.4306.us, %bb.ar ]
  %.5301.us = phi i32 [ %.0296426.us, %.lr.ph431 ], [ %.0296426.us, %bb.al ], [ %.4300.us, %bb.ar ] ; 4 uses
  %.5.us = phi i32 [ %.0293427.us, %.lr.ph431 ], [ %.0293427.us, %bb.al ], [ %.4.us, %bb.ar ] ; 3 uses
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count515
  br i1 %exitcond516.not, label %._crit_edge432.split.us, label %.lr.ph431.backedge

.lr.ph431.backedge:                               ; preds = %..loopexit_crit_edge.us, %hnsw_update_worst_neighbor_on_add.exit346
  %indvars.iv512.be = phi i64 [ %indvars.iv.next513, %..loopexit_crit_edge.us ], [ 0, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0293427.us.be = phi i32 [ %.5.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0296426.us.be = phi i32 [ %.5301.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0302425.us.be = phi float [ %.5307.us, %..loopexit_crit_edge.us ], [ -1.000000e+00, %hnsw_update_worst_neighbor_on_add.exit346 ]
  br label %.lr.ph431, !llvm.loop !174

bb.am:                                            ; preds = %.preheader.us, %bb.ar
  %indvars.iv506 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next507, %bb.ar ] ; 6 uses
  %.1294420.us = phi i32 [ %.0293427.us, %.preheader.us ], [ %.4.us, %bb.ar ] ; 4 uses
  %.1297419.us = phi i32 [ %.0296426.us, %.preheader.us ], [ %.4300.us, %bb.ar ] ; 4 uses
  %.1303418.us = phi float [ %.0302425.us, %.preheader.us ], [ %.4306.us, %bb.ar ] ; 5 uses
  %i.ma = icmp eq i64 %indvars.iv512, %indvars.iv506
  br i1 %i.ma, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv506
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !9
  %.not341.us = icmp eq i32 %i.mc, 0
  br i1 %.not341.us, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %gep586 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep585, i64 %indvars.iv506
  %i.md = load float, ptr %gep586, align 4, !tbaa !27 ; 3 uses
  %i.me = fcmp uge float %i.md, 0.000000e+00
  %i.mf = fcmp ogt float %i.md, %.1303418.us
  %or.cond.us = select i1 %i.me, i1 %i.mf, i1 false
  br i1 %or.cond.us, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv506
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !26
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 312
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %i.mi, i64 %i.kh ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !132
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !128
  %i.mo = icmp ult i32 %i.ml, %i.mn
  br i1 %i.mo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.mp = trunc nuw nsw i64 %indvars.iv506 to i32
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.4306.us = phi float [ %.1303418.us, %bb.am ], [ %.1303418.us, %bb.an ], [ %.1303418.us, %bb.ao ], [ %i.md, %bb.aq ], [ %.1303418.us, %bb.ap ] ; 2 uses
  %.4300.us = phi i32 [ %.1297419.us, %bb.am ], [ %.1297419.us, %bb.an ], [ %.1297419.us, %bb.ao ], [ %i.mp, %bb.aq ], [ %.1297419.us, %bb.ap ] ; 2 uses
  %.4.us = phi i32 [ %.1294420.us, %bb.am ], [ %.1294420.us, %bb.an ], [ %.1294420.us, %bb.ao ], [ %i.mr, %bb.aq ], [ %.1294420.us, %bb.ap ] ; 2 uses
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count515
  br i1 %exitcond511.not, label %..loopexit_crit_edge.us, label %bb.am, !llvm.loop !175

.preheader.us:                                    ; preds = %bb.al
  %i.mq = mul nuw nsw i64 %indvars.iv512, %i.c
  %i.mr = trunc nuw nsw i64 %indvars.iv512 to i32
  %invariant.gep585 = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.mq
  br label %bb.am

._crit_edge432.split.us:                          ; preds = %..loopexit_crit_edge.us
  %.not328.not = icmp eq i32 %.5301.us, -1
  br i1 %.not328.not, label %.lr.ph446, label %bb.as

bb.as:                                            ; preds = %._crit_edge432.split.us
  %i.ms = sext i32 %.5.us to i64                  ; 2 uses
  %i.mt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ms ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !26
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 312
  %i.mw = getelementptr inbounds nuw [24 x i8], ptr %i.mv, i64 %i.kh ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !132 ; 2 uses
  %i.mz = sext i32 %.5301.us to i64               ; 2 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mz ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !26 ; 2 uses
  %i.nc = load ptr, ptr %i.mw, align 8, !tbaa !135
  %i.nd = sext i32 %i.my to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.nc, i64 %i.nd
  store ptr %i.nb, ptr %i.ne, align 8, !tbaa !26
  %i.nf = load ptr, ptr %i.mt, align 8, !tbaa !26 ; 3 uses
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %i.nf, i64 %i.kh
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 320 ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !132 ; 2 uses
  %i.nj = add i32 %i.ni, 1
  store i32 %i.nj, ptr %i.nh, align 8, !tbaa !132
  %i.nk = mul nsw i32 %.5.us, %2
  %i.nl = add nsw i32 %i.nk, %.5301.us
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.nm
  %i.no = load float, ptr %i.nn, align 4, !tbaa !27 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nf, i64 312
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %i.kh ; 3 uses
  %i.nr = icmp eq i32 %i.ni, 0
  br i1 %i.nr, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nt = load float, ptr %i.ns, align 8, !tbaa !133
  %i.nu = fcmp ogt float %i.no, %i.nt
  br i1 %i.nu, label %bb.au, label %hnsw_update_worst_neighbor_on_add.exit

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  store float %i.no, ptr %i.nv, align 8, !tbaa !133
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 20
  store i32 %i.my, ptr %i.nw, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_add.exit

hnsw_update_worst_neighbor_on_add.exit:           ; preds = %bb.at, %bb.au
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nb, i64 312
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.kh ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !132 ; 2 uses
  %i.ob = load ptr, ptr %i.ny, align 8, !tbaa !135
  %i.oc = sext i32 %i.oa to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.ob, i64 %i.oc
  store ptr %i.nf, ptr %i.od, align 8, !tbaa !26
  %i.oe = load ptr, ptr %i.na, align 8, !tbaa !26 ; 2 uses
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.oe, i64 %i.kh
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 320 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !132 ; 2 uses
  %i.oi = add i32 %i.oh, 1
  store i32 %i.oi, ptr %i.og, align 8, !tbaa !132
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oe, i64 312
  %i.ok = getelementptr inbounds nuw [24 x i8], ptr %i.oj, i64 %i.kh ; 3 uses
  %i.ol = icmp eq i32 %i.oh, 0
  br i1 %i.ol, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.on = load float, ptr %i.om, align 8, !tbaa !133
  %i.oo = fcmp ogt float %i.no, %i.on
  br i1 %i.oo, label %bb.aw, label %hnsw_update_worst_neighbor_on_add.exit346

bb.aw:                                            ; preds = %bb.av, %hnsw_update_worst_neighbor_on_add.exit
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store float %i.no, ptr %i.op, align 8, !tbaa !133
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 20
  store i32 %i.oa, ptr %i.oq, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_add.exit346

hnsw_update_worst_neighbor_on_add.exit346:        ; preds = %bb.av, %bb.aw
  %i.or = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.mz
  store i32 1, ptr %i.or, align 4, !tbaa !9
  %i.os = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.ms
  store i32 1, ptr %i.os, align 4, !tbaa !9
  br label %.lr.ph431.backedge

.lr.ph446:                                        ; preds = %._crit_edge432.split.us
  %i.ot = shl nuw nsw i64 %i.c, 4
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count525 = zext nneg i32 %2 to i64   ; 2 uses
  br label %bb.ax

.critedge375._crit_edge:                          ; preds = %pq_new.exit.thread
  %i.ow = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ow(ptr noundef nonnull %i.f) #34
  br label %.sink.split.sink.split.sink.split

bb.ax:                                            ; preds = %.lr.ph446, %pq_new.exit.thread
  %indvars.iv522 = phi i64 [ 0, %.lr.ph446 ], [ %indvars.iv.next523, %pq_new.exit.thread ] ; 5 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv522
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !9
  %.not329 = icmp eq i32 %i.oy, 0
  br i1 %.not329, label %bb.ay, label %pq_new.exit.thread

bb.ay:                                            ; preds = %bb.ax
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv522 ; 6 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !26
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 312
  %i.pc = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %i.kh ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !132
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !128
  %.not330 = icmp ult i32 %i.pe, %i.pg
  br i1 %.not330, label %bb.az, label %pq_new.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.ph = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.pi = tail call ptr %i.ph(i64 noundef 16) #34, !inline_history !142 ; 13 uses
  %.not.i = icmp eq ptr %i.pi, null
  br i1 %.not.i, label %pq_new.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pj = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.pk = tail call ptr %i.pj(i64 noundef %i.ot) #34, !inline_history !142 ; 4 uses
  store ptr %i.pk, ptr %i.pi, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.pk, null
  br i1 %.not10.i, label %pq_new.exit.thread.sink.split, label %.lr.ph438

.lr.ph438:                                        ; preds = %bb.ba
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 5 uses
  store i32 0, ptr %i.pl, align 8, !tbaa !19
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 12 ; 3 uses
  store i32 %2, ptr %i.pm, align 4, !tbaa !20
  %i.pn = mul nuw nsw i64 %indvars.iv522, %i.c
  %invariant.gep587 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.pn
  br label %bb.bb

._crit_edge439:                                   ; preds = %pq_push.exit
  %.pre527 = load i32, ptr %i.pl, align 8, !tbaa !19
  %i.po = load ptr, ptr %i.oz, align 8, !tbaa !26 ; 2 uses
  %i.pp = getelementptr inbounds nuw [24 x i8], ptr %i.po, i64 %i.kh
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 320
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !132
  %i.ps = add i32 %i.pr, 1                        ; 3 uses
  %.not332 = icmp eq i32 %.pre527, 0
  br i1 %.not332, label %pq_free.exit, label %bb.bh

bb.bb:                                            ; preds = %.lr.ph438, %pq_push.exit
  %i.pt = phi ptr [ %i.pk, %.lr.ph438 ], [ %i.rm, %pq_push.exit ] ; 5 uses
  %i.pu = phi ptr [ %i.pk, %.lr.ph438 ], [ %i.rn, %pq_push.exit ] ; 5 uses
  %indvars.iv517 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next518, %pq_push.exit ] ; 4 uses
  %.not338 = icmp eq i64 %indvars.iv522, %indvars.iv517
  br i1 %.not338, label %pq_push.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv517
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !26 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 312
  %i.py = getelementptr inbounds nuw [24 x i8], ptr %i.px, i64 %i.kh ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !132
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !128
  %i.qd = icmp ult i32 %i.qa, %i.qc
  br i1 %i.qd, label %bb.bd, label %pq_push.exit

bb.bd:                                            ; preds = %bb.bc
  %gep588 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep587, i64 %indvars.iv517
  %i.qe = load float, ptr %gep588, align 4, !tbaa !27 ; 5 uses
  %i.qf = load i32, ptr %i.pl, align 8, !tbaa !19 ; 3 uses
  %i.qg = load i32, ptr %i.pm, align 4, !tbaa !20 ; 2 uses
  %i.qh = icmp ult i32 %i.qf, %i.qg
  br i1 %i.qh, label %.preheader.i, label %bb.bf

.preheader.i:                                     ; preds = %bb.bd
  %.not45.i = icmp eq i32 %i.qf, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.qi = zext i32 %i.qf to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.be, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.qi, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.be ] ; 3 uses
  %i.qj = load ptr, ptr %i.pi, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.qk = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
end_hunk_0
