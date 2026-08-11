loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlantp_:bb.a
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !9 ; 3 uses
  %i.gc = fcmp oge double %i.gb, 0.000000e+00
  %i.gd = fneg double %i.gb
  %i.ge = select i1 %i.gc, double %i.gb, double %i.gd
  %i.gf = fadd double %i.fz, %i.ge
  %i.gg = getelementptr [8 x i8], ptr %4, i64 %indvars.iv665
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !9 ; 3 uses
  %i.gj = fcmp oge double %i.gi, 0.000000e+00
  %i.gk = fneg double %i.gi
  %i.gl = select i1 %i.gj, double %i.gi, double %i.gk
  %i.gm = fadd double %i.gf, %i.gl
  %i.gn = getelementptr [8 x i8], ptr %4, i64 %indvars.iv665
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  %i.gp = load double, ptr %i.go, align 8, !tbaa !9 ; 3 uses
  %i.gq = fcmp oge double %i.gp, 0.000000e+00
  %i.gr = fneg double %i.gp
  %i.gs = select i1 %i.gq, double %i.gp, double %i.gr
  %i.gt = fadd double %i.gm, %i.gs
  %i.gu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv665
  %i.gv = getelementptr i8, ptr %i.gu, i64 24
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !9 ; 3 uses
  %i.gx = fcmp oge double %i.gw, 0.000000e+00
  %i.gy = fneg double %i.gw
  %i.gz = select i1 %i.gx, double %i.gw, double %i.gy
  %i.ha = fadd double %i.gt, %i.gz
  %i.hb = getelementptr [8 x i8], ptr %4, i64 %indvars.iv665
  %i.hc = getelementptr i8, ptr %i.hb, i64 32
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !9 ; 3 uses
  %i.he = fcmp oge double %i.hd, 0.000000e+00
  %i.hf = fneg double %i.hd
  %i.hg = select i1 %i.he, double %i.hd, double %i.hf
  %i.hh = fadd double %i.ha, %i.hg
  %i.hi = getelementptr [8 x i8], ptr %4, i64 %indvars.iv665
  %i.hj = getelementptr i8, ptr %i.hi, i64 40
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !9 ; 3 uses
  %i.hl = fcmp oge double %i.hk, 0.000000e+00
  %i.hm = fneg double %i.hk
  %i.hn = select i1 %i.hl, double %i.hk, double %i.hm
  %i.ho = fadd double %i.hh, %i.hn
  %i.hp = getelementptr [8 x i8], ptr %4, i64 %indvars.iv665
  %i.hq = getelementptr i8, ptr %i.hp, i64 48
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !9 ; 3 uses
  %i.hs = fcmp oge double %i.hr, 0.000000e+00
  %i.ht = fneg double %i.hr
  %i.hu = select i1 %i.hs, double %i.hr, double %i.ht
  %i.hv = fadd double %i.ho, %i.hu
  %indvars.iv.next666.7 = add nsw i64 %indvars.iv665, 8 ; 2 uses
  %i.hw = getelementptr [8 x i8], ptr %4, i64 %indvars.iv665
  %i.hx = getelementptr i8, ptr %i.hw, i64 56
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !9 ; 3 uses
  %i.hz = fcmp oge double %i.hy, 0.000000e+00
  %i.ia = fneg double %i.hy
  %i.ib = select i1 %i.hz, double %i.hy, double %i.ia
  %i.ic = fadd double %i.hv, %i.ib                ; 2 uses
  %exitcond669.not.7 = icmp eq i64 %indvars.iv.next666.7, %wide.trip.count668
  br i1 %exitcond669.not.7, label %.loopexit.sink.split, label %.lr.ph534, !llvm.loop !27

bb.x:                                             ; preds = %bb.v
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !9
  %i.id = load i32, ptr %3, align 4, !tbaa !8     ; 7 uses
  %i.ie = add i32 %i.fl, %i.id
  %.not315537 = icmp sgt i32 %.5240543, %i.ie
  br i1 %.not315537, label %.loopexit, label %.lr.ph540.preheader

.lr.ph540.preheader:                              ; preds = %bb.x
  %i.if = sext i32 %.5240543 to i64               ; 2 uses
  %i.ig = add i32 %storemerge312.neg546, 1
  %i.ih = add i32 %i.ig, %.5240543
  %i.ii = add i32 %i.ih, %i.id
  %i.ij = sub i32 %i.id, %indvar1006
  %i.ik = add i32 %i.id, %storemerge312.neg546
  %xtraiter1008 = and i32 %i.ij, 7                ; 2 uses
  %lcmp.mod1009.not = icmp eq i32 %xtraiter1008, 0
  br i1 %lcmp.mod1009.not, label %.lr.ph540.prol.loopexit, label %.lr.ph540.prol

.lr.ph540.prol:                                   ; preds = %.lr.ph540.preheader, %.lr.ph540.prol
  %indvars.iv670.prol = phi i64 [ %indvars.iv.next671.prol, %.lr.ph540.prol ], [ %i.if, %.lr.ph540.preheader ] ; 2 uses
  %i.il = phi double [ %i.ir, %.lr.ph540.prol ], [ 0.000000e+00, %.lr.ph540.preheader ]
  %prol.iter1010 = phi i32 [ %prol.iter1010.next, %.lr.ph540.prol ], [ 0, %.lr.ph540.preheader ]
  %i.im = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv670.prol
  %i.in = load double, ptr %i.im, align 8, !tbaa !9 ; 3 uses
  %i.io = fcmp oge double %i.in, 0.000000e+00
  %i.ip = fneg double %i.in
  %i.iq = select i1 %i.io, double %i.in, double %i.ip
  %i.ir = fadd double %i.il, %i.iq                ; 3 uses
  %indvars.iv.next671.prol = add nsw i64 %indvars.iv670.prol, 1 ; 2 uses
  %prol.iter1010.next = add i32 %prol.iter1010, 1 ; 2 uses
  %prol.iter1010.cmp.not = icmp eq i32 %prol.iter1010.next, %xtraiter1008
  br i1 %prol.iter1010.cmp.not, label %.lr.ph540.prol.loopexit, label %.lr.ph540.prol, !llvm.loop !28

.lr.ph540.prol.loopexit:                          ; preds = %.lr.ph540.prol, %.lr.ph540.preheader
  %.lcssa968.unr = phi double [ poison, %.lr.ph540.preheader ], [ %i.ir, %.lr.ph540.prol ]
  %indvars.iv670.unr = phi i64 [ %i.if, %.lr.ph540.preheader ], [ %indvars.iv.next671.prol, %.lr.ph540.prol ]
  %.unr1011 = phi double [ 0.000000e+00, %.lr.ph540.preheader ], [ %i.ir, %.lr.ph540.prol ]
  %i.is = icmp ult i32 %i.ik, 7
  br i1 %i.is, label %.loopexit.sink.split, label %.lr.ph540

.lr.ph540:                                        ; preds = %.lr.ph540.prol.loopexit, %.lr.ph540
  %indvars.iv670 = phi i64 [ %indvars.iv.next671.7, %.lr.ph540 ], [ %indvars.iv670.unr, %.lr.ph540.prol.loopexit ] ; 9 uses
  %i.it = phi double [ %i.kv, %.lr.ph540 ], [ %.unr1011, %.lr.ph540.prol.loopexit ]
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv670
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !9 ; 3 uses
  %i.iw = fcmp oge double %i.iv, 0.000000e+00
  %i.ix = fneg double %i.iv
  %i.iy = select i1 %i.iw, double %i.iv, double %i.ix
  %i.iz = fadd double %i.it, %i.iy
  %i.ja = getelementptr [8 x i8], ptr %4, i64 %indvars.iv670
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !9 ; 3 uses
  %i.jc = fcmp oge double %i.jb, 0.000000e+00
  %i.jd = fneg double %i.jb
  %i.je = select i1 %i.jc, double %i.jb, double %i.jd
  %i.jf = fadd double %i.iz, %i.je
  %i.jg = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv670
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !9 ; 3 uses
  %i.jj = fcmp oge double %i.ji, 0.000000e+00
  %i.jk = fneg double %i.ji
  %i.jl = select i1 %i.jj, double %i.ji, double %i.jk
  %i.jm = fadd double %i.jf, %i.jl
  %i.jn = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv670
  %i.jo = getelementptr i8, ptr %i.jn, i64 24
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !9 ; 3 uses
  %i.jq = fcmp oge double %i.jp, 0.000000e+00
  %i.jr = fneg double %i.jp
  %i.js = select i1 %i.jq, double %i.jp, double %i.jr
  %i.jt = fadd double %i.jm, %i.js
  %i.ju = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv670
  %i.jv = getelementptr i8, ptr %i.ju, i64 32
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !9 ; 3 uses
  %i.jx = fcmp oge double %i.jw, 0.000000e+00
  %i.jy = fneg double %i.jw
  %i.jz = select i1 %i.jx, double %i.jw, double %i.jy
  %i.ka = fadd double %i.jt, %i.jz
  %i.kb = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv670
  %i.kc = getelementptr i8, ptr %i.kb, i64 40
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !9 ; 3 uses
  %i.ke = fcmp oge double %i.kd, 0.000000e+00
  %i.kf = fneg double %i.kd
  %i.kg = select i1 %i.ke, double %i.kd, double %i.kf
  %i.kh = fadd double %i.ka, %i.kg
  %i.ki = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv670
  %i.kj = getelementptr i8, ptr %i.ki, i64 48
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !9 ; 3 uses
  %i.kl = fcmp oge double %i.kk, 0.000000e+00
  %i.km = fneg double %i.kk
  %i.kn = select i1 %i.kl, double %i.kk, double %i.km
  %i.ko = fadd double %i.kh, %i.kn
  %i.kp = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv670
  %i.kq = getelementptr i8, ptr %i.kp, i64 56
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !9 ; 3 uses
  %i.ks = fcmp oge double %i.kr, 0.000000e+00
  %i.kt = fneg double %i.kr
  %i.ku = select i1 %i.ks, double %i.kr, double %i.kt
  %i.kv = fadd double %i.ko, %i.ku                ; 2 uses
  %indvars.iv.next671.7 = add nsw i64 %indvars.iv670, 8 ; 2 uses
  %lftr.wideiv673.7 = trunc i64 %indvars.iv.next671.7 to i32
  %exitcond674.not.7 = icmp eq i32 %i.ii, %lftr.wideiv673.7
  br i1 %exitcond674.not.7, label %.loopexit.sink.split, label %.lr.ph540, !llvm.loop !29

.loopexit.sink.split:                             ; preds = %.lr.ph534.prol.loopexit, %.lr.ph534, %.lr.ph540.prol.loopexit, %.lr.ph540
  %.lcssa.sink = phi double [ %i.kv, %.lr.ph540 ], [ %.lcssa968.unr, %.lr.ph540.prol.loopexit ], [ %.lcssa.unr, %.lr.ph534.prol.loopexit ], [ %i.ic, %.lr.ph534 ] ; 2 uses
  %.ph738 = phi i32 [ %i.id, %.lr.ph540.prol.loopexit ], [ %i.id, %.lr.ph540 ], [ %i.fm, %.lr.ph534 ], [ %i.fm, %.lr.ph534.prol.loopexit ]
  store double %.lcssa.sink, ptr %i.d, align 8, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.w, %bb.x
  %i.kw = phi double [ 1.000000e+00, %bb.w ], [ 0.000000e+00, %bb.x ], [ %.lcssa.sink, %.loopexit.sink.split ] ; 2 uses
  %i.kx = phi i32 [ %i.fm, %bb.w ], [ %i.id, %bb.x ], [ %.ph738, %.loopexit.sink.split ]
  %i.ky = add i32 %storemerge312.neg546, 1
  %i.kz = add i32 %i.ky, %.5240543
  %i.la = add i32 %i.kz, %i.kx
  %i.lb = fcmp olt double %.14545, %i.kw
  br i1 %i.lb, label %._crit_edge688, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.lc = call i32 @disnan_(ptr noundef nonnull %i.d) #5
  %.not317 = icmp eq i32 %i.lc, 0
  %.pre689 = load double, ptr %i.d, align 8
  %spec.select739 = select i1 %.not317, double %.14545, double %.pre689
  br label %._crit_edge688

._crit_edge688:                                   ; preds = %bb.y, %.loopexit
  %.15 = phi double [ %spec.select739, %bb.y ], [ %i.kw, %.loopexit ] ; 2 uses
  %i.ld = add nuw i32 %i.fk, 1
  %storemerge312.neg = xor i32 %i.fk, -1
  %.not313.not = icmp slt i32 %i.fk, %i.cd
  %indvar.next1007 = add i32 %indvar1006, 1
  br i1 %.not313.not, label %bb.v, label %.loopexit347, !llvm.loop !30

bb.z:                                             ; preds = %bb.o
  %i.le = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #5
  %.not277 = icmp eq i32 %i.le, 0
  br i1 %.not277, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lf = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %.not290 = icmp eq i32 %i.lf, 0
  %i.lg = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %.not291 = icmp eq i32 %i.lg, 0                 ; 2 uses
  %i.lh = load i32, ptr %3, align 4, !tbaa !8     ; 22 uses
  %.not292471 = icmp slt i32 %i.lh, 1             ; 4 uses
  br i1 %.not290, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not291, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not292471, label %.loopexit356, label %iter.check

iter.check:                                       ; preds = %bb.ac
  %i.li = add nuw i32 %i.lh, 1
  %wide.trip.count = zext i32 %i.li to i64
  %i.lj = zext nneg i32 %i.lh to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.lh, 4
  br i1 %min.iters.check, label %.lr.ph423.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check758 = icmp ult i32 %i.lh, 16
  br i1 %min.iters.check758, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lk = and i64 %i.lj, 12
  %n.vec = and i64 %i.lj, 2147483632              ; 4 uses
  %i.ll = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lm = getelementptr [8 x i8], ptr %5, i64 %index ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.lm, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.ln, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.lo, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.lp, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.lq = icmp eq i64 %index.next, %n.vec
  br i1 %i.lq, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.lj
  br i1 %cmp.n, label %.lr.ph434.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph423.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec759 = and i64 %i.lj, 2147483644           ; 3 uses
  %i.lr = or disjoint i64 %n.vec759, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index760 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next761, %vec.epilog.vector.body ] ; 2 uses
  %i.ls = getelementptr [8 x i8], ptr %5, i64 %index760
  store <4 x double> splat (double 1.000000e+00), ptr %i.ls, align 8, !tbaa !9
  %index.next761 = add nuw i64 %index760, 4       ; 2 uses
  %i.lt = icmp eq i64 %index.next761, %n.vec759
  br i1 %i.lt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n762 = icmp eq i64 %n.vec759, %i.lj
  br i1 %cmp.n762, label %.lr.ph434.preheader, label %.lr.ph423.preheader

.lr.ph423.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv581.ph = phi i64 [ 1, %iter.check ], [ %i.ll, %vec.epilog.iter.check ], [ %i.lr, %vec.epilog.middle.block ]
  br label %.lr.ph423

.lr.ph434.preheader:                              ; preds = %.lr.ph423, %vec.epilog.middle.block, %middle.block
  %i.lu = add nuw i32 %i.lh, 1
  %wide.trip.count596 = zext i32 %i.lu to i64
  %scevgep764 = getelementptr i8, ptr %4, i64 -8
  br label %.lr.ph434

.lr.ph423:                                        ; preds = %.lr.ph423.preheader, %.lr.ph423
  %indvars.iv581 = phi i64 [ %indvars.iv.next582, %.lr.ph423 ], [ %indvars.iv581.ph, %.lr.ph423.preheader ] ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv581
  store double 1.000000e+00, ptr %i.lv, align 8, !tbaa !9
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next582, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph434.preheader, label %.lr.ph423, !llvm.loop !36

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %._crit_edge429
  %indvar = phi i64 [ 0, %.lr.ph434.preheader ], [ %indvar.next, %._crit_edge429 ] ; 10 uses
  %indvars.iv593 = phi i64 [ 1, %.lr.ph434.preheader ], [ %indvars.iv.next594, %._crit_edge429 ] ; 4 uses
  %.6241433 = phi i32 [ 1, %.lr.ph434.preheader ], [ %i.pf, %._crit_edge429 ] ; 2 uses
  %i.lw = shl nuw nsw i64 %indvar, 3              ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.lw
  %i.lx = getelementptr i8, ptr %4, i64 %i.lw
  %scevgep766 = getelementptr i8, ptr %i.lx, i64 -8
  %.not310.not424 = icmp samesign ugt i64 %indvars.iv593, 1
  br i1 %.not310.not424, label %iter.check787, label %._crit_edge429

iter.check787:                                    ; preds = %.lr.ph434
  %i.ly = sext i32 %.6241433 to i64               ; 7 uses
  %min.iters.check768 = icmp ult i64 %indvar, 4
  br i1 %min.iters.check768, label %.lr.ph428.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check787
  %i.lz = shl nsw i64 %i.ly, 3                    ; 2 uses
  %scevgep765 = getelementptr i8, ptr %scevgep764, i64 %i.lz
  %scevgep767 = getelementptr i8, ptr %scevgep766, i64 %i.lz
  %bound0 = icmp ult ptr %5, %scevgep767
  %bound1 = icmp ult ptr %scevgep765, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph428.preheader, label %vector.main.loop.iter.check769

vector.main.loop.iter.check769:                   ; preds = %vector.memcheck
  %min.iters.check770 = icmp ult i64 %indvar, 16
  br i1 %min.iters.check770, label %vec.epilog.ph791, label %vector.ph771

vector.ph771:                                     ; preds = %vector.main.loop.iter.check769
  %i.ma = and i64 %indvar, 12
  %n.vec772 = and i64 %indvar, -16                ; 5 uses
  %i.mb = or disjoint i64 %n.vec772, 1
  %i.mc = add i64 %n.vec772, %i.ly                ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.g, i64 %i.ly
  br label %vector.body773

vector.body773:                                   ; preds = %vector.body773, %vector.ph771
  %index774 = phi i64 [ 0, %vector.ph771 ], [ %index.next782, %vector.body773 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index774 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.mf = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <4 x double>, ptr %gep, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %wide.load775 = load <4 x double>, ptr %i.md, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %wide.load776 = load <4 x double>, ptr %i.me, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %wide.load777 = load <4 x double>, ptr %i.mf, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %i.mg = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.mh = fcmp oge <4 x double> %wide.load775, zeroinitializer
  %i.mi = fcmp oge <4 x double> %wide.load776, zeroinitializer
  %i.mj = fcmp oge <4 x double> %wide.load777, zeroinitializer
  %i.mk = fneg <4 x double> %wide.load
  %i.ml = fneg <4 x double> %wide.load775
  %i.mm = fneg <4 x double> %wide.load776
  %i.mn = fneg <4 x double> %wide.load777
  %i.mo = select <4 x i1> %i.mg, <4 x double> %wide.load, <4 x double> %i.mk
  %i.mp = select <4 x i1> %i.mh, <4 x double> %wide.load775, <4 x double> %i.ml
  %i.mq = select <4 x i1> %i.mi, <4 x double> %wide.load776, <4 x double> %i.mm
  %i.mr = select <4 x i1> %i.mj, <4 x double> %wide.load777, <4 x double> %i.mn
  %i.ms = getelementptr [8 x i8], ptr %5, i64 %index774 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 64 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 96 ; 2 uses
  %wide.load778 = load <4 x double>, ptr %i.ms, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %wide.load779 = load <4 x double>, ptr %i.mt, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %wide.load780 = load <4 x double>, ptr %i.mu, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %wide.load781 = load <4 x double>, ptr %i.mv, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %i.mw = fadd <4 x double> %wide.load778, %i.mo
  %i.mx = fadd <4 x double> %wide.load779, %i.mp
  %i.my = fadd <4 x double> %wide.load780, %i.mq
  %i.mz = fadd <4 x double> %wide.load781, %i.mr
  store <4 x double> %i.mw, ptr %i.ms, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  store <4 x double> %i.mx, ptr %i.mt, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  store <4 x double> %i.my, ptr %i.mu, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  store <4 x double> %i.mz, ptr %i.mv, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %index.next782 = add nuw i64 %index774, 16      ; 2 uses
  %i.na = icmp eq i64 %index.next782, %n.vec772
  br i1 %i.na, label %middle.block783, label %vector.body773, !llvm.loop !42

middle.block783:                                  ; preds = %vector.body773
  %cmp.n784 = icmp eq i64 %indvar, %n.vec772
  br i1 %cmp.n784, label %._crit_edge429.loopexit, label %vec.epilog.iter.check789

vec.epilog.iter.check789:                         ; preds = %middle.block783
  %min.epilog.iters.check790 = icmp eq i64 %i.ma, 0
  br i1 %min.epilog.iters.check790, label %.lr.ph428.preheader, label %vec.epilog.ph791, !prof !34

vec.epilog.ph791:                                 ; preds = %vector.main.loop.iter.check769, %vec.epilog.iter.check789
  %vec.epilog.resume.val785 = phi i64 [ %n.vec772, %vec.epilog.iter.check789 ], [ 0, %vector.main.loop.iter.check769 ]
  %n.vec792 = and i64 %indvar, -4                 ; 4 uses
  %i.nb = or disjoint i64 %n.vec792, 1
  %i.nc = add i64 %n.vec792, %i.ly                ; 2 uses
  %invariant.gep1019 = getelementptr [8 x i8], ptr %i.g, i64 %i.ly
  br label %vec.epilog.vector.body793

vec.epilog.vector.body793:                        ; preds = %vec.epilog.vector.body793, %vec.epilog.ph791
  %index794 = phi i64 [ %vec.epilog.resume.val785, %vec.epilog.ph791 ], [ %index.next797, %vec.epilog.vector.body793 ] ; 3 uses
  %gep1020 = getelementptr [8 x i8], ptr %invariant.gep1019, i64 %index794
  %wide.load795 = load <4 x double>, ptr %gep1020, align 8, !tbaa !9, !alias.scope !37 ; 3 uses
  %i.nd = fcmp oge <4 x double> %wide.load795, zeroinitializer
  %i.ne = fneg <4 x double> %wide.load795
  %i.nf = select <4 x i1> %i.nd, <4 x double> %wide.load795, <4 x double> %i.ne
  %i.ng = getelementptr [8 x i8], ptr %5, i64 %index794 ; 2 uses
  %wide.load796 = load <4 x double>, ptr %i.ng, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %i.nh = fadd <4 x double> %wide.load796, %i.nf
  store <4 x double> %i.nh, ptr %i.ng, align 8, !tbaa !9, !alias.scope !40, !noalias !37
  %index.next797 = add nuw i64 %index794, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next797, %n.vec792
  br i1 %i.ni, label %vec.epilog.middle.block798, label %vec.epilog.vector.body793, !llvm.loop !43

vec.epilog.middle.block798:                       ; preds = %vec.epilog.vector.body793
  %cmp.n799 = icmp eq i64 %indvar, %n.vec792
  br i1 %cmp.n799, label %._crit_edge429.loopexit, label %.lr.ph428.preheader

.lr.ph428.preheader:                              ; preds = %vector.memcheck, %iter.check787, %vec.epilog.iter.check789, %vec.epilog.middle.block798
  %indvars.iv586.ph = phi i64 [ 1, %iter.check787 ], [ 1, %vector.memcheck ], [ %i.mb, %vec.epilog.iter.check789 ], [ %i.nb, %vec.epilog.middle.block798 ] ; 4 uses
  %indvars.iv584.ph = phi i64 [ %i.ly, %iter.check787 ], [ %i.ly, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check789 ], [ %i.nc, %vec.epilog.middle.block798 ] ; 2 uses
  %i.nj = sub i64 %indvars.iv593, %indvars.iv586.ph
  %i.nk = sub i64 %indvar, %indvars.iv586.ph
  %xtraiter = and i64 %i.nj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph428.prol.loopexit, label %.lr.ph428.prol

.lr.ph428.prol:                                   ; preds = %.lr.ph428.preheader, %.lr.ph428.prol
  %indvars.iv586.prol = phi i64 [ %indvars.iv.next587.prol, %.lr.ph428.prol ], [ %indvars.iv586.ph, %.lr.ph428.preheader ] ; 2 uses
  %indvars.iv584.prol = phi i64 [ %indvars.iv.next585.prol, %.lr.ph428.prol ], [ %indvars.iv584.ph, %.lr.ph428.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph428.prol ], [ 0, %.lr.ph428.preheader ]
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv584.prol
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !9 ; 3 uses
  %i.nn = fcmp oge double %i.nm, 0.000000e+00
  %i.no = fneg double %i.nm
  %i.np = select i1 %i.nn, double %i.nm, double %i.no
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586.prol ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !9
  %i.ns = fadd double %i.nr, %i.np
  store double %i.ns, ptr %i.nq, align 8, !tbaa !9
  %indvars.iv.next585.prol = add nsw i64 %indvars.iv584.prol, 1 ; 3 uses
  %indvars.iv.next587.prol = add nuw nsw i64 %indvars.iv586.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph428.prol.loopexit, label %.lr.ph428.prol, !llvm.loop !44

.lr.ph428.prol.loopexit:                          ; preds = %.lr.ph428.prol, %.lr.ph428.preheader
  %indvars.iv.next585.lcssa983.unr = phi i64 [ poison, %.lr.ph428.preheader ], [ %indvars.iv.next585.prol, %.lr.ph428.prol ]
  %indvars.iv586.unr = phi i64 [ %indvars.iv586.ph, %.lr.ph428.preheader ], [ %indvars.iv.next587.prol, %.lr.ph428.prol ]
  %indvars.iv584.unr = phi i64 [ %indvars.iv584.ph, %.lr.ph428.preheader ], [ %indvars.iv.next585.prol, %.lr.ph428.prol ]
  %i.nt = icmp ult i64 %i.nk, 3
  br i1 %i.nt, label %._crit_edge429.loopexit, label %.lr.ph428

.lr.ph428:                                        ; preds = %.lr.ph428.prol.loopexit, %.lr.ph428
  %indvars.iv586 = phi i64 [ %indvars.iv.next587.3, %.lr.ph428 ], [ %indvars.iv586.unr, %.lr.ph428.prol.loopexit ] ; 5 uses
  %indvars.iv584 = phi i64 [ %indvars.iv.next585.3, %.lr.ph428 ], [ %indvars.iv584.unr, %.lr.ph428.prol.loopexit ] ; 5 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv584
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !9 ; 3 uses
  %i.nw = fcmp oge double %i.nv, 0.000000e+00
  %i.nx = fneg double %i.nv
  %i.ny = select i1 %i.nw, double %i.nv, double %i.nx
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586 ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !9
  %i.ob = fadd double %i.oa, %i.ny
  store double %i.ob, ptr %i.nz, align 8, !tbaa !9
  %i.oc = getelementptr [8 x i8], ptr %4, i64 %indvars.iv584
  %i.od = load double, ptr %i.oc, align 8, !tbaa !9 ; 3 uses
  %i.oe = fcmp oge double %i.od, 0.000000e+00
  %i.of = fneg double %i.od
  %i.og = select i1 %i.oe, double %i.od, double %i.of
  %i.oh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv586 ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !9
  %i.oj = fadd double %i.oi, %i.og
  store double %i.oj, ptr %i.oh, align 8, !tbaa !9
  %i.ok = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv584
  %i.ol = getelementptr i8, ptr %i.ok, i64 16
  %i.om = load double, ptr %i.ol, align 8, !tbaa !9 ; 3 uses
  %i.on = fcmp oge double %i.om, 0.000000e+00
  %i.oo = fneg double %i.om
  %i.op = select i1 %i.on, double %i.om, double %i.oo
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16 ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !9
  %i.ot = fadd double %i.os, %i.op
  store double %i.ot, ptr %i.or, align 8, !tbaa !9
  %i.ou = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv584
  %i.ov = getelementptr i8, ptr %i.ou, i64 24
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !9 ; 3 uses
  %i.ox = fcmp oge double %i.ow, 0.000000e+00
  %i.oy = fneg double %i.ow
  %i.oz = select i1 %i.ox, double %i.ow, double %i.oy
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv586
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24 ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !9
  %i.pd = fadd double %i.pc, %i.oz
  store double %i.pd, ptr %i.pb, align 8, !tbaa !9
  %indvars.iv.next585.3 = add nsw i64 %indvars.iv584, 4 ; 2 uses
  %indvars.iv.next587.3 = add nuw nsw i64 %indvars.iv586, 4 ; 2 uses
  %exitcond592.not.3 = icmp eq i64 %indvars.iv.next587.3, %indvars.iv593
  br i1 %exitcond592.not.3, label %._crit_edge429.loopexit, label %.lr.ph428, !llvm.loop !45

._crit_edge429.loopexit:                          ; preds = %.lr.ph428.prol.loopexit, %.lr.ph428, %vec.epilog.middle.block798, %middle.block783
  %indvars.iv.next585.lcssa = phi i64 [ %i.nc, %vec.epilog.middle.block798 ], [ %i.mc, %middle.block783 ], [ %indvars.iv.next585.lcssa983.unr, %.lr.ph428.prol.loopexit ], [ %indvars.iv.next585.3, %.lr.ph428 ]
  %i.pe = trunc nsw i64 %indvars.iv.next585.lcssa to i32
  br label %._crit_edge429

._crit_edge429:                                   ; preds = %._crit_edge429.loopexit, %.lr.ph434
  %.7242.lcssa = phi i32 [ %.6241433, %.lr.ph434 ], [ %i.pe, %._crit_edge429.loopexit ]
  %i.pf = add nsw i32 %.7242.lcssa, 1
  %indvars.iv.next594 = add nuw nsw i64 %indvars.iv593, 1 ; 2 uses
  %exitcond597.not = icmp eq i64 %indvars.iv.next594, %wide.trip.count596
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond597.not, label %.loopexit356, label %.lr.ph434, !llvm.loop !46

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not292471, label %.loopexit356, label %.lr.ph448.preheader

.lr.ph448.preheader:                              ; preds = %bb.ad
  %i.pg = zext nneg i32 %i.lh to i64
  %i.ph = shl nuw nsw i64 %i.pg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %i.ph, i1 false), !tbaa !9
  %i.pi = add nuw i32 %i.lh, 1
  %wide.trip.count615 = zext i32 %i.pi to i64
  %scevgep806 = getelementptr i8, ptr %4, i64 -8
  br label %iter.check833

iter.check833:                                    ; preds = %.lr.ph448.preheader, %.loopexit966
  %indvar803 = phi i64 [ 0, %.lr.ph448.preheader ], [ %indvar.next804, %.loopexit966 ] ; 2 uses
  %indvars.iv612 = phi i64 [ 1, %.lr.ph448.preheader ], [ %indvars.iv.next617, %.loopexit966 ] ; 10 uses
  %.8243447 = phi i64 [ 2, %.lr.ph448.preheader ], [ %indvars.iv.next613, %.loopexit966 ] ; 3 uses
  %indvars.iv601 = phi i32 [ 1, %.lr.ph448.preheader ], [ %indvars.iv.next602, %.loopexit966 ] ; 3 uses
  %6 = sext i32 %indvars.iv601 to i64             ; 6 uses
  %min.iters.check813 = icmp samesign ult i64 %indvars.iv612, 4
  br i1 %min.iters.check813, label %vec.epilog.scalar.ph834.preheader, label %vector.memcheck802

vector.memcheck802:                               ; preds = %iter.check833
  %i.pj = shl nuw nsw i64 %indvar803, 3           ; 2 uses
  %scevgep808 = getelementptr i8, ptr %4, i64 %i.pj
  %7 = sext i32 %indvars.iv601 to i64
  %8 = shl nsw i64 %7, 3                          ; 2 uses
  %scevgep805 = getelementptr i8, ptr %scevgep808, i64 %8
  %scevgep817 = getelementptr i8, ptr %scevgep806, i64 %8
  %scevgep807 = getelementptr i8, ptr %5, i64 %i.pj
  %scevgep809 = getelementptr i8, ptr %scevgep807, i64 8
  %bound0810 = icmp ult ptr %5, %scevgep805
  %bound1811 = icmp ult ptr %scevgep817, %scevgep809
  %found.conflict812 = and i1 %bound0810, %bound1811
  br i1 %found.conflict812, label %vec.epilog.scalar.ph834.preheader, label %vector.main.loop.iter.check814

vector.main.loop.iter.check814:                   ; preds = %vector.memcheck802
  %min.iters.check815 = icmp samesign ult i64 %indvars.iv612, 16
  br i1 %min.iters.check815, label %vec.epilog.ph837, label %vector.ph816

vector.ph816:                                     ; preds = %vector.main.loop.iter.check814
  %i.pk = and i64 %indvars.iv612, 12
  %n.vec817 = and i64 %indvars.iv612, 9223372036854775792 ; 5 uses
  %i.pl = or disjoint i64 %n.vec817, 1
  %i.pm = add i64 %n.vec817, %6
  %i.pn = getelementptr [8 x i8], ptr %i.g, i64 %6
  br label %vector.body818

vector.body818:                                   ; preds = %vector.body818, %vector.ph816
  %index819 = phi i64 [ 0, %vector.ph816 ], [ %index.next828, %vector.body818 ] ; 3 uses
  %i.po = getelementptr [8 x i8], ptr %i.pn, i64 %index819 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 64
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 96
  %wide.load820 = load <4 x double>, ptr %i.po, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %wide.load821 = load <4 x double>, ptr %i.pp, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %wide.load822 = load <4 x double>, ptr %i.pq, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %wide.load823 = load <4 x double>, ptr %i.pr, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %i.ps = fcmp oge <4 x double> %wide.load820, zeroinitializer
  %i.pt = fcmp oge <4 x double> %wide.load821, zeroinitializer
  %i.pu = fcmp oge <4 x double> %wide.load822, zeroinitializer
  %i.pv = fcmp oge <4 x double> %wide.load823, zeroinitializer
  %i.pw = fneg <4 x double> %wide.load820
  %i.px = fneg <4 x double> %wide.load821
  %i.py = fneg <4 x double> %wide.load822
  %i.pz = fneg <4 x double> %wide.load823
  %i.qa = select <4 x i1> %i.ps, <4 x double> %wide.load820, <4 x double> %i.pw
  %i.qb = select <4 x i1> %i.pt, <4 x double> %wide.load821, <4 x double> %i.px
  %i.qc = select <4 x i1> %i.pu, <4 x double> %wide.load822, <4 x double> %i.py
  %i.qd = select <4 x i1> %i.pv, <4 x double> %wide.load823, <4 x double> %i.pz
  %i.qe = getelementptr [8 x i8], ptr %5, i64 %index819 ; 5 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 32 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 64 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 96 ; 2 uses
  %wide.load824 = load <4 x double>, ptr %i.qe, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %wide.load825 = load <4 x double>, ptr %i.qf, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %wide.load826 = load <4 x double>, ptr %i.qg, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %wide.load827 = load <4 x double>, ptr %i.qh, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %i.qi = fadd <4 x double> %wide.load824, %i.qa
  %i.qj = fadd <4 x double> %wide.load825, %i.qb
  %i.qk = fadd <4 x double> %wide.load826, %i.qc
  %i.ql = fadd <4 x double> %wide.load827, %i.qd
  store <4 x double> %i.qi, ptr %i.qe, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  store <4 x double> %i.qj, ptr %i.qf, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  store <4 x double> %i.qk, ptr %i.qg, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  store <4 x double> %i.ql, ptr %i.qh, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %index.next828 = add nuw i64 %index819, 16      ; 2 uses
  %i.qm = icmp eq i64 %index.next828, %n.vec817
  br i1 %i.qm, label %middle.block829, label %vector.body818, !llvm.loop !52

middle.block829:                                  ; preds = %vector.body818
  %cmp.n830 = icmp eq i64 %indvars.iv612, %n.vec817
  br i1 %cmp.n830, label %.loopexit966, label %vec.epilog.iter.check835

vec.epilog.iter.check835:                         ; preds = %middle.block829
  %min.epilog.iters.check836 = icmp eq i64 %i.pk, 0
  br i1 %min.epilog.iters.check836, label %vec.epilog.scalar.ph834.preheader, label %vec.epilog.ph837, !prof !34

vec.epilog.ph837:                                 ; preds = %vector.main.loop.iter.check814, %vec.epilog.iter.check835
  %vec.epilog.resume.val831 = phi i64 [ %n.vec817, %vec.epilog.iter.check835 ], [ 0, %vector.main.loop.iter.check814 ]
  %n.vec838 = and i64 %indvars.iv612, 9223372036854775804 ; 4 uses
  %i.qn = or disjoint i64 %n.vec838, 1
  %i.qo = add i64 %n.vec838, %6
  %i.qp = getelementptr [8 x i8], ptr %i.g, i64 %6
  br label %vec.epilog.vector.body839

vec.epilog.vector.body839:                        ; preds = %vec.epilog.vector.body839, %vec.epilog.ph837
  %index840 = phi i64 [ %vec.epilog.resume.val831, %vec.epilog.ph837 ], [ %index.next843, %vec.epilog.vector.body839 ] ; 3 uses
  %i.qq = getelementptr [8 x i8], ptr %i.qp, i64 %index840
  %wide.load841 = load <4 x double>, ptr %i.qq, align 8, !tbaa !9, !alias.scope !47 ; 3 uses
  %i.qr = fcmp oge <4 x double> %wide.load841, zeroinitializer
  %i.qs = fneg <4 x double> %wide.load841
  %i.qt = select <4 x i1> %i.qr, <4 x double> %wide.load841, <4 x double> %i.qs
  %i.qu = getelementptr [8 x i8], ptr %5, i64 %index840 ; 2 uses
  %wide.load842 = load <4 x double>, ptr %i.qu, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %i.qv = fadd <4 x double> %wide.load842, %i.qt
  store <4 x double> %i.qv, ptr %i.qu, align 8, !tbaa !9, !alias.scope !50, !noalias !47
  %index.next843 = add nuw i64 %index840, 4       ; 2 uses
  %i.qw = icmp eq i64 %index.next843, %n.vec838
  br i1 %i.qw, label %vec.epilog.middle.block844, label %vec.epilog.vector.body839, !llvm.loop !53

vec.epilog.middle.block844:                       ; preds = %vec.epilog.vector.body839
  %cmp.n845 = icmp eq i64 %indvars.iv612, %n.vec838
  br i1 %cmp.n845, label %.loopexit966, label %vec.epilog.scalar.ph834.preheader

vec.epilog.scalar.ph834.preheader:                ; preds = %vector.memcheck802, %iter.check833, %vec.epilog.iter.check835, %vec.epilog.middle.block844
  %indvars.iv603.ph.a = phi i64 [ 1, %iter.check833 ], [ 1, %vector.memcheck802 ], [ %i.pl, %vec.epilog.iter.check835 ], [ %i.qn, %vec.epilog.middle.block844 ] ; 4 uses
  %indvars.iv601.ph = phi i64 [ %6, %iter.check833 ], [ %6, %vector.memcheck802 ], [ %i.pm, %vec.epilog.iter.check835 ], [ %i.qo, %vec.epilog.middle.block844 ] ; 2 uses
  %i.qx = sub i64 %.8243447, %indvars.iv603.ph.a
  %i.qy = sub i64 %indvars.iv612, %indvars.iv603.ph.a
  %xtraiter988 = and i64 %i.qx, 3                 ; 2 uses
  %lcmp.mod989.not = icmp eq i64 %xtraiter988, 0
  br i1 %lcmp.mod989.not, label %vec.epilog.scalar.ph834.prol.loopexit, label %vec.epilog.scalar.ph834.prol

vec.epilog.scalar.ph834.prol:                     ; preds = %vec.epilog.scalar.ph834.preheader, %vec.epilog.scalar.ph834.prol
  %indvars.iv603.prol.a = phi i64 [ %indvars.iv.next604.prol, %vec.epilog.scalar.ph834.prol ], [ %indvars.iv603.ph.a, %vec.epilog.scalar.ph834.preheader ] ; 2 uses
  %indvars.iv601.prol = phi i64 [ %indvars.iv.next602.prol, %vec.epilog.scalar.ph834.prol ], [ %indvars.iv601.ph, %vec.epilog.scalar.ph834.preheader ] ; 2 uses
  %prol.iter990 = phi i64 [ %prol.iter990.next, %vec.epilog.scalar.ph834.prol ], [ 0, %vec.epilog.scalar.ph834.preheader ]
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv601.prol
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !9 ; 3 uses
  %i.rb = fcmp oge double %i.ra, 0.000000e+00
  %i.rc = fneg double %i.ra
  %i.rd = select i1 %i.rb, double %i.ra, double %i.rc
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603.prol.a ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !9
  %i.rg = fadd double %i.rf, %i.rd
  store double %i.rg, ptr %i.re, align 8, !tbaa !9
  %indvars.iv.next602.prol = add nsw i64 %indvars.iv601.prol, 1 ; 2 uses
  %indvars.iv.next604.prol = add nuw nsw i64 %indvars.iv603.prol.a, 1 ; 2 uses
  %prol.iter990.next = add i64 %prol.iter990, 1   ; 2 uses
  %prol.iter990.cmp.not = icmp eq i64 %prol.iter990.next, %xtraiter988
  br i1 %prol.iter990.cmp.not, label %vec.epilog.scalar.ph834.prol.loopexit, label %vec.epilog.scalar.ph834.prol, !llvm.loop !54

vec.epilog.scalar.ph834.prol.loopexit:            ; preds = %vec.epilog.scalar.ph834.prol, %vec.epilog.scalar.ph834.preheader
  %indvars.iv603.unr.a = phi i64 [ %indvars.iv603.ph.a, %vec.epilog.scalar.ph834.preheader ], [ %indvars.iv.next604.prol, %vec.epilog.scalar.ph834.prol ]
  %indvars.iv601.unr = phi i64 [ %indvars.iv601.ph, %vec.epilog.scalar.ph834.preheader ], [ %indvars.iv.next602.prol, %vec.epilog.scalar.ph834.prol ]
  %i.rh = icmp ult i64 %i.qy, 3
  br i1 %i.rh, label %.loopexit966, label %vec.epilog.scalar.ph834

vec.epilog.scalar.ph834:                          ; preds = %vec.epilog.scalar.ph834.prol.loopexit, %vec.epilog.scalar.ph834
  %indvars.iv603.a = phi i64 [ %indvars.iv.next604.3, %vec.epilog.scalar.ph834 ], [ %indvars.iv603.unr.a, %vec.epilog.scalar.ph834.prol.loopexit ] ; 5 uses
  %indvars.iv601.a = phi i64 [ %indvars.iv.next602.3, %vec.epilog.scalar.ph834 ], [ %indvars.iv601.unr, %vec.epilog.scalar.ph834.prol.loopexit ] ; 5 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv601.a
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !9 ; 3 uses
  %i.rk = fcmp oge double %i.rj, 0.000000e+00
  %i.rl = fneg double %i.rj
  %i.rm = select i1 %i.rk, double %i.rj, double %i.rl
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603.a ; 2 uses
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !9
  %i.rp = fadd double %i.ro, %i.rm
  store double %i.rp, ptr %i.rn, align 8, !tbaa !9
  %i.rq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv601.a
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !9 ; 3 uses
  %i.rs = fcmp oge double %i.rr, 0.000000e+00
  %i.rt = fneg double %i.rr
  %i.ru = select i1 %i.rs, double %i.rr, double %i.rt
  %i.rv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv603.a ; 2 uses
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !9
  %i.rx = fadd double %i.rw, %i.ru
  store double %i.rx, ptr %i.rv, align 8, !tbaa !9
  %i.ry = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv601.a
  %i.rz = getelementptr i8, ptr %i.ry, i64 16
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !9 ; 3 uses
  %i.sb = fcmp oge double %i.sa, 0.000000e+00
  %i.sc = fneg double %i.sa
  %i.sd = select i1 %i.sb, double %i.sa, double %i.sc
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603.a
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 2 uses
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !9
  %i.sh = fadd double %i.sg, %i.sd
  store double %i.sh, ptr %i.sf, align 8, !tbaa !9
  %i.si = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv601.a
  %i.sj = getelementptr i8, ptr %i.si, i64 24
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !9 ; 3 uses
  %i.sl = fcmp oge double %i.sk, 0.000000e+00
  %i.sm = fneg double %i.sk
  %i.sn = select i1 %i.sl, double %i.sk, double %i.sm
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv603.a
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 24 ; 2 uses
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !9
  %i.sr = fadd double %i.sq, %i.sn
  store double %i.sr, ptr %i.sp, align 8, !tbaa !9
  %indvars.iv.next602.3 = add nsw i64 %indvars.iv601.a, 4
  %indvars.iv.next604.3 = add nuw nsw i64 %indvars.iv603.a, 4 ; 2 uses
  %exitcond611.not.3 = icmp eq i64 %indvars.iv.next604.3, %.8243447
  br i1 %exitcond611.not.3, label %.loopexit966, label %vec.epilog.scalar.ph834, !llvm.loop !55

.loopexit966:                                     ; preds = %vec.epilog.scalar.ph834.prol.loopexit, %vec.epilog.scalar.ph834, %vec.epilog.middle.block844, %middle.block829
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv612, 1 ; 2 uses
  %9 = trunc i64 %indvars.iv612 to i32
  %indvars.iv.next602 = add i32 %indvars.iv601, %9
  %indvars.iv.next613 = add nuw nsw i64 %.8243447, 1
  %exitcond616.not = icmp eq i64 %indvars.iv.next617, %wide.trip.count615
  %indvar.next804 = add i64 %indvar803, 1
  br i1 %exitcond616.not, label %.loopexit356, label %iter.check833, !llvm.loop !56

bb.ae:                                            ; preds = %bb.aa
  br i1 %.not291, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %.not292471, label %.loopexit356, label %iter.check859

iter.check859:                                    ; preds = %bb.af
  %i.ss = add nuw i32 %i.lh, 1
  %wide.trip.count620 = zext i32 %i.ss to i64
  %i.st = zext nneg i32 %i.lh to i64              ; 7 uses
  %min.iters.check848 = icmp ult i32 %i.lh, 4
  br i1 %min.iters.check848, label %.lr.ph454.preheader, label %vector.main.loop.iter.check849

vector.main.loop.iter.check849:                   ; preds = %iter.check859
  %min.iters.check850 = icmp ult i32 %i.lh, 16
  br i1 %min.iters.check850, label %vec.epilog.ph863, label %vector.ph851

vector.ph851:                                     ; preds = %vector.main.loop.iter.check849
  %i.su = and i64 %i.st, 12
  %n.vec852 = and i64 %i.st, 2147483632           ; 4 uses
  %i.sv = or disjoint i64 %n.vec852, 1
  br label %vector.body853

vector.body853:                                   ; preds = %vector.body853, %vector.ph851
  %index854 = phi i64 [ 0, %vector.ph851 ], [ %index.next855, %vector.body853 ] ; 2 uses
  %i.sw = getelementptr [8 x i8], ptr %5, i64 %index854 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.sw, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.sx, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.sy, align 8, !tbaa !9
  store <4 x double> splat (double 1.000000e+00), ptr %i.sz, align 8, !tbaa !9
  %index.next855 = add nuw i64 %index854, 16      ; 2 uses
  %i.ta = icmp eq i64 %index.next855, %n.vec852
  br i1 %i.ta, label %middle.block856, label %vector.body853, !llvm.loop !57

middle.block856:                                  ; preds = %vector.body853
  %cmp.n857 = icmp eq i64 %n.vec852, %i.st
  br i1 %cmp.n857, label %.lr.ph468.preheader, label %vec.epilog.iter.check861

vec.epilog.iter.check861:                         ; preds = %middle.block856
  %min.epilog.iters.check862 = icmp eq i64 %i.su, 0
  br i1 %min.epilog.iters.check862, label %.lr.ph454.preheader, label %vec.epilog.ph863, !prof !34

vec.epilog.ph863:                                 ; preds = %vector.main.loop.iter.check849, %vec.epilog.iter.check861
  %vec.epilog.resume.val858 = phi i64 [ %n.vec852, %vec.epilog.iter.check861 ], [ 0, %vector.main.loop.iter.check849 ]
  %n.vec864 = and i64 %i.st, 2147483644           ; 3 uses
  %i.tb = or disjoint i64 %n.vec864, 1
  br label %vec.epilog.vector.body865

vec.epilog.vector.body865:                        ; preds = %vec.epilog.vector.body865, %vec.epilog.ph863
  %index866 = phi i64 [ %vec.epilog.resume.val858, %vec.epilog.ph863 ], [ %index.next867, %vec.epilog.vector.body865 ] ; 2 uses
  %i.tc = getelementptr [8 x i8], ptr %5, i64 %index866
  store <4 x double> splat (double 1.000000e+00), ptr %i.tc, align 8, !tbaa !9
  %index.next867 = add nuw i64 %index866, 4       ; 2 uses
  %i.td = icmp eq i64 %index.next867, %n.vec864
  br i1 %i.td, label %vec.epilog.middle.block868, label %vec.epilog.vector.body865, !llvm.loop !58

vec.epilog.middle.block868:                       ; preds = %vec.epilog.vector.body865
  %cmp.n869 = icmp eq i64 %n.vec864, %i.st
  br i1 %cmp.n869, label %.lr.ph468.preheader, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %iter.check859, %vec.epilog.iter.check861, %vec.epilog.middle.block868
  %indvars.iv617.ph = phi i64 [ 1, %iter.check859 ], [ %i.sv, %vec.epilog.iter.check861 ], [ %i.tb, %vec.epilog.middle.block868 ]
  br label %.lr.ph454

.lr.ph468.preheader:                              ; preds = %.lr.ph454, %vec.epilog.middle.block868, %middle.block856
  %i.te = add nuw i32 %i.lh, 1
  %wide.trip.count634 = zext i32 %i.te to i64
  %wide.trip.count631 = zext nneg i32 %i.lh to i64 ; 3 uses
  %i.tf = shl nuw nsw i64 %wide.trip.count631, 3  ; 2 uses
  %scevgep875 = getelementptr i8, ptr %5, i64 %i.tf
  %scevgep876 = getelementptr i8, ptr %4, i64 -8
  %i.tg = add nsw i64 %i.tf, -16
  br label %.lr.ph468

.lr.ph454:                                        ; preds = %.lr.ph454.preheader, %.lr.ph454
  %indvars.iv617 = phi i64 [ %indvars.iv.next618, %.lr.ph454 ], [ %indvars.iv617.ph, %.lr.ph454.preheader ] ; 2 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv617
  store double 1.000000e+00, ptr %i.th, align 8, !tbaa !9
  %indvars.iv.next618 = add nuw nsw i64 %indvars.iv617, 1 ; 2 uses
  %exitcond621.not = icmp eq i64 %indvars.iv.next618, %wide.trip.count620
  br i1 %exitcond621.not, label %.lr.ph468.preheader, label %.lr.ph454, !llvm.loop !59

.lr.ph468:                                        ; preds = %.lr.ph468.preheader, %._crit_edge461
  %indvar872 = phi i64 [ 0, %.lr.ph468.preheader ], [ %indvar.next873, %._crit_edge461 ] ; 4 uses
  %indvars.iv624 = phi i64 [ 1, %.lr.ph468.preheader ], [ %indvars.iv.next625, %._crit_edge461 ] ; 8 uses
  %.10245467 = phi i32 [ 1, %.lr.ph468.preheader ], [ %.11246.lcssa, %._crit_edge461 ]
  %i.ti = xor i64 %indvar872, -1
  %i.tj = add i64 %i.ti, %wide.trip.count631      ; 7 uses
  %i.tk = shl nuw nsw i64 %indvar872, 3
  %i.tl = getelementptr i8, ptr %5, i64 %i.tk
  %scevgep874 = getelementptr i8, ptr %i.tl, i64 8
  %i.tm = shl i64 %indvar872, 3
  %i.tn = sub i64 %i.tg, %i.tm
  %scevgep878 = getelementptr i8, ptr %4, i64 %i.tn
  %indvars633 = trunc i64 %indvars.iv624 to i32
  %.11246455 = add i32 %.10245467, 1              ; 2 uses
  %.not299.not456 = icmp sgt i32 %i.lh, %indvars633
  br i1 %.not299.not456, label %iter.check903, label %._crit_edge461

iter.check903:                                    ; preds = %.lr.ph468
  %i.to = sext i32 %.11246455 to i64              ; 7 uses
  %min.iters.check883 = icmp ult i64 %i.tj, 4
  br i1 %min.iters.check883, label %.lr.ph460.preheader, label %vector.memcheck871

vector.memcheck871:                               ; preds = %iter.check903
  %i.tp = shl nsw i64 %i.to, 3                    ; 2 uses
  %scevgep877 = getelementptr i8, ptr %scevgep876, i64 %i.tp
  %scevgep879 = getelementptr i8, ptr %scevgep878, i64 %i.tp
  %bound0880 = icmp ult ptr %scevgep874, %scevgep879
  %bound1881 = icmp ult ptr %scevgep877, %scevgep875
  %found.conflict882 = and i1 %bound0880, %bound1881
  br i1 %found.conflict882, label %.lr.ph460.preheader, label %vector.main.loop.iter.check884

vector.main.loop.iter.check884:                   ; preds = %vector.memcheck871
  %min.iters.check885 = icmp ult i64 %i.tj, 16
  br i1 %min.iters.check885, label %vec.epilog.ph907, label %vector.ph886

vector.ph886:                                     ; preds = %vector.main.loop.iter.check884
  %i.tq = and i64 %i.tj, 12
  %n.vec887 = and i64 %i.tj, -16                  ; 5 uses
  %i.tr = add i64 %indvars.iv624, %n.vec887
  %i.ts = add i64 %n.vec887, %i.to                ; 2 uses
  %invariant.gep1021 = getelementptr [8 x i8], ptr %i.g, i64 %i.to
  %i.tt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv624
  br label %vector.body888

vector.body888:                                   ; preds = %vector.body888, %vector.ph886
  %index889 = phi i64 [ 0, %vector.ph886 ], [ %index.next898, %vector.body888 ] ; 3 uses
  %gep1022 = getelementptr [8 x i8], ptr %invariant.gep1021, i64 %index889 ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %gep1022, i64 32
  %i.tv = getelementptr inbounds nuw i8, ptr %gep1022, i64 64
  %i.tw = getelementptr inbounds nuw i8, ptr %gep1022, i64 96
  %wide.load890 = load <4 x double>, ptr %gep1022, align 8, !tbaa !9, !alias.scope !60 ; 3 uses
  %wide.load891 = load <4 x double>, ptr %i.tu, align 8, !tbaa !9, !alias.scope !60 ; 3 uses
  %wide.load892 = load <4 x double>, ptr %i.tv, align 8, !tbaa !9, !alias.scope !60 ; 3 uses
  %wide.load893 = load <4 x double>, ptr %i.tw, align 8, !tbaa !9, !alias.scope !60 ; 3 uses
  %i.tx = fcmp oge <4 x double> %wide.load890, zeroinitializer
  %i.ty = fcmp oge <4 x double> %wide.load891, zeroinitializer
  %i.tz = fcmp oge <4 x double> %wide.load892, zeroinitializer
  %i.ua = fcmp oge <4 x double> %wide.load893, zeroinitializer
  %i.ub = fneg <4 x double> %wide.load890
  %i.uc = fneg <4 x double> %wide.load891
  %i.ud = fneg <4 x double> %wide.load892
  %i.ue = fneg <4 x double> %wide.load893
  %i.uf = select <4 x i1> %i.tx, <4 x double> %wide.load890, <4 x double> %i.ub
  %i.ug = select <4 x i1> %i.ty, <4 x double> %wide.load891, <4 x double> %i.uc
  %i.uh = select <4 x i1> %i.tz, <4 x double> %wide.load892, <4 x double> %i.ud
  %i.ui = select <4 x i1> %i.ua, <4 x double> %wide.load893, <4 x double> %i.ue
  %i.uj = getelementptr [8 x i8], ptr %i.tt, i64 %index889 ; 5 uses
  %i.uk = getelementptr i8, ptr %i.uj, i64 32     ; 2 uses
  %i.ul = getelementptr i8, ptr %i.uj, i64 64     ; 2 uses
  %i.um = getelementptr i8, ptr %i.uj, i64 96     ; 2 uses
  %wide.load894 = load <4 x double>, ptr %i.uj, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  %wide.load895 = load <4 x double>, ptr %i.uk, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  %wide.load896 = load <4 x double>, ptr %i.ul, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  %wide.load897 = load <4 x double>, ptr %i.um, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  %i.un = fadd <4 x double> %wide.load894, %i.uf
  %i.uo = fadd <4 x double> %wide.load895, %i.ug
  %i.up = fadd <4 x double> %wide.load896, %i.uh
  %i.uq = fadd <4 x double> %wide.load897, %i.ui
  store <4 x double> %i.un, ptr %i.uj, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  store <4 x double> %i.uo, ptr %i.uk, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  store <4 x double> %i.up, ptr %i.ul, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  store <4 x double> %i.uq, ptr %i.um, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  %index.next898 = add nuw i64 %index889, 16      ; 2 uses
  %i.ur = icmp eq i64 %index.next898, %n.vec887
  br i1 %i.ur, label %middle.block899, label %vector.body888, !llvm.loop !65

middle.block899:                                  ; preds = %vector.body888
  %cmp.n900 = icmp eq i64 %i.tj, %n.vec887
  br i1 %cmp.n900, label %._crit_edge461.loopexit, label %vec.epilog.iter.check905

vec.epilog.iter.check905:                         ; preds = %middle.block899
  %min.epilog.iters.check906 = icmp eq i64 %i.tq, 0
  br i1 %min.epilog.iters.check906, label %.lr.ph460.preheader, label %vec.epilog.ph907, !prof !34

vec.epilog.ph907:                                 ; preds = %vector.main.loop.iter.check884, %vec.epilog.iter.check905
  %vec.epilog.resume.val901 = phi i64 [ %n.vec887, %vec.epilog.iter.check905 ], [ 0, %vector.main.loop.iter.check884 ]
  %n.vec908 = and i64 %i.tj, -4                   ; 4 uses
  %i.us = add i64 %indvars.iv624, %n.vec908
  %i.ut = add i64 %n.vec908, %i.to                ; 2 uses
  %invariant.gep1023 = getelementptr [8 x i8], ptr %i.g, i64 %i.to
  %i.uu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv624
  br label %vec.epilog.vector.body909

vec.epilog.vector.body909:                        ; preds = %vec.epilog.vector.body909, %vec.epilog.ph907
  %index910 = phi i64 [ %vec.epilog.resume.val901, %vec.epilog.ph907 ], [ %index.next913, %vec.epilog.vector.body909 ] ; 3 uses
  %gep1024 = getelementptr [8 x i8], ptr %invariant.gep1023, i64 %index910
  %wide.load911 = load <4 x double>, ptr %gep1024, align 8, !tbaa !9, !alias.scope !60 ; 3 uses
  %i.uv = fcmp oge <4 x double> %wide.load911, zeroinitializer
  %i.uw = fneg <4 x double> %wide.load911
  %i.ux = select <4 x i1> %i.uv, <4 x double> %wide.load911, <4 x double> %i.uw
  %i.uy = getelementptr [8 x i8], ptr %i.uu, i64 %index910 ; 2 uses
  %wide.load912 = load <4 x double>, ptr %i.uy, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  %i.uz = fadd <4 x double> %wide.load912, %i.ux
  store <4 x double> %i.uz, ptr %i.uy, align 8, !tbaa !9, !alias.scope !63, !noalias !60
  %index.next913 = add nuw i64 %index910, 4       ; 2 uses
  %i.va = icmp eq i64 %index.next913, %n.vec908
  br i1 %i.va, label %vec.epilog.middle.block914, label %vec.epilog.vector.body909, !llvm.loop !66

vec.epilog.middle.block914:                       ; preds = %vec.epilog.vector.body909
  %cmp.n915 = icmp eq i64 %i.tj, %n.vec908
  br i1 %cmp.n915, label %._crit_edge461.loopexit, label %.lr.ph460.preheader

.lr.ph460.preheader:                              ; preds = %vector.memcheck871, %iter.check903, %vec.epilog.iter.check905, %vec.epilog.middle.block914
  %indvars.iv626.ph = phi i64 [ %indvars.iv624, %iter.check903 ], [ %indvars.iv624, %vector.memcheck871 ], [ %i.tr, %vec.epilog.iter.check905 ], [ %i.us, %vec.epilog.middle.block914 ] ; 4 uses
  %indvars.iv622.ph = phi i64 [ %i.to, %iter.check903 ], [ %i.to, %vector.memcheck871 ], [ %i.ts, %vec.epilog.iter.check905 ], [ %i.ut, %vec.epilog.middle.block914 ] ; 2 uses
  %i.vb = sub i64 %i.st, %indvars.iv626.ph
  %xtraiter991 = and i64 %i.vb, 3                 ; 2 uses
  %lcmp.mod992.not = icmp eq i64 %xtraiter991, 0
  br i1 %lcmp.mod992.not, label %.lr.ph460.prol.loopexit, label %.lr.ph460.prol

.lr.ph460.prol:                                   ; preds = %.lr.ph460.preheader, %.lr.ph460.prol
  %indvars.iv626.prol = phi i64 [ %indvars.iv.next627.prol, %.lr.ph460.prol ], [ %indvars.iv626.ph, %.lr.ph460.preheader ] ; 2 uses
  %indvars.iv622.prol = phi i64 [ %indvars.iv.next623.prol, %.lr.ph460.prol ], [ %indvars.iv622.ph, %.lr.ph460.preheader ] ; 2 uses
  %prol.iter993 = phi i64 [ %prol.iter993.next, %.lr.ph460.prol ], [ 0, %.lr.ph460.preheader ]
  %indvars.iv.next627.prol = add nuw nsw i64 %indvars.iv626.prol, 1 ; 2 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv622.prol
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !9 ; 3 uses
  %i.ve = fcmp oge double %i.vd, 0.000000e+00
  %i.vf = fneg double %i.vd
  %i.vg = select i1 %i.ve, double %i.vd, double %i.vf
  %i.vh = getelementptr [8 x i8], ptr %5, i64 %indvars.iv626.prol ; 2 uses
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !9
  %i.vj = fadd double %i.vi, %i.vg
  store double %i.vj, ptr %i.vh, align 8, !tbaa !9
  %indvars.iv.next623.prol = add nsw i64 %indvars.iv622.prol, 1 ; 3 uses
  %prol.iter993.next = add i64 %prol.iter993, 1   ; 2 uses
  %prol.iter993.cmp.not = icmp eq i64 %prol.iter993.next, %xtraiter991
  br i1 %prol.iter993.cmp.not, label %.lr.ph460.prol.loopexit, label %.lr.ph460.prol, !llvm.loop !67

.lr.ph460.prol.loopexit:                          ; preds = %.lr.ph460.prol, %.lr.ph460.preheader
  %indvars.iv.next623.lcssa979.unr = phi i64 [ poison, %.lr.ph460.preheader ], [ %indvars.iv.next623.prol, %.lr.ph460.prol ]
  %indvars.iv626.unr = phi i64 [ %indvars.iv626.ph, %.lr.ph460.preheader ], [ %indvars.iv.next627.prol, %.lr.ph460.prol ]
  %indvars.iv622.unr = phi i64 [ %indvars.iv622.ph, %.lr.ph460.preheader ], [ %indvars.iv.next623.prol, %.lr.ph460.prol ]
  %i.vk = sub i64 %indvars.iv626.ph, %i.st
  %i.vl = icmp ugt i64 %i.vk, -4
  br i1 %i.vl, label %._crit_edge461.loopexit, label %.lr.ph460

.lr.ph460:                                        ; preds = %.lr.ph460.prol.loopexit, %.lr.ph460
  %indvars.iv626 = phi i64 [ %indvars.iv.next627.3, %.lr.ph460 ], [ %indvars.iv626.unr, %.lr.ph460.prol.loopexit ] ; 5 uses
  %indvars.iv622 = phi i64 [ %indvars.iv.next623.3, %.lr.ph460 ], [ %indvars.iv622.unr, %.lr.ph460.prol.loopexit ] ; 5 uses
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv622
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !9 ; 3 uses
  %i.vo = fcmp oge double %i.vn, 0.000000e+00
  %i.vp = fneg double %i.vn
  %i.vq = select i1 %i.vo, double %i.vn, double %i.vp
  %i.vr = getelementptr [8 x i8], ptr %5, i64 %indvars.iv626 ; 2 uses
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !9
  %i.vt = fadd double %i.vs, %i.vq
  store double %i.vt, ptr %i.vr, align 8, !tbaa !9
  %i.vu = getelementptr [8 x i8], ptr %4, i64 %indvars.iv622
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !9 ; 3 uses
  %i.vw = fcmp oge double %i.vv, 0.000000e+00
  %i.vx = fneg double %i.vv
  %i.vy = select i1 %i.vw, double %i.vv, double %i.vx
  %i.vz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv626
  %i.wa = getelementptr i8, ptr %i.vz, i64 8      ; 2 uses
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !9
  %i.wc = fadd double %i.wb, %i.vy
  store double %i.wc, ptr %i.wa, align 8, !tbaa !9
  %i.wd = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv622
  %i.we = getelementptr i8, ptr %i.wd, i64 16
  %i.wf = load double, ptr %i.we, align 8, !tbaa !9 ; 3 uses
  %i.wg = fcmp oge double %i.wf, 0.000000e+00
  %i.wh = fneg double %i.wf
  %i.wi = select i1 %i.wg, double %i.wf, double %i.wh
  %i.wj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv626
  %i.wk = getelementptr i8, ptr %i.wj, i64 16     ; 2 uses
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !9
  %i.wm = fadd double %i.wl, %i.wi
  store double %i.wm, ptr %i.wk, align 8, !tbaa !9
  %indvars.iv.next627.3 = add nuw nsw i64 %indvars.iv626, 4 ; 2 uses
  %i.wn = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv622
  %i.wo = getelementptr i8, ptr %i.wn, i64 24
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !9 ; 3 uses
  %i.wq = fcmp oge double %i.wp, 0.000000e+00
  %i.wr = fneg double %i.wp
  %i.ws = select i1 %i.wq, double %i.wp, double %i.wr
  %i.wt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv626
  %i.wu = getelementptr i8, ptr %i.wt, i64 24     ; 2 uses
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !9
  %i.ww = fadd double %i.wv, %i.ws
  store double %i.ww, ptr %i.wu, align 8, !tbaa !9
  %indvars.iv.next623.3 = add nsw i64 %indvars.iv622, 4 ; 2 uses
  %exitcond632.not.3 = icmp eq i64 %indvars.iv.next627.3, %wide.trip.count631
  br i1 %exitcond632.not.3, label %._crit_edge461.loopexit, label %.lr.ph460, !llvm.loop !68

._crit_edge461.loopexit:                          ; preds = %.lr.ph460.prol.loopexit, %.lr.ph460, %vec.epilog.middle.block914, %middle.block899
  %indvars.iv.next623.lcssa = phi i64 [ %i.ut, %vec.epilog.middle.block914 ], [ %i.ts, %middle.block899 ], [ %indvars.iv.next623.lcssa979.unr, %.lr.ph460.prol.loopexit ], [ %indvars.iv.next623.3, %.lr.ph460 ]
  %i.wx = trunc nsw i64 %indvars.iv.next623.lcssa to i32
  br label %._crit_edge461

._crit_edge461:                                   ; preds = %._crit_edge461.loopexit, %.lr.ph468
  %.11246.lcssa = phi i32 [ %.11246455, %.lr.ph468 ], [ %i.wx, %._crit_edge461.loopexit ]
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1 ; 2 uses
  %exitcond635.not = icmp eq i64 %indvars.iv.next625, %wide.trip.count634
  %indvar.next873 = add i64 %indvar872, 1
  br i1 %exitcond635.not, label %.loopexit356, label %.lr.ph468, !llvm.loop !69

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not292471, label %.loopexit356, label %.lr.ph482.preheader

.lr.ph482.preheader:                              ; preds = %bb.ag
  %i.wy = zext nneg i32 %i.lh to i64
  %i.wz = shl nuw nsw i64 %i.wy, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %i.wz, i1 false), !tbaa !9
  %i.xa = add nuw i32 %i.lh, 1
  %wide.trip.count651 = zext i32 %i.xa to i64     ; 4 uses
  %i.xb = shl nuw nsw i64 %wide.trip.count651, 3  ; 2 uses
  %i.xc = getelementptr i8, ptr %5, i64 %i.xb
  %scevgep922 = getelementptr i8, ptr %i.xc, i64 -8
  %scevgep923 = getelementptr i8, ptr %4, i64 -8
  %i.xd = add nsw i64 %i.xb, -16
  %i.xe = zext nneg i32 %i.lh to i64
  %i.xf = zext nneg i32 %i.lh to i64
  br label %iter.check950

iter.check950:                                    ; preds = %.lr.ph482.preheader, %.loopexit965
  %indvar919 = phi i64 [ 0, %.lr.ph482.preheader ], [ %indvar.next920, %.loopexit965 ] ; 4 uses
  %indvars.iv641 = phi i64 [ 1, %.lr.ph482.preheader ], [ %indvars.iv.next652, %.loopexit965 ] ; 7 uses
  %indvars.iv647 = phi i32 [ 1, %.lr.ph482.preheader ], [ %indvars.iv.next648, %.loopexit965 ] ; 3 uses
  %indvars.iv645 = phi i32 [ %i.lh, %.lr.ph482.preheader ], [ %indvars.iv.next646, %.loopexit965 ] ; 2 uses
  %i.xg = sub i64 %i.xe, %indvar919               ; 7 uses
  %10 = sext i32 %indvars.iv647 to i64            ; 6 uses
  %min.iters.check930 = icmp ult i64 %i.xg, 4
  br i1 %min.iters.check930, label %vec.epilog.scalar.ph951.preheader, label %vector.memcheck918

vector.memcheck918:                               ; preds = %iter.check950
  %i.xh = shl i64 %indvar919, 3
  %i.xi = sub i64 %i.xd, %i.xh
  %scevgep925 = getelementptr i8, ptr %4, i64 %i.xi
  %11 = sext i32 %indvars.iv647 to i64
  %i.xj = shl nsw i64 %11, 3                      ; 2 uses
  %scevgep921 = getelementptr i8, ptr %scevgep925, i64 %i.xj
  %scevgep934 = getelementptr i8, ptr %scevgep923, i64 %i.xj
  %12 = shl nuw nsw i64 %indvar919, 3
  %scevgep926 = getelementptr i8, ptr %5, i64 %12
  %bound0927 = icmp ult ptr %scevgep926, %scevgep921
  %bound1928 = icmp ult ptr %scevgep934, %scevgep922
  %found.conflict929 = and i1 %bound0927, %bound1928
  br i1 %found.conflict929, label %vec.epilog.scalar.ph951.preheader, label %vector.main.loop.iter.check931

vector.main.loop.iter.check931:                   ; preds = %vector.memcheck918
  %min.iters.check932 = icmp ult i64 %i.xg, 16
  br i1 %min.iters.check932, label %vec.epilog.ph954, label %vector.ph933

vector.ph933:                                     ; preds = %vector.main.loop.iter.check931
  %i.xk = and i64 %i.xg, 12
  %n.vec934 = and i64 %i.xg, -16                  ; 5 uses
  %i.xl = add i64 %indvars.iv641, %n.vec934
  %i.xm = add i64 %n.vec934, %10
  %i.xn = getelementptr [8 x i8], ptr %i.g, i64 %10
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv641
  br label %vector.body935

vector.body935:                                   ; preds = %vector.body935, %vector.ph933
  %index936 = phi i64 [ 0, %vector.ph933 ], [ %index.next945, %vector.body935 ] ; 3 uses
  %i.xp = getelementptr [8 x i8], ptr %i.xn, i64 %index936 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 32
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xp, i64 96
  %wide.load937 = load <4 x double>, ptr %i.xp, align 8, !tbaa !9, !alias.scope !70 ; 3 uses
  %wide.load938 = load <4 x double>, ptr %i.xq, align 8, !tbaa !9, !alias.scope !70 ; 3 uses
  %wide.load939 = load <4 x double>, ptr %i.xr, align 8, !tbaa !9, !alias.scope !70 ; 3 uses
  %wide.load940 = load <4 x double>, ptr %i.xs, align 8, !tbaa !9, !alias.scope !70 ; 3 uses
  %i.xt = fcmp oge <4 x double> %wide.load937, zeroinitializer
  %i.xu = fcmp oge <4 x double> %wide.load938, zeroinitializer
  %i.xv = fcmp oge <4 x double> %wide.load939, zeroinitializer
  %i.xw = fcmp oge <4 x double> %wide.load940, zeroinitializer
  %i.xx = fneg <4 x double> %wide.load937
  %i.xy = fneg <4 x double> %wide.load938
  %i.xz = fneg <4 x double> %wide.load939
  %i.ya = fneg <4 x double> %wide.load940
  %i.yb = select <4 x i1> %i.xt, <4 x double> %wide.load937, <4 x double> %i.xx
  %i.yc = select <4 x i1> %i.xu, <4 x double> %wide.load938, <4 x double> %i.xy
  %i.yd = select <4 x i1> %i.xv, <4 x double> %wide.load939, <4 x double> %i.xz
  %i.ye = select <4 x i1> %i.xw, <4 x double> %wide.load940, <4 x double> %i.ya
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.xo, i64 %index936 ; 5 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 32 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 64 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 96 ; 2 uses
  %wide.load941 = load <4 x double>, ptr %i.yf, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  %wide.load942 = load <4 x double>, ptr %i.yg, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  %wide.load943 = load <4 x double>, ptr %i.yh, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  %wide.load944 = load <4 x double>, ptr %i.yi, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  %i.yj = fadd <4 x double> %wide.load941, %i.yb
  %i.yk = fadd <4 x double> %wide.load942, %i.yc
  %i.yl = fadd <4 x double> %wide.load943, %i.yd
  %i.ym = fadd <4 x double> %wide.load944, %i.ye
  store <4 x double> %i.yj, ptr %i.yf, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  store <4 x double> %i.yk, ptr %i.yg, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  store <4 x double> %i.yl, ptr %i.yh, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  store <4 x double> %i.ym, ptr %i.yi, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  %index.next945 = add nuw i64 %index936, 16      ; 2 uses
  %i.yn = icmp eq i64 %index.next945, %n.vec934
  br i1 %i.yn, label %middle.block946, label %vector.body935, !llvm.loop !75

middle.block946:                                  ; preds = %vector.body935
  %cmp.n947 = icmp eq i64 %i.xg, %n.vec934
  br i1 %cmp.n947, label %.loopexit965, label %vec.epilog.iter.check952

vec.epilog.iter.check952:                         ; preds = %middle.block946
  %min.epilog.iters.check953 = icmp eq i64 %i.xk, 0
  br i1 %min.epilog.iters.check953, label %vec.epilog.scalar.ph951.preheader, label %vec.epilog.ph954, !prof !34

vec.epilog.ph954:                                 ; preds = %vector.main.loop.iter.check931, %vec.epilog.iter.check952
  %vec.epilog.resume.val948 = phi i64 [ %n.vec934, %vec.epilog.iter.check952 ], [ 0, %vector.main.loop.iter.check931 ]
  %n.vec955 = and i64 %i.xg, -4                   ; 4 uses
  %i.yo = add i64 %indvars.iv641, %n.vec955
  %i.yp = add i64 %n.vec955, %10
  %i.yq = getelementptr [8 x i8], ptr %i.g, i64 %10
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv641
  br label %vec.epilog.vector.body956

vec.epilog.vector.body956:                        ; preds = %vec.epilog.vector.body956, %vec.epilog.ph954
  %index957 = phi i64 [ %vec.epilog.resume.val948, %vec.epilog.ph954 ], [ %index.next960, %vec.epilog.vector.body956 ] ; 3 uses
  %i.ys = getelementptr [8 x i8], ptr %i.yq, i64 %index957
  %wide.load958 = load <4 x double>, ptr %i.ys, align 8, !tbaa !9, !alias.scope !70 ; 3 uses
  %i.yt = fcmp oge <4 x double> %wide.load958, zeroinitializer
  %i.yu = fneg <4 x double> %wide.load958
  %i.yv = select <4 x i1> %i.yt, <4 x double> %wide.load958, <4 x double> %i.yu
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %index957 ; 2 uses
  %wide.load959 = load <4 x double>, ptr %i.yw, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  %i.yx = fadd <4 x double> %wide.load959, %i.yv
  store <4 x double> %i.yx, ptr %i.yw, align 8, !tbaa !9, !alias.scope !73, !noalias !70
  %index.next960 = add nuw i64 %index957, 4       ; 2 uses
  %i.yy = icmp eq i64 %index.next960, %n.vec955
  br i1 %i.yy, label %vec.epilog.middle.block961, label %vec.epilog.vector.body956, !llvm.loop !76

vec.epilog.middle.block961:                       ; preds = %vec.epilog.vector.body956
  %cmp.n962 = icmp eq i64 %i.xg, %n.vec955
  br i1 %cmp.n962, label %.loopexit965, label %vec.epilog.scalar.ph951.preheader

vec.epilog.scalar.ph951.preheader:                ; preds = %vector.memcheck918, %iter.check950, %vec.epilog.iter.check952, %vec.epilog.middle.block961
  %indvars.iv643.ph = phi i64 [ %indvars.iv641, %iter.check950 ], [ %indvars.iv641, %vector.memcheck918 ], [ %i.xl, %vec.epilog.iter.check952 ], [ %i.yo, %vec.epilog.middle.block961 ] ; 4 uses
  %indvars.iv639.ph = phi i64 [ %10, %iter.check950 ], [ %10, %vector.memcheck918 ], [ %i.xm, %vec.epilog.iter.check952 ], [ %i.yp, %vec.epilog.middle.block961 ] ; 2 uses
  %i.yz = sub i64 %wide.trip.count651, %indvars.iv643.ph
  %i.za = sub i64 %i.xf, %indvars.iv643.ph
  %xtraiter994 = and i64 %i.yz, 3                 ; 2 uses
  %lcmp.mod995.not = icmp eq i64 %xtraiter994, 0
  br i1 %lcmp.mod995.not, label %vec.epilog.scalar.ph951.prol.loopexit, label %vec.epilog.scalar.ph951.prol

vec.epilog.scalar.ph951.prol:                     ; preds = %vec.epilog.scalar.ph951.preheader, %vec.epilog.scalar.ph951.prol
  %indvars.iv643.prol = phi i64 [ %indvars.iv.next644.prol, %vec.epilog.scalar.ph951.prol ], [ %indvars.iv643.ph, %vec.epilog.scalar.ph951.preheader ] ; 2 uses
  %indvars.iv639.prol = phi i64 [ %indvars.iv.next640.prol, %vec.epilog.scalar.ph951.prol ], [ %indvars.iv639.ph, %vec.epilog.scalar.ph951.preheader ] ; 2 uses
  %prol.iter996 = phi i64 [ %prol.iter996.next, %vec.epilog.scalar.ph951.prol ], [ 0, %vec.epilog.scalar.ph951.preheader ]
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv639.prol
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !9 ; 3 uses
  %i.zd = fcmp oge double %i.zc, 0.000000e+00
  %i.ze = fneg double %i.zc
  %i.zf = select i1 %i.zd, double %i.zc, double %i.ze
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv643.prol ; 2 uses
  %i.zh = load double, ptr %i.zg, align 8, !tbaa !9
  %i.zi = fadd double %i.zh, %i.zf
  store double %i.zi, ptr %i.zg, align 8, !tbaa !9
  %indvars.iv.next640.prol = add nsw i64 %indvars.iv639.prol, 1 ; 2 uses
  %indvars.iv.next644.prol = add nuw nsw i64 %indvars.iv643.prol, 1 ; 2 uses
  %prol.iter996.next = add i64 %prol.iter996, 1   ; 2 uses
  %prol.iter996.cmp.not = icmp eq i64 %prol.iter996.next, %xtraiter994
  br i1 %prol.iter996.cmp.not, label %vec.epilog.scalar.ph951.prol.loopexit, label %vec.epilog.scalar.ph951.prol, !llvm.loop !77

vec.epilog.scalar.ph951.prol.loopexit:            ; preds = %vec.epilog.scalar.ph951.prol, %vec.epilog.scalar.ph951.preheader
  %indvars.iv643.unr = phi i64 [ %indvars.iv643.ph, %vec.epilog.scalar.ph951.preheader ], [ %indvars.iv.next644.prol, %vec.epilog.scalar.ph951.prol ]
  %indvars.iv639.unr = phi i64 [ %indvars.iv639.ph, %vec.epilog.scalar.ph951.preheader ], [ %indvars.iv.next640.prol, %vec.epilog.scalar.ph951.prol ]
  %i.zj = icmp ult i64 %i.za, 3
  br i1 %i.zj, label %.loopexit965, label %vec.epilog.scalar.ph951

vec.epilog.scalar.ph951:                          ; preds = %vec.epilog.scalar.ph951.prol.loopexit, %vec.epilog.scalar.ph951
  %indvars.iv643 = phi i64 [ %indvars.iv.next644.3, %vec.epilog.scalar.ph951 ], [ %indvars.iv643.unr, %vec.epilog.scalar.ph951.prol.loopexit ] ; 5 uses
  %indvars.iv639 = phi i64 [ %indvars.iv.next640.3, %vec.epilog.scalar.ph951 ], [ %indvars.iv639.unr, %vec.epilog.scalar.ph951.prol.loopexit ] ; 5 uses
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv639
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !9 ; 3 uses
  %i.zm = fcmp oge double %i.zl, 0.000000e+00
  %i.zn = fneg double %i.zl
  %i.zo = select i1 %i.zm, double %i.zl, double %i.zn
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv643 ; 2 uses
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !9
  %i.zr = fadd double %i.zq, %i.zo
  store double %i.zr, ptr %i.zp, align 8, !tbaa !9
  %i.zs = getelementptr [8 x i8], ptr %4, i64 %indvars.iv639
  %i.zt = load double, ptr %i.zs, align 8, !tbaa !9 ; 3 uses
  %i.zu = fcmp oge double %i.zt, 0.000000e+00
  %i.zv = fneg double %i.zt
  %i.zw = select i1 %i.zu, double %i.zt, double %i.zv
  %i.zx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv643 ; 2 uses
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !9
  %i.zz = fadd double %i.zy, %i.zw
  store double %i.zz, ptr %i.zx, align 8, !tbaa !9
  %i.aaa = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv639
  %i.aab = getelementptr i8, ptr %i.aaa, i64 16
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !9 ; 3 uses
  %i.aad = fcmp oge double %i.aac, 0.000000e+00
  %i.aae = fneg double %i.aac
  %i.aaf = select i1 %i.aad, double %i.aac, double %i.aae
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv643
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16 ; 2 uses
  %i.aai = load double, ptr %i.aah, align 8, !tbaa !9
  %i.aaj = fadd double %i.aai, %i.aaf
  store double %i.aaj, ptr %i.aah, align 8, !tbaa !9
  %i.aak = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv639
  %i.aal = getelementptr i8, ptr %i.aak, i64 24
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !9 ; 3 uses
  %i.aan = fcmp oge double %i.aam, 0.000000e+00
  %i.aao = fneg double %i.aam
  %i.aap = select i1 %i.aan, double %i.aam, double %i.aao
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv643
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 24 ; 2 uses
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !9
  %i.aat = fadd double %i.aas, %i.aap
  store double %i.aat, ptr %i.aar, align 8, !tbaa !9
  %indvars.iv.next640.3 = add nsw i64 %indvars.iv639, 4
  %indvars.iv.next644.3 = add nuw nsw i64 %indvars.iv643, 4 ; 2 uses
  %exitcond649.not.3 = icmp eq i64 %indvars.iv.next644.3, %wide.trip.count651
  br i1 %exitcond649.not.3, label %.loopexit965, label %vec.epilog.scalar.ph951, !llvm.loop !78

.loopexit965:                                     ; preds = %vec.epilog.scalar.ph951.prol.loopexit, %vec.epilog.scalar.ph951, %vec.epilog.middle.block961, %middle.block946
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %indvars.iv.next646 = add i32 %indvars.iv645, -1
  %indvars.iv.next648 = add i32 %indvars.iv647, %indvars.iv645
  %exitcond652.not = icmp eq i64 %indvars.iv.next652, %wide.trip.count651
  %indvar.next920 = add i64 %indvar919, 1
  br i1 %exitcond652.not, label %.loopexit356, label %iter.check950, !llvm.loop !79

.loopexit356:                                     ; preds = %._crit_edge429, %.loopexit966, %._crit_edge461, %.loopexit965, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.not308485 = icmp slt i32 %i.lh, 1
  br i1 %.not308485, label %.loopexit347, label %.lr.ph489.preheader

.lr.ph489.preheader:                              ; preds = %.loopexit356
  %i.aau = add nuw i32 %i.lh, 1
  %wide.trip.count656 = zext i32 %i.aau to i64
  br label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %._crit_edge684
  %indvars.iv653 = phi i64 [ 1, %.lr.ph489.preheader ], [ %indvars.iv.next654, %._crit_edge684 ] ; 2 uses
  %.16487 = phi double [ 0.000000e+00, %.lr.ph489.preheader ], [ %.17, %._crit_edge684 ] ; 2 uses
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv653
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !9 ; 3 uses
  store double %i.aaw, ptr %i.d, align 8, !tbaa !9
  %i.aax = fcmp olt double %.16487, %i.aaw
  br i1 %i.aax, label %._crit_edge684, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph489
  %i.aay = call i32 @disnan_(ptr noundef nonnull %i.d) #5
  %.not309 = icmp eq i32 %i.aay, 0
  %.pre685 = load double, ptr %i.d, align 8
  %spec.select740 = select i1 %.not309, double %.16487, double %.pre685
  br label %._crit_edge684

._crit_edge684:                                   ; preds = %bb.ah, %.lr.ph489
  %.17 = phi double [ %spec.select740, %bb.ah ], [ %i.aaw, %.lr.ph489 ] ; 2 uses
  %indvars.iv.next654 = add nuw nsw i64 %indvars.iv653, 1 ; 2 uses
  %exitcond657.not = icmp eq i64 %indvars.iv.next654, %wide.trip.count656
  br i1 %exitcond657.not, label %.loopexit347, label %.lr.ph489, !llvm.loop !80

bb.ai:                                            ; preds = %bb.z
  %i.aaz = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #5
  %.not278 = icmp eq i32 %i.aaz, 0
  br i1 %.not278, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aba = tail call i32 @lsame_(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #5
  %.not279 = icmp eq i32 %i.aba, 0
  br i1 %.not279, label %.loopexit347, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.abb = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %.not280 = icmp eq i32 %i.abb, 0
  %i.abc = tail call i32 @lsame_(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  %.not281 = icmp eq i32 %i.abc, 0                ; 2 uses
  br i1 %.not280, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not281, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  store double 1.000000e+00, ptr %i.e, align 16, !tbaa !9
  %i.abd = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %i.abe = sitofp i32 %i.abd to double
  %i.abf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.abe, ptr %i.abf, align 8, !tbaa !9
  %.not289491 = icmp slt i32 %i.abd, 2
  br i1 %.not289491, label %.loopexit351, label %.lr.ph495

.lr.ph495:                                        ; preds = %bb.am
  %i.abg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph495, %bb.an
  %i.abh = phi i32 [ 2, %.lr.ph495 ], [ %i.abl, %bb.an ] ; 4 uses
  %.14249493 = phi i32 [ 2, %.lr.ph495 ], [ %i.abk, %bb.an ] ; 2 uses
  %storemerge288492 = phi i32 [ 1, %.lr.ph495 ], [ %i.abh, %bb.an ]
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 16, !tbaa !9
  store i32 %storemerge288492, ptr %i.a, align 4, !tbaa !8
  %i.abi = zext nneg i32 %.14249493 to i64
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.abi
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.abj, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.abg) #5
  call void @dcombssq_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) #5
  %i.abk = add nuw nsw i32 %i.abh, %.14249493
  %i.abl = add nuw nsw i32 %i.abh, 1
  %.not289.not = icmp slt i32 %i.abh, %i.abd
  br i1 %.not289.not, label %bb.an, label %.loopexit351, !llvm.loop !81

bb.ao:                                            ; preds = %bb.al
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.e, align 16, !tbaa !9
  %i.abm = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  store i32 1, ptr %i.b, align 4, !tbaa !8
  %.not287496 = icmp slt i32 %i.abm, 1
  br i1 %.not287496, label %.loopexit351, label %.lr.ph499

.lr.ph499:                                        ; preds = %bb.ao
  %i.abn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph499, %bb.ap
  %.15250497 = phi i32 [ 1, %.lr.ph499 ], [ %i.abr, %bb.ap ] ; 2 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 16, !tbaa !9
  %i.abo = sext i32 %.15250497 to i64
  %i.abp = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.abo
  call void @dlassq_(ptr noundef nonnull %i.b, ptr noundef nonnull %i.abp, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.abn) #5
  call void @dcombssq_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) #5
  %i.abq = load i32, ptr %i.b, align 4, !tbaa !8  ; 3 uses
  %i.abr = add nsw i32 %i.abq, %.15250497
  %i.abs = add nsw i32 %i.abq, 1
  store i32 %i.abs, ptr %i.b, align 4, !tbaa !8
  %.not287.not = icmp slt i32 %i.abq, %i.abm
  br i1 %.not287.not, label %bb.ap, label %.loopexit351, !llvm.loop !82

bb.aq:                                            ; preds = %bb.ak
  br i1 %.not281, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store double 1.000000e+00, ptr %i.e, align 16, !tbaa !9
  %i.abt = load i32, ptr %3, align 4, !tbaa !8    ; 4 uses
  %i.abu = sitofp i32 %i.abt to double
  %i.abv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %i.abu, ptr %i.abv, align 8, !tbaa !9
  %.not284.not500 = icmp sgt i32 %i.abt, 1
  br i1 %.not284.not500, label %.lr.ph504, label %.loopexit351

.lr.ph504:                                        ; preds = %bb.ar
  %i.abw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph504, %bb.as
  %i.abx = phi i32 [ %i.abt, %.lr.ph504 ], [ %i.acc, %bb.as ]
  %.16251502 = phi i32 [ 2, %.lr.ph504 ], [ %i.acf, %bb.as ] ; 2 uses
  %i.aby = phi i32 [ 1, %.lr.ph504 ], [ %i.acg, %bb.as ] ; 3 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 16, !tbaa !9
  %i.abz = sub nsw i32 %i.abx, %i.aby
  store i32 %i.abz, ptr %i.a, align 4, !tbaa !8
  %i.aca = sext i32 %.16251502 to i64
  %i.acb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aca
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.acb, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.abw) #5
  call void @dcombssq_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) #5
  %i.acc = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.acd = add i32 %.16251502, 1
  %i.ace = add i32 %i.acd, %i.acc
  %i.acf = sub i32 %i.ace, %i.aby
  %i.acg = add nuw nsw i32 %i.aby, 1              ; 2 uses
  %.not284.not = icmp slt i32 %i.acg, %i.abt
  br i1 %.not284.not, label %bb.as, label %.loopexit351, !llvm.loop !83

bb.at:                                            ; preds = %bb.aq
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.e, align 16, !tbaa !9
  %i.ach = load i32, ptr %3, align 4, !tbaa !8    ; 3 uses
  %.not282505 = icmp slt i32 %i.ach, 1
  br i1 %.not282505, label %.loopexit351, label %.lr.ph509

.lr.ph509:                                        ; preds = %bb.at
  %i.aci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph509, %bb.au
  %i.acj = phi i32 [ %i.ach, %.lr.ph509 ], [ %i.aco, %bb.au ]
  %.17252507 = phi i32 [ 1, %.lr.ph509 ], [ %i.acr, %bb.au ] ; 2 uses
  %i.ack = phi i32 [ 1, %.lr.ph509 ], [ %i.acs, %bb.au ] ; 4 uses
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 16, !tbaa !9
  %reass.sub = sub i32 %i.acj, %i.ack
  %i.acl = add i32 %reass.sub, 1
  store i32 %i.acl, ptr %i.a, align 4, !tbaa !8
  %i.acm = sext i32 %.17252507 to i64
  %i.acn = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.acm
  call void @dlassq_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.acn, ptr noundef nonnull @c__1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.aci) #5
  call void @dcombssq_(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c) #5
  %i.aco = load i32, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.acp = add i32 %.17252507, 1
  %i.acq = add i32 %i.acp, %i.aco
  %i.acr = sub i32 %i.acq, %i.ack
  %i.acs = add nuw nsw i32 %i.ack, 1
  %.not282.not = icmp slt i32 %i.ack, %i.ach
  br i1 %.not282.not, label %bb.au, label %.loopexit351, !llvm.loop !84

.loopexit351:                                     ; preds = %bb.an, %bb.ap, %bb.as, %bb.au, %bb.am, %bb.ao, %bb.ar, %bb.at
  %i.act = load double, ptr %i.e, align 16, !tbaa !9
  %i.acu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !9
  %i.acw = call double @sqrt(double noundef %i.acv) #5
  %i.acx = fmul double %i.act, %i.acw
  br label %.loopexit347

.loopexit347:                                     ; preds = %._crit_edge, %._crit_edge383, %._crit_edge397, %._crit_edge411, %._crit_edge684, %._crit_edge686, %._crit_edge688, %bb.e, %bb.g, %bb.j, %bb.l, %.loopexit356, %bb.q, %bb.u, %bb.a, %.loopexit351, %bb.aj
  %.18 = phi double [ undef, %bb.aj ], [ %.17, %._crit_edge684 ], [ %.13, %._crit_edge686 ], [ %.15, %._crit_edge688 ], [ %.4.lcssa, %._crit_edge383 ], [ %.10.lcssa, %._crit_edge411 ], [ 0.000000e+00, %bb.a ], [ %.7.lcssa, %._crit_edge397 ], [ %i.acx, %.loopexit351 ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %.loopexit356 ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.j ], [ 1.000000e+00, %bb.g ], [ 1.000000e+00, %bb.e ], [ %.1.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret double %.18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @disnan_(ptr noundef) local_unnamed_addr #2

declare void @dlassq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcombssq_(ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
