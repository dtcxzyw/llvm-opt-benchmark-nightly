Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/ipqp?download=true
inline.NumInlined: 1443
inline.NumDeleted: 504
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZNK6casadi4Ipqp5solveEPPKdPPdPxS4_Pv:bb.a
  br i1 %i.ft, label %.loopexit.i, label %.lr.ph.i31.i

.preheader.i36.i:                                 ; preds = %.loopexit198
  br i1 %i.fb, label %.lr.ph23.preheader.i37.i, label %.loopexit.i

.lr.ph23.preheader.i37.i:                         ; preds = %.preheader.i36.i
  %i.fu = shl nuw i64 %i.bm, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.fu, i1 false), !tbaa !35
  br label %.loopexit.i

.lr.ph.i31.i:                                     ; preds = %.lr.ph.i31.i.prol.loopexit, %.lr.ph.i31.i
  %.020.i32.i = phi i64 [ %i.gt, %.lr.ph.i31.i ], [ %.020.i32.i.unr, %.lr.ph.i31.i.prol.loopexit ]
  %.01019.i33.i = phi ptr [ %i.gs, %.lr.ph.i31.i ], [ %.01019.i33.i.unr, %.lr.ph.i31.i.prol.loopexit ] ; 9 uses
  %.01218.i34.i = phi ptr [ %i.gq, %.lr.ph.i31.i ], [ %.01218.i34.i.unr, %.lr.ph.i31.i.prol.loopexit ] ; 9 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 8
  %i.fw = load double, ptr %.01218.i34.i, align 8, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 8
  store double %i.fw, ptr %.01019.i33.i, align 8, !tbaa !35
  %i.fy = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 16
  %i.fz = load double, ptr %i.fv, align 8, !tbaa !35
  %i.ga = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 16
  store double %i.fz, ptr %i.fx, align 8, !tbaa !35
  %i.gb = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 24
  %i.gc = load double, ptr %i.fy, align 8, !tbaa !35
  %i.gd = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 24
  store double %i.gc, ptr %i.ga, align 8, !tbaa !35
  %i.ge = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 32
  %i.gf = load double, ptr %i.gb, align 8, !tbaa !35
  %i.gg = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 32
  store double %i.gf, ptr %i.gd, align 8, !tbaa !35
  %i.gh = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 40
  %i.gi = load double, ptr %i.ge, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 40
  store double %i.gi, ptr %i.gg, align 8, !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 48
  %i.gl = load double, ptr %i.gh, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 48
  store double %i.gl, ptr %i.gj, align 8, !tbaa !35
  %i.gn = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 56
  %i.go = load double, ptr %i.gk, align 8, !tbaa !35
  %i.gp = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 56
  store double %i.go, ptr %i.gm, align 8, !tbaa !35
  %i.gq = getelementptr inbounds nuw i8, ptr %.01218.i34.i, i64 64
  %i.gr = load double, ptr %i.gn, align 8, !tbaa !35
  %i.gs = getelementptr inbounds nuw i8, ptr %.01019.i33.i, i64 64
  store double %i.gr, ptr %i.gp, align 8, !tbaa !35
  %i.gt = add nuw nsw i64 %.020.i32.i, 8          ; 2 uses
  %exitcond.not.i35.i.7 = icmp eq i64 %i.gt, %i.bm
  br i1 %exitcond.not.i35.i.7, label %.loopexit.i, label %.lr.ph.i31.i, !llvm.loop !257

.loopexit.i:                                      ; preds = %.lr.ph.i31.i.prol.loopexit, %.lr.ph.i31.i, %middle.block236, %.lr.ph23.preheader.i37.i, %.preheader.i36.i, %.preheader16.i30.i
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bm ; 5 uses
  %.not15.i40.i = icmp eq ptr %i.bj, null
  %i.gv = icmp sgt i64 %i.dg, 0                   ; 2 uses
  br i1 %.not15.i40.i, label %.preheader.i47.i, label %.preheader16.i41.i

.preheader16.i41.i:                               ; preds = %.loopexit.i
  br i1 %i.gv, label %.lr.ph.i42.i.preheader, label %.loopexit

.lr.ph.i42.i.preheader:                           ; preds = %.preheader16.i41.i
  %min.iters.check244 = icmp ult i64 %i.dg, 24
  br i1 %min.iters.check244, label %.lr.ph.i42.i.preheader375, label %vector.memcheck241

vector.memcheck241:                               ; preds = %.lr.ph.i42.i.preheader
  %i.gw = add i64 %i.e, %i.m
  %i.gx = add i64 %i.gw, %i.bm
  %i.gy = shl i64 %i.gx, 3
  %i.gz = add i64 %i.gy, %i.a
  %i.ha = sub i64 %i.bk, %i.gz
  %diff.check242 = icmp ugt i64 %i.ha, -32
  br i1 %diff.check242, label %.lr.ph.i42.i.preheader375, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck241
  %n.vec246 = and i64 %i.dg, 9223372036854775804  ; 4 uses
  %i.hb = shl i64 %n.vec246, 3                    ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gu, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.bj, i64 %i.hb
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next253, %vector.body247 ] ; 2 uses
  %i.he = shl i64 %index248, 3                    ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.gu, i64 %i.he ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.bj, i64 %i.he ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load251 = load <2 x double>, ptr %next.gep250, align 8, !tbaa !35
  %wide.load252 = load <2 x double>, ptr %i.hf, align 8, !tbaa !35
  %i.hg = getelementptr i8, ptr %next.gep249, i64 16
  store <2 x double> %wide.load251, ptr %next.gep249, align 8, !tbaa !35
  store <2 x double> %wide.load252, ptr %i.hg, align 8, !tbaa !35
  %index.next253 = add nuw i64 %index248, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.hh, label %middle.block254, label %vector.body247, !llvm.loop !258

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %i.dg, %n.vec246
  br i1 %cmp.n255, label %.loopexit, label %.lr.ph.i42.i.preheader375

.lr.ph.i42.i.preheader375:                        ; preds = %vector.memcheck241, %.lr.ph.i42.i.preheader, %middle.block254
  %.020.i43.i.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %.lr.ph.i42.i.preheader ], [ %n.vec246, %middle.block254 ] ; 4 uses
  %.01019.i44.i.ph = phi ptr [ %i.gu, %vector.memcheck241 ], [ %i.gu, %.lr.ph.i42.i.preheader ], [ %i.hc, %middle.block254 ] ; 2 uses
  %.01218.i45.i.ph = phi ptr [ %i.bj, %vector.memcheck241 ], [ %i.bj, %.lr.ph.i42.i.preheader ], [ %i.hd, %middle.block254 ] ; 2 uses
  %i.hi = sub nsw i64 %i.dg, %.020.i43.i.ph
  %xtraiter385 = and i64 %i.hi, 7                 ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol

.lr.ph.i42.i.prol:                                ; preds = %.lr.ph.i42.i.preheader375, %.lr.ph.i42.i.prol
  %.020.i43.i.prol = phi i64 [ %i.hm, %.lr.ph.i42.i.prol ], [ %.020.i43.i.ph, %.lr.ph.i42.i.preheader375 ]
  %.01019.i44.i.prol = phi ptr [ %i.hl, %.lr.ph.i42.i.prol ], [ %.01019.i44.i.ph, %.lr.ph.i42.i.preheader375 ] ; 2 uses
  %.01218.i45.i.prol = phi ptr [ %i.hj, %.lr.ph.i42.i.prol ], [ %.01218.i45.i.ph, %.lr.ph.i42.i.preheader375 ] ; 2 uses
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph.i42.i.prol ], [ 0, %.lr.ph.i42.i.preheader375 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.01218.i45.i.prol, i64 8 ; 2 uses
  %i.hk = load double, ptr %.01218.i45.i.prol, align 8, !tbaa !35
  %i.hl = getelementptr inbounds nuw i8, ptr %.01019.i44.i.prol, i64 8 ; 2 uses
  store double %i.hk, ptr %.01019.i44.i.prol, align 8, !tbaa !35
  %i.hm = add nuw nsw i64 %.020.i43.i.prol, 1     ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph.i42.i.prol.loopexit, label %.lr.ph.i42.i.prol, !llvm.loop !259

.lr.ph.i42.i.prol.loopexit:                       ; preds = %.lr.ph.i42.i.prol, %.lr.ph.i42.i.preheader375
  %.020.i43.i.unr = phi i64 [ %.020.i43.i.ph, %.lr.ph.i42.i.preheader375 ], [ %i.hm, %.lr.ph.i42.i.prol ]
  %.01019.i44.i.unr = phi ptr [ %.01019.i44.i.ph, %.lr.ph.i42.i.preheader375 ], [ %i.hl, %.lr.ph.i42.i.prol ]
  %.01218.i45.i.unr = phi ptr [ %.01218.i45.i.ph, %.lr.ph.i42.i.preheader375 ], [ %i.hj, %.lr.ph.i42.i.prol ]
  %i.hn = sub nsw i64 %.020.i43.i.ph, %i.dg
  %i.ho = icmp ugt i64 %i.hn, -8
  br i1 %i.ho, label %.loopexit, label %.lr.ph.i42.i

.preheader.i47.i:                                 ; preds = %.loopexit.i
  br i1 %i.gv, label %.lr.ph23.preheader.i48.i, label %.loopexit

.lr.ph23.preheader.i48.i:                         ; preds = %.preheader.i47.i
  %i.hp = shl nuw i64 %i.dg, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gu, i8 0, i64 %i.hp, i1 false), !tbaa !35
  br label %.loopexit

.lr.ph.i42.i:                                     ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i
  %.020.i43.i = phi i64 [ %i.io, %.lr.ph.i42.i ], [ %.020.i43.i.unr, %.lr.ph.i42.i.prol.loopexit ]
  %.01019.i44.i = phi ptr [ %i.in, %.lr.ph.i42.i ], [ %.01019.i44.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 9 uses
  %.01218.i45.i = phi ptr [ %i.il, %.lr.ph.i42.i ], [ %.01218.i45.i.unr, %.lr.ph.i42.i.prol.loopexit ] ; 9 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 8
  %i.hr = load double, ptr %.01218.i45.i, align 8, !tbaa !35
  %i.hs = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 8
  store double %i.hr, ptr %.01019.i44.i, align 8, !tbaa !35
  %i.ht = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 16
  %i.hu = load double, ptr %i.hq, align 8, !tbaa !35
  %i.hv = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 16
  store double %i.hu, ptr %i.hs, align 8, !tbaa !35
  %i.hw = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 24
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !35
  %i.hy = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 24
  store double %i.hx, ptr %i.hv, align 8, !tbaa !35
  %i.hz = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 32
  %i.ia = load double, ptr %i.hw, align 8, !tbaa !35
  %i.ib = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 32
  store double %i.ia, ptr %i.hy, align 8, !tbaa !35
  %i.ic = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 40
  %i.id = load double, ptr %i.hz, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 40
  store double %i.id, ptr %i.ib, align 8, !tbaa !35
  %i.if = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 48
  %i.ig = load double, ptr %i.ic, align 8, !tbaa !35
  %i.ih = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 48
  store double %i.ig, ptr %i.ie, align 8, !tbaa !35
  %i.ii = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 56
  %i.ij = load double, ptr %i.if, align 8, !tbaa !35
  %i.ik = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 56
  store double %i.ij, ptr %i.ih, align 8, !tbaa !35
  %i.il = getelementptr inbounds nuw i8, ptr %.01218.i45.i, i64 64
  %i.im = load double, ptr %i.ii, align 8, !tbaa !35
  %i.in = getelementptr inbounds nuw i8, ptr %.01019.i44.i, i64 64
  store double %i.im, ptr %i.ik, align 8, !tbaa !35
  %i.io = add nuw nsw i64 %.020.i43.i, 8          ; 2 uses
  %exitcond.not.i46.i.7 = icmp eq i64 %i.io, %i.dg
  br i1 %exitcond.not.i46.i.7, label %.loopexit, label %.lr.ph.i42.i, !llvm.loop !260

.loopexit:                                        ; preds = %.lr.ph.i42.i.prol.loopexit, %.lr.ph.i42.i, %middle.block254, %.preheader16.i41.i, %.preheader.i47.i, %.lr.ph23.preheader.i48.i
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !163 ; 6 uses
  %i.ir = ptrtoaddr ptr %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !163 ; 6 uses
  %i.iu = ptrtoaddr ptr %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !163 ; 6 uses
  %i.ix = ptrtoaddr ptr %i.iw to i64
  %.not15.i.i41 = icmp eq ptr %i.iq, null
  %i.iy = icmp sgt i64 %i.bm, 0                   ; 2 uses
  br i1 %.not15.i.i41, label %.preheader.i.i50, label %.preheader16.i.i42

.preheader16.i.i42:                               ; preds = %.loopexit
  br i1 %i.iy, label %.lr.ph.i.i45.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43

.lr.ph.i.i45.preheader:                           ; preds = %.preheader16.i.i42
  %min.iters.check262 = icmp ult i64 %i.bm, 18
  br i1 %min.iters.check262, label %.lr.ph.i.i45.preheader374, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.lr.ph.i.i45.preheader
  %i.iz = shl i64 %i.m, 4
  %9 = add i64 %i.iz, %i.a
  %10 = shl i64 %i.e, 3
  %i.ja = add i64 %9, %10
  %i.jb = sub i64 %i.ir, %i.ja
  %diff.check260 = icmp ugt i64 %i.jb, -32
  br i1 %diff.check260, label %.lr.ph.i.i45.preheader374, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck259
  %n.vec264 = and i64 %i.bm, 9223372036854775804  ; 4 uses
  %i.jc = shl i64 %n.vec264, 3                    ; 2 uses
  %i.jd = getelementptr i8, ptr %i.p, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.iq, i64 %i.jc
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next271, %vector.body265 ] ; 2 uses
  %i.jf = shl i64 %index266, 3                    ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.p, i64 %i.jf ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.iq, i64 %i.jf ; 2 uses
  %i.jg = getelementptr i8, ptr %next.gep268, i64 16
  %wide.load269 = load <2 x double>, ptr %next.gep268, align 8, !tbaa !35
  %wide.load270 = load <2 x double>, ptr %i.jg, align 8, !tbaa !35
  %i.jh = getelementptr i8, ptr %next.gep267, i64 16
  store <2 x double> %wide.load269, ptr %next.gep267, align 8, !tbaa !35
  store <2 x double> %wide.load270, ptr %i.jh, align 8, !tbaa !35
  %index.next271 = add nuw i64 %index266, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next271, %n.vec264
  br i1 %i.ji, label %middle.block272, label %vector.body265, !llvm.loop !261

middle.block272:                                  ; preds = %vector.body265
  %cmp.n273 = icmp eq i64 %i.bm, %n.vec264
  br i1 %cmp.n273, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43, label %.lr.ph.i.i45.preheader374

.lr.ph.i.i45.preheader374:                        ; preds = %vector.memcheck259, %.lr.ph.i.i45.preheader, %middle.block272
  %.020.i.i46.ph = phi i64 [ 0, %vector.memcheck259 ], [ 0, %.lr.ph.i.i45.preheader ], [ %n.vec264, %middle.block272 ] ; 4 uses
  %.01019.i.i47.ph = phi ptr [ %i.p, %vector.memcheck259 ], [ %i.p, %.lr.ph.i.i45.preheader ], [ %i.jd, %middle.block272 ] ; 2 uses
  %.01218.i.i48.ph = phi ptr [ %i.iq, %vector.memcheck259 ], [ %i.iq, %.lr.ph.i.i45.preheader ], [ %i.je, %middle.block272 ] ; 2 uses
  %i.jj = sub nsw i64 %i.bm, %.020.i.i46.ph
  %xtraiter388 = and i64 %i.jj, 7                 ; 2 uses
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %.lr.ph.i.i45.prol.loopexit, label %.lr.ph.i.i45.prol

.lr.ph.i.i45.prol:                                ; preds = %.lr.ph.i.i45.preheader374, %.lr.ph.i.i45.prol
  %.020.i.i46.prol = phi i64 [ %i.jn, %.lr.ph.i.i45.prol ], [ %.020.i.i46.ph, %.lr.ph.i.i45.preheader374 ]
  %.01019.i.i47.prol = phi ptr [ %i.jm, %.lr.ph.i.i45.prol ], [ %.01019.i.i47.ph, %.lr.ph.i.i45.preheader374 ] ; 2 uses
  %.01218.i.i48.prol = phi ptr [ %i.jk, %.lr.ph.i.i45.prol ], [ %.01218.i.i48.ph, %.lr.ph.i.i45.preheader374 ] ; 2 uses
  %prol.iter390 = phi i64 [ %prol.iter390.next, %.lr.ph.i.i45.prol ], [ 0, %.lr.ph.i.i45.preheader374 ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.01218.i.i48.prol, i64 8 ; 2 uses
  %i.jl = load double, ptr %.01218.i.i48.prol, align 8, !tbaa !35
  %i.jm = getelementptr inbounds nuw i8, ptr %.01019.i.i47.prol, i64 8 ; 2 uses
  store double %i.jl, ptr %.01019.i.i47.prol, align 8, !tbaa !35
  %i.jn = add nuw nsw i64 %.020.i.i46.prol, 1     ; 2 uses
  %prol.iter390.next = add i64 %prol.iter390, 1   ; 2 uses
  %prol.iter390.cmp.not = icmp eq i64 %prol.iter390.next, %xtraiter388
  br i1 %prol.iter390.cmp.not, label %.lr.ph.i.i45.prol.loopexit, label %.lr.ph.i.i45.prol, !llvm.loop !262

.lr.ph.i.i45.prol.loopexit:                       ; preds = %.lr.ph.i.i45.prol, %.lr.ph.i.i45.preheader374
  %.020.i.i46.unr = phi i64 [ %.020.i.i46.ph, %.lr.ph.i.i45.preheader374 ], [ %i.jn, %.lr.ph.i.i45.prol ]
  %.01019.i.i47.unr = phi ptr [ %.01019.i.i47.ph, %.lr.ph.i.i45.preheader374 ], [ %i.jm, %.lr.ph.i.i45.prol ]
  %.01218.i.i48.unr = phi ptr [ %.01218.i.i48.ph, %.lr.ph.i.i45.preheader374 ], [ %i.jk, %.lr.ph.i.i45.prol ]
  %i.jo = sub nsw i64 %.020.i.i46.ph, %i.bm
  %i.jp = icmp ugt i64 %i.jo, -8
  br i1 %i.jp, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43, label %.lr.ph.i.i45

.preheader.i.i50:                                 ; preds = %.loopexit
  br i1 %i.iy, label %.lr.ph23.preheader.i.i51, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43

.lr.ph23.preheader.i.i51:                         ; preds = %.preheader.i.i50
  %i.jq = shl nuw i64 %i.bm, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.jq, i1 false), !tbaa !35
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.prol.loopexit, %.lr.ph.i.i45
  %.020.i.i46 = phi i64 [ %i.kp, %.lr.ph.i.i45 ], [ %.020.i.i46.unr, %.lr.ph.i.i45.prol.loopexit ]
  %.01019.i.i47 = phi ptr [ %i.ko, %.lr.ph.i.i45 ], [ %.01019.i.i47.unr, %.lr.ph.i.i45.prol.loopexit ] ; 9 uses
  %.01218.i.i48 = phi ptr [ %i.km, %.lr.ph.i.i45 ], [ %.01218.i.i48.unr, %.lr.ph.i.i45.prol.loopexit ] ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 8
  %i.js = load double, ptr %.01218.i.i48, align 8, !tbaa !35
  %i.jt = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 8
  store double %i.js, ptr %.01019.i.i47, align 8, !tbaa !35
  %i.ju = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 16
  %i.jv = load double, ptr %i.jr, align 8, !tbaa !35
  %i.jw = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 16
  store double %i.jv, ptr %i.jt, align 8, !tbaa !35
  %i.jx = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 24
  %i.jy = load double, ptr %i.ju, align 8, !tbaa !35
  %i.jz = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 24
  store double %i.jy, ptr %i.jw, align 8, !tbaa !35
  %i.ka = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 32
  %i.kb = load double, ptr %i.jx, align 8, !tbaa !35
  %i.kc = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 32
  store double %i.kb, ptr %i.jz, align 8, !tbaa !35
  %i.kd = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 40
  %i.ke = load double, ptr %i.ka, align 8, !tbaa !35
  %i.kf = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 40
  store double %i.ke, ptr %i.kc, align 8, !tbaa !35
  %i.kg = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 48
  %i.kh = load double, ptr %i.kd, align 8, !tbaa !35
  %i.ki = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 48
  store double %i.kh, ptr %i.kf, align 8, !tbaa !35
  %i.kj = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 56
  %i.kk = load double, ptr %i.kg, align 8, !tbaa !35
  %i.kl = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 56
  store double %i.kk, ptr %i.ki, align 8, !tbaa !35
  %i.km = getelementptr inbounds nuw i8, ptr %.01218.i.i48, i64 64
  %i.kn = load double, ptr %i.kj, align 8, !tbaa !35
  %i.ko = getelementptr inbounds nuw i8, ptr %.01019.i.i47, i64 64
  store double %i.kn, ptr %i.kl, align 8, !tbaa !35
  %i.kp = add nuw nsw i64 %.020.i.i46, 8          ; 2 uses
  %exitcond.not.i.i49.7 = icmp eq i64 %i.kp, %i.bm
  br i1 %exitcond.not.i.i49.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43, label %.lr.ph.i.i45, !llvm.loop !263

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43:   ; preds = %.lr.ph.i.i45.prol.loopexit, %.lr.ph.i.i45, %middle.block272, %.lr.ph23.preheader.i.i51, %.preheader.i.i50, %.preheader16.i.i42
  %i.kq = icmp sgt i64 %i.dg, 0                   ; 3 uses
  br i1 %i.kq, label %.lr.ph.i19.preheader.i, label %bb.c

.lr.ph.i19.preheader.i:                           ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43
  %i.kr = getelementptr [8 x i8], ptr %i.p, i64 %i.bm
  %i.ks = shl nuw i64 %i.dg, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.kr, i8 0, i64 %i.ks, i1 false), !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i19.preheader.i, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.i43
  %.not15.i22.i = icmp eq ptr %i.it, null
  %i.kt = icmp sgt i64 %i.bm, 0                   ; 2 uses
  br i1 %.not15.i22.i, label %.preheader.i29.i, label %.preheader16.i23.i

.preheader16.i23.i:                               ; preds = %bb.c
  br i1 %i.kt, label %.lr.ph.i24.i.preheader, label %.loopexit.i44

.lr.ph.i24.i.preheader:                           ; preds = %.preheader16.i23.i
  %min.iters.check280 = icmp ult i64 %i.bm, 20
  br i1 %min.iters.check280, label %.lr.ph.i24.i.preheader373, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i24.i.preheader
  %i.ku = mul i64 %i.m, 24
  %11 = add i64 %i.ku, %i.a
  %12 = shl i64 %i.e, 3
  %i.kv = add i64 %11, %12
  %i.kw = sub i64 %i.iu, %i.kv
  %diff.check278 = icmp ugt i64 %i.kw, -32
  br i1 %diff.check278, label %.lr.ph.i24.i.preheader373, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck277
  %n.vec282 = and i64 %i.bm, 9223372036854775804  ; 4 uses
  %i.kx = shl i64 %n.vec282, 3                    ; 2 uses
  %i.ky = getelementptr i8, ptr %i.r, i64 %i.kx
  %i.kz = getelementptr i8, ptr %i.it, i64 %i.kx
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next289, %vector.body283 ] ; 2 uses
  %i.la = shl i64 %index284, 3                    ; 2 uses
  %next.gep285 = getelementptr i8, ptr %i.r, i64 %i.la ; 2 uses
  %next.gep286 = getelementptr i8, ptr %i.it, i64 %i.la ; 2 uses
  %i.lb = getelementptr i8, ptr %next.gep286, i64 16
  %wide.load287 = load <2 x double>, ptr %next.gep286, align 8, !tbaa !35
  %wide.load288 = load <2 x double>, ptr %i.lb, align 8, !tbaa !35
  %i.lc = getelementptr i8, ptr %next.gep285, i64 16
  store <2 x double> %wide.load287, ptr %next.gep285, align 8, !tbaa !35
  store <2 x double> %wide.load288, ptr %i.lc, align 8, !tbaa !35
  %index.next289 = add nuw i64 %index284, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next289, %n.vec282
  br i1 %i.ld, label %middle.block290, label %vector.body283, !llvm.loop !264

middle.block290:                                  ; preds = %vector.body283
  %cmp.n291 = icmp eq i64 %i.bm, %n.vec282
  br i1 %cmp.n291, label %.loopexit.i44, label %.lr.ph.i24.i.preheader373

.lr.ph.i24.i.preheader373:                        ; preds = %vector.memcheck277, %.lr.ph.i24.i.preheader, %middle.block290
  %.020.i25.i.ph = phi i64 [ 0, %vector.memcheck277 ], [ 0, %.lr.ph.i24.i.preheader ], [ %n.vec282, %middle.block290 ] ; 4 uses
  %.01019.i26.i.ph = phi ptr [ %i.r, %vector.memcheck277 ], [ %i.r, %.lr.ph.i24.i.preheader ], [ %i.ky, %middle.block290 ] ; 2 uses
  %.01218.i27.i.ph = phi ptr [ %i.it, %vector.memcheck277 ], [ %i.it, %.lr.ph.i24.i.preheader ], [ %i.kz, %middle.block290 ] ; 2 uses
  %i.le = sub nsw i64 %i.bm, %.020.i25.i.ph
  %xtraiter391 = and i64 %i.le, 7                 ; 2 uses
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol

.lr.ph.i24.i.prol:                                ; preds = %.lr.ph.i24.i.preheader373, %.lr.ph.i24.i.prol
  %.020.i25.i.prol = phi i64 [ %i.li, %.lr.ph.i24.i.prol ], [ %.020.i25.i.ph, %.lr.ph.i24.i.preheader373 ]
  %.01019.i26.i.prol = phi ptr [ %i.lh, %.lr.ph.i24.i.prol ], [ %.01019.i26.i.ph, %.lr.ph.i24.i.preheader373 ] ; 2 uses
  %.01218.i27.i.prol = phi ptr [ %i.lf, %.lr.ph.i24.i.prol ], [ %.01218.i27.i.ph, %.lr.ph.i24.i.preheader373 ] ; 2 uses
  %prol.iter393 = phi i64 [ %prol.iter393.next, %.lr.ph.i24.i.prol ], [ 0, %.lr.ph.i24.i.preheader373 ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.01218.i27.i.prol, i64 8 ; 2 uses
  %i.lg = load double, ptr %.01218.i27.i.prol, align 8, !tbaa !35
  %i.lh = getelementptr inbounds nuw i8, ptr %.01019.i26.i.prol, i64 8 ; 2 uses
  store double %i.lg, ptr %.01019.i26.i.prol, align 8, !tbaa !35
  %i.li = add nuw nsw i64 %.020.i25.i.prol, 1     ; 2 uses
  %prol.iter393.next = add i64 %prol.iter393, 1   ; 2 uses
  %prol.iter393.cmp.not = icmp eq i64 %prol.iter393.next, %xtraiter391
  br i1 %prol.iter393.cmp.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol, !llvm.loop !265

.lr.ph.i24.i.prol.loopexit:                       ; preds = %.lr.ph.i24.i.prol, %.lr.ph.i24.i.preheader373
  %.020.i25.i.unr = phi i64 [ %.020.i25.i.ph, %.lr.ph.i24.i.preheader373 ], [ %i.li, %.lr.ph.i24.i.prol ]
  %.01019.i26.i.unr = phi ptr [ %.01019.i26.i.ph, %.lr.ph.i24.i.preheader373 ], [ %i.lh, %.lr.ph.i24.i.prol ]
  %.01218.i27.i.unr = phi ptr [ %.01218.i27.i.ph, %.lr.ph.i24.i.preheader373 ], [ %i.lf, %.lr.ph.i24.i.prol ]
  %i.lj = sub nsw i64 %.020.i25.i.ph, %i.bm
  %i.lk = icmp ugt i64 %i.lj, -8
  br i1 %i.lk, label %.loopexit.i44, label %.lr.ph.i24.i

.preheader.i29.i:                                 ; preds = %bb.c
  br i1 %i.kt, label %.lr.ph23.preheader.i30.i, label %.loopexit.i44

.lr.ph23.preheader.i30.i:                         ; preds = %.preheader.i29.i
  %i.ll = shl nuw i64 %i.bm, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.ll, i1 false), !tbaa !35
  br label %.loopexit.i44

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i
  %.020.i25.i = phi i64 [ %i.mk, %.lr.ph.i24.i ], [ %.020.i25.i.unr, %.lr.ph.i24.i.prol.loopexit ]
  %.01019.i26.i = phi ptr [ %i.mj, %.lr.ph.i24.i ], [ %.01019.i26.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 9 uses
  %.01218.i27.i = phi ptr [ %i.mh, %.lr.ph.i24.i ], [ %.01218.i27.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 9 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 8
  %i.ln = load double, ptr %.01218.i27.i, align 8, !tbaa !35
  %i.lo = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 8
  store double %i.ln, ptr %.01019.i26.i, align 8, !tbaa !35
  %i.lp = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 16
  %i.lq = load double, ptr %i.lm, align 8, !tbaa !35
  %i.lr = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 16
  store double %i.lq, ptr %i.lo, align 8, !tbaa !35
  %i.ls = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 24
  %i.lt = load double, ptr %i.lp, align 8, !tbaa !35
  %i.lu = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 24
  store double %i.lt, ptr %i.lr, align 8, !tbaa !35
  %i.lv = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 32
  %i.lw = load double, ptr %i.ls, align 8, !tbaa !35
  %i.lx = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 32
  store double %i.lw, ptr %i.lu, align 8, !tbaa !35
  %i.ly = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 40
  %i.lz = load double, ptr %i.lv, align 8, !tbaa !35
  %i.ma = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 40
  store double %i.lz, ptr %i.lx, align 8, !tbaa !35
  %i.mb = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 48
  %i.mc = load double, ptr %i.ly, align 8, !tbaa !35
  %i.md = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 48
  store double %i.mc, ptr %i.ma, align 8, !tbaa !35
  %i.me = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 56
  %i.mf = load double, ptr %i.mb, align 8, !tbaa !35
  %i.mg = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 56
  store double %i.mf, ptr %i.md, align 8, !tbaa !35
  %i.mh = getelementptr inbounds nuw i8, ptr %.01218.i27.i, i64 64
  %i.mi = load double, ptr %i.me, align 8, !tbaa !35
  %i.mj = getelementptr inbounds nuw i8, ptr %.01019.i26.i, i64 64
  store double %i.mi, ptr %i.mg, align 8, !tbaa !35
  %i.mk = add nuw nsw i64 %.020.i25.i, 8          ; 2 uses
  %exitcond.not.i28.i.7 = icmp eq i64 %i.mk, %i.bm
  br i1 %exitcond.not.i28.i.7, label %.loopexit.i44, label %.lr.ph.i24.i, !llvm.loop !266

.loopexit.i44:                                    ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i, %middle.block290, %.lr.ph23.preheader.i30.i, %.preheader.i29.i, %.preheader16.i23.i
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bm ; 5 uses
  %.not15.i33.i = icmp eq ptr %i.iw, null
  br i1 %.not15.i33.i, label %.preheader.i40.i, label %.preheader16.i34.i

.preheader16.i34.i:                               ; preds = %.loopexit.i44
  br i1 %i.kq, label %.lr.ph.i35.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit42.i

.lr.ph.i35.i.preheader:                           ; preds = %.preheader16.i34.i
  %min.iters.check298 = icmp ult i64 %i.dg, 26
  br i1 %min.iters.check298, label %.lr.ph.i35.i.preheader372, label %vector.memcheck295

vector.memcheck295:                               ; preds = %.lr.ph.i35.i.preheader
  %i.mm = mul i64 %i.m, 24
  %i.mn = add i64 %i.mm, %i.a
  %i.mo = add i64 %i.e, %i.bm
  %i.mp = shl i64 %i.mo, 3
  %i.mq = add i64 %i.mp, %i.mn
  %i.mr = sub i64 %i.ix, %i.mq
  %diff.check296 = icmp ugt i64 %i.mr, -32
  br i1 %diff.check296, label %.lr.ph.i35.i.preheader372, label %vector.ph299

vector.ph299:                                     ; preds = %vector.memcheck295
  %n.vec300 = and i64 %i.dg, 9223372036854775804  ; 4 uses
  %i.ms = shl i64 %n.vec300, 3                    ; 2 uses
  %i.mt = getelementptr i8, ptr %i.ml, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.iw, i64 %i.ms
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next307, %vector.body301 ] ; 2 uses
  %i.mv = shl i64 %index302, 3                    ; 2 uses
  %next.gep303 = getelementptr i8, ptr %i.ml, i64 %i.mv ; 2 uses
  %next.gep304 = getelementptr i8, ptr %i.iw, i64 %i.mv ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep304, i64 16
  %wide.load305 = load <2 x double>, ptr %next.gep304, align 8, !tbaa !35
  %wide.load306 = load <2 x double>, ptr %i.mw, align 8, !tbaa !35
  %i.mx = getelementptr i8, ptr %next.gep303, i64 16
  store <2 x double> %wide.load305, ptr %next.gep303, align 8, !tbaa !35
  store <2 x double> %wide.load306, ptr %i.mx, align 8, !tbaa !35
  %index.next307 = add nuw i64 %index302, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.my, label %middle.block308, label %vector.body301, !llvm.loop !267

middle.block308:                                  ; preds = %vector.body301
  %cmp.n309 = icmp eq i64 %i.dg, %n.vec300
  br i1 %cmp.n309, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit42.i, label %.lr.ph.i35.i.preheader372

.lr.ph.i35.i.preheader372:                        ; preds = %vector.memcheck295, %.lr.ph.i35.i.preheader, %middle.block308
  %.020.i36.i.ph = phi i64 [ 0, %vector.memcheck295 ], [ 0, %.lr.ph.i35.i.preheader ], [ %n.vec300, %middle.block308 ] ; 4 uses
  %.01019.i37.i.ph = phi ptr [ %i.ml, %vector.memcheck295 ], [ %i.ml, %.lr.ph.i35.i.preheader ], [ %i.mt, %middle.block308 ] ; 2 uses
  %.01218.i38.i.ph = phi ptr [ %i.iw, %vector.memcheck295 ], [ %i.iw, %.lr.ph.i35.i.preheader ], [ %i.mu, %middle.block308 ] ; 2 uses
  %i.mz = sub nsw i64 %i.dg, %.020.i36.i.ph
  %xtraiter394 = and i64 %i.mz, 7                 ; 2 uses
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %.lr.ph.i35.i.prol.loopexit, label %.lr.ph.i35.i.prol

.lr.ph.i35.i.prol:                                ; preds = %.lr.ph.i35.i.preheader372, %.lr.ph.i35.i.prol
  %.020.i36.i.prol = phi i64 [ %i.nd, %.lr.ph.i35.i.prol ], [ %.020.i36.i.ph, %.lr.ph.i35.i.preheader372 ]
  %.01019.i37.i.prol = phi ptr [ %i.nc, %.lr.ph.i35.i.prol ], [ %.01019.i37.i.ph, %.lr.ph.i35.i.preheader372 ] ; 2 uses
  %.01218.i38.i.prol = phi ptr [ %i.na, %.lr.ph.i35.i.prol ], [ %.01218.i38.i.ph, %.lr.ph.i35.i.preheader372 ] ; 2 uses
  %prol.iter396 = phi i64 [ %prol.iter396.next, %.lr.ph.i35.i.prol ], [ 0, %.lr.ph.i35.i.preheader372 ]
  %i.na = getelementptr inbounds nuw i8, ptr %.01218.i38.i.prol, i64 8 ; 2 uses
  %i.nb = load double, ptr %.01218.i38.i.prol, align 8, !tbaa !35
  %i.nc = getelementptr inbounds nuw i8, ptr %.01019.i37.i.prol, i64 8 ; 2 uses
  store double %i.nb, ptr %.01019.i37.i.prol, align 8, !tbaa !35
  %i.nd = add nuw nsw i64 %.020.i36.i.prol, 1     ; 2 uses
  %prol.iter396.next = add i64 %prol.iter396, 1   ; 2 uses
  %prol.iter396.cmp.not = icmp eq i64 %prol.iter396.next, %xtraiter394
  br i1 %prol.iter396.cmp.not, label %.lr.ph.i35.i.prol.loopexit, label %.lr.ph.i35.i.prol, !llvm.loop !268

.lr.ph.i35.i.prol.loopexit:                       ; preds = %.lr.ph.i35.i.prol, %.lr.ph.i35.i.preheader372
  %.020.i36.i.unr = phi i64 [ %.020.i36.i.ph, %.lr.ph.i35.i.preheader372 ], [ %i.nd, %.lr.ph.i35.i.prol ]
  %.01019.i37.i.unr = phi ptr [ %.01019.i37.i.ph, %.lr.ph.i35.i.preheader372 ], [ %i.nc, %.lr.ph.i35.i.prol ]
  %.01218.i38.i.unr = phi ptr [ %.01218.i38.i.ph, %.lr.ph.i35.i.preheader372 ], [ %i.na, %.lr.ph.i35.i.prol ]
  %i.ne = sub nsw i64 %.020.i36.i.ph, %i.dg
  %i.nf = icmp ugt i64 %i.ne, -8
  br i1 %i.nf, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit42.i, label %.lr.ph.i35.i

.preheader.i40.i:                                 ; preds = %.loopexit.i44
  br i1 %i.kq, label %.lr.ph23.preheader.i41.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit42.i

.lr.ph23.preheader.i41.i:                         ; preds = %.preheader.i40.i
  %i.ng = shl nuw i64 %i.dg, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ml, i8 0, i64 %i.ng, i1 false), !tbaa !35
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit42.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i35.i.prol.loopexit, %.lr.ph.i35.i
  %.020.i36.i = phi i64 [ %i.of, %.lr.ph.i35.i ], [ %.020.i36.i.unr, %.lr.ph.i35.i.prol.loopexit ]
  %.01019.i37.i = phi ptr [ %i.oe, %.lr.ph.i35.i ], [ %.01019.i37.i.unr, %.lr.ph.i35.i.prol.loopexit ] ; 9 uses
  %.01218.i38.i = phi ptr [ %i.oc, %.lr.ph.i35.i ], [ %.01218.i38.i.unr, %.lr.ph.i35.i.prol.loopexit ] ; 9 uses
end_hunk_0
