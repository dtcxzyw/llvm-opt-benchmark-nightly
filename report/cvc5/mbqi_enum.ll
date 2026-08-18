inline.NumInlined: 3269
inline.NumDeleted: 1312
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers8MbqiEnum22constructInstantiationERKNS0_12NodeTemplateILb1EEES7_RKSt6vectorIS5_SaIS5_EERSA_RKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEERS8_ISH_IS5_NS1_11InferenceIdEESaISO_EE:.critedge298
  %.not.i.i467 = icmp eq i64 %i.it, 1152920405095219200
  br i1 %.not.i.i467, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i468, label %bb.cb, !prof !241

bb.cb:                                            ; preds = %bb.ca
  %i.iu = add i64 %i.is, 1152920405095219200
  %i.iv = and i64 %i.iu, 1152920405095219200      ; 2 uses
  %i.iw = and i64 %i.is, -1152920405095219201
  %i.ix = or disjoint i64 %i.iv, %i.iw
  store i64 %i.ix, ptr %i.iq, align 8
  %i.iy = icmp eq i64 %i.iv, 0
  br i1 %i.iy, label %bb.cc, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i468, !prof !241

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iq)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i468 unwind label %bb.cs

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i468: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.iz = load ptr, ptr %20, align 8, !tbaa !249  ; 5 uses
  store ptr %i.iz, ptr %19, align 8, !tbaa !249
  %i.ja = load i64, ptr %i.iz, align 8            ; 3 uses
  %i.jb = lshr i64 %i.ja, 40
  %i.jc = trunc nuw nsw i64 %i.jb to i32
  %i.jd = and i32 %i.jc, 1048575                  ; 3 uses
  %i.je = icmp samesign ult i32 %i.jd, 1048574
  br i1 %i.je, label %bb.cd, label %bb.ce, !prof !240

bb.cd:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i468
  %i.jf = add nuw nsw i32 %i.jd, 1
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = shl nuw nsw i64 %i.jg, 40
  %i.ji = and i64 %i.ja, -1152920405095219201
  %i.jj = or i64 %i.jh, %i.ji
  store i64 %i.jj, ptr %i.iz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit471

bb.ce:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i468
  %i.jk = icmp eq i32 %i.jd, 1048574
  br i1 %i.jk, label %bb.cf, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit471, !prof !241

bb.cf:                                            ; preds = %bb.ce
  %i.jl = or i64 %i.ja, 1152920405095219200
  store i64 %i.jl, ptr %i.iz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit471 unwind label %bb.cs

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit471: ; preds = %bb.ce, %bb.cd, %bb.bz, %bb.cf
  %i.jm = load ptr, ptr %20, align 8, !tbaa !249  ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8            ; 3 uses
  %i.jo = and i64 %i.jn, 1152920405095219200
  %.not.i.i472 = icmp eq i64 %i.jo, 1152920405095219200
  br i1 %.not.i.i472, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit474, label %bb.cg, !prof !241

bb.cg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit471
  %i.jp = add i64 %i.jn, 1152920405095219200
  %i.jq = and i64 %i.jp, 1152920405095219200      ; 2 uses
  %i.jr = and i64 %i.jn, -1152920405095219201
  %i.js = or disjoint i64 %i.jq, %i.jr
  store i64 %i.js, ptr %i.jm, align 8
  %i.jt = icmp eq i64 %i.jq, 0
  br i1 %i.jt, label %bb.ch, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit474, !prof !241

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit474 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ju = landingpad { ptr, i32 }
          catch ptr null
  %i.jv = extractvalue { ptr, i32 } %i.ju, 0
  call void @__clang_call_terminate(ptr %i.jv) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit474: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit471, %bb.cg, %bb.ch
  %i.jw = load ptr, ptr %22, align 8, !tbaa !249  ; 3 uses
  %i.jx = load i64, ptr %i.jw, align 8            ; 3 uses
  %i.jy = and i64 %i.jx, 1152920405095219200
  %.not.i.i475 = icmp eq i64 %i.jy, 1152920405095219200
  br i1 %.not.i.i475, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit492, label %bb.cj, !prof !241

bb.cj:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit474
  %i.jz = add i64 %i.jx, 1152920405095219200
  %i.ka = and i64 %i.jz, 1152920405095219200      ; 2 uses
  %i.kb = and i64 %i.jx, -1152920405095219201
  %i.kc = or disjoint i64 %i.ka, %i.kb
  store i64 %i.kc, ptr %i.jw, align 8
  %i.kd = icmp eq i64 %i.ka, 0
  br i1 %i.kd, label %bb.ck, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit492, !prof !241

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jw)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit492 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #26
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit492: ; preds = %bb.ck, %bb.cj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit474
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.kg = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.kh = icmp eq i8 %i.kg, 0
  br i1 %i.kh, label %bb.cm, label %bb.cn, !prof !501

bb.cm:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit492
  invoke void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
          to label %.noexc493 unwind label %bb.cv

.noexc493:                                        ; preds = %bb.cm
  %i.ki = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #18 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %.noexc493, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit492
  %i.kj = call noundef nonnull align 8 dereferenceable(2544) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current)
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERN4cvc58internal6RandomEEvT_SB_OT0_(ptr %.sroa.01107.0, ptr %.sroa.17.0, ptr noundef nonnull align 8 dereferenceable(2544) %i.kj)
          to label %bb.co unwind label %bb.cv

bb.co:                                            ; preds = %bb.cn
  %i.kk = ptrtoint ptr %.sroa.17.0 to i64
  %i.kl = ptrtoint ptr %.sroa.01107.0 to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 3                 ; 3 uses
  %.not1207.not = icmp eq ptr %.sroa.17.0, %.sroa.01107.0
  br i1 %.not1207.not, label %.critedge314, label %.lr.ph1211

.lr.ph1211:                                       ; preds = %bb.co
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i12.i, i64 48
  %i.kp = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.kt = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.ku = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 4 uses
  %i.lf = insertelement <2 x ptr> poison, ptr %i.ku, i64 0
  %i.lg = shufflevector <2 x ptr> %i.lf, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.cw

.loopexit:                                        ; preds = %bb.ka
  %exitcond.not = icmp eq i64 %i.ly, %i.kn
  br i1 %exitcond.not, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845.lr.ph, label %bb.cw, !llvm.loop !502

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845.lr.ph: ; preds = %.loopexit
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i12.i, i64 48
  %i.li = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845

bb.cp:                                            ; preds = %bb.bx
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.cq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit450
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cr:                                            ; preds = %bb.by
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cf, %bb.cc
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #18
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn244 = phi { ptr, i32 } [ %i.lp, %bb.cs ], [ %i.lo, %bb.cr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #18
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cq
  %.pn244.pn = phi { ptr, i32 } [ %.pn244, %bb.ct ], [ %i.ln, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.kp

bb.cv:                                            ; preds = %bb.cm, %bb.cn
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

bb.cw:                                            ; preds = %.lr.ph1211, %.loopexit
  %.01991210 = phi i1 [ undef, %.lr.ph1211 ], [ %.4203, %.loopexit ]
  %.02101209 = phi i64 [ 0, %.lr.ph1211 ], [ %i.ly, %.loopexit ] ; 2 uses
  %.02111208 = phi i1 [ false, %.lr.ph1211 ], [ %.3214, %.loopexit ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01107.0, i64 %.02101209
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !453 ; 5 uses
  %i.lt = load ptr, ptr %3, align 8, !tbaa !258
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.ls
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !249
  %i.lw = load ptr, ptr %i.ko, align 8, !tbaa !449
  %i.lx = getelementptr inbounds nuw [56 x i8], ptr %i.lw, i64 %i.ls
  %i.ly = add nuw i64 %.02101209, 1               ; 3 uses
  %i.lz = icmp eq i64 %i.ly, %i.kn
  br label %bb.cx

bb.cx:                                            ; preds = %bb.ka, %bb.cw
  %.0 = phi i64 [ 0, %bb.cw ], [ %i.mb, %bb.ka ]  ; 2 uses
  %.1212 = phi i1 [ %.02111208, %bb.cw ], [ %.3214, %bb.ka ] ; 4 uses
  %.1200 = phi i1 [ %.01991210, %bb.cw ], [ %.4203, %bb.ka ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.ma = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.cy unwind label %bb.ey     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN4cvc58internal6theory11quantifiers8MVarInfo17getEnumeratedTermEPNS0_11NodeManagerEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %23, ptr noundef nonnull align 8 dereferenceable(56) %i.lx, ptr poison, i64 noundef %.0)
          to label %bb.cz unwind label %bb.ey

bb.cz:                                            ; preds = %bb.cy
  %i.mb = add i64 %.0, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.mc = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.md = icmp eq i8 %i.mc, 0
  br i1 %i.md, label %bb.da, label %bb.de, !prof !284

bb.da:                                            ; preds = %bb.cz
  %i.me = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i494 = icmp eq i32 %i.me, 0
  br i1 %.not.i.i494, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.dc unwind label %bb.dd     ; 3 uses

bb.dc:                                            ; preds = %bb.db
  store i64 1152920405095219200, ptr %i.mf, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, i8 0, i64 16, i1 false)
  store ptr %i.mf, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %.body495

bb.de:                                            ; preds = %bb.dc, %bb.da, %bb.cz
  %i.mi = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  store ptr %i.mi, ptr %24, align 8, !tbaa !249
  %i.mj = load ptr, ptr %23, align 8, !tbaa !249
  %i.mk = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.ml = icmp eq i8 %i.mk, 0
  br i1 %i.ml, label %bb.df, label %bb.dj, !prof !284

bb.df:                                            ; preds = %bb.de
  %i.mm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i497 = icmp eq i32 %i.mm, 0
  br i1 %.not.i.i497, label %bb.dj, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.dh unwind label %bb.di     ; 3 uses

bb.dh:                                            ; preds = %bb.dg
  store i64 1152920405095219200, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i8 0, i64 16, i1 false)
  store ptr %i.mn, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %.body498

bb.dj:                                            ; preds = %bb.dh, %bb.df, %bb.de
  %i.mq = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  %i.mr = icmp eq ptr %i.mj, %i.mq
  br i1 %i.mr, label %bb.fi, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit546

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit546: ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  invoke void @_ZNK4cvc58internal4Subs5applyERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %25, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dk unwind label %bb.fa

bb.dk:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit546
  %i.ms = load ptr, ptr %23, align 8, !tbaa !249  ; 4 uses
  %i.mt = load ptr, ptr %25, align 8, !tbaa !249
  %.not.i562 = icmp eq ptr %i.ms, %i.mt
  br i1 %.not.i562, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit567, label %bb.dl, !prof !241

bb.dl:                                            ; preds = %bb.dk
  %i.mu = load i64, ptr %i.ms, align 8            ; 3 uses
  %i.mv = and i64 %i.mu, 1152920405095219200
  %.not.i.i563 = icmp eq i64 %i.mv, 1152920405095219200
  br i1 %.not.i.i563, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i564, label %bb.dm, !prof !241

bb.dm:                                            ; preds = %bb.dl
  %i.mw = add i64 %i.mu, 1152920405095219200
  %i.mx = and i64 %i.mw, 1152920405095219200      ; 2 uses
  %i.my = and i64 %i.mu, -1152920405095219201
  %i.mz = or disjoint i64 %i.mx, %i.my
  store i64 %i.mz, ptr %i.ms, align 8
  %i.na = icmp eq i64 %i.mx, 0
  br i1 %i.na, label %bb.dn, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i564, !prof !241

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ms)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i564 unwind label %bb.fb

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i564: ; preds = %bb.dn, %bb.dm, %bb.dl
  %i.nb = load ptr, ptr %25, align 8, !tbaa !249  ; 5 uses
  store ptr %i.nb, ptr %23, align 8, !tbaa !249
  %i.nc = load i64, ptr %i.nb, align 8            ; 3 uses
  %i.nd = lshr i64 %i.nc, 40
  %i.ne = trunc nuw nsw i64 %i.nd to i32
  %i.nf = and i32 %i.ne, 1048575                  ; 3 uses
  %i.ng = icmp samesign ult i32 %i.nf, 1048574
  br i1 %i.ng, label %bb.do, label %bb.dp, !prof !240

bb.do:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i564
  %i.nh = add nuw nsw i32 %i.nf, 1
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = shl nuw nsw i64 %i.ni, 40
  %i.nk = and i64 %i.nc, -1152920405095219201
  %i.nl = or i64 %i.nj, %i.nk
  store i64 %i.nl, ptr %i.nb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit567

bb.dp:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i564
  %i.nm = icmp eq i32 %i.nf, 1048574
  br i1 %i.nm, label %bb.dq, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit567, !prof !241

bb.dq:                                            ; preds = %bb.dp
  %i.nn = or i64 %i.nc, 1152920405095219200
  store i64 %i.nn, ptr %i.nb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit567 unwind label %bb.fb

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit567: ; preds = %bb.dp, %bb.do, %bb.dk, %bb.dq
  %i.no = load ptr, ptr %25, align 8, !tbaa !249  ; 3 uses
  %i.np = load i64, ptr %i.no, align 8            ; 3 uses
  %i.nq = and i64 %i.np, 1152920405095219200
  %.not.i.i568 = icmp eq i64 %i.nq, 1152920405095219200
  br i1 %.not.i.i568, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit570, label %bb.dr, !prof !241

bb.dr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit567
  %i.nr = add i64 %i.np, 1152920405095219200
  %i.ns = and i64 %i.nr, 1152920405095219200      ; 2 uses
  %i.nt = and i64 %i.np, -1152920405095219201
  %i.nu = or disjoint i64 %i.ns, %i.nt
  store i64 %i.nu, ptr %i.no, align 8
  %i.nv = icmp eq i64 %i.ns, 0
  br i1 %i.nv, label %bb.ds, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit570, !prof !241

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.no)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit570 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.nw = landingpad { ptr, i32 }
          catch ptr null
  %i.nx = extractvalue { ptr, i32 } %i.nw, 0
  call void @__clang_call_terminate(ptr %i.nx) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit570: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit567, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %i.ny = load ptr, ptr %24, align 8, !tbaa !249  ; 5 uses
  %i.nz = load ptr, ptr %23, align 8, !tbaa !249
  %.not.i571 = icmp eq ptr %i.ny, %i.nz
  br i1 %.not.i571, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit576, label %bb.du, !prof !241

bb.du:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit570
  %i.oa = load i64, ptr %i.ny, align 8            ; 3 uses
  %i.ob = and i64 %i.oa, 1152920405095219200
  %.not.i.i572 = icmp eq i64 %i.ob, 1152920405095219200
  br i1 %.not.i.i572, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i573, label %bb.dv, !prof !241

bb.dv:                                            ; preds = %bb.du
  %i.oc = add i64 %i.oa, 1152920405095219200
  %i.od = and i64 %i.oc, 1152920405095219200      ; 2 uses
  %i.oe = and i64 %i.oa, -1152920405095219201
  %i.of = or disjoint i64 %i.od, %i.oe
  store i64 %i.of, ptr %i.ny, align 8
  %i.og = icmp eq i64 %i.od, 0
  br i1 %i.og, label %bb.dw, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i573, !prof !241

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ny)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i573 unwind label %bb.ez

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i573: ; preds = %bb.dw, %bb.dv, %bb.du
  %i.oh = load ptr, ptr %23, align 8, !tbaa !249  ; 8 uses
  store ptr %i.oh, ptr %24, align 8, !tbaa !249
  %i.oi = load i64, ptr %i.oh, align 8            ; 3 uses
  %i.oj = lshr i64 %i.oi, 40
  %i.ok = trunc nuw nsw i64 %i.oj to i32
  %i.ol = and i32 %i.ok, 1048575                  ; 3 uses
  %i.om = icmp samesign ult i32 %i.ol, 1048574
  br i1 %i.om, label %bb.dx, label %bb.dy, !prof !240

bb.dx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i573
  %i.on = add nuw nsw i32 %i.ol, 1
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = shl nuw nsw i64 %i.oo, 40
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers8MbqiEnum22constructInstantiationERKNS0_12NodeTemplateILb1EEES7_RKSt6vectorIS5_SaIS5_EERSA_RKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEERS8_ISH_IS5_NS1_11InferenceIdEESaISO_EE:.critedge298

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit776: ; preds = %bb.iq, %bb.ir, %bb.is
  %i.aeb = load i64, ptr %i.acf, align 8          ; 3 uses
  %i.aec = and i64 %i.aeb, 1152920405095219200
  %.not.i.i777 = icmp eq i64 %i.aec, 1152920405095219200
  br i1 %.not.i.i777, label %bb.jn, label %bb.iu, !prof !241

bb.iu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit776
  %i.aed = add i64 %i.aeb, 1152920405095219200
  %i.aee = and i64 %i.aed, 1152920405095219200    ; 2 uses
  %i.aef = and i64 %i.aeb, -1152920405095219201
  %i.aeg = or disjoint i64 %i.aee, %i.aef
  store i64 %i.aeg, ptr %i.acf, align 8
  %i.aeh = icmp eq i64 %i.aee, 0
  br i1 %i.aeh, label %bb.iv, label %bb.jn, !prof !241

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acf)
          to label %bb.jn unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aei = landingpad { ptr, i32 }
          catch ptr null
  %i.aej = extractvalue { ptr, i32 } %i.aei, 0
  call void @__clang_call_terminate(ptr %i.aej) #26
  unreachable

bb.ix:                                            ; preds = %bb.gt
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.iy:                                            ; preds = %bb.ha, %bb.gx
  %i.ael = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #18
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %.pn257 = phi { ptr, i32 } [ %i.ael, %bb.iy ], [ %i.aek, %bb.ix ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.kc

bb.ja:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit673
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.jb:                                            ; preds = %bb.hk, %bb.hh
  %i.aen = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #18
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %.pn259 = phi { ptr, i32 } [ %i.aen, %bb.jb ], [ %i.aem, %bb.ja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.kc

bb.jd:                                            ; preds = %bb.hq
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6ResultD2Ev.exit803

bb.je:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit699
  %i.aep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #18
  br label %_ZN4cvc58internal6ResultD2Ev.exit803

bb.jf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit702
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6ResultD2Ev.exit782

bb.jg:                                            ; preds = %bb.hv
  %i.aer = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aes = load ptr, ptr %i.lb, align 8, !tbaa !311 ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.lc
  br i1 %i.aet, label %_ZN4cvc58internal6ResultD2Ev.exit782, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i780

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i780: ; preds = %bb.jg
  %i.aeu = load i64, ptr %i.lc, align 8, !tbaa !308
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit782

_ZN4cvc58internal6ResultD2Ev.exit782:             ; preds = %bb.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i780, %bb.jf
  %.pn261 = phi { ptr, i32 } [ %i.aeq, %bb.jf ], [ %i.aer, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i780 ], [ %i.aer, %bb.jg ]
  %i.aew = load ptr, ptr %41, align 8, !tbaa !311 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.kz
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i783

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i783: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit782
  %i.aey = load i64, ptr %i.kz, align 8, !tbaa !308
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit782, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i783
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.kb

bb.jh:                                            ; preds = %bb.ij, %bb.ig, %bb.id, %bb.ia, %bb.jo
  %i.afa = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.ji:                                            ; preds = %bb.im, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit765
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

bb.jj:                                            ; preds = %bb.ip, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit769
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.jk:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit773
  %i.afd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #18
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %.pn268 = phi { ptr, i32 } [ %i.afd, %bb.jk ], [ %i.afc, %bb.jj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #18
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.ji
  %.pn268.pn = phi { ptr, i32 } [ %.pn268, %bb.jl ], [ %i.afb, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.kb

bb.jn:                                            ; preds = %bb.iv, %bb.iu, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit776
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br i1 %i.lz, label %bb.jo, label %.thread

bb.jo:                                            ; preds = %bb.jn
  %i.afe = load ptr, ptr %i.ky, align 8, !tbaa !477, !nonnull !196, !align !197
  %i.aff = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16InstStrategyMbqi16tryInstantiationERKNS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EENS1_11InferenceIdERKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEE(ptr noundef nonnull align 8 dereferenceable(632) %i.afe, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 172, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.jp unwind label %bb.jh     ; 2 uses

bb.jp:                                            ; preds = %bb.jo
  %i.afg = or i1 %.1212, %i.aff
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709, %bb.jp, %bb.jn
  %.2213 = phi i1 [ %i.afg, %bb.jp ], [ %.1212, %bb.jn ], [ %.1212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709 ]
  %.1205.in = phi i1 [ %i.aff, %bb.jp ], [ true, %bb.jn ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit709 ] ; 2 uses
  %or.cond9 = select i1 %.1205.in, i1 true, i1 %.3202
  %i.afh = load ptr, ptr %i.ld, align 8, !tbaa !311 ; 2 uses
  %i.afi = icmp eq ptr %i.afh, %i.le
  br i1 %i.afi, label %_ZN4cvc58internal6ResultD2Ev.exit791, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i789

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i789: ; preds = %.thread
  %i.afj = load i64, ptr %i.le, align 8, !tbaa !308
  %i.afk = add i64 %i.afj, 1
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.afk) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit791

_ZN4cvc58internal6ResultD2Ev.exit791:             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i789
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %i.afl = load ptr, ptr %32, align 8, !tbaa !249 ; 3 uses
  %i.afm = load i64, ptr %i.afl, align 8          ; 3 uses
  %i.afn = and i64 %i.afm, 1152920405095219200
  %.not.i.i792 = icmp eq i64 %i.afn, 1152920405095219200
  br i1 %.not.i.i792, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794, label %bb.jq, !prof !241

bb.jq:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit791
  %i.afo = add i64 %i.afm, 1152920405095219200
  %i.afp = and i64 %i.afo, 1152920405095219200    ; 2 uses
  %i.afq = and i64 %i.afm, -1152920405095219201
  %i.afr = or disjoint i64 %i.afp, %i.afq
  store i64 %i.afr, ptr %i.afl, align 8
  %i.afs = icmp eq i64 %i.afp, 0
  br i1 %i.afs, label %bb.jr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794, !prof !241

bb.jr:                                            ; preds = %bb.jq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794 unwind label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aft = landingpad { ptr, i32 }
          catch ptr null
  %i.afu = extractvalue { ptr, i32 } %i.aft, 0
  call void @__clang_call_terminate(ptr %i.afu) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit791, %bb.jq, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.jt

bb.jt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit633, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794
  %.4226 = phi i1 [ %or.cond9, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit633 ]
  %.3214 = phi i1 [ %.2213, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794 ], [ %.1212, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit633 ] ; 3 uses
  %.2206 = phi i1 [ %.1205.in, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit633 ]
  %.4203 = phi i1 [ %.3202, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit794 ], [ %.2201, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit633 ] ; 2 uses
  %i.afv = load ptr, ptr %24, align 8, !tbaa !249 ; 3 uses
  %i.afw = load i64, ptr %i.afv, align 8          ; 3 uses
  %i.afx = and i64 %i.afw, 1152920405095219200
  %.not.i.i795 = icmp eq i64 %i.afx, 1152920405095219200
  br i1 %.not.i.i795, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit797, label %bb.ju, !prof !241

bb.ju:                                            ; preds = %bb.jt
  %i.afy = add i64 %i.afw, 1152920405095219200
  %i.afz = and i64 %i.afy, 1152920405095219200    ; 2 uses
  %i.aga = and i64 %i.afw, -1152920405095219201
  %i.agb = or disjoint i64 %i.afz, %i.aga
  store i64 %i.agb, ptr %i.afv, align 8
  %i.agc = icmp eq i64 %i.afz, 0
  br i1 %i.agc, label %bb.jv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit797, !prof !241

bb.jv:                                            ; preds = %bb.ju
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit797 unwind label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.agd = landingpad { ptr, i32 }
          catch ptr null
  %i.age = extractvalue { ptr, i32 } %i.agd, 0
  call void @__clang_call_terminate(ptr %i.age) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit797: ; preds = %bb.jt, %bb.ju, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.agf = load ptr, ptr %23, align 8, !tbaa !249 ; 3 uses
  %i.agg = load i64, ptr %i.agf, align 8          ; 3 uses
  %i.agh = and i64 %i.agg, 1152920405095219200
  %.not.i.i798 = icmp eq i64 %i.agh, 1152920405095219200
  br i1 %.not.i.i798, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800, label %bb.jx, !prof !241

bb.jx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit797
  %i.agi = add i64 %i.agg, 1152920405095219200
  %i.agj = and i64 %i.agi, 1152920405095219200    ; 2 uses
  %i.agk = and i64 %i.agg, -1152920405095219201
  %i.agl = or disjoint i64 %i.agj, %i.agk
  store i64 %i.agl, ptr %i.agf, align 8
  %i.agm = icmp eq i64 %i.agj, 0
  br i1 %i.agm, label %bb.jy, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800, !prof !241

bb.jy:                                            ; preds = %bb.jx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800 unwind label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.agn = landingpad { ptr, i32 }
          catch ptr null
  %i.ago = extractvalue { ptr, i32 } %i.agn, 0
  call void @__clang_call_terminate(ptr %i.ago) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit797, %bb.jx, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br i1 %.4226, label %bb.ka, label %.critedge314

bb.ka:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800
  br i1 %.2206, label %.loopexit, label %bb.cx, !llvm.loop !502

bb.kb:                                            ; preds = %bb.jm, %bb.jh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785
  %.pn271 = phi { ptr, i32 } [ %.pn261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785 ], [ %i.afa, %bb.jh ], [ %.pn268.pn, %bb.jm ] ; 2 uses
  %i.agp = load ptr, ptr %i.ld, align 8, !tbaa !311 ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.le
  br i1 %i.agq, label %_ZN4cvc58internal6ResultD2Ev.exit803, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i801

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i801: ; preds = %bb.kb
  %i.agr = load i64, ptr %i.le, align 8, !tbaa !308
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.ags) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit803

_ZN4cvc58internal6ResultD2Ev.exit803:             ; preds = %bb.kb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i801, %bb.je, %bb.jd
  %.pn271.pn = phi { ptr, i32 } [ %i.aeo, %bb.jd ], [ %i.aep, %bb.je ], [ %.pn271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i801 ], [ %.pn271, %bb.kb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.kc

bb.kc:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit803, %bb.jc, %bb.iz
  %.pn271.pn.pn = phi { ptr, i32 } [ %.pn271.pn, %_ZN4cvc58internal6ResultD2Ev.exit803 ], [ %.pn257, %bb.iz ], [ %.pn259, %bb.jc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #18
  br label %.body662

.body662:                                         ; preds = %bb.gs, %bb.kc
  %.pn271.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn, %bb.kc ], [ %i.wf, %bb.gs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %.body498

.body498:                                         ; preds = %bb.ez, %bb.di, %.body662, %bb.go, %bb.fh, %bb.fc
  %.pn271.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn.pn, %.body662 ], [ %.pn249, %bb.fc ], [ %.pn254.pn, %bb.go ], [ %i.mp, %bb.di ], [ %.pn251.pn, %bb.fh ], [ %i.sg, %bb.ez ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %.body495

.body495:                                         ; preds = %bb.dd, %.body498
  %.pn271.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn.pn.pn, %.body498 ], [ %i.mh, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #18
  br label %bb.kd

bb.kd:                                            ; preds = %.body495, %bb.ey
  %.pn271.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn.pn.pn.pn, %.body495 ], [ %i.sf, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.kp

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845.lr.ph, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit
  %.01931212 = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845.lr.ph ], [ %i.aif, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit ] ; 2 uses
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01107.0, i64 %.01931212
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !453 ; 2 uses
  %i.agv = load ptr, ptr %i.lh, align 8, !tbaa !449
  %i.agw = getelementptr inbounds nuw [56 x i8], ptr %i.agv, i64 %i.agu
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %i.agx = load ptr, ptr %4, align 8, !tbaa !258
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false), !alias.scope !511
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !300, !noalias !511 ; 2 uses
  %.not.i846 = icmp eq ptr %i.agz, null
  br i1 %.not.i846, label %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit, label %bb.ke

bb.ke:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.agx, i64 %i.agu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !511
  invoke void @_ZN4cvc58internal6theory11quantifiers8MVarInfo23ChoiceElimNodeConverter19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.509") align 8 %7, ptr noundef nonnull align 8 dereferenceable(352) %i.agz, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.aha)
          to label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i unwind label %bb.kf, !noalias !511

_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i: ; preds = %bb.ke
  %i.ahb = load ptr, ptr %7, align 8, !tbaa !419, !noalias !511 ; 2 uses
  store ptr %i.ahb, ptr %44, align 8, !tbaa !419, !alias.scope !511
  %i.ahc = load <2 x ptr>, ptr %i.lk, align 8, !tbaa !408, !noalias !511
  %i.ahd = load ptr, ptr %i.lk, align 8, !tbaa !414, !noalias !511
  store <2 x ptr> %i.ahc, ptr %i.li, align 8, !tbaa !408, !alias.scope !511
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !511
  br label %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit

bb.kf:                                            ; preds = %bb.ke
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !511
  br label %.body847

_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit: ; preds = %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845
  %i.ahf = phi ptr [ %i.ahd, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845 ]
  %i.ahg = phi ptr [ %i.ahb, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit845 ]
  %i.ahh = load ptr, ptr %i.ll, align 8, !tbaa !408
  %i.ahi = load ptr, ptr %6, align 8, !tbaa !408  ; 2 uses
  %i.ahj = ptrtoint ptr %i.ahh to i64
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = sub i64 %i.ahj, %i.ahk
  %i.ahm = getelementptr inbounds i8, ptr %i.ahi, i64 %i.ahl
  invoke void @_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEEvSE_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ahm, ptr %i.ahg, ptr %i.ahf)
          to label %bb.kg unwind label %bb.kl

bb.kg:                                            ; preds = %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit
  %i.ahn = load ptr, ptr %44, align 8, !tbaa !419 ; 3 uses
  %i.aho = load ptr, ptr %i.li, align 8, !tbaa !414 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ahn, %i.aho
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.kg, %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ahz, %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i ], [ %i.ahn, %bb.kg ] ; 2 uses
  %i.ahp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !249 ; 3 uses
  %i.ahq = load i64, ptr %i.ahp, align 8          ; 3 uses
  %i.ahr = and i64 %i.ahq, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ahr, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i, label %bb.kh, !prof !241

bb.kh:                                            ; preds = %.lr.ph.i.i.i
  %i.ahs = add i64 %i.ahq, 1152920405095219200
  %i.aht = and i64 %i.ahs, 1152920405095219200    ; 2 uses
  %i.ahu = and i64 %i.ahq, -1152920405095219201
  %i.ahv = or disjoint i64 %i.aht, %i.ahu
  store i64 %i.ahv, ptr %i.ahp, align 8
  %i.ahw = icmp eq i64 %i.aht, 0
  br i1 %i.ahw, label %bb.ki, label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i, !prof !241

bb.ki:                                            ; preds = %bb.kh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahp)
          to label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ahx = landingpad { ptr, i32 }
          catch ptr null
  %i.ahy = extractvalue { ptr, i32 } %i.ahx, 0
  call void @__clang_call_terminate(ptr %i.ahy) #26
  unreachable

_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i: ; preds = %bb.ki, %bb.kh, %.lr.ph.i.i.i
  %i.ahz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ahz, %i.aho
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !420

_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %44, align 8, !tbaa !419
  br label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.kg
  %i.aia = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.ahn, %bb.kg ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aia, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit, label %bb.kk

end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm:bb.a
bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !281
  store ptr %i.x, ptr %3, align 8, !tbaa !281
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !530
  store ptr %3, ptr %i.y, align 8, !tbaa !281
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !280
  store ptr %i.aa, ptr %3, align 8, !tbaa !281
  store ptr %3, ptr %i.z, align 8, !tbaa !280
  %i.ab = load ptr, ptr %3, align 8, !tbaa !281   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !274
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !531
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !530
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !530
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !528
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !528
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !552  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, label %bb.c, !prof !241

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, !prof !241

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #27
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE16_M_allocate_nodeIJRKS5_EEEPS6_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !281
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !249    ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !249
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.b, label %bb.c, !prof !240

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.d, label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit, !prof !241

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret ptr %i.a

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #18 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.s

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !554
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !241

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !280
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !281 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !531
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !530  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !280
  store ptr %i.o, ptr %.031, align 8, !tbaa !281
  store ptr %.031, ptr %i.g, align 8, !tbaa !280
  store ptr %i.g, ptr %i.m, align 8, !tbaa !530
  %i.p = load ptr, ptr %.031, align 8, !tbaa !281
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !530
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !281
  store ptr %i.r, ptr %.031, align 8, !tbaa !281
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !530
  store ptr %.031, ptr %i.s, align 8, !tbaa !281
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !555

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !266    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !274
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !274
  store ptr %.0.i, ptr %0, align 8, !tbaa !266
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !258  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !249 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.b, !prof !241

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = add i64 %i.f, 1152920405095219200
  %i.i = and i64 %i.h, 1152920405095219200        ; 2 uses
  %i.j = and i64 %i.f, -1152920405095219201
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !241

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !259

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !258
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !257
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !249    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !241

bb.f:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !241

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !556
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557  ; 2 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !558

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249  ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = and i64 %i.d, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.e, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, label %bb.b, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1152920405095219200
  %i.g = and i64 %i.f, 1152920405095219200        ; 2 uses
  %i.h = and i64 %i.d, -1152920405095219201
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.c, align 8
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, !prof !241

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = and i64 %i.n, 1152920405095219200
  %.not.i.i1.i.i = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i1.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.e, !prof !241

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i
  %i.p = add i64 %i.n, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %i.n, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.m, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.f, label %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS7_E.exit, !prof !241

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS7_E.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, %bb.e, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #27
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !610
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #18 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !553
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #26
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !520
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.t, align 8, !tbaa !531
  %i.u = load ptr, ptr %0, align 8, !tbaa !518    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !530  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !281
  store ptr %i.x, ptr %3, align 8, !tbaa !281
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !530
  store ptr %3, ptr %i.y, align 8, !tbaa !281
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !521
  store ptr %i.aa, ptr %3, align 8, !tbaa !281
  store ptr %3, ptr %i.z, align 8, !tbaa !521
  %i.ab = load ptr, ptr %3, align 8, !tbaa !281   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !520
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !531
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !530
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !530
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !610
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !610
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS6_EESG_IJEEEEEPS9_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !281
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %2, align 8, !tbaa !620
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !251
  store ptr %i.e, ptr %i.b, align 8, !tbaa !251
  %i.f = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.d unwind label %.body.i.i  ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %bb.e

.body.i.i:                                        ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #18 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #27
  invoke void @__cxa_rethrow() #29
          to label %bb.i unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  store ptr %i.o, ptr %i.n, align 8, !tbaa !251
  ret ptr %i.a

bb.f:                                             ; preds = %.body.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #26
  unreachable

bb.i:                                             ; preds = %.body.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !625
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !241

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !521  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !521
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !281 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !531
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !530  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !521
  store ptr %i.o, ptr %.031, align 8, !tbaa !281
  store ptr %.031, ptr %i.g, align 8, !tbaa !521
  store ptr %i.g, ptr %i.m, align 8, !tbaa !530
  %i.p = load ptr, ptr %.031, align 8, !tbaa !281
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !530
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !281
  store ptr %i.r, ptr %.031, align 8, !tbaa !281
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !530
  store ptr %.031, ptr %i.s, align 8, !tbaa !281
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !626

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !518    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !520
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !520
  store ptr %.0.i, ptr %0, align 8, !tbaa !518
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEEvSE_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not81 = icmp eq ptr %2, %3
  br i1 %.not81, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS4_6theory11InferenceIdEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !410
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !414  ; 10 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS4_6theory11InferenceIdEESt6vectorIS9_SaIS9_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS3_6theory11InferenceIdEEES9_ET0_T_SC_SB_(ptr %i.q, ptr %i.h, ptr noundef %i.h) ; 0 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !414
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !414
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.u, %i.l
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.az, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.y, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !249 ; 4 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !249
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i, label %bb.e, !prof !241

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 1152920405095219200
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i, label %bb.f, !prof !241

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %i.ac, 1152920405095219200
  %i.af = and i64 %i.ae, 1152920405095219200      ; 2 uses
  %i.ag = and i64 %i.ac, -1152920405095219201
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.aa, align 8
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %bb.g, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i, !prof !241

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !249 ; 5 uses
  store ptr %i.aj, ptr %i.z, align 8, !tbaa !249
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = lshr i64 %i.ak, 40
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = and i32 %i.am, 1048575                  ; 3 uses
  %i.ao = icmp samesign ult i32 %i.an, 1048574
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !240

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i
  %i.ap = add nuw nsw i32 %i.an, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 40
  %i.as = and i64 %i.ak, -1152920405095219201
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.aj, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i
  %i.au = icmp eq i32 %i.an, 1048574
  br i1 %i.au, label %bb.j, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i, !prof !241

bb.j:                                             ; preds = %bb.i
  %i.av = or i64 %i.ak, 1152920405095219200
  store i64 %i.av, ptr %i.aj, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !412
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !415
  %i.az = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit, !llvm.loop !627

_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit: ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSEOS6_.exit.i.i.i.i.i, %bb.d
  %i.bb = icmp sgt i64 %i.d, 0
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i51, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS4_6theory11InferenceIdEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cd, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i ], [ %i.d, %_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cc, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i ], [ %1, %_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cb, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i ], [ %2, %_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit ] ; 4 uses
  %i.bc = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !249 ; 4 uses
  %i.bd = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !249
  %.not.i.i.i.i.i.i.i52 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i.i.i.i.i.i52, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i, label %bb.k, !prof !241

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.be = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.bf = and i64 %i.be, 1152920405095219200
  %.not.i.i.i.i.i.i.i.i53 = icmp eq i64 %i.bf, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i.i53, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i54, label %bb.l, !prof !241

bb.l:                                             ; preds = %bb.k
  %i.bg = add i64 %i.be, 1152920405095219200
  %i.bh = and i64 %i.bg, 1152920405095219200      ; 2 uses
  %i.bi = and i64 %i.be, -1152920405095219201
  %i.bj = or disjoint i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %i.bc, align 8
  %i.bk = icmp eq i64 %i.bh, 0
  br i1 %i.bk, label %bb.m, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i54, !prof !241

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i54

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i54: ; preds = %bb.m, %bb.l, %bb.k
  %i.bl = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !249 ; 5 uses
  store ptr %i.bl, ptr %.0811.i.i.i.i.i, align 8, !tbaa !249
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = lshr i64 %i.bm, 40
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 1048575                  ; 3 uses
  %i.bq = icmp samesign ult i32 %i.bp, 1048574
  br i1 %i.bq, label %bb.n, label %bb.o, !prof !240

bb.n:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i54
  %i.br = add nuw nsw i32 %i.bp, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 40
  %i.bu = and i64 %i.bm, -1152920405095219201
  %i.bv = or i64 %i.bt, %i.bu
  store i64 %i.bv, ptr %i.bl, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i

bb.o:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i.i54
  %i.bw = icmp eq i32 %i.bp, 1048574
  br i1 %i.bw, label %bb.p, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i, !prof !241

bb.p:                                             ; preds = %bb.o
  %i.bx = or i64 %i.bm, 1152920405095219200
  store i64 %i.bx, ptr %i.bl, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11InferenceIdEEaSERKS6_.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.i.i.i.i.i51
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !415
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !415
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
end_hunk_3
