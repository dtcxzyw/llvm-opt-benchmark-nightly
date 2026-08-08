inline.NumInlined: 1789
inline.NumDeleted: 372
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4cvc58internal6theory7strings13StringsEntail25componentContainsInternalEbRSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES9_S9_S9_bi:bb.a
bb.cz:                                            ; preds = %bb.cu
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.jp = load ptr, ptr %2, align 8, !tbaa !55
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.y ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !16 ; 4 uses
  %i.js = load ptr, ptr %19, align 8, !tbaa !16
  %.not.i263 = icmp eq ptr %i.jr, %i.js
  br i1 %.not.i263, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit268, label %bb.da, !prof !24

bb.da:                                            ; preds = %bb.cz
  %i.jt = load i64, ptr %i.jr, align 8            ; 3 uses
  %i.ju = and i64 %i.jt, 1152920405095219200
  %.not.i.i264 = icmp eq i64 %i.ju, 1152920405095219200
  br i1 %.not.i.i264, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i265, label %bb.db, !prof !24

bb.db:                                            ; preds = %bb.da
  %i.jv = add i64 %i.jt, 1152920405095219200
  %i.jw = and i64 %i.jv, 1152920405095219200      ; 2 uses
  %i.jx = and i64 %i.jt, -1152920405095219201
  %i.jy = or disjoint i64 %i.jw, %i.jx
  store i64 %i.jy, ptr %i.jr, align 8
  %i.jz = icmp eq i64 %i.jw, 0
  br i1 %i.jz, label %bb.dc, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i265, !prof !24

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jr)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i265 unwind label %bb.dk

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i265: ; preds = %bb.dc, %bb.db, %bb.da
  %i.ka = load ptr, ptr %19, align 8, !tbaa !16   ; 5 uses
  store ptr %i.ka, ptr %i.jq, align 8, !tbaa !16
  %i.kb = load i64, ptr %i.ka, align 8            ; 3 uses
  %i.kc = lshr i64 %i.kb, 40
  %i.kd = trunc nuw nsw i64 %i.kc to i32
  %i.ke = and i32 %i.kd, 1048575                  ; 3 uses
  %i.kf = icmp samesign ult i32 %i.ke, 1048574
  br i1 %i.kf, label %bb.dd, label %bb.de, !prof !23

bb.dd:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i265
  %i.kg = add nuw nsw i32 %i.ke, 1
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = shl nuw nsw i64 %i.kh, 40
  %i.kj = and i64 %i.kb, -1152920405095219201
  %i.kk = or i64 %i.ki, %i.kj
  store i64 %i.kk, ptr %i.ka, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit268

bb.de:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i265
  %i.kl = icmp eq i32 %i.ke, 1048574
  br i1 %i.kl, label %bb.df, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit268, !prof !24

bb.df:                                            ; preds = %bb.de
  %i.km = or i64 %i.kb, 1152920405095219200
  store i64 %i.km, ptr %i.ka, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit268 unwind label %bb.dk

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit268: ; preds = %bb.de, %bb.dd, %bb.cz, %bb.df
  %i.kn = load ptr, ptr %19, align 8, !tbaa !16   ; 3 uses
  %i.ko = load i64, ptr %i.kn, align 8            ; 3 uses
  %i.kp = and i64 %i.ko, 1152920405095219200
  %.not.i.i269 = icmp eq i64 %i.kp, 1152920405095219200
  br i1 %.not.i.i269, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271, label %bb.dg, !prof !24

bb.dg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit268
  %i.kq = add i64 %i.ko, 1152920405095219200
  %i.kr = and i64 %i.kq, 1152920405095219200      ; 2 uses
  %i.ks = and i64 %i.ko, -1152920405095219201
  %i.kt = or disjoint i64 %i.kr, %i.ks
  store i64 %i.kt, ptr %i.kn, align 8
  %i.ku = icmp eq i64 %i.kr, 0
  br i1 %i.ku, label %bb.dh, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271, !prof !24

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271 unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.kv = landingpad { ptr, i32 }
          catch ptr null
  %i.kw = extractvalue { ptr, i32 } %i.kv, 0
  call void @__clang_call_terminate(ptr %i.kw) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit268, %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit253

bb.dj:                                            ; preds = %bb.cs
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %.body260

bb.dk:                                            ; preds = %bb.df, %bb.dc
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #21
  br label %.body260

.body260:                                         ; preds = %bb.dj, %bb.cy, %bb.dk
  %.pn174 = phi { ptr, i32 } [ %i.ky, %bb.dk ], [ %i.kx, %bb.dj ], [ %.pn5.i258, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %.body218

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit253: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i250, %bb.cj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212, %bb.cr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271, %bb.cd
  %.1 = phi i32 [ %.0.mux, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit212 ], [ %.0125594, %bb.cr ], [ %.0125594, %bb.cd ], [ %.0125594, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit271 ], [ %.0125594, %bb.cj ], [ %.0125594, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i250 ] ; 2 uses
  %i.kz = load ptr, ptr %15, align 8, !tbaa !16   ; 3 uses
  %i.la = load i64, ptr %i.kz, align 8            ; 3 uses
  %i.lb = and i64 %i.la, 1152920405095219200
  %.not.i.i272 = icmp eq i64 %i.lb, 1152920405095219200
  br i1 %.not.i.i272, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274, label %bb.dl, !prof !24

bb.dl:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit253
  %i.lc = add i64 %i.la, 1152920405095219200
  %i.ld = and i64 %i.lc, 1152920405095219200      ; 2 uses
  %i.le = and i64 %i.la, -1152920405095219201
  %i.lf = or disjoint i64 %i.ld, %i.le
  store i64 %i.lf, ptr %i.kz, align 8
  %i.lg = icmp eq i64 %i.ld, 0
  br i1 %i.lg, label %bb.dm, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274, !prof !24

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274 unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit253, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.lj = load ptr, ptr %14, align 8, !tbaa !16   ; 3 uses
  %i.lk = load i64, ptr %i.lj, align 8            ; 3 uses
  %i.ll = and i64 %i.lk, 1152920405095219200
  %.not.i.i275 = icmp eq i64 %i.ll, 1152920405095219200
  br i1 %.not.i.i275, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit277, label %bb.do, !prof !24

bb.do:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274
  %i.lm = add i64 %i.lk, 1152920405095219200
  %i.ln = and i64 %i.lm, 1152920405095219200      ; 2 uses
  %i.lo = and i64 %i.lk, -1152920405095219201
  %i.lp = or disjoint i64 %i.ln, %i.lo
  store i64 %i.lp, ptr %i.lj, align 8
  %i.lq = icmp eq i64 %i.ln, 0
  br i1 %i.lq, label %bb.dp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit277, !prof !24

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit277 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit277: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit274, %bb.do, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %i.bq, label %.thread, label %bb.b

.body218:                                         ; preds = %bb.ak, %bb.cc, %bb.cq, %bb.as, %bb.bd, %.body260, %bb.cl, %bb.ck, %.body230, %bb.ay, %bb.ax, %bb.av
  %.pn176 = phi { ptr, i32 } [ %.pn168, %bb.av ], [ %i.iu, %bb.cl ], [ %i.it, %bb.ck ], [ %.pn174, %.body260 ], [ %i.fg, %bb.ay ], [ %i.ff, %bb.ax ], [ %.pn171, %.body230 ], [ %i.dq, %bb.ak ], [ %i.fk, %bb.bd ], [ %i.hz, %bb.cc ], [ %i.ej, %bb.as ], [ %i.jb, %bb.cq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #21
  br label %.body

.body:                                            ; preds = %bb.k, %.body218
  %.pn176.pn = phi { ptr, i32 } [ %.pn176, %.body218 ], [ %i.al, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %common.resume

bb.dr:                                            ; preds = %bb.a
  %i.lt = ptrtoint ptr %i.j to i64
  %i.lu = ptrtoint ptr %i.k to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = ashr exact i64 %i.lv, 3                 ; 2 uses
  %.not = icmp ult i64 %i.lw, %i.g
  br i1 %.not, label %.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lx = sub nuw nsw i64 %i.lw, %i.g
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = icmp ne i32 %7, 1                       ; 2 uses
  %i.ma = and i1 %6, %i.lz
  %i.mb = icmp ne i32 %7, -1                      ; 2 uses
  %i.mc = and i1 %6, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.dt

28:                                               ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit431.a
  %29 = add i32 %storemerge591, 1                 ; 2 uses
  %.not158 = icmp ugt i32 %29, %i.ly
  br i1 %.not158, label %.thread, label %bb.dt, !llvm.loop !91

bb.dt:                                            ; preds = %bb.ds, %28
  %.3593 = phi i32 [ undef, %bb.ds ], [ %.7, %28 ] ; 4 uses
  %storemerge591 = phi i32 [ 0, %bb.ds ], [ %29, %28 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.mh = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.mi = icmp eq i8 %i.mh, 0
  br i1 %i.mi, label %bb.du, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit279, !prof !61

bb.du:                                            ; preds = %bb.dt
  %i.mj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i.i278 = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i278, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit279, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.dw unwind label %bb.dx     ; 3 uses

bb.dw:                                            ; preds = %bb.dv
  store i64 1152920405095219200, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, i8 0, i64 16, i1 false)
  store ptr %i.mk, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit279

bb.dx:                                            ; preds = %bb.dv
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %common.resume

_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit279: ; preds = %bb.dt, %bb.du, %bb.dw
  %i.mn = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !22
  store ptr %i.mn, ptr %20, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.mo = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.mp = icmp eq i8 %i.mo, 0
  br i1 %i.mp, label %bb.dy, label %bb.ec, !prof !61

bb.dy:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit279
  %i.mq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i.i280 = icmp eq i32 %i.mq, 0
  br i1 %.not.i.i280, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mr = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.ea unwind label %bb.eb     ; 3 uses

bb.ea:                                            ; preds = %bb.dz
  store i64 1152920405095219200, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, i8 0, i64 16, i1 false)
  store ptr %i.mr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %.body281

bb.ec:                                            ; preds = %bb.ea, %bb.dy, %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit279
  %i.mu = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !22
  store ptr %i.mu, ptr %21, align 8, !tbaa !16
  %i.mv = zext i32 %storemerge591 to i64          ; 6 uses
  %i.mw = load ptr, ptr %2, align 8, !tbaa !55
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mv
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !16 ; 5 uses
  store ptr %i.my, ptr %22, align 8, !tbaa !16
  %i.mz = load i64, ptr %i.my, align 8            ; 3 uses
  %i.na = lshr i64 %i.mz, 40
  %i.nb = trunc nuw nsw i64 %i.na to i32
  %i.nc = and i32 %i.nb, 1048575                  ; 3 uses
  %i.nd = icmp samesign ult i32 %i.nc, 1048574
  br i1 %i.nd, label %bb.ed, label %bb.ee, !prof !23

bb.ed:                                            ; preds = %bb.ec
  %i.ne = add nuw nsw i32 %i.nc, 1
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = shl nuw nsw i64 %i.nf, 40
  %i.nh = and i64 %i.mz, -1152920405095219201
  %i.ni = or i64 %i.ng, %i.nh
  store i64 %i.ni, ptr %i.my, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit285

bb.ee:                                            ; preds = %bb.ec
  %i.nj = icmp eq i32 %i.nc, 1048574
  br i1 %i.nj, label %bb.ef, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit285, !prof !24

bb.ef:                                            ; preds = %bb.ee
  %i.nk = or i64 %i.mz, 1152920405095219200
  store i64 %i.nk, ptr %i.my, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.my)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit285 unwind label %bb.er

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit285: ; preds = %bb.ee, %bb.ed, %bb.ef
  %i.nl = load ptr, ptr %3, align 8, !tbaa !55
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !16 ; 5 uses
  store ptr %i.nm, ptr %23, align 8, !tbaa !16
  %i.nn = load i64, ptr %i.nm, align 8            ; 3 uses
  %i.no = lshr i64 %i.nn, 40
  %i.np = trunc nuw nsw i64 %i.no to i32
  %i.nq = and i32 %i.np, 1048575                  ; 3 uses
  %i.nr = icmp samesign ult i32 %i.nq, 1048574
  br i1 %i.nr, label %bb.eg, label %bb.eh, !prof !23

bb.eg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit285
  %i.ns = add nuw nsw i32 %i.nq, 1
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = shl nuw nsw i64 %i.nt, 40
  %i.nv = and i64 %i.nn, -1152920405095219201
  %i.nw = or i64 %i.nu, %i.nv
  store i64 %i.nw, ptr %i.nm, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287

bb.eh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit285
  %i.nx = icmp eq i32 %i.nq, 1048574
  br i1 %i.nx, label %bb.ei, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287, !prof !24

bb.ei:                                            ; preds = %bb.eh
  %i.ny = or i64 %i.nn, 1152920405095219200
  store i64 %i.ny, ptr %i.nm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287 unwind label %bb.es

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287: ; preds = %bb.eh, %bb.eg, %bb.ei
  %i.nz = invoke noundef zeroext i1 @_ZN4cvc58internal6theory7strings13StringsEntail21componentContainsBaseEbNS0_12NodeTemplateILb1EEES5_RS5_S6_ib(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %22, ptr noundef nonnull align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, i1 noundef zeroext %i.ma)
          to label %bb.ej unwind label %bb.et

bb.ej:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit287
  %i.oa = load ptr, ptr %23, align 8, !tbaa !16   ; 3 uses
  %i.ob = load i64, ptr %i.oa, align 8            ; 3 uses
  %i.oc = and i64 %i.ob, 1152920405095219200
  %.not.i.i288 = icmp eq i64 %i.oc, 1152920405095219200
  br i1 %.not.i.i288, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit290, label %bb.ek, !prof !24

bb.ek:                                            ; preds = %bb.ej
  %i.od = add i64 %i.ob, 1152920405095219200
  %i.oe = and i64 %i.od, 1152920405095219200      ; 2 uses
  %i.of = and i64 %i.ob, -1152920405095219201
  %i.og = or disjoint i64 %i.oe, %i.of
  store i64 %i.og, ptr %i.oa, align 8
  %i.oh = icmp eq i64 %i.oe, 0
  br i1 %i.oh, label %bb.el, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit290, !prof !24

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit290 unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit290: ; preds = %bb.ej, %bb.ek, %bb.el
  %i.ok = load ptr, ptr %22, align 8, !tbaa !16   ; 3 uses
  %i.ol = load i64, ptr %i.ok, align 8            ; 3 uses
  %i.om = and i64 %i.ol, 1152920405095219200
  %.not.i.i291 = icmp eq i64 %i.om, 1152920405095219200
  br i1 %.not.i.i291, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293, label %bb.en, !prof !24

bb.en:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit290
  %i.on = add i64 %i.ol, 1152920405095219200
  %i.oo = and i64 %i.on, 1152920405095219200      ; 2 uses
  %i.op = and i64 %i.ol, -1152920405095219201
  %i.oq = or disjoint i64 %i.oo, %i.op
  store i64 %i.oq, ptr %i.ok, align 8
  %i.or = icmp eq i64 %i.oo, 0
  br i1 %i.or, label %bb.eo, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293, !prof !24

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ok)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293 unwind label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  call void @__clang_call_terminate(ptr %i.ot) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit290, %bb.en, %bb.eo
  br i1 %i.nz, label %.preheader586, label %.thread571

.preheader586:                                    ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293
  %i.ou = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ov = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = sub i64 %i.ow, %i.ox
  %i.oz = ashr exact i64 %i.oy, 3                 ; 2 uses
  br label %bb.eq

bb.eq:                                            ; preds = %.preheader586, %bb.hu
  %.0155 = phi i32 [ %i.pf, %bb.hu ], [ 1, %.preheader586 ] ; 4 uses
  %i.pa = zext i32 %.0155 to i64                  ; 6 uses
  %i.pb = icmp ugt i64 %i.oz, %i.pa
  br i1 %i.pb, label %bb.ev, label %.thread571

bb.er:                                            ; preds = %bb.ef
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory7strings13StringsEntail25componentContainsInternalEbRSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES9_S9_S9_bi:bb.a
  %i.um = icmp samesign ult i32 %i.ul, 1048574
  br i1 %i.um, label %bb.gp, label %bb.gq, !prof !23

bb.gp:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i353
  %i.un = add nuw nsw i32 %i.ul, 1
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = shl nuw nsw i64 %i.uo, 40
  %i.uq = and i64 %i.ui, -1152920405095219201
  %i.ur = or i64 %i.up, %i.uq
  store i64 %i.ur, ptr %i.uh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356

bb.gq:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i353
  %i.us = icmp eq i32 %i.ul, 1048574
  br i1 %i.us, label %bb.gr, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356, !prof !24

bb.gr:                                            ; preds = %bb.gq
  %i.ut = or i64 %i.ui, 1152920405095219200
  store i64 %i.ut, ptr %i.uh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356 unwind label %bb.gh

bb.gs:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit346
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.gt:                                            ; preds = %bb.gl
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356: ; preds = %bb.gq, %bb.gp, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit350, %bb.gr
  br i1 %i.lz, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356.thread, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit375

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356.thread: ; preds = %bb.fu, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356
  %i.uw = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ux = load ptr, ptr %2, align 8, !tbaa !55
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.mv ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !16 ; 4 uses
  %i.va = load ptr, ptr %i.uw, align 8, !tbaa !16
  %.not.i357 = icmp eq ptr %i.uz, %i.va
  br i1 %.not.i357, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit362, label %bb.gu, !prof !24

bb.gu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356.thread
  %i.vb = load i64, ptr %i.uz, align 8            ; 3 uses
  %i.vc = and i64 %i.vb, 1152920405095219200
  %.not.i.i358 = icmp eq i64 %i.vc, 1152920405095219200
  br i1 %.not.i.i358, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i359, label %bb.gv, !prof !24

bb.gv:                                            ; preds = %bb.gu
  %i.vd = add i64 %i.vb, 1152920405095219200
  %i.ve = and i64 %i.vd, 1152920405095219200      ; 2 uses
  %i.vf = and i64 %i.vb, -1152920405095219201
  %i.vg = or disjoint i64 %i.ve, %i.vf
  store i64 %i.vg, ptr %i.uz, align 8
  %i.vh = icmp eq i64 %i.ve, 0
  br i1 %i.vh, label %bb.gw, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i359, !prof !24

bb.gw:                                            ; preds = %bb.gv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uz)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i359 unwind label %bb.gh

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i359: ; preds = %bb.gw, %bb.gv, %bb.gu
  %i.vi = load ptr, ptr %i.uw, align 8, !tbaa !16 ; 5 uses
  store ptr %i.vi, ptr %i.uy, align 8, !tbaa !16
  %i.vj = load i64, ptr %i.vi, align 8            ; 3 uses
  %i.vk = lshr i64 %i.vj, 40
  %i.vl = trunc nuw nsw i64 %i.vk to i32
  %i.vm = and i32 %i.vl, 1048575                  ; 3 uses
  %i.vn = icmp samesign ult i32 %i.vm, 1048574
  br i1 %i.vn, label %bb.gx, label %bb.gy, !prof !23

bb.gx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i359
  %i.vo = add nuw nsw i32 %i.vm, 1
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = shl nuw nsw i64 %i.vp, 40
  %i.vr = and i64 %i.vj, -1152920405095219201
  %i.vs = or i64 %i.vq, %i.vr
  store i64 %i.vs, ptr %i.vi, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit362

bb.gy:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i359
  %i.vt = icmp eq i32 %i.vm, 1048574
  br i1 %i.vt, label %bb.gz, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit362, !prof !24

bb.gz:                                            ; preds = %bb.gy
  %i.vu = or i64 %i.vj, 1152920405095219200
  store i64 %i.vu, ptr %i.vi, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit362 unwind label %bb.gh

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit362: ; preds = %bb.gy, %bb.gx, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356.thread, %bb.gz
  %i.vv = load ptr, ptr %i.mf, align 8, !tbaa !83
  %i.vw = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.mv
  %i.vy = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.vz = ptrtoint ptr %i.vv to i64
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = sub i64 %i.vz, %i.wa
  %i.wc = getelementptr inbounds i8, ptr %i.vy, i64 %i.wb
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.wc, ptr %i.vw, ptr %i.vx)
          to label %bb.ha unwind label %bb.hm

bb.ha:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit362
  %i.wd = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wd, i64 %i.mv
  %i.wf = invoke ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.wd, ptr %i.we)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit366 unwind label %bb.hn ; 0 uses

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit366: ; preds = %bb.ha
  %i.wg = load ptr, ptr %20, align 8, !tbaa !16
  %i.wh = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.wi = icmp eq i8 %i.wh, 0
  br i1 %i.wi, label %bb.hb, label %bb.hf, !prof !61

bb.hb:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit366
  %i.wj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  %.not.i.i367 = icmp eq i32 %i.wj, 0
  br i1 %.not.i.i367, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.wk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.hd unwind label %bb.he     ; 3 uses

bb.hd:                                            ; preds = %bb.hc
  store i64 1152920405095219200, ptr %i.wk, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wl, i8 0, i64 16, i1 false)
  store ptr %i.wk, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !22
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.wm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #21
  br label %.body339

bb.hf:                                            ; preds = %bb.hd, %bb.hb, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit366
  %i.wn = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !22
  %i.wo = icmp eq ptr %i.wg, %i.wn
  br i1 %i.wo, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit375, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.wp = load ptr, ptr %i.mf, align 8, !tbaa !52 ; 3 uses
  %i.wq = load ptr, ptr %i.mg, align 8, !tbaa !75
  %.not.i371 = icmp eq ptr %i.wp, %i.wq
  br i1 %.not.i371, label %bb.hl, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.wr = load ptr, ptr %20, align 8, !tbaa !16   ; 5 uses
  store ptr %i.wr, ptr %i.wp, align 8, !tbaa !16
  %i.ws = load i64, ptr %i.wr, align 8            ; 3 uses
  %i.wt = lshr i64 %i.ws, 40
  %i.wu = trunc nuw nsw i64 %i.wt to i32
  %i.wv = and i32 %i.wu, 1048575                  ; 3 uses
  %i.ww = icmp samesign ult i32 %i.wv, 1048574
  br i1 %i.ww, label %bb.hi, label %bb.hj, !prof !23

bb.hi:                                            ; preds = %bb.hh
  %i.wx = add nuw nsw i32 %i.wv, 1
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = shl nuw nsw i64 %i.wy, 40
  %i.xa = and i64 %i.ws, -1152920405095219201
  %i.xb = or i64 %i.wz, %i.xa
  store i64 %i.xb, ptr %i.wr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i372

bb.hj:                                            ; preds = %bb.hh
  %i.xc = icmp eq i32 %i.wv, 1048574
  br i1 %i.xc, label %bb.hk, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i372, !prof !24

bb.hk:                                            ; preds = %bb.hj
  %i.xd = or i64 %i.ws, 1152920405095219200
  store i64 %i.xd, ptr %i.wr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i372 unwind label %bb.gh

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i372: ; preds = %bb.hk, %bb.hj, %bb.hi
  %i.xe = load ptr, ptr %i.mf, align 8, !tbaa !52
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store ptr %i.xf, ptr %i.mf, align 8, !tbaa !52
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit375

bb.hl:                                            ; preds = %bb.hg
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.wp, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit375 unwind label %bb.gh

bb.hm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit362
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %.body339

bb.hn:                                            ; preds = %bb.ha
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %.body339

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit375: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311, %bb.hf, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356, %bb.hl, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i372
  %.2128 = phi i32 [ %.mux, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311 ], [ 1, %bb.hl ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356 ], [ 1, %bb.hf ], [ 1, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i372 ]
  %.4 = phi i32 [ %.3.mux, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311 ], [ %storemerge591, %bb.hl ], [ %storemerge591, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit356 ], [ %storemerge591, %bb.hf ], [ %storemerge591, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i372 ]
  %i.xi = load ptr, ptr %25, align 8, !tbaa !16   ; 3 uses
  %i.xj = load i64, ptr %i.xi, align 8            ; 3 uses
  %i.xk = and i64 %i.xj, 1152920405095219200
  %.not.i.i420 = icmp eq i64 %i.xk, 1152920405095219200
  br i1 %.not.i.i420, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit422, label %bb.ho, !prof !24

bb.ho:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit375
  %i.xl = add i64 %i.xj, 1152920405095219200
  %i.xm = and i64 %i.xl, 1152920405095219200      ; 2 uses
  %i.xn = and i64 %i.xj, -1152920405095219201
  %i.xo = or disjoint i64 %i.xm, %i.xn
  store i64 %i.xo, ptr %i.xi, align 8
  %i.xp = icmp eq i64 %i.xm, 0
  br i1 %i.xp, label %bb.hp, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit422, !prof !24

bb.hp:                                            ; preds = %bb.ho
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit422 unwind label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.xq = landingpad { ptr, i32 }
          catch ptr null
  %i.xr = extractvalue { ptr, i32 } %i.xq, 0
  call void @__clang_call_terminate(ptr %i.xr) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit422: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit375, %bb.ho, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.xs = load ptr, ptr %24, align 8, !tbaa !16   ; 3 uses
  %i.xt = load i64, ptr %i.xs, align 8            ; 3 uses
  %i.xu = and i64 %i.xt, 1152920405095219200
  %.not.i.i423 = icmp eq i64 %i.xu, 1152920405095219200
  br i1 %.not.i.i423, label %bb.hv, label %bb.hr, !prof !24

bb.hr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit422
  %i.xv = add i64 %i.xt, 1152920405095219200
  %i.xw = and i64 %i.xv, 1152920405095219200      ; 2 uses
  %i.xx = and i64 %i.xt, -1152920405095219201
  %i.xy = or disjoint i64 %i.xw, %i.xx
  store i64 %i.xy, ptr %i.xs, align 8
  %i.xz = icmp eq i64 %i.xw, 0
  br i1 %i.xz, label %bb.hs, label %bb.hv, !prof !24

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xs)
          to label %bb.hv unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ya = landingpad { ptr, i32 }
          catch ptr null
  %i.yb = extractvalue { ptr, i32 } %i.ya, 0
  call void @__clang_call_terminate(ptr %i.yb) #22
  unreachable

.body339:                                         ; preds = %bb.fz, %bb.he, %bb.gh, %bb.hn, %bb.hm, %bb.gt, %bb.gs, %bb.gk
  %.pn162 = phi { ptr, i32 } [ %i.sw, %bb.gh ], [ %i.wm, %bb.he ], [ %i.sd, %bb.fz ], [ %.pn160, %bb.gk ], [ %i.xh, %bb.hn ], [ %i.xg, %bb.hm ], [ %i.uv, %bb.gt ], [ %i.uu, %bb.gs ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #21
  br label %.body299

.body299:                                         ; preds = %bb.ff, %.body339
  %.pn162.pn = phi { ptr, i32 } [ %.pn162, %.body339 ], [ %i.pu, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #21
  br label %.body295

.body295:                                         ; preds = %bb.fa, %.body299
  %.pn162.pn.pn = phi { ptr, i32 } [ %.pn162.pn, %.body299 ], [ %i.pn, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.ic

bb.hu:                                            ; preds = %bb.ev
  %i.yc = add i32 %.0155, %storemerge591
  %i.yd = zext i32 %i.yc to i64
  %i.ye = load ptr, ptr %2, align 8, !tbaa !55
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.yd
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.pa
  %i.yh = load ptr, ptr %i.yf, align 8, !tbaa !16
  %i.yi = load ptr, ptr %i.yg, align 8, !tbaa !16
  %.not585 = icmp eq ptr %i.yh, %i.yi
  br i1 %.not585, label %bb.eq, label %.thread571, !llvm.loop !92

bb.hv:                                            ; preds = %bb.hs, %bb.hr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit422
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  %cond2 = icmp eq i32 %.2128, 8
  br label %.thread571

.thread571:                                       ; preds = %bb.hu, %bb.eq, %bb.hv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293
  %.4130 = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293 ], [ %cond2, %bb.hv ], [ true, %bb.eq ], [ true, %bb.hu ]
  %.7 = phi i32 [ %.3593, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit293 ], [ %.4, %bb.hv ], [ %.3593, %bb.eq ], [ %.3593, %bb.hu ] ; 2 uses
  %i.yj = load ptr, ptr %21, align 8, !tbaa !16   ; 3 uses
  %i.yk = load i64, ptr %i.yj, align 8            ; 3 uses
  %i.yl = and i64 %i.yk, 1152920405095219200
  %.not.i.i426 = icmp eq i64 %i.yl, 1152920405095219200
  br i1 %.not.i.i426, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit428, label %bb.hw, !prof !24

bb.hw:                                            ; preds = %.thread571
  %i.ym = add i64 %i.yk, 1152920405095219200
  %i.yn = and i64 %i.ym, 1152920405095219200      ; 2 uses
  %i.yo = and i64 %i.yk, -1152920405095219201
  %i.yp = or disjoint i64 %i.yn, %i.yo
  store i64 %i.yp, ptr %i.yj, align 8
  %i.yq = icmp eq i64 %i.yn, 0
  br i1 %i.yq, label %bb.hx, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit428, !prof !24

bb.hx:                                            ; preds = %bb.hw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit428 unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.yr = landingpad { ptr, i32 }
          catch ptr null
  %i.ys = extractvalue { ptr, i32 } %i.yr, 0
  call void @__clang_call_terminate(ptr %i.ys) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit428: ; preds = %.thread571, %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.yt = load ptr, ptr %20, align 8, !tbaa !16   ; 3 uses
  %i.yu = load i64, ptr %i.yt, align 8            ; 3 uses
  %i.yv = and i64 %i.yu, 1152920405095219200
  %.not.i.i429 = icmp eq i64 %i.yv, 1152920405095219200
  br i1 %.not.i.i429, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit431.a, label %bb.hz, !prof !24

bb.hz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit428
  %i.yw = add i64 %i.yu, 1152920405095219200
  %i.yx = and i64 %i.yw, 1152920405095219200      ; 2 uses
  %i.yy = and i64 %i.yu, -1152920405095219201
  %i.yz = or disjoint i64 %i.yx, %i.yy
  store i64 %i.yz, ptr %i.yt, align 8
  %i.za = icmp eq i64 %i.yx, 0
  br i1 %i.za, label %bb.ia, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit431.a, !prof !24

bb.ia:                                            ; preds = %bb.hz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit431.a unwind label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.zb = landingpad { ptr, i32 }
          catch ptr null
  %i.zc = extractvalue { ptr, i32 } %i.zb, 0
  call void @__clang_call_terminate(ptr %i.zc) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit431.a: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit428, %bb.hz, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br i1 %.4130, label %28, label %.thread

bb.ic:                                            ; preds = %.body295, %bb.eu, %bb.er
  %.pn162.pn.pn.pn = phi { ptr, i32 } [ %.pn162.pn.pn, %.body295 ], [ %.pn, %bb.eu ], [ %i.pc, %bb.er ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #21
  br label %.body281

.body281:                                         ; preds = %bb.eb, %bb.ic
  %.pn162.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn162.pn.pn.pn, %bb.ic ], [ %i.mt, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %common.resume

.thread:                                          ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit431.a, %28, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit277, %bb.b, %.preheader, %bb.dr
  %.9 = phi i32 [ -1, %bb.dr ], [ -1, %.preheader ], [ -1, %bb.b ], [ %.1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit277 ], [ %.7, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit431.a ], [ -1, %28 ]
  ret i32 %.9
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4cvc58internal6theory7strings13StringsEntail20componentContainsExtERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES9_S9_S9_bi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4cvc58internal6theory7strings13StringsEntail25componentContainsInternalEbRSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EES9_S9_S9_bi(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %5, i32 noundef %6)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory7strings13StringsEntail21componentContainsBaseEbNS0_12NodeTemplateILb1EEES5_RS5_S6_ib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, ptr noundef align 8 %2, ptr noundef align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %27 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate.0", align 8 ; 2 uses
  %29 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %31 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %35 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %36 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %37 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %38 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %39 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %41 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %42 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !16
  %i.b = load ptr, ptr %3, align 8, !tbaa !16
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.d, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %i.e, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !16
  store ptr %i.f, ptr %13, align 8, !tbaa !25
  %i.g = call noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %13) ; 5 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !16
  store ptr %i.h, ptr %14, align 8, !tbaa !25
  %i.i = call noundef i64 @_ZN4cvc58internal6theory7strings4Word9getLengthENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 %14) ; 6 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  switch i32 %6, label %bb.ab [
    i32 1, label %bb.f
    i32 -1, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.k = load ptr, ptr %2, align 8, !tbaa !16
  store ptr %i.k, ptr %16, align 8, !tbaa !25
  call void @_ZN4cvc58internal6theory7strings4Word6suffixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %15, ptr noundef nonnull align 8 %16, i64 noundef %i.i)
  %i.l = load ptr, ptr %15, align 8, !tbaa !16    ; 4 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !16
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load i64, ptr %i.l, align 8              ; 3 uses
  %i.p = and i64 %i.o, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.p, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !24

bb.g:                                             ; preds = %bb.f
  %i.q = add i64 %i.o, 1152920405095219200
  %i.r = and i64 %i.q, 1152920405095219200        ; 2 uses
  %i.s = and i64 %i.o, -1152920405095219201
  %i.t = or disjoint i64 %i.r, %i.s
  store i64 %i.t, ptr %i.l, align 8
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !24

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br i1 %i.n, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %7, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.x = load ptr, ptr %2, align 8, !tbaa !16
  store ptr %i.x, ptr %18, align 8, !tbaa !25
  %i.y = sub i64 %i.g, %i.i
  invoke void @_ZN4cvc58internal6theory7strings4Word6prefixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %17, ptr noundef nonnull align 8 %18, i64 noundef %i.y)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %.critedge.thread

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn108 = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.aa, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.fe

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.ac = load ptr, ptr %2, align 8, !tbaa !16
  store ptr %i.ac, ptr %20, align 8, !tbaa !25
  call void @_ZN4cvc58internal6theory7strings4Word6prefixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %19, ptr noundef nonnull align 8 %20, i64 noundef %i.i)
  %i.ad = load ptr, ptr %19, align 8, !tbaa !16   ; 4 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !16
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.ah = and i64 %i.ag, 1152920405095219200
  %.not.i.i115 = icmp eq i64 %i.ah, 1152920405095219200
  br i1 %.not.i.i115, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116, label %bb.r, !prof !24

bb.r:                                             ; preds = %bb.q
  %i.ai = add i64 %i.ag, 1152920405095219200
  %i.aj = and i64 %i.ai, 1152920405095219200      ; 2 uses
  %i.ak = and i64 %i.ag, -1152920405095219201
  %i.al = or disjoint i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.ad, align 8
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116, !prof !24

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br i1 %i.af, label %bb.u, label %.critedge

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit116
  br i1 %7, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.ap = load ptr, ptr %2, align 8, !tbaa !16
  store ptr %i.ap, ptr %22, align 8, !tbaa !25
  %i.aq = sub i64 %i.g, %i.i
  invoke void @_ZN4cvc58internal6theory7strings4Word6suffixENS0_12NodeTemplateILb0EEEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %21, ptr noundef nonnull align 8 %22, i64 noundef %i.aq)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %21)
end_hunk_1
