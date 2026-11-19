Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8460
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumE:bb.a
  %.0.copyload.i.i.i.i.2 = load i64, ptr %i.cx, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i, i64 24
  %i.df = mul i64 %.0.copyload.i.i.i.i.2, -4132994306676758123 ; 2 uses
  %i.dg = lshr i64 %i.df, 47
  %i.dh = xor i64 %i.dg, %i.df
  %i.di = mul i64 %i.dh, -4132994306676758123
  %i.dj = xor i64 %i.di, %i.dd
  %i.dk = mul i64 %i.dj, -4132994306676758123
  %.0.copyload.i.i.i.i.3 = load i64, ptr %i.de, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i, i64 32 ; 2 uses
  %i.dm = mul i64 %.0.copyload.i.i.i.i.3, -4132994306676758123 ; 2 uses
  %i.dn = lshr i64 %i.dm, 47
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, -4132994306676758123
  %i.dq = xor i64 %i.dp, %i.dk
  %i.dr = mul i64 %i.dq, -4132994306676758123     ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %i.dl, %i.ce
  br i1 %.not.i.i.i.i.3, label %._crit_edge.i.i.i.i4, label %.lr.ph.i.i.i.i3, !llvm.loop !409

._crit_edge.i.i.i.i4:                             ; preds = %.lr.ph.i.i.i.i3.prol.loopexit, %.lr.ph.i.i.i.i3, %bb.e
  %.036.lcssa.i.i.i.i = phi i64 [ %i.cc, %bb.e ], [ %.lcssa177.unr, %.lr.ph.i.i.i.i3.prol.loopexit ], [ %i.dr, %.lr.ph.i.i.i.i3 ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi ptr [ %i.by, %bb.e ], [ %i.ce, %.lr.ph.i.i.i.i3 ], [ %i.ce, %.lr.ph.i.i.i.i3.prol.loopexit ]
  %i.ds = and i64 %i.ca, 1
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i4
  %i.du = load i32, ptr %.0.lcssa.i.i.i.i, align 1
  %i.dv = zext i32 %i.du to i64
  %i.dw = xor i64 %.036.lcssa.i.i.i.i, %i.dv
  %i.dx = mul i64 %i.dw, -4132994306676758123
  br label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i

_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i: ; preds = %bb.f, %._crit_edge.i.i.i.i4
  %.7.i.i.i.i = phi i64 [ %i.dx, %bb.f ], [ %.036.lcssa.i.i.i.i, %._crit_edge.i.i.i.i4 ] ; 2 uses
  %i.dy = lshr i64 %.7.i.i.i.i, 47
  %i.dz = xor i64 %i.dy, %.7.i.i.i.i
  %i.ea = mul i64 %i.dz, -4132994306676758123     ; 2 uses
  %i.eb = lshr i64 %i.ea, 47
  %i.ec = xor i64 %i.eb, %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bu, i64 80 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bu, i64 104 ; 6 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !55
  %i.eg = urem i64 %i.ec, %i.ef                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bu, i64 112 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i
  %i.ei = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(56) %i.eh) #37
  switch i32 %i.ei, label %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i [
    i32 11, label %bb.g
    i32 35, label %.invoke
  ]

_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i: ; preds = %bb.g
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bu, i64 88 ; 5 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !56 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.eg
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !58 ; 2 uses
  %.not114.i = icmp eq ptr %i.em, null
  br i1 %.not114.i, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i
  %i.en = load i32, ptr %2, align 8, !tbaa !74
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = load i64, ptr %i.bz, align 8            ; 3 uses
  %i.er = load ptr, ptr %i.bx, align 8
  %i.es = icmp eq i64 %i.eq, 0
  br label %bb.z

_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i: ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.i, %_ZNSt12shared_mutex11lock_sharedEv.exit.preheader.i
  %i.et = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.eh) #37 ; 0 uses
  %i.eu = call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.eh) #37
  %i.ev = icmp eq i32 %i.eu, 35
  br i1 %i.ev, label %.invoke, label %_ZNSt12shared_mutex4lockEv.exit.i

.invoke:                                          ; preds = %bb.g, %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #36
          to label %.cont unwind label %bb.ag

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt12shared_mutex4lockEv.exit.i:                ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i
  %i.ew = load ptr, ptr %i.bx, align 8, !tbaa !71 ; 5 uses
  %i.ex = load i64, ptr %i.bz, align 8, !tbaa !72 ; 6 uses
  %i.ey = shl i64 %i.ex, 2                        ; 2 uses
  %i.ez = mul i64 %i.ex, 1914766847002519124      ; 3 uses
  %i.fa = and i64 %i.ey, -8                       ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ew, i64 %i.fa  ; 3 uses
  %.not37.i.i.i46.i = icmp samesign eq i64 %i.fa, 0
  br i1 %.not37.i.i.i46.i, label %._crit_edge.i.i.i52.i, label %.lr.ph.i.i.i47.i.preheader

.lr.ph.i.i.i47.i.preheader:                       ; preds = %_ZNSt12shared_mutex4lockEv.exit.i
  %i.fc = add i64 %i.ey, -8                       ; 2 uses
  %i.fd = lshr i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 1
  %xtraiter181 = and i64 %i.fe, 3                 ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.i.i.i47.i.prol.loopexit, label %.lr.ph.i.i.i47.i.prol

.lr.ph.i.i.i47.i.prol:                            ; preds = %.lr.ph.i.i.i47.i.preheader, %.lr.ph.i.i.i47.i.prol
  %.039.i.i.i48.i.prol = phi ptr [ %i.ff, %.lr.ph.i.i.i47.i.prol ], [ %i.ew, %.lr.ph.i.i.i47.i.preheader ] ; 2 uses
  %.03638.i.i.i49.i.prol = phi i64 [ %i.fl, %.lr.ph.i.i.i47.i.prol ], [ %i.ez, %.lr.ph.i.i.i47.i.preheader ]
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph.i.i.i47.i.prol ], [ 0, %.lr.ph.i.i.i47.i.preheader ]
  %.0.copyload.i.i.i50.i.prol = load i64, ptr %.039.i.i.i48.i.prol, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.039.i.i.i48.i.prol, i64 8 ; 2 uses
  %i.fg = mul i64 %.0.copyload.i.i.i50.i.prol, -4132994306676758123 ; 2 uses
  %i.fh = lshr i64 %i.fg, 47
  %i.fi = xor i64 %i.fh, %i.fg
  %i.fj = mul i64 %i.fi, -4132994306676758123
  %i.fk = xor i64 %i.fj, %.03638.i.i.i49.i.prol
  %i.fl = mul i64 %i.fk, -4132994306676758123     ; 3 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph.i.i.i47.i.prol.loopexit, label %.lr.ph.i.i.i47.i.prol, !llvm.loop !410

.lr.ph.i.i.i47.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i47.i.prol, %.lr.ph.i.i.i47.i.preheader
  %.lcssa171.unr = phi i64 [ poison, %.lr.ph.i.i.i47.i.preheader ], [ %i.fl, %.lr.ph.i.i.i47.i.prol ]
  %.039.i.i.i48.i.unr = phi ptr [ %i.ew, %.lr.ph.i.i.i47.i.preheader ], [ %i.ff, %.lr.ph.i.i.i47.i.prol ]
  %.03638.i.i.i49.i.unr = phi i64 [ %i.ez, %.lr.ph.i.i.i47.i.preheader ], [ %i.fl, %.lr.ph.i.i.i47.i.prol ]
  %i.fm = icmp ult i64 %i.fc, 24
  br i1 %i.fm, label %._crit_edge.i.i.i52.i, label %.lr.ph.i.i.i47.i

.lr.ph.i.i.i47.i:                                 ; preds = %.lr.ph.i.i.i47.i.prol.loopexit, %.lr.ph.i.i.i47.i
  %.039.i.i.i48.i = phi ptr [ %i.gi, %.lr.ph.i.i.i47.i ], [ %.039.i.i.i48.i.unr, %.lr.ph.i.i.i47.i.prol.loopexit ] ; 5 uses
  %.03638.i.i.i49.i = phi i64 [ %i.go, %.lr.ph.i.i.i47.i ], [ %.03638.i.i.i49.i.unr, %.lr.ph.i.i.i47.i.prol.loopexit ]
  %.0.copyload.i.i.i50.i = load i64, ptr %.039.i.i.i48.i, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %.039.i.i.i48.i, i64 8
  %i.fo = mul i64 %.0.copyload.i.i.i50.i, -4132994306676758123 ; 2 uses
  %i.fp = lshr i64 %i.fo, 47
  %i.fq = xor i64 %i.fp, %i.fo
  %i.fr = mul i64 %i.fq, -4132994306676758123
  %i.fs = xor i64 %i.fr, %.03638.i.i.i49.i
  %i.ft = mul i64 %i.fs, -4132994306676758123
  %.0.copyload.i.i.i50.i.1 = load i64, ptr %i.fn, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.039.i.i.i48.i, i64 16
  %i.fv = mul i64 %.0.copyload.i.i.i50.i.1, -4132994306676758123 ; 2 uses
  %i.fw = lshr i64 %i.fv, 47
  %i.fx = xor i64 %i.fw, %i.fv
  %i.fy = mul i64 %i.fx, -4132994306676758123
  %i.fz = xor i64 %i.fy, %i.ft
  %i.ga = mul i64 %i.fz, -4132994306676758123
  %.0.copyload.i.i.i50.i.2 = load i64, ptr %i.fu, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.039.i.i.i48.i, i64 24
  %i.gc = mul i64 %.0.copyload.i.i.i50.i.2, -4132994306676758123 ; 2 uses
  %i.gd = lshr i64 %i.gc, 47
  %i.ge = xor i64 %i.gd, %i.gc
  %i.gf = mul i64 %i.ge, -4132994306676758123
  %i.gg = xor i64 %i.gf, %i.ga
  %i.gh = mul i64 %i.gg, -4132994306676758123
  %.0.copyload.i.i.i50.i.3 = load i64, ptr %i.gb, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.039.i.i.i48.i, i64 32 ; 2 uses
  %i.gj = mul i64 %.0.copyload.i.i.i50.i.3, -4132994306676758123 ; 2 uses
  %i.gk = lshr i64 %i.gj, 47
  %i.gl = xor i64 %i.gk, %i.gj
  %i.gm = mul i64 %i.gl, -4132994306676758123
  %i.gn = xor i64 %i.gm, %i.gh
  %i.go = mul i64 %i.gn, -4132994306676758123     ; 2 uses
  %.not.i.i.i51.i.3 = icmp eq ptr %i.gi, %i.fb
  br i1 %.not.i.i.i51.i.3, label %._crit_edge.i.i.i52.i, label %.lr.ph.i.i.i47.i, !llvm.loop !409

._crit_edge.i.i.i52.i:                            ; preds = %.lr.ph.i.i.i47.i.prol.loopexit, %.lr.ph.i.i.i47.i, %_ZNSt12shared_mutex4lockEv.exit.i
  %.036.lcssa.i.i.i53.i = phi i64 [ %i.ez, %_ZNSt12shared_mutex4lockEv.exit.i ], [ %.lcssa171.unr, %.lr.ph.i.i.i47.i.prol.loopexit ], [ %i.go, %.lr.ph.i.i.i47.i ] ; 2 uses
  %.0.lcssa.i.i.i54.i = phi ptr [ %i.ew, %_ZNSt12shared_mutex4lockEv.exit.i ], [ %i.fb, %.lr.ph.i.i.i47.i ], [ %i.fb, %.lr.ph.i.i.i47.i.prol.loopexit ]
  %i.gp = and i64 %i.ex, 1
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit56.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i52.i
  %i.gr = load i32, ptr %.0.lcssa.i.i.i54.i, align 1
  %i.gs = zext i32 %i.gr to i64
  %i.gt = xor i64 %.036.lcssa.i.i.i53.i, %i.gs
  %i.gu = mul i64 %i.gt, -4132994306676758123
  br label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit56.i

_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit56.i: ; preds = %bb.h, %._crit_edge.i.i.i52.i
  %.7.i.i.i55.i = phi i64 [ %i.gu, %bb.h ], [ %.036.lcssa.i.i.i53.i, %._crit_edge.i.i.i52.i ] ; 2 uses
  %i.gv = lshr i64 %.7.i.i.i55.i, 47
  %i.gw = xor i64 %i.gv, %.7.i.i.i55.i
  %i.gx = mul i64 %i.gw, -4132994306676758123     ; 2 uses
  %i.gy = lshr i64 %i.gx, 47
  %i.gz = xor i64 %i.gy, %i.gx
  %i.ha = load i64, ptr %i.ee, align 8, !tbaa !55 ; 7 uses
  %i.hb = load ptr, ptr %i.ej, align 8, !tbaa !56 ; 4 uses
  %.039117.i = urem i64 %i.gz, %i.ha              ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.039117.i
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !58 ; 2 uses
  %.not42118.i = icmp eq ptr %i.hd, null
  br i1 %.not42118.i, label %._crit_edge.i, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit56.i
  %i.he = load i32, ptr %2, align 8, !tbaa !74
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hg = icmp eq i64 %i.ex, 0
  %i.hh = load i32, ptr %i.hf, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.lr.ph121.i
  %indvars.iv138.i = phi i64 [ 1, %.lr.ph121.i ], [ %indvars.iv.next139.i, %.loopexit.i ] ; 2 uses
  %4 = phi ptr [ %i.hd, %.lr.ph121.i ], [ %i.hx, %.loopexit.i ] ; 6 uses
  %.039120.i = phi i64 [ %.039117.i, %.lr.ph121.i ], [ %.039.i, %.loopexit.i ]
  %i.hi = load i32, ptr %4, align 8, !tbaa !74
  %.not.i.i = icmp eq i32 %i.hi, %i.he
  br i1 %.not.i.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !75
  %.not12.i.i = icmp eq i32 %i.hk, %i.hh
  br i1 %.not12.i.i, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !72
  %.not13.i.i = icmp eq i64 %i.hm, %i.ex
  br i1 %.not13.i.i, label %.preheader.i.i, label %.loopexit.i

.preheader.i.i:                                   ; preds = %bb.k
  br i1 %i.hg, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !71
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %i.hp = add nuw i64 %.01014.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hp, %i.ex
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.m, !llvm.loop !411

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.01014.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.hp, %bb.l ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %.01014.i.i
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !77
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %.01014.i.i
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !77
  %i.hu = fcmp oeq float %i.hr, %i.ht
  br i1 %i.hu, label %bb.l, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.k, %bb.j, %bb.i
  %i.hv = add i64 %.039120.i, %indvars.iv138.i
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1
  %.039.i = urem i64 %i.hv, %i.ha                 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.039.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !58 ; 2 uses
  %.not42.i = icmp eq ptr %i.hx, null
  br i1 %.not42.i, label %._crit_edge.i, label %bb.i, !llvm.loop !412

._crit_edge.i:                                    ; preds = %.loopexit.i, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit56.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bu, i64 72 ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !431 ; 2 uses
  %i.ia = shl i64 %i.hz, 2
  %i.ib = icmp ugt i64 %i.ia, %i.ha
  br i1 %i.ib, label %bb.n, label %bb.x

bb.n:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.ic = shl i64 %i.ha, 1                        ; 7 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ed, align 8, !tbaa !54 ; 6 uses
  %i.id = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  store i64 %i.id, ptr %1, align 8, !tbaa !54
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i64 %i.ic, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ie, i8 0, i64 16, i1 false)
  br i1 %.not.i.not.i.i.i, label %_ZN4pstd6vectorIPKN4pbrt22DenselySampledSpectrumENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ih = shl i64 %i.ha, 4                        ; 3 uses
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i58..lr.ph.i.i_crit_edge.i

._crit_edge.i.i.i58..lr.ph.i.i_crit_edge.i:       ; preds = %bb.o
  %i.ij = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !42
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = invoke noundef ptr %i.il(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i.i, i64 noundef %i.ih, i64 noundef 8)
          to label %.noexc8 unwind label %bb.ag, !inline_history !413

.noexc8:                                          ; preds = %._crit_edge.i.i.i58..lr.ph.i.i_crit_edge.i
  %.pre.pre.i = load ptr, ptr %i.ej, align 8, !tbaa !56
  %.pre141.pre.i = load i64, ptr %i.ee, align 8, !tbaa !55
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc8, %bb.o
  %.pre141.i = phi i64 [ %.pre141.pre.i, %.noexc8 ], [ %i.ha, %bb.o ]
  %.pre.i = phi ptr [ %.pre.pre.i, %.noexc8 ], [ %i.hb, %bb.o ]
  %.0.i.i.i.i12.i.i.i = phi ptr [ %i.im, %.noexc8 ], [ null, %bb.o ] ; 3 uses
  store i64 %i.ic, ptr %i.if, align 8, !tbaa !64
  store ptr %.0.i.i.i.i12.i.i.i, ptr %i.ie, align 8, !tbaa !56
  call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i.i12.i.i.i, i8 0, i64 %i.ih, i1 false), !tbaa !58
  br label %_ZN4pstd6vectorIPKN4pbrt22DenselySampledSpectrumENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit.i

_ZN4pstd6vectorIPKN4pbrt22DenselySampledSpectrumENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.n
  %i.in = phi ptr [ null, %bb.n ], [ %.0.i.i.i.i12.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.io = phi i64 [ %i.ha, %bb.n ], [ %.pre141.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ip = phi ptr [ %i.hb, %bb.n ], [ %.pre.i, %.lr.ph.i.i.i ] ; 5 uses
  store i64 %i.ic, ptr %i.ig, align 8, !tbaa !55
  %.idx.i = shl nuw nsw i64 %i.io, 3
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.idx.i
  %.not43122.i = icmp eq i64 %i.io, 0
  br i1 %.not43122.i, label %._crit_edge125.i, label %.lr.ph124.i

._crit_edge125.i:                                 ; preds = %bb.s, %_ZN4pstd6vectorIPKN4pbrt22DenselySampledSpectrumENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit.i
  %i.ir = load ptr, ptr %i.ed, align 8, !tbaa !65
  %i.is = icmp eq ptr %i.ir, %.sroa.0.0.copyload.i.i
  br i1 %i.is, label %bb.t, label %bb.p

bb.p:                                             ; preds = %._crit_edge125.i
  invoke void @_ZN4pbrt8LogFatalIJRA21_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef 992, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(21) @.str.150) #36
          to label %.noexc.i6 unwind label %bb.w

.noexc.i6:                                        ; preds = %bb.p
  unreachable

.lr.ph124.i:                                      ; preds = %_ZN4pstd6vectorIPKN4pbrt22DenselySampledSpectrumENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit.i, %bb.s
  %.038123.i = phi ptr [ %i.lg, %bb.s ], [ %i.ip, %_ZN4pstd6vectorIPKN4pbrt22DenselySampledSpectrumENS_3pmr21polymorphic_allocatorIS4_EEEC2EmRKS7_.exit.i ] ; 2 uses
  %i.it = load ptr, ptr %.038123.i, align 8, !tbaa !58 ; 4 uses
  %.not44.i = icmp eq ptr %i.it, null
  br i1 %.not44.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph124.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !71 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !72 ; 3 uses
  %i.iy = shl i64 %i.ix, 2                        ; 2 uses
  %i.iz = mul i64 %i.ix, 1914766847002519124      ; 3 uses
  %i.ja = and i64 %i.iy, -8                       ; 2 uses
  %i.jb = getelementptr i8, ptr %i.iv, i64 %i.ja  ; 3 uses
  %.not37.i.i.i.i.i = icmp samesign eq i64 %i.ja, 0
  br i1 %.not37.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.q
  %i.jc = add i64 %i.iy, -8                       ; 2 uses
  %i.jd = lshr i64 %i.jc, 3
  %i.je = add nuw nsw i64 %i.jd, 1
  %xtraiter184 = and i64 %i.je, 3                 ; 2 uses
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.039.i.i.i.i.i.prol = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i.prol ], [ %i.iv, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.03638.i.i.i.i.i.prol = phi i64 [ %i.jl, %.lr.ph.i.i.i.i.i.prol ], [ %i.iz, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter186 = phi i64 [ %prol.iter186.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %.0.copyload.i.i.i.i.i.prol = load i64, ptr %.039.i.i.i.i.i.prol, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.jg = mul i64 %.0.copyload.i.i.i.i.i.prol, -4132994306676758123 ; 2 uses
  %i.jh = lshr i64 %i.jg, 47
  %i.ji = xor i64 %i.jh, %i.jg
  %i.jj = mul i64 %i.ji, -4132994306676758123
  %i.jk = xor i64 %i.jj, %.03638.i.i.i.i.i.prol
  %i.jl = mul i64 %i.jk, -4132994306676758123     ; 3 uses
  %prol.iter186.next = add i64 %prol.iter186, 1   ; 2 uses
  %prol.iter186.cmp.not = icmp eq i64 %prol.iter186.next, %xtraiter184
  br i1 %prol.iter186.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !414

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa166.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.jl, %.lr.ph.i.i.i.i.i.prol ]
  %.039.i.i.i.i.i.unr = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.jf, %.lr.ph.i.i.i.i.i.prol ]
  %.03638.i.i.i.i.i.unr = phi i64 [ %i.iz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.jl, %.lr.ph.i.i.i.i.i.prol ]
  %i.jm = icmp ult i64 %i.jc, 24
  br i1 %i.jm, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.039.i.i.i.i.i = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i ], [ %.039.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.03638.i.i.i.i.i = phi i64 [ %i.ko, %.lr.ph.i.i.i.i.i ], [ %.03638.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.0.copyload.i.i.i.i.i = load i64, ptr %.039.i.i.i.i.i, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i.i, i64 8
  %i.jo = mul i64 %.0.copyload.i.i.i.i.i, -4132994306676758123 ; 2 uses
  %i.jp = lshr i64 %i.jo, 47
  %i.jq = xor i64 %i.jp, %i.jo
  %i.jr = mul i64 %i.jq, -4132994306676758123
  %i.js = xor i64 %i.jr, %.03638.i.i.i.i.i
  %i.jt = mul i64 %i.js, -4132994306676758123
  %.0.copyload.i.i.i.i.i.1 = load i64, ptr %i.jn, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i.i, i64 16
  %i.jv = mul i64 %.0.copyload.i.i.i.i.i.1, -4132994306676758123 ; 2 uses
  %i.jw = lshr i64 %i.jv, 47
  %i.jx = xor i64 %i.jw, %i.jv
  %i.jy = mul i64 %i.jx, -4132994306676758123
  %i.jz = xor i64 %i.jy, %i.jt
  %i.ka = mul i64 %i.jz, -4132994306676758123
  %.0.copyload.i.i.i.i.i.2 = load i64, ptr %i.ju, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i.i, i64 24
  %i.kc = mul i64 %.0.copyload.i.i.i.i.i.2, -4132994306676758123 ; 2 uses
  %i.kd = lshr i64 %i.kc, 47
  %i.ke = xor i64 %i.kd, %i.kc
  %i.kf = mul i64 %i.ke, -4132994306676758123
  %i.kg = xor i64 %i.kf, %i.ka
  %i.kh = mul i64 %i.kg, -4132994306676758123
  %.0.copyload.i.i.i.i.i.3 = load i64, ptr %i.kb, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i.i, i64 32 ; 2 uses
  %i.kj = mul i64 %.0.copyload.i.i.i.i.i.3, -4132994306676758123 ; 2 uses
  %i.kk = lshr i64 %i.kj, 47
  %i.kl = xor i64 %i.kk, %i.kj
  %i.km = mul i64 %i.kl, -4132994306676758123
  %i.kn = xor i64 %i.km, %i.kh
  %i.ko = mul i64 %i.kn, -4132994306676758123     ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.ki, %i.jb
  br i1 %.not.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !409

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.q
  %.036.lcssa.i.i.i.i.i = phi i64 [ %i.iz, %bb.q ], [ %.lcssa166.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ko, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.iv, %bb.q ], [ %i.jb, %.lr.ph.i.i.i.i.i ], [ %i.jb, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.kp = and i64 %i.ix, 1
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.kr = load i32, ptr %.0.lcssa.i.i.i.i.i, align 1
  %i.ks = zext i32 %i.kr to i64
  %i.kt = xor i64 %.036.lcssa.i.i.i.i.i, %i.ks
  %i.ku = mul i64 %i.kt, -4132994306676758123
  br label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i.i

_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i.i: ; preds = %bb.r, %._crit_edge.i.i.i.i.i
  %.7.i.i.i.i.i = phi i64 [ %i.ku, %bb.r ], [ %.036.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.kv = lshr i64 %.7.i.i.i.i.i, 47
  %i.kw = xor i64 %i.kv, %.7.i.i.i.i.i
  %i.kx = mul i64 %i.kw, -4132994306676758123     ; 2 uses
  %i.ky = lshr i64 %i.kx, 47
  %i.kz = xor i64 %i.ky, %i.kx
  %.01114.i.i = urem i64 %i.kz, %i.ic             ; 3 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %.01114.i.i
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !58
  %.not15.i.i = icmp eq ptr %i.lb, null
  br i1 %.not15.i.i, label %_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i.i, %.lr.ph.i59.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i59.i ], [ 1, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i.i ] ; 2 uses
  %.01117.i.i = phi i64 [ %.011.i.i, %.lr.ph.i59.i ], [ %.01114.i.i, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i.i ]
  %i.lc = add i64 %.01117.i.i, %indvars.iv.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %.011.i.i = urem i64 %i.lc, %i.ic               ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %.011.i.i
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !58
  %.not.i60.i = icmp eq ptr %i.le, null
  br i1 %.not.i60.i, label %_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit.i, label %.lr.ph.i59.i, !llvm.loop !415

_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit.i: ; preds = %.lr.ph.i59.i, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumE:bb.a
vector.ph137:                                     ; preds = %vector.main.loop.iter.check135
  %i.op = and i64 %i.on, 24
  %n.vec138 = and i64 %i.on, 9223372036854775776  ; 5 uses
  %i.oq = shl i64 %n.vec138, 2
  %i.or = getelementptr i8, ptr %i.lz, i64 %i.oq
  br label %vector.body139

vector.body139:                                   ; preds = %vector.ph137, %vector.body139
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next145, %vector.body139 ] ; 3 uses
  %i.os = shl i64 %index140, 2
  %next.gep = getelementptr i8, ptr %i.lz, i64 %i.os ; 4 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index140 ; 4 uses
  %i.ou = getelementptr i8, ptr %next.gep, i64 32
  %i.ov = getelementptr i8, ptr %next.gep, i64 64
  %i.ow = getelementptr i8, ptr %next.gep, i64 96
  %wide.load141 = load <8 x float>, ptr %next.gep, align 4, !tbaa !77
  %wide.load142 = load <8 x float>, ptr %i.ou, align 4, !tbaa !77
  %wide.load143 = load <8 x float>, ptr %i.ov, align 4, !tbaa !77
  %wide.load144 = load <8 x float>, ptr %i.ow, align 4, !tbaa !77
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 32
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ot, i64 64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 96
  store <8 x float> %wide.load141, ptr %i.ot, align 4, !tbaa !77
  store <8 x float> %wide.load142, ptr %i.ox, align 4, !tbaa !77
  store <8 x float> %wide.load143, ptr %i.oy, align 4, !tbaa !77
  store <8 x float> %wide.load144, ptr %i.oz, align 4, !tbaa !77
  %index.next145 = add nuw i64 %index140, 32      ; 2 uses
  %i.pa = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.pa, label %middle.block146, label %vector.body139, !llvm.loop !420

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.on, %n.vec138
  br i1 %cmp.n147, label %"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i", label %vec.epilog.iter.check149

vec.epilog.iter.check149:                         ; preds = %middle.block146
  %min.epilog.iters.check151 = icmp eq i64 %i.op, 0
  br i1 %min.epilog.iters.check151, label %vec.epilog.scalar.ph150.preheader, label %vec.epilog.ph152, !prof !82

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check135, %vec.epilog.iter.check149
  %vec.epilog.resume.val153 = phi i64 [ %n.vec138, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check135 ]
  %n.vec154 = and i64 %i.on, 9223372036854775800  ; 4 uses
  %i.pb = shl i64 %n.vec154, 2
  %i.pc = getelementptr i8, ptr %i.lz, i64 %i.pb
  br label %vec.epilog.vector.body155

vec.epilog.vector.body155:                        ; preds = %vec.epilog.vector.body155, %vec.epilog.ph152
  %index156 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph152 ], [ %index.next159, %vec.epilog.vector.body155 ] ; 3 uses
  %i.pd = shl i64 %index156, 2
  %next.gep157 = getelementptr i8, ptr %i.lz, i64 %i.pd
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index156
  %wide.load158 = load <8 x float>, ptr %next.gep157, align 4, !tbaa !77
  store <8 x float> %wide.load158, ptr %i.pe, align 4, !tbaa !77
  %index.next159 = add nuw i64 %index156, 8       ; 2 uses
  %i.pf = icmp eq i64 %index.next159, %n.vec154
  br i1 %i.pf, label %vec.epilog.middle.block160, label %vec.epilog.vector.body155, !llvm.loop !421

vec.epilog.middle.block160:                       ; preds = %vec.epilog.vector.body155
  %cmp.n161 = icmp eq i64 %i.on, %n.vec154
  br i1 %cmp.n161, label %"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i", label %vec.epilog.scalar.ph150.preheader

vec.epilog.scalar.ph150.preheader:                ; preds = %iter.check148, %vec.epilog.iter.check149, %vec.epilog.middle.block160
  %.013.i.i.i.i.i.i.ph = phi ptr [ %i.lz, %iter.check148 ], [ %i.or, %vec.epilog.iter.check149 ], [ %i.pc, %vec.epilog.middle.block160 ]
  %.01012.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check148 ], [ %n.vec138, %vec.epilog.iter.check149 ], [ %n.vec154, %vec.epilog.middle.block160 ]
  br label %vec.epilog.scalar.ph150

vec.epilog.scalar.ph150:                          ; preds = %vec.epilog.scalar.ph150.preheader, %vec.epilog.scalar.ph150
  %.013.i.i.i.i.i.i = phi ptr [ %i.pi, %vec.epilog.scalar.ph150 ], [ %.013.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph150.preheader ] ; 2 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.pj, %vec.epilog.scalar.ph150 ], [ %.01012.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph150.preheader ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.01012.i.i.i.i.i.i
  %i.ph = load float, ptr %.013.i.i.i.i.i.i, align 4, !tbaa !77
  store float %i.ph, ptr %i.pg, align 4, !tbaa !77
  %i.pi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.pj = add nuw nsw i64 %.01012.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pi, %i.mc
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i", label %vec.epilog.scalar.ph150, !llvm.loop !422

"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i": ; preds = %vec.epilog.scalar.ph150, %vec.epilog.middle.block160, %middle.block146
  store i64 %i.mb, ptr %i.mg, align 8, !tbaa !72
  %i.pk = mul i64 %i.mb, 1914766847002519124      ; 3 uses
  %i.pl = and i64 %.idx6.i.i.i.i.i, -8            ; 2 uses
  %i.pm = getelementptr i8, ptr %i.mk, i64 %i.pl  ; 3 uses
  %.not37.i.i.i.i62.i = icmp samesign eq i64 %i.pl, 0
  br i1 %.not37.i.i.i.i62.i, label %._crit_edge.i.i.i.i68.i, label %.lr.ph.i.i.i.i63.i.preheader

.lr.ph.i.i.i.i63.i.preheader:                     ; preds = %"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i"
  %i.pn = add i64 %.idx6.i.i.i.i.i, -8            ; 2 uses
  %i.po = lshr i64 %i.pn, 3
  %i.pp = add nuw nsw i64 %i.po, 1
  %xtraiter190 = and i64 %i.pp, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph.i.i.i.i63.i.prol.loopexit, label %.lr.ph.i.i.i.i63.i.prol

.lr.ph.i.i.i.i63.i.prol:                          ; preds = %.lr.ph.i.i.i.i63.i.preheader, %.lr.ph.i.i.i.i63.i.prol
  %.039.i.i.i.i64.i.prol = phi ptr [ %i.pq, %.lr.ph.i.i.i.i63.i.prol ], [ %i.mk, %.lr.ph.i.i.i.i63.i.preheader ] ; 2 uses
  %.03638.i.i.i.i65.i.prol = phi i64 [ %i.pw, %.lr.ph.i.i.i.i63.i.prol ], [ %i.pk, %.lr.ph.i.i.i.i63.i.preheader ]
  %prol.iter192 = phi i64 [ %prol.iter192.next, %.lr.ph.i.i.i.i63.i.prol ], [ 0, %.lr.ph.i.i.i.i63.i.preheader ]
  %.0.copyload.i.i.i.i66.i.prol = load i64, ptr %.039.i.i.i.i64.i.prol, align 1
  %i.pq = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i64.i.prol, i64 8 ; 2 uses
  %i.pr = mul i64 %.0.copyload.i.i.i.i66.i.prol, -4132994306676758123 ; 2 uses
  %i.ps = lshr i64 %i.pr, 47
  %i.pt = xor i64 %i.ps, %i.pr
  %i.pu = mul i64 %i.pt, -4132994306676758123
  %i.pv = xor i64 %i.pu, %.03638.i.i.i.i65.i.prol
  %i.pw = mul i64 %i.pv, -4132994306676758123     ; 3 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph.i.i.i.i63.i.prol.loopexit, label %.lr.ph.i.i.i.i63.i.prol, !llvm.loop !423

.lr.ph.i.i.i.i63.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i63.i.prol, %.lr.ph.i.i.i.i63.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i63.i.preheader ], [ %i.pw, %.lr.ph.i.i.i.i63.i.prol ]
  %.039.i.i.i.i64.i.unr = phi ptr [ %i.mk, %.lr.ph.i.i.i.i63.i.preheader ], [ %i.pq, %.lr.ph.i.i.i.i63.i.prol ]
  %.03638.i.i.i.i65.i.unr = phi i64 [ %i.pk, %.lr.ph.i.i.i.i63.i.preheader ], [ %i.pw, %.lr.ph.i.i.i.i63.i.prol ]
  %i.px = icmp ult i64 %i.pn, 24
  br i1 %i.px, label %._crit_edge.i.i.i.i68.i, label %.lr.ph.i.i.i.i63.i

.lr.ph.i.i.i.i63.i:                               ; preds = %.lr.ph.i.i.i.i63.i.prol.loopexit, %.lr.ph.i.i.i.i63.i
  %.039.i.i.i.i64.i = phi ptr [ %i.qt, %.lr.ph.i.i.i.i63.i ], [ %.039.i.i.i.i64.i.unr, %.lr.ph.i.i.i.i63.i.prol.loopexit ] ; 5 uses
  %.03638.i.i.i.i65.i = phi i64 [ %i.qz, %.lr.ph.i.i.i.i63.i ], [ %.03638.i.i.i.i65.i.unr, %.lr.ph.i.i.i.i63.i.prol.loopexit ]
  %.0.copyload.i.i.i.i66.i = load i64, ptr %.039.i.i.i.i64.i, align 1
  %i.py = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i64.i, i64 8
  %i.pz = mul i64 %.0.copyload.i.i.i.i66.i, -4132994306676758123 ; 2 uses
  %i.qa = lshr i64 %i.pz, 47
  %i.qb = xor i64 %i.qa, %i.pz
  %i.qc = mul i64 %i.qb, -4132994306676758123
  %i.qd = xor i64 %i.qc, %.03638.i.i.i.i65.i
  %i.qe = mul i64 %i.qd, -4132994306676758123
  %.0.copyload.i.i.i.i66.i.1 = load i64, ptr %i.py, align 1
  %i.qf = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i64.i, i64 16
  %i.qg = mul i64 %.0.copyload.i.i.i.i66.i.1, -4132994306676758123 ; 2 uses
  %i.qh = lshr i64 %i.qg, 47
  %i.qi = xor i64 %i.qh, %i.qg
  %i.qj = mul i64 %i.qi, -4132994306676758123
  %i.qk = xor i64 %i.qj, %i.qe
  %i.ql = mul i64 %i.qk, -4132994306676758123
  %.0.copyload.i.i.i.i66.i.2 = load i64, ptr %i.qf, align 1
  %i.qm = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i64.i, i64 24
  %i.qn = mul i64 %.0.copyload.i.i.i.i66.i.2, -4132994306676758123 ; 2 uses
  %i.qo = lshr i64 %i.qn, 47
  %i.qp = xor i64 %i.qo, %i.qn
  %i.qq = mul i64 %i.qp, -4132994306676758123
  %i.qr = xor i64 %i.qq, %i.ql
  %i.qs = mul i64 %i.qr, -4132994306676758123
  %.0.copyload.i.i.i.i66.i.3 = load i64, ptr %i.qm, align 1
  %i.qt = getelementptr inbounds nuw i8, ptr %.039.i.i.i.i64.i, i64 32 ; 2 uses
  %i.qu = mul i64 %.0.copyload.i.i.i.i66.i.3, -4132994306676758123 ; 2 uses
  %i.qv = lshr i64 %i.qu, 47
  %i.qw = xor i64 %i.qv, %i.qu
  %i.qx = mul i64 %i.qw, -4132994306676758123
  %i.qy = xor i64 %i.qx, %i.qs
  %i.qz = mul i64 %i.qy, -4132994306676758123     ; 2 uses
  %.not.i.i.i.i67.i.3 = icmp eq ptr %i.qt, %i.pm
  br i1 %.not.i.i.i.i67.i.3, label %._crit_edge.i.i.i.i68.i, label %.lr.ph.i.i.i.i63.i, !llvm.loop !409

._crit_edge.i.i.i.i68.i:                          ; preds = %.lr.ph.i.i.i.i63.i.prol.loopexit, %.lr.ph.i.i.i.i63.i, %"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i"
  %.036.lcssa.i.i.i.i69.i = phi i64 [ %i.pk, %"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i" ], [ %.lcssa.unr, %.lr.ph.i.i.i.i63.i.prol.loopexit ], [ %i.qz, %.lr.ph.i.i.i.i63.i ] ; 2 uses
  %.0.lcssa.i.i.i.i70.i = phi ptr [ %i.mk, %"_ZZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumEENK3$_0clEN4pstd3pmr21polymorphic_allocatorISt4byteEERKNS_22DenselySampledSpectrumE.exit.i" ], [ %i.pm, %.lr.ph.i.i.i.i63.i ], [ %i.pm, %.lr.ph.i.i.i.i63.i.prol.loopexit ]
  %i.ra = and i64 %i.mb, 1
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i68.i
  %i.rc = load i32, ptr %.0.lcssa.i.i.i.i70.i, align 1
  %i.rd = zext i32 %i.rc to i64
  %i.re = xor i64 %.036.lcssa.i.i.i.i69.i, %i.rd
  %i.rf = mul i64 %i.re, -4132994306676758123
  br label %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i

_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i: ; preds = %bb.y, %._crit_edge.i.i.i.i68.i, %.noexc11
  %.7.i.i.i.i72.i = phi i64 [ %i.rf, %bb.y ], [ %.036.lcssa.i.i.i.i69.i, %._crit_edge.i.i.i.i68.i ], [ 0, %.noexc11 ] ; 2 uses
  %i.rg = lshr i64 %.7.i.i.i.i72.i, 47
  %i.rh = xor i64 %i.rg, %.7.i.i.i.i72.i
  %i.ri = mul i64 %i.rh, -4132994306676758123     ; 2 uses
  %i.rj = lshr i64 %i.ri, 47
  %i.rk = xor i64 %i.rj, %i.ri
  %i.rl = load i64, ptr %i.ee, align 8, !tbaa !55 ; 2 uses
  %i.rm = load ptr, ptr %i.ej, align 8, !tbaa !56 ; 3 uses
  %.01114.i73.i = urem i64 %i.rk, %i.rl           ; 3 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %.01114.i73.i
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !58
  %.not15.i74.i = icmp eq ptr %i.ro, null
  br i1 %.not15.i74.i, label %_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit82.i, label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i, %.lr.ph.i75.i
  %indvars.iv.i76.i = phi i64 [ %indvars.iv.next.i78.i, %.lr.ph.i75.i ], [ 1, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i ] ; 2 uses
  %.01117.i77.i = phi i64 [ %.011.i79.i, %.lr.ph.i75.i ], [ %.01114.i73.i, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i ]
  %i.rp = add i64 %.01117.i77.i, %indvars.iv.i76.i
  %indvars.iv.next.i78.i = add nuw nsw i64 %indvars.iv.i76.i, 1
  %.011.i79.i = urem i64 %i.rp, %i.rl             ; 3 uses
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %.011.i79.i
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !58
  %.not.i80.i = icmp eq ptr %i.rr, null
  br i1 %.not.i80.i, label %_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit82.i, label %.lr.ph.i75.i, !llvm.loop !415

_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit82.i: ; preds = %.lr.ph.i75.i, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i
  %.011.lcssa.i81.i = phi i64 [ %.01114.i73.i, %_ZNKSt4hashIN4pbrt22DenselySampledSpectrumEEclERKS1_.exit.i71.i ], [ %.011.i79.i, %.lr.ph.i75.i ]
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %.011.lcssa.i81.i
  store ptr %i.lw, ptr %i.rs, align 8, !tbaa !58
  br label %.loopexit

bb.z:                                             ; preds = %_ZNSt12shared_mutex11lock_sharedEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt12shared_mutex11lock_sharedEv.exit.i ] ; 2 uses
  %5 = phi ptr [ %i.em, %.lr.ph.i ], [ %i.sk, %_ZNSt12shared_mutex11lock_sharedEv.exit.i ] ; 6 uses
  %.034116.i = phi i64 [ %i.eg, %.lr.ph.i ], [ %i.si, %_ZNSt12shared_mutex11lock_sharedEv.exit.i ]
  %i.rt = load i32, ptr %5, align 8, !tbaa !74
  %.not.i83.i = icmp eq i32 %i.rt, %i.en
  br i1 %.not.i83.i, label %bb.aa, label %_ZNSt12shared_mutex11lock_sharedEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ru = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !75
  %.not12.i85.i = icmp eq i32 %i.rv, %i.ep
  br i1 %.not12.i85.i, label %bb.ab, label %_ZNSt12shared_mutex11lock_sharedEv.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.rw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !72
  %.not13.i86.i = icmp eq i64 %i.rx, %i.eq
  br i1 %.not13.i86.i, label %.preheader.i87.i, label %_ZNSt12shared_mutex11lock_sharedEv.exit.i

.preheader.i87.i:                                 ; preds = %bb.ab
  br i1 %i.es, label %.loopexit, label %.lr.ph.i88.i

.lr.ph.i88.i:                                     ; preds = %.preheader.i87.i
  %i.ry = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !71
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %i.sa = add nuw i64 %.01014.i89.i, 1            ; 2 uses
  %exitcond.not.i90.i = icmp eq i64 %i.sa, %i.eq
  br i1 %exitcond.not.i90.i, label %.loopexit, label %bb.ad, !llvm.loop !411

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i88.i
  %.01014.i89.i = phi i64 [ 0, %.lr.ph.i88.i ], [ %i.sa, %bb.ac ] ; 3 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %.01014.i89.i
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !77
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.01014.i89.i
  %i.se = load float, ptr %i.sd, align 4, !tbaa !77
  %i.sf = fcmp oeq float %i.sc, %i.se
  br i1 %i.sf, label %bb.ac, label %_ZNSt12shared_mutex11lock_sharedEv.exit.i

_ZNSt12shared_mutex11lock_sharedEv.exit.i:        ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.z
  %i.sg = add i64 %.034116.i, %indvars.iv.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.sh = load i64, ptr %i.ee, align 8, !tbaa !55
  %i.si = urem i64 %i.sg, %i.sh                   ; 2 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.si
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !58 ; 2 uses
  %.not.i5 = icmp eq ptr %i.sk, null
  br i1 %.not.i5, label %_ZNSt12shared_mutex11lock_sharedEv.exit._crit_edge.i, label %bb.z, !llvm.loop !424

.loopexit:                                        ; preds = %.preheader.i87.i, %bb.ac, %.preheader.i.i, %bb.l, %_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit82.i
  %.1.i = phi ptr [ %4, %bb.l ], [ %i.lw, %_ZN4pbrt11InternCacheINS_22DenselySampledSpectrumESt4hashIS1_EE6InsertEPKS1_PN4pstd6vectorIS6_NS7_3pmr21polymorphic_allocatorIS6_EEEE.exit82.i ], [ %5, %bb.ac ], [ %4, %.preheader.i.i ], [ %5, %.preheader.i87.i ]
  %i.sl = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.eh) #37 ; 0 uses
  store i64 0, ptr %i.bz, align 8, !tbaa !72
  %i.sm = load ptr, ptr %i.bx, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i.i.i.i14, label %_ZN4pbrt22DenselySampledSpectrumD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.sn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !80
  %i.sq = shl i64 %i.sp, 2
  %i.sr = load ptr, ptr %i.sn, align 8, !tbaa !81 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !42
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8
  invoke void %i.su(ptr noundef nonnull align 8 dereferenceable(8) %i.sr, ptr noundef nonnull %i.sm, i64 noundef %i.sq, i64 noundef 4)
          to label %_ZN4pbrt22DenselySampledSpectrumD2Ev.exit unwind label %bb.af, !inline_history !1

bb.af:                                            ; preds = %bb.ae
  %i.sv = landingpad { ptr, i32 }
          catch ptr null
  %i.sw = extractvalue { ptr, i32 } %i.sv, 0
  call void @__clang_call_terminate(ptr %i.sw) #39
  unreachable

_ZN4pbrt22DenselySampledSpectrumD2Ev.exit:        ; preds = %.loopexit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret ptr %.1.i

bb.ag:                                            ; preds = %.invoke, %._crit_edge.thread.i.i.i.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i.i.i.i.i, %bb.x, %._crit_edge.i.i.i58..lr.ph.i.i_crit_edge.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body9

.body9:                                           ; preds = %bb.w, %bb.ag
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.sx, %bb.ag ], [ %i.lp, %bb.w ]
  call void @_ZN4pbrt22DenselySampledSpectrumD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.ah

bb.ah:                                            ; preds = %.body9, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body10, %.body9 ], [ %i.br, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt22DenselySampledSpectrumC2ENS_8SpectrumEiiN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, ptr %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %5 = alloca %class.anon.118, align 8            ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  store i32 %2, ptr %0, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.d, align 4, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = sub nsw i32 %3, %2
  %i.g = add nsw i32 %i.f, 1                      ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = ptrtoint ptr %4 to i64
  store i64 %i.i, ptr %i.e, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.g, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2EmRKS3_.exit, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %bb.a
  %i.m = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.m, i64 noundef 4), !inline_history !433 ; 14 uses
  %.pr.i.i = load i64, ptr %i.l, align 8, !tbaa !72 ; 11 uses
  %.not13.i.i.i = icmp eq i64 %.pr.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !71 ; 14 uses
  br i1 %.not13.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %.pre.i.i.i27 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.r = ptrtoaddr ptr %i.q to i64
  %min.iters.check = icmp ult i64 %.pr.i.i, 4
  %i.s = sub i64 %.pre.i.i.i27, %i.r
  %diff.check = icmp ugt i64 %i.s, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check28 = icmp ult i64 %.pr.i.i, 32
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %.pr.i.i, 28
  %n.vec = and i64 %.pr.i.i, -32                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !77
  %wide.load29 = load <8 x float>, ptr %i.w, align 4, !tbaa !77
  %wide.load30 = load <8 x float>, ptr %i.x, align 4, !tbaa !77
  %wide.load31 = load <8 x float>, ptr %i.y, align 4, !tbaa !77
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store <8 x float> %wide.load, ptr %i.u, align 4, !tbaa !77
  store <8 x float> %wide.load29, ptr %i.z, align 4, !tbaa !77
  store <8 x float> %wide.load30, ptr %i.aa, align 4, !tbaa !77
  store <8 x float> %wide.load31, ptr %i.ab, align 4, !tbaa !77
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %.pr.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index33
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index33
  %wide.load34 = load <4 x float>, ptr %i.ae, align 4, !tbaa !77
  store <4 x float> %wide.load34, ptr %i.ad, align 4, !tbaa !77
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !435

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %.pr.i.i, %n.vec32
  br i1 %cmp.n36, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = sub i64 %.pr.i.i, %indvars.iv.i.i.i.ph
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !77
  store float %i.aj, ptr %i.ah, align 4, !tbaa !77
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !436

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.ak = sub i64 %indvars.iv.i.i.i.ph, %.pr.i.i
  %i.al = icmp ugt i64 %i.ak, -8
  br i1 %i.al, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i
  %i.am = load i64, ptr %i.k, align 8, !tbaa !80
  %i.an = shl i64 %i.am, 2
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.an, i64 noundef 4), !inline_history !437
  br label %.lr.ph.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !77
  store float %i.au, ptr %i.as, align 4, !tbaa !77
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
end_hunk_1
