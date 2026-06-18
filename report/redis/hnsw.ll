inline.NumInlined: 98
inline.NumDeleted: 4
begin_hunk_0_@hnsw_reconnect_nodes:bb.a
  br i1 %i.ea, label %.lr.ph92.preheader.i, label %._crit_edge.i

.lr.ph92.preheader.i:                             ; preds = %.preheader.i356
  %i.eb = zext i32 %.070.lcssa.i to i64           ; 4 uses
  %wide.trip.count.i = zext i32 %i.df to i64      ; 3 uses
  %i.ec = sub nsw i64 %wide.trip.count.i, %i.eb   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ec, 8
  br i1 %min.iters.check, label %.lr.ph92.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph92.preheader.i
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ec, %n.mod.vf       ; 2 uses
  %i.ed = add nsw i64 %n.vec, %i.eb
  %i.ee = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.072.lcssa.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ee, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi612 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %i.ef = add i64 %index, %i.eb                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ef ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %wide.load = load <4 x i8>, ptr %i.eg, align 1, !tbaa !32
  %wide.load613 = load <4 x i8>, ptr %i.eh, align 1, !tbaa !32
  %i.ei = sext <4 x i8> %wide.load to <4 x i32>
  %i.ej = sext <4 x i8> %wide.load613 to <4 x i32>
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ef ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %wide.load614 = load <4 x i8>, ptr %i.ek, align 1, !tbaa !32
  %wide.load615 = load <4 x i8>, ptr %i.el, align 1, !tbaa !32
  %i.em = sext <4 x i8> %wide.load614 to <4 x i32>
  %i.en = sext <4 x i8> %wide.load615 to <4 x i32>
  %i.eo = mul nsw <4 x i32> %i.em, %i.ei
  %i.ep = mul nsw <4 x i32> %i.en, %i.ej
  %i.eq = add <4 x i32> %i.eo, %vec.phi           ; 2 uses
  %i.er = add <4 x i32> %i.ep, %vec.phi612        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.er, %i.eq
  %i.et = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %.lr.ph92.preheader.i, %middle.block
  %indvars.iv98.i.ph = phi i64 [ %i.eb, %.lr.ph92.preheader.i ], [ %i.ed, %middle.block ]
  %.17390.i.ph = phi i32 [ %.072.lcssa.i, %.lr.ph92.preheader.i ], [ %i.et, %middle.block ]
  br label %.lr.ph92.i

.lr.ph.i357:                                      ; preds = %.lr.ph.i357, %.lr.ph.preheader.i
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i359, %.lr.ph.i357 ] ; 10 uses
  %.07186.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.hm, %.lr.ph.i357 ]
  %.07285.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gd, %.lr.ph.i357 ]
  %i.eu = or disjoint i64 %indvars.iv.i358, 7     ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.i358
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !32
  %i.ex = sext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.i358
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !32
  %i.fa = sext i8 %i.ez to i32
  %i.fb = mul nsw i32 %i.fa, %i.ex
  %i.fc = or disjoint i64 %indvars.iv.i358, 1     ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !32
  %i.ff = sext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fc
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !32
  %i.fi = sext i8 %i.fh to i32
  %i.fj = mul nsw i32 %i.fi, %i.ff
  %i.fk = or disjoint i64 %indvars.iv.i358, 2     ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !32
  %i.fn = sext i8 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fk
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !32
  %i.fq = sext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fn
  %i.fs = or disjoint i64 %indvars.iv.i358, 3     ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !32
  %i.fv = sext i8 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.fs
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !32
  %i.fy = sext i8 %i.fx to i32
  %i.fz = mul nsw i32 %i.fy, %i.fv
  %i.ga = add i32 %i.fb, %.07285.i
  %i.gb = add i32 %i.ga, %i.fj
  %i.gc = add i32 %i.gb, %i.fr
  %i.gd = add i32 %i.gc, %i.fz                    ; 2 uses
  %i.ge = or disjoint i64 %indvars.iv.i358, 4     ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !32
  %i.gh = sext i8 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ge
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !32
  %i.gk = sext i8 %i.gj to i32
  %i.gl = mul nsw i32 %i.gk, %i.gh
  %i.gm = or disjoint i64 %indvars.iv.i358, 5     ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !32
  %i.gp = sext i8 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gm
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !32
  %i.gs = sext i8 %i.gr to i32
  %i.gt = mul nsw i32 %i.gs, %i.gp
  %i.gu = or disjoint i64 %indvars.iv.i358, 6     ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !32
  %i.gx = sext i8 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.gu
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !32
  %i.ha = sext i8 %i.gz to i32
  %i.hb = mul nsw i32 %i.ha, %i.gx
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eu
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !32
  %i.he = sext i8 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.eu
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !32
  %i.hh = sext i8 %i.hg to i32
  %i.hi = mul nsw i32 %i.hh, %i.he
  %i.hj = add i32 %i.gl, %.07186.i
  %i.hk = add i32 %i.hj, %i.gt
  %i.hl = add i32 %i.hk, %i.hb
  %i.hm = add i32 %i.hl, %i.hi                    ; 2 uses
  %indvars.iv.next.i359 = add nuw nsw i64 %indvars.iv.i358, 8 ; 2 uses
  %i.hn = or disjoint i64 %indvars.iv.next.i359, 7
  %i.ho = icmp samesign ult i64 %i.hn, %i.dy
  br i1 %i.ho, label %.lr.ph.i357, label %.preheader.loopexit.i, !llvm.loop !57

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i, %.lr.ph92.i ], [ %indvars.iv98.i.ph, %.lr.ph92.i.preheader ] ; 3 uses
  %.17390.i = phi i32 [ %i.hw, %.lr.ph92.i ], [ %.17390.i.ph, %.lr.ph92.i.preheader ]
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv98.i
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !32
  %i.hr = sext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv98.i
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !32
  %i.hu = sext i8 %i.ht to i32
  %i.hv = mul nsw i32 %i.hu, %i.hr
  %i.hw = add nsw i32 %i.hv, %.17390.i            ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph92.i, !llvm.loop !169

._crit_edge.i:                                    ; preds = %.lr.ph92.i, %middle.block, %.preheader.i356
  %.173.lcssa.i = phi i32 [ %.072.lcssa.i, %.preheader.i356 ], [ %i.et, %middle.block ], [ %i.hw, %.lr.ph92.i ]
  %i.hx = add nsw i32 %.173.lcssa.i, %.071.lcssa.i
  %i.hy = sitofp i32 %i.hx to float
  %i.hz = fmul float %i.dw, %i.hy
  %i.ia = fsub float 1.000000e+00, %i.hz          ; 3 uses
  %i.ib = fcmp olt float %i.ia, 0.000000e+00
  br i1 %i.ib, label %hnsw_distance.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.ic = fcmp ogt float %i.ia, 2.000000e+00
  br i1 %i.ic, label %bb.x, label %hnsw_distance.exit

bb.x:                                             ; preds = %bb.w
  br label %hnsw_distance.exit

bb.y:                                             ; preds = %bb.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !15
  %i.ih = load i32, ptr %i.h, align 8, !tbaa !73
  %i.ii = tail call float @vectors_distance_bin(ptr noundef %i.ie, ptr noundef %i.ig, i32 noundef %i.ih)
  br label %hnsw_distance.exit

bb.z:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.x, %bb.w, %._crit_edge.i, %bb.u, %bb.t, %bb.r, %._crit_edge.i364, %bb.n, %bb.k, %bb.y
  %.0.i = phi float [ %i.ii, %bb.y ], [ %i.da, %._crit_edge.i364 ], [ %i.as, %bb.k ], [ %i.aw, %bb.n ], [ %i.dn, %bb.r ], [ %i.dr, %bb.t ], [ 1.000000e+00, %bb.u ], [ %i.ia, %bb.w ], [ 2.000000e+00, %bb.x ], [ 0.000000e+00, %._crit_edge.i ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv457
  store float %.0.i, ptr %gep, align 4, !tbaa !27
  %i.ij = mul nuw nsw i64 %indvars.iv457, %i.c
  %gep578 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep577, i64 %i.ij
  store float %.0.i, ptr %gep578, align 4, !tbaa !27
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next458, %i.c
  br i1 %exitcond.not, label %.loopexit382, label %bb.i, !llvm.loop !170

._crit_edge405:                                   ; preds = %._crit_edge402.us
  %i.ik = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.il = tail call ptr %i.ik(i64 noundef %i.e) #34 ; 13 uses
  %.not326 = icmp eq ptr %i.il, null
  br i1 %.not326, label %.sink.split.sink.split, label %.preheader378.lr.ph

.preheader378.lr.ph:                              ; preds = %._crit_edge405
  %i.im = zext i32 %3 to i64                      ; 3 uses
  %i.in = icmp sgt i32 %2, 2
  %i.io = add nsw i32 %2, -1
  %i.ip = uitofp nneg i32 %i.io to float          ; 2 uses
  %i.iq = add nsw i32 %2, -2
  %i.ir = uitofp nneg i32 %i.iq to float          ; 2 uses
  br i1 %i.in, label %.preheader378.us.a, label %._crit_edge415.split

.preheader378.us.a:                               ; preds = %.preheader378.lr.ph, %._crit_edge412.split.us.us
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %._crit_edge412.split.us.us ], [ 0, %.preheader378.lr.ph ] ; 6 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv501
  %i.it = mul nuw nsw i64 %indvars.iv501, %i.c    ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv501
  %invariant.gep583 = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.it
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv501
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.it
  br label %bb.aa

bb.aa:                                            ; preds = %bb.af, %.preheader378.us.a
  %indvars.iv496 = phi i64 [ %indvars.iv.next497, %bb.af ], [ 0, %.preheader378.us.a ] ; 6 uses
  %i.ix = icmp eq i64 %indvars.iv501, %indvars.iv496
  br i1 %i.ix, label %bb.ae, label %.preheader377.us.us

bb.ab:                                            ; preds = %bb.ac
  %indvars.iv.next492 = add nuw nsw i64 %indvars.iv491, 1 ; 2 uses
  %exitcond495.not = icmp eq i64 %indvars.iv.next492, %wide.trip.count494
  br i1 %exitcond495.not, label %.critedge.us.us, label %bb.ac, !llvm.loop !171

.critedge.us.us:                                  ; preds = %bb.ab, %.preheader377.us.us
  %i.iy = add nuw nsw i64 %indvars.iv496, %i.it   ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.iy
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !27 ; 2 uses
  %i.jb = load float, ptr %i.iu, align 4, !tbaa !27
  %i.jc = fneg float %i.ja                        ; 2 uses
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.ip, float %i.jc)
  %i.je = fdiv float %i.jd, %i.ir
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv496
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !27
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.jg, float %i.ip, float %i.jc)
  %i.ji = fdiv float %i.jh, %i.ir
  %i.jj = fadd float %i.je, %i.ji
  %i.jk = fmul float %i.jj, 5.000000e-01
  %i.jl = fmul float %i.jk, 3.000000e-01
  %i.jm = fsub float 2.000000e+00, %i.ja
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jm, float f0x3F333333, float %i.jl)
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.iy
  store float %i.jn, ptr %i.jo, align 4, !tbaa !27
  br label %bb.af

bb.ac:                                            ; preds = %.lr.ph408.us.us, %bb.ab
  %indvars.iv491 = phi i64 [ 0, %.lr.ph408.us.us ], [ %indvars.iv.next492, %bb.ab ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv491
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !26
  %i.jr = icmp eq ptr %i.jq, %i.jz
  br i1 %i.jr, label %bb.ad, label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %gep584 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep583, i64 %indvars.iv496
  store float -1.000000e+00, ptr %gep584, align 4, !tbaa !27
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  store float -1.000000e+00, ptr %i.iw, align 4, !tbaa !27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.critedge.us.us
  %indvars.iv.next497 = add nuw nsw i64 %indvars.iv496, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next497, %i.c
  br i1 %exitcond500.not, label %._crit_edge412.split.us.us, label %bb.aa, !llvm.loop !172

.preheader377.us.us:                              ; preds = %bb.aa
  %i.js = load ptr, ptr %i.is, align 8, !tbaa !26
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 312
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jt, i64 %i.im ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !132 ; 2 uses
  %.not343406.us.us.not = icmp eq i32 %i.jw, 0
  br i1 %.not343406.us.us.not, label %.critedge.us.us, label %.lr.ph408.us.us

.lr.ph408.us.us:                                  ; preds = %.preheader377.us.us
  %i.jx = load ptr, ptr %i.ju, align 8, !tbaa !135
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv496
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !26
  %wide.trip.count494 = zext i32 %i.jw to i64
  br label %bb.ac

._crit_edge412.split.us.us:                       ; preds = %bb.af
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %exitcond505.not = icmp eq i64 %indvars.iv.next502, %i.c
  br i1 %exitcond505.not, label %._crit_edge412.split, label %.preheader378.us.a, !llvm.loop !173

._crit_edge415.split:                             ; preds = %.preheader378.lr.ph
  store float -1.000000e+00, ptr %i.il, align 4, !tbaa !27
  %.not327.a = icmp eq i32 %2, 1
  br i1 %.not327.a, label %._crit_edge412.split, label %.preheader378.1

.preheader378.1:                                  ; preds = %._crit_edge415.split
  %i.ka = load ptr, ptr %1, align 8, !tbaa !26
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 312
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.kb, i64 %i.im ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !132 ; 2 uses
  %.not343406.not.1635 = icmp eq i32 %i.ke, 0
  br i1 %.not343406.not.1635, label %.critedge.1643, label %.lr.ph408.1638

.lr.ph408.1638:                                   ; preds = %.preheader378.1
  %i.kf = load ptr, ptr %i.kc, align 8, !tbaa !135
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kg = load ptr, ptr %4, align 8, !tbaa !26
  %wide.trip.count478.1637 = zext i32 %i.ke to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph408.1638
  %indvars.iv475.1639 = phi i64 [ 0, %.lr.ph408.1638 ], [ %indvars.iv.next476.1640, %bb.ah ] ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv475.1639
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !26
  %i.kj = icmp eq ptr %i.ki, %i.kg
  br i1 %i.kj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next476.1640 = add nuw nsw i64 %indvars.iv475.1639, 1 ; 2 uses
  %exitcond479.not.1641 = icmp eq i64 %indvars.iv.next476.1640, %wide.trip.count478.1637
  br i1 %exitcond479.not.1641, label %.critedge.1643, label %bb.ag, !llvm.loop !171

bb.ai:                                            ; preds = %bb.ag
  %gep590.1 = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store float -1.000000e+00, ptr %gep590.1, align 4, !tbaa !27
  br label %.preheader378

.critedge.1643:                                   ; preds = %bb.ah, %.preheader378.1
  %5 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.kk = load float, ptr %5, align 4, !tbaa !27
  %i.kl = fsub float 2.000000e+00, %i.kk
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kl, float f0x3F333333, float 0.000000e+00)
  %6 = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store float %i.km, ptr %6, align 4, !tbaa !27
  br label %.preheader378

.preheader378:                                    ; preds = %bb.ai, %.critedge.1643
  %cond = icmp eq i32 %2, 1
  br i1 %cond, label %._crit_edge412.split, label %.preheader377.1

.preheader377.1:                                  ; preds = %.preheader378
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %invariant.gep589.1 = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.c
  %8 = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.c
  %i.kn = load ptr, ptr %7, align 8, !tbaa !26
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 312
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %i.im ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !132 ; 2 uses
  %.not343406.not.1 = icmp eq i32 %i.kr, 0
  br i1 %.not343406.not.1, label %.critedge.1, label %.lr.ph408.1

.lr.ph408.1:                                      ; preds = %.preheader377.1
  %i.ks = load ptr, ptr %i.kp, align 8, !tbaa !135
  %i.kt = load ptr, ptr %1, align 8, !tbaa !26
  %wide.trip.count478.1 = zext i32 %i.kr to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.lr.ph408.1
  %indvars.iv475.1 = phi i64 [ 0, %.lr.ph408.1 ], [ %indvars.iv.next476.1, %bb.ak ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %indvars.iv475.1
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !26
  %i.kw = icmp eq ptr %i.kv, %i.kt
  br i1 %i.kw, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next476.1 = add nuw nsw i64 %indvars.iv475.1, 1 ; 2 uses
  %exitcond479.not.1 = icmp eq i64 %indvars.iv.next476.1, %wide.trip.count478.1
  br i1 %exitcond479.not.1, label %.critedge.1, label %bb.aj, !llvm.loop !171

bb.al:                                            ; preds = %bb.aj
  store float -1.000000e+00, ptr %invariant.gep589.1, align 4, !tbaa !27
  br label %._crit_edge412.split.us424.1

.critedge.1:                                      ; preds = %bb.ak, %.preheader377.1
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c
  %i.kx = load float, ptr %10, align 4, !tbaa !27
  %i.ky = fsub float 2.000000e+00, %i.kx
  %i.kz = tail call float @llvm.fmuladd.f32(float %i.ky, float f0x3F333333, float 0.000000e+00)
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.c
  store float %i.kz, ptr %11, align 4, !tbaa !27
  br label %._crit_edge412.split.us424.1

._crit_edge412.split.us424.1:                     ; preds = %.critedge.1, %bb.al
  store float -1.000000e+00, ptr %9, align 4, !tbaa !27
  br label %._crit_edge412.split

._crit_edge412.split:                             ; preds = %._crit_edge415.split, %.preheader378, %._crit_edge412.split.us424.1, %._crit_edge412.split.us.us
  %12 = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %13 = tail call ptr %12(i64 noundef %i.d) #34   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.d, i1 false)
  %exitcond490.not = icmp eq ptr %13, null
  br i1 %exitcond490.not, label %.sink.split.sink.split.sink.split, label %.preheader376

.preheader376:                                    ; preds = %._crit_edge412.split
  %14 = zext i32 %3 to i64                        ; 13 uses
  %wide.trip.count523 = zext nneg i32 %2 to i64   ; 2 uses
  br label %.lr.ph431

.lr.ph431:                                        ; preds = %.lr.ph431.backedge, %.preheader376
  %indvars.iv512 = phi i64 [ 0, %.preheader376 ], [ %indvars.iv512.be, %.lr.ph431.backedge ] ; 6 uses
  %.0293427.us = phi i32 [ -1, %.preheader376 ], [ %.0293427.us.be, %.lr.ph431.backedge ] ; 3 uses
  %.0296426.us = phi i32 [ -1, %.preheader376 ], [ %.0296426.us.be, %.lr.ph431.backedge ] ; 3 uses
  %.0302425.us = phi float [ -1.000000e+00, %.preheader376 ], [ %.0302425.us.be, %.lr.ph431.backedge ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv512
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !9
  %.not339.us = icmp eq i32 %i.lb, 0
  br i1 %.not339.us, label %bb.am, label %..loopexit_crit_edge.us

bb.am:                                            ; preds = %.lr.ph431
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv512
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !26
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 312
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %14 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !132
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !128
  %.not340.us = icmp ult i32 %i.lh, %i.lj
  br i1 %.not340.us, label %.preheader.us, label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.as, %bb.am, %.lr.ph431
  %.5307.us = phi float [ %.0302425.us, %.lr.ph431 ], [ %.0302425.us, %bb.am ], [ %.4306.us, %bb.as ]
  %.5301.us = phi i32 [ %.0296426.us, %.lr.ph431 ], [ %.0296426.us, %bb.am ], [ %.4300.us, %bb.as ] ; 4 uses
  %.5.us = phi i32 [ %.0293427.us, %.lr.ph431 ], [ %.0293427.us, %bb.am ], [ %.4.us, %bb.as ] ; 3 uses
  %indvars.iv.next513 = add nuw nsw i64 %indvars.iv512, 1 ; 2 uses
  %exitcond516.not = icmp eq i64 %indvars.iv.next513, %wide.trip.count523
  br i1 %exitcond516.not, label %._crit_edge432.split.us, label %.lr.ph431.backedge

.lr.ph431.backedge:                               ; preds = %..loopexit_crit_edge.us, %hnsw_update_worst_neighbor_on_add.exit346
  %indvars.iv512.be = phi i64 [ %indvars.iv.next513, %..loopexit_crit_edge.us ], [ 0, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0293427.us.be = phi i32 [ %.5.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0296426.us.be = phi i32 [ %.5301.us, %..loopexit_crit_edge.us ], [ -1, %hnsw_update_worst_neighbor_on_add.exit346 ]
  %.0302425.us.be = phi float [ %.5307.us, %..loopexit_crit_edge.us ], [ -1.000000e+00, %hnsw_update_worst_neighbor_on_add.exit346 ]
  br label %.lr.ph431, !llvm.loop !174

bb.an:                                            ; preds = %.preheader.us, %bb.as
  %indvars.iv506 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next507, %bb.as ] ; 6 uses
  %.1294420.us = phi i32 [ %.0293427.us, %.preheader.us ], [ %.4.us, %bb.as ] ; 4 uses
  %.1297419.us = phi i32 [ %.0296426.us, %.preheader.us ], [ %.4300.us, %bb.as ] ; 4 uses
  %.1303418.us = phi float [ %.0302425.us, %.preheader.us ], [ %.4306.us, %bb.as ] ; 5 uses
  %i.lk = icmp eq i64 %indvars.iv512, %indvars.iv506
  br i1 %i.lk, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv506
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !9
  %.not341.us = icmp eq i32 %i.lm, 0
  br i1 %.not341.us, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %gep586 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep585, i64 %indvars.iv506
  %i.ln = load float, ptr %gep586, align 4, !tbaa !27 ; 3 uses
  %i.lo = fcmp uge float %i.ln, 0.000000e+00
  %i.lp = fcmp ogt float %i.ln, %.1303418.us
  %or.cond.us = select i1 %i.lo, i1 %i.lp, i1 false
  br i1 %or.cond.us, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv506
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !26
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 312
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.ls, i64 %14 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !132
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !128
  %i.ly = icmp ult i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lz = trunc nuw nsw i64 %indvars.iv506 to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.4306.us = phi float [ %.1303418.us, %bb.an ], [ %.1303418.us, %bb.ao ], [ %.1303418.us, %bb.ap ], [ %i.ln, %bb.ar ], [ %.1303418.us, %bb.aq ] ; 2 uses
  %.4300.us = phi i32 [ %.1297419.us, %bb.an ], [ %.1297419.us, %bb.ao ], [ %.1297419.us, %bb.ap ], [ %i.lz, %bb.ar ], [ %.1297419.us, %bb.aq ] ; 2 uses
  %.4.us = phi i32 [ %.1294420.us, %bb.an ], [ %.1294420.us, %bb.ao ], [ %.1294420.us, %bb.ap ], [ %i.mb, %bb.ar ], [ %.1294420.us, %bb.aq ] ; 2 uses
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond511.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count523
  br i1 %exitcond511.not, label %..loopexit_crit_edge.us, label %bb.an, !llvm.loop !175

.preheader.us:                                    ; preds = %bb.am
  %i.ma = mul nuw nsw i64 %indvars.iv512, %i.c
  %i.mb = trunc nuw nsw i64 %indvars.iv512 to i32
  %invariant.gep585 = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ma
  br label %bb.an

._crit_edge432.split.us:                          ; preds = %..loopexit_crit_edge.us
  %.not328.not = icmp eq i32 %.5301.us, -1
  br i1 %.not328.not, label %.lr.ph446.a, label %bb.at

bb.at:                                            ; preds = %._crit_edge432.split.us
  %i.mc = sext i32 %.5.us to i64                  ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mc ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !26
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 312
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %i.mf, i64 %14 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !132 ; 2 uses
  %i.mj = sext i32 %.5301.us to i64               ; 2 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mj ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !26 ; 2 uses
  %i.mm = load ptr, ptr %i.mg, align 8, !tbaa !135
  %i.mn = sext i32 %i.mi to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.mn
  store ptr %i.ml, ptr %i.mo, align 8, !tbaa !26
  %i.mp = load ptr, ptr %i.md, align 8, !tbaa !26 ; 3 uses
  %i.mq = getelementptr inbounds nuw [24 x i8], ptr %i.mp, i64 %14
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 320 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !132 ; 2 uses
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 8, !tbaa !132
  %i.mu = mul nsw i32 %.5.us, %2
  %i.mv = add nsw i32 %i.mu, %.5301.us
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.mw
  %i.my = load float, ptr %i.mx, align 4, !tbaa !27 ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mp, i64 312
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %i.mz, i64 %14 ; 3 uses
  %i.nb = icmp eq i32 %i.ms, 0
  br i1 %i.nb, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nd = load float, ptr %i.nc, align 8, !tbaa !133
  %i.ne = fcmp ogt float %i.my, %i.nd
  br i1 %i.ne, label %bb.av, label %hnsw_update_worst_neighbor_on_add.exit

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store float %i.my, ptr %i.nf, align 8, !tbaa !133
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 20
  store i32 %i.mi, ptr %i.ng, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_add.exit

hnsw_update_worst_neighbor_on_add.exit:           ; preds = %bb.au, %bb.av
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ml, i64 312
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %14 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !132 ; 2 uses
  %i.nl = load ptr, ptr %i.ni, align 8, !tbaa !135
  %i.nm = sext i32 %i.nk to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.nm
  store ptr %i.mp, ptr %i.nn, align 8, !tbaa !26
  %i.no = load ptr, ptr %i.mk, align 8, !tbaa !26 ; 2 uses
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %i.no, i64 %14
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 320 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !132 ; 2 uses
  %i.ns = add i32 %i.nr, 1
  store i32 %i.ns, ptr %i.nq, align 8, !tbaa !132
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 312
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %14 ; 3 uses
  %i.nv = icmp eq i32 %i.nr, 0
  br i1 %i.nv, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %hnsw_update_worst_neighbor_on_add.exit
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nx = load float, ptr %i.nw, align 8, !tbaa !133
  %i.ny = fcmp ogt float %i.my, %i.nx
  br i1 %i.ny, label %bb.ax, label %hnsw_update_worst_neighbor_on_add.exit346

bb.ax:                                            ; preds = %bb.aw, %hnsw_update_worst_neighbor_on_add.exit
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store float %i.my, ptr %i.nz, align 8, !tbaa !133
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 20
  store i32 %i.nk, ptr %i.oa, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_add.exit346

hnsw_update_worst_neighbor_on_add.exit346:        ; preds = %bb.aw, %bb.ax
  %i.ob = getelementptr inbounds [4 x i8], ptr %13, i64 %i.mj
  store i32 1, ptr %i.ob, align 4, !tbaa !9
  %i.oc = getelementptr inbounds [4 x i8], ptr %13, i64 %i.mc
  store i32 1, ptr %i.oc, align 4, !tbaa !9
  br label %.lr.ph431.backedge

.lr.ph446.a:                                      ; preds = %._crit_edge432.split.us
  %i.od = shl nuw nsw i64 %i.c, 4
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count525 = zext nneg i32 %2 to i64   ; 2 uses
  br label %bb.ay

.critedge375._crit_edge:                          ; preds = %pq_new.exit.thread
  %i.og = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.og(ptr noundef nonnull %i.f) #34
  br label %.sink.split.sink.split.sink.split

bb.ay:                                            ; preds = %.lr.ph446.a, %pq_new.exit.thread
  %indvars.iv522 = phi i64 [ 0, %.lr.ph446.a ], [ %indvars.iv.next523, %pq_new.exit.thread ] ; 5 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv522
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !9
  %.not329 = icmp eq i32 %i.oi, 0
  br i1 %.not329, label %bb.az, label %pq_new.exit.thread

bb.az:                                            ; preds = %bb.ay
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv522 ; 6 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !26
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 312
  %i.om = getelementptr inbounds nuw [24 x i8], ptr %i.ol, i64 %14 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !132
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 12
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !128
  %.not330 = icmp ult i32 %i.oo, %i.oq
  br i1 %.not330, label %bb.ba, label %pq_new.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.or = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.os = tail call ptr %i.or(i64 noundef 16) #34, !inline_history !142 ; 13 uses
  %.not.i = icmp eq ptr %i.os, null
  br i1 %.not.i, label %pq_new.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ot = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.ou = tail call ptr %i.ot(i64 noundef %i.od) #34, !inline_history !142 ; 4 uses
  store ptr %i.ou, ptr %i.os, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.ou, null
  br i1 %.not10.i, label %pq_new.exit.thread.sink.split, label %.lr.ph438

.lr.ph438:                                        ; preds = %bb.bb
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 5 uses
  store i32 0, ptr %i.ov, align 8, !tbaa !19
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 12 ; 3 uses
  store i32 %2, ptr %i.ow, align 4, !tbaa !20
  %i.ox = mul nuw nsw i64 %indvars.iv522, %i.c
  %invariant.gep587 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ox
  br label %bb.bc

._crit_edge439:                                   ; preds = %pq_push.exit
  %.pre527 = load i32, ptr %i.ov, align 8, !tbaa !19
  %i.oy = load ptr, ptr %i.oj, align 8, !tbaa !26 ; 2 uses
  %i.oz = getelementptr inbounds nuw [24 x i8], ptr %i.oy, i64 %14
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 320
  %i.pb = load i32, ptr %i.pa, align 8, !tbaa !132
  %i.pc = add i32 %i.pb, 1                        ; 3 uses
  %.not332 = icmp eq i32 %.pre527, 0
  br i1 %.not332, label %pq_free.exit, label %bb.bi

bb.bc:                                            ; preds = %.lr.ph438, %pq_push.exit
  %i.pd = phi ptr [ %i.ou, %.lr.ph438 ], [ %i.qx, %pq_push.exit ] ; 5 uses
  %i.pe = phi ptr [ %i.ou, %.lr.ph438 ], [ %i.qy, %pq_push.exit ] ; 5 uses
  %indvars.iv517 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next518, %pq_push.exit ] ; 4 uses
  %.not338 = icmp eq i64 %indvars.iv522, %indvars.iv517
  br i1 %.not338, label %pq_push.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv517
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !26 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 312
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %i.ph, i64 %14 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !132
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !128
  %i.pn = icmp ult i32 %i.pk, %i.pm
  br i1 %i.pn, label %bb.be, label %pq_push.exit

bb.be:                                            ; preds = %bb.bd
  %gep588 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep587, i64 %indvars.iv517
  %i.po = load float, ptr %gep588, align 4, !tbaa !27 ; 5 uses
  %i.pp = load i32, ptr %i.ov, align 8, !tbaa !19 ; 3 uses
  %i.pq = load i32, ptr %i.ow, align 4, !tbaa !20 ; 2 uses
  %i.pr = icmp ult i32 %i.pp, %i.pq
  br i1 %i.pr, label %.preheader.i, label %bb.bg

.preheader.i:                                     ; preds = %bb.be
  %.not45.i = icmp eq i32 %i.pp, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.ps = zext i32 %i.pp to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.bf, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.ps, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.bf ] ; 3 uses
  %i.pt = load ptr, ptr %i.os, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.pu = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %i.pu ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load float, ptr %i.pw, align 8, !tbaa !21
  %i.py = fcmp olt float %i.px, %i.po
  br i1 %i.py, label %bb.bf, label %.critedge.loopexit.isplit

bb.bf:                                            ; preds = %.lr.ph47.i
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.pt, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pz, ptr noundef nonnull align 8 dereferenceable(16) %i.pv, i64 16, i1 false), !tbaa.struct !25
  %.not.i348 = icmp eq i64 %i.pu, 0
  br i1 %.not.i348, label %..critedge.loopexit.i_crit_edge, label %.lr.ph47.i, !llvm.loop !28

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.bf
  %.pre.pre = load ptr, ptr %i.os, align 8, !tbaa !17
  br label %.critedge.loopexit.i, !llvm.loop !28

.critedge.loopexit.isplit:                        ; preds = %.lr.ph47.i
  %i.qa = and i64 %indvars.iv53.i, 4294967295
  br label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %.critedge.loopexit.isplit, %..critedge.loopexit.i_crit_edge
  %.pre = phi ptr [ %.pre.pre, %..critedge.loopexit.i_crit_edge ], [ %i.pt, %.critedge.loopexit.isplit ]
  %.038.lcssa.ph.i = phi i64 [ 0, %..critedge.loopexit.i_crit_edge ], [ %i.qa, %.critedge.loopexit.isplit ]
  %.pre57.i = load i32, ptr %i.ov, align 8, !tbaa !19
  %i.qb = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.qc = phi ptr [ %i.pd, %.preheader.i ], [ %.pre, %.critedge.loopexit.i ] ; 3 uses
  %i.qd = phi i32 [ 1, %.preheader.i ], [ %i.qb, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %.038.lcssa.ph.i, %.critedge.loopexit.i ]
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %.038.lcssa.i ; 2 uses
  store ptr %i.pg, ptr %i.qe, align 8, !tbaa !30
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store float %i.po, ptr %i.qf, align 8, !tbaa !21
  store i32 %i.qd, ptr %i.ov, align 8, !tbaa !19
  br label %pq_push.exit

bb.bg:                                            ; preds = %bb.be
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.qh = load float, ptr %i.qg, align 8, !tbaa !21
  %i.qi = fcmp ult float %i.po, %i.qh
  br i1 %i.qi, label %.preheader41.i, label %pq_push.exit

.preheader41.i:                                   ; preds = %bb.bg
  %.not51.i = icmp eq i32 %i.pq, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.bh
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bh ], [ 0, %.preheader41.i ] ; 3 uses
  %i.qj = load ptr, ptr %i.os, align 8, !tbaa !17 ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.qk = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %indvars.iv.next.i ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load float, ptr %i.ql, align 8, !tbaa !21
  %i.qn = fcmp ogt float %i.qm, %i.po
  br i1 %i.qn, label %bb.bh, label %.critedge2.i

bb.bh:                                            ; preds = %.lr.ph.i
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qj, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qo, ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i64 16, i1 false), !tbaa.struct !25
  %i.qp = load i32, ptr %i.ow, align 4, !tbaa !20
  %i.qq = add i32 %i.qp, -1
  %i.qr = zext i32 %i.qq to i64
  %i.qs = icmp samesign ult i64 %indvars.iv.next.i, %i.qr
  br i1 %i.qs, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.bh
  %.pre.pre.i = load ptr, ptr %i.os, align 8, !tbaa !17 ; 2 uses
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.qt = phi ptr [ %i.pd, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.qj, %.lr.ph.i ]
  %i.qu = phi ptr [ %i.pe, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.qj, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.qu, i64 %.0.lcssa.i ; 2 uses
  store ptr %i.pg, ptr %i.qv, align 8, !tbaa !30
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store float %i.po, ptr %i.qw, align 8, !tbaa !21
  br label %pq_push.exit

pq_push.exit:                                     ; preds = %.critedge2.i, %bb.bg, %.critedge.i, %bb.bc, %bb.bd
  %i.qx = phi ptr [ %i.qt, %.critedge2.i ], [ %i.pd, %bb.bg ], [ %i.qc, %.critedge.i ], [ %i.pd, %bb.bc ], [ %i.pd, %bb.bd ]
  %i.qy = phi ptr [ %i.qu, %.critedge2.i ], [ %i.pe, %bb.bg ], [ %i.qc, %.critedge.i ], [ %i.pe, %bb.bc ], [ %i.pe, %bb.bd ]
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv517, 1 ; 2 uses
  %exitcond521.not = icmp eq i64 %indvars.iv.next518, %wide.trip.count525
  br i1 %exitcond521.not, label %._crit_edge439, label %bb.bc, !llvm.loop !176

bb.bi:                                            ; preds = %._crit_edge439
  tail call void @select_neighbors(ptr noundef %0, ptr noundef nonnull %i.os, ptr noundef nonnull %i.oy, i32 noundef %3, i32 noundef %i.pc, i32 noundef 1)
  %.pre528 = load ptr, ptr %i.oj, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre528, i64 %14
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 320
  %.pre530 = load i32, ptr %.phi.trans.insert529, align 8, !tbaa !132
  %i.qz = icmp eq i32 %.pre530, %i.pc
  br i1 %i.qz, label %pq_new.exit.thread.sink.split.sink.split, label %pq_free.exit

pq_free.exit:                                     ; preds = %._crit_edge439, %bb.bi
  %i.ra = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.rb = load ptr, ptr %i.os, align 8, !tbaa !17
  tail call void %i.ra(ptr noundef %i.rb) #34, !inline_history !143
  %i.rc = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.rc(ptr noundef nonnull %i.os) #34, !inline_history !143
  %i.rd = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.re = load i32, ptr %i.oe, align 4, !tbaa !91 ; 2 uses
  %i.rf = icmp ugt i32 %i.re, %3
  br i1 %i.rf, label %.lr.ph442, label %._crit_edge443

._crit_edge443:                                   ; preds = %bb.bl, %pq_free.exit
  %.0281.lcssa = phi ptr [ %i.rd, %pq_free.exit ], [ %.2, %bb.bl ] ; 2 uses
  %.not334 = icmp eq ptr %.0281.lcssa, null
  br i1 %.not334, label %pq_new.exit.thread, label %bb.bm

.lr.ph442:                                        ; preds = %pq_free.exit, %bb.bl
  %.0280441 = phi i32 [ %i.rq, %bb.bl ], [ %i.re, %pq_free.exit ] ; 2 uses
  %.0281440 = phi ptr [ %.2, %bb.bl ], [ %i.rd, %pq_free.exit ] ; 3 uses
  %i.rg = load ptr, ptr %i.oj, align 8, !tbaa !26
  %i.rh = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.rg, ptr noundef %.0281440, i32 noundef 1, i32 noundef %.0280441, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not336 = icmp eq ptr %i.rh, null
  br i1 %.not336, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph442
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !19 ; 2 uses
  %.not337 = icmp eq i32 %i.rj, 0
  %.pre531 = load ptr, ptr %i.rh, align 8, !tbaa !17 ; 2 uses
  br i1 %.not337, label %pq_free.exit351, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rk = add i32 %i.rj, -1
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %.pre531, i64 %i.rl
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !30
  br label %pq_free.exit351

pq_free.exit351:                                  ; preds = %bb.bk, %bb.bj
  %.1 = phi ptr [ %i.rn, %bb.bk ], [ %.0281440, %bb.bj ]
  %i.ro = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ro(ptr noundef %.pre531) #34, !inline_history !143
  %i.rp = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.rp(ptr noundef nonnull %i.rh) #34, !inline_history !143
  br label %bb.bl

bb.bl:                                            ; preds = %pq_free.exit351, %.lr.ph442
  %.2 = phi ptr [ %.1, %pq_free.exit351 ], [ %.0281440, %.lr.ph442 ] ; 2 uses
  %i.rq = add i32 %.0280441, -1                   ; 2 uses
  %i.rr = icmp ugt i32 %i.rq, %3
  br i1 %i.rr, label %.lr.ph442, label %._crit_edge443, !llvm.loop !177

bb.bm:                                            ; preds = %._crit_edge443
  %i.rs = load ptr, ptr %i.oj, align 8, !tbaa !26
  %i.rt = tail call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef readonly %i.rs, ptr noundef nonnull %.0281.lcssa, i32 noundef 200, i32 noundef %3, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not335 = icmp eq ptr %i.rt, null
  br i1 %.not335, label %pq_new.exit.thread, label %pq_free.exit353

pq_free.exit353:                                  ; preds = %bb.bm
  %i.ru = load ptr, ptr %i.oj, align 8, !tbaa !26 ; 2 uses
  %i.rv = getelementptr inbounds nuw [24 x i8], ptr %i.ru, i64 %14
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 320
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !132
  %i.ry = load i32, ptr %i.of, align 8, !tbaa !89
  %i.rz = lshr i32 %i.ry, 1
  %i.sa = icmp ugt i32 %i.rx, %i.rz
  %i.sb = select i1 %i.sa, i32 1, i32 2
  tail call void @select_neighbors(ptr noundef nonnull %0, ptr noundef nonnull %i.rt, ptr noundef %i.ru, i32 noundef %3, i32 noundef %i.pc, i32 noundef %i.sb)
  br label %pq_new.exit.thread.sink.split.sink.split

pq_new.exit.thread.sink.split.sink.split:         ; preds = %bb.bi, %pq_free.exit353
  %.sink594 = phi ptr [ %i.rt, %pq_free.exit353 ], [ %i.os, %bb.bi ] ; 2 uses
  %i.sc = load ptr, ptr @hfree, align 8, !tbaa !15
  %i.sd = load ptr, ptr %.sink594, align 8, !tbaa !17
  tail call void %i.sc(ptr noundef %i.sd) #34
  br label %pq_new.exit.thread.sink.split

pq_new.exit.thread.sink.split:                    ; preds = %pq_new.exit.thread.sink.split.sink.split, %bb.bb
  %.sink = phi ptr [ %i.os, %bb.bb ], [ %.sink594, %pq_new.exit.thread.sink.split.sink.split ]
  %i.se = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.se(ptr noundef nonnull %.sink) #34
  br label %pq_new.exit.thread

pq_new.exit.thread:                               ; preds = %pq_new.exit.thread.sink.split, %bb.ba, %._crit_edge443, %bb.bm, %bb.az, %bb.ay
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 2 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next523, %wide.trip.count525
  br i1 %exitcond526.not, label %.critedge375._crit_edge, label %bb.ay, !llvm.loop !178

.sink.split.sink.split.sink.split:                ; preds = %._crit_edge412.split, %.critedge375._crit_edge
  %.sink597 = phi ptr [ %i.k, %.critedge375._crit_edge ], [ %i.f, %._crit_edge412.split ]
  %.sink595.ph = phi ptr [ %i.il, %.critedge375._crit_edge ], [ %i.k, %._crit_edge412.split ]
  %.sink590.ph.ph = phi ptr [ %13, %.critedge375._crit_edge ], [ %i.il, %._crit_edge412.split ]
  %i.sf = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sf(ptr noundef nonnull %.sink597) #34
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %.sink.split.sink.split.sink.split, %._crit_edge405
  %.sink595 = phi ptr [ %i.f, %._crit_edge405 ], [ %.sink595.ph, %.sink.split.sink.split.sink.split ]
  %.sink590.ph = phi ptr [ %i.k, %._crit_edge405 ], [ %.sink590.ph.ph, %.sink.split.sink.split.sink.split ]
  %i.sg = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sg(ptr noundef nonnull %.sink595) #34
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %._crit_edge
  %.sink590 = phi ptr [ %i.f, %._crit_edge ], [ %.sink590.ph, %.sink.split.sink.split ]
  %i.sh = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.sh(ptr noundef nonnull %.sink590) #34
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_unlink_node(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.d = atomicrmw add ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %._crit_edge
  %.079136 = phi i32 [ 0, %bb.b ], [ %i.n, %._crit_edge ] ; 2 uses
  %i.h = zext i32 %.079136 to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !132
  %.not146 = icmp eq i32 %i.k, 0
  br i1 %.not146, label %._crit_edge, label %.lr.ph135

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.not88 = icmp eq ptr %i.m, null
  br i1 %.not88, label %hnsw_cursor_element_deleted.exit, label %.lr.ph.i

._crit_edge:                                      ; preds = %hnsw_update_worst_neighbor_on_remove.exit, %.preheader
  %i.n = add i32 %.079136, 1                      ; 2 uses
  %i.o = load i32, ptr %1, align 8, !tbaa !9
  %.not = icmp ugt i32 %i.n, %i.o
  br i1 %.not, label %bb.c, label %.preheader, !llvm.loop !179

.lr.ph135:                                        ; preds = %.preheader, %hnsw_update_worst_neighbor_on_remove.exit
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %hnsw_update_worst_neighbor_on_remove.exit ], [ 0, %.preheader ] ; 2 uses
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv159
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.h ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !132  ; 3 uses
  %.not147 = icmp eq i32 %i.v, 0
  br i1 %.not147, label %hnsw_update_worst_neighbor_on_remove.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph135
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !135  ; 3 uses
  %wide.trip.count = zext i32 %i.v to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.ab = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.ac = add nuw i64 %indvars.iv, 1
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = xor i32 %i.ab, -1
  %i.ag = add i32 %i.v, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.ae, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.u, align 8, !tbaa !132
  %i.ak = add i32 %i.aj, -1                       ; 3 uses
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !132
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store float 0.000000e+00, ptr %i.am, align 8, !tbaa !133
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i32 0, ptr %i.an, align 4, !tbaa !134
  br label %hnsw_update_worst_neighbor_on_remove.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !134 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, %i.ab
  br i1 %i.aq, label %.lr.ph.i98, label %bb.z

.lr.ph.i98:                                       ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.h

bb.h:                                             ; preds = %hnsw_distance.exit.i, %.lr.ph.i98
  %i.at = phi i32 [ %i.ak, %.lr.ph.i98 ], [ %i.is, %hnsw_distance.exit.i ] ; 9 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i98 ], [ %indvars.iv.next.i, %hnsw_distance.exit.i ] ; 3 uses
  %.027.i = phi float [ 0.000000e+00, %.lr.ph.i98 ], [ %.1.i, %hnsw_distance.exit.i ] ; 2 uses
  %.01925.i = phi i32 [ 0, %.lr.ph.i98 ], [ %.120.i, %hnsw_distance.exit.i ]
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !135
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26 ; 4 uses
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !70
  switch i32 %i.ax, label %bb.y [
    i32 0, label %bb.i
    i32 1, label %bb.o
    i32 2, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !15 ; 8 uses
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !73  ; 8 uses
  %i.bc = icmp ugt i32 %i.bb, 15                  ; 2 uses
  %.pre.i103 = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4 ; 3 uses
  %i.bd = and i32 %.pre.i103, 2129920
  %or.cond65.not.i = icmp eq i32 %i.bd, 2129920
  %or.cond84.i = select i1 %i.bc, i1 %or.cond65.not.i, i1 false
  br i1 %or.cond84.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = tail call float @vectors_distance_float_avx512(ptr noundef readonly %i.ay, ptr noundef readonly %i.ba, i32 noundef %i.bb)
  br label %hnsw_distance.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %.pre.i103, 1024
  %.not64.i = icmp eq i32 %i.bf, 0
  br i1 %.not64.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = and i32 %.pre.i103, 16384
  %i.bh = icmp ne i32 %i.bg, 0
  %or.cond.i104 = and i1 %i.bc, %i.bh
  br i1 %or.cond.i104, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = tail call float @vectors_distance_float_avx2(ptr noundef readonly %i.ay, ptr noundef readonly %i.ba, i32 noundef %i.bb)
  br label %hnsw_distance.exit.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bj = icmp ugt i32 %i.bb, 7
  br i1 %i.bj, label %.lr.ph.preheader.i110, label %.preheader.i105

.lr.ph.preheader.i110:                            ; preds = %bb.n
  %i.bk = zext i32 %i.bb to i64
  br label %.lr.ph.i111

.preheader.loopexit.i114:                         ; preds = %.lr.ph.i111
  %i.bl = and i32 %i.bb, -8
  br label %.preheader.i105

.preheader.i105:                                  ; preds = %.preheader.loopexit.i114, %bb.n
  %.0.lcssa.i106 = phi i32 [ 0, %bb.n ], [ %i.bl, %.preheader.loopexit.i114 ] ; 2 uses
  %i.bm = phi <2 x float> [ zeroinitializer, %bb.n ], [ %i.cn, %.preheader.loopexit.i114 ] ; 2 uses
  %i.bn = icmp ult i32 %.0.lcssa.i106, %i.bb
  %i.bo = extractelement <2 x float> %i.bm, i64 1 ; 3 uses
  br i1 %i.bn, label %.lr.ph73.preheader.i, label %._crit_edge.i107

.lr.ph73.preheader.i:                             ; preds = %.preheader.i105
  %i.bp = zext i32 %.0.lcssa.i106 to i64          ; 3 uses
  %wide.trip.count.i108 = zext i32 %i.bb to i64   ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i108, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph73.i.prol.loopexit, label %.lr.ph73.i.prol

.lr.ph73.i.prol:                                  ; preds = %.lr.ph73.preheader.i, %.lr.ph73.i.prol
  %indvars.iv79.i.prol = phi i64 [ %indvars.iv.next80.i.prol, %.lr.ph73.i.prol ], [ %i.bp, %.lr.ph73.preheader.i ] ; 3 uses
  %.15871.i.prol = phi float [ %i.bu, %.lr.ph73.i.prol ], [ %i.bo, %.lr.ph73.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph73.i.prol ], [ 0, %.lr.ph73.preheader.i ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv79.i.prol
  %i.br = load float, ptr %i.bq, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv79.i.prol
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !27
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.br, float %i.bt, float %.15871.i.prol) ; 3 uses
  %indvars.iv.next80.i.prol = add nuw nsw i64 %indvars.iv79.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
