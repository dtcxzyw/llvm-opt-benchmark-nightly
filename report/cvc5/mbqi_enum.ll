Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/mbqi_enum?download=true
inline.NumInlined: 3269
inline.NumDeleted: 1312
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers8MbqiEnum22constructInstantiationERKNS0_12NodeTemplateILb1EEES7_RKSt6vectorIS5_SaIS5_EERSA_RKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEERS8_ISH_IS5_NS1_11InferenceIdEESaISO_EE:.critedge298
bb.cc:                                            ; preds = %bb.cb
  %i.iw = load i64, ptr %i.iu, align 8            ; 3 uses
  %i.ix = and i64 %i.iw, 1152920405095219200
  %.not.i.i473 = icmp eq i64 %i.ix, 1152920405095219200
  br i1 %.not.i.i473, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i474, label %bb.cd, !prof !241

bb.cd:                                            ; preds = %bb.cc
  %i.iy = add i64 %i.iw, 1152920405095219200
  %i.iz = and i64 %i.iy, 1152920405095219200      ; 2 uses
  %i.ja = and i64 %i.iw, -1152920405095219201
  %i.jb = or disjoint i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %i.iu, align 8
  %i.jc = icmp eq i64 %i.iz, 0
  br i1 %i.jc, label %bb.ce, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i474, !prof !241

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i474 unwind label %bb.cu

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i474: ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.jd = load ptr, ptr %20, align 8, !tbaa !249  ; 5 uses
  store ptr %i.jd, ptr %19, align 8, !tbaa !249
  %i.je = load i64, ptr %i.jd, align 8            ; 3 uses
  %i.jf = lshr i64 %i.je, 40
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = and i32 %i.jg, 1048575                  ; 3 uses
  %i.ji = icmp samesign ult i32 %i.jh, 1048574
  br i1 %i.ji, label %bb.cf, label %bb.cg, !prof !240

bb.cf:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i474
  %i.jj = add nuw nsw i32 %i.jh, 1
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 40
  %i.jm = and i64 %i.je, -1152920405095219201
  %i.jn = or i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %i.jd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit477

bb.cg:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i474
  %i.jo = icmp eq i32 %i.jh, 1048574
  br i1 %i.jo, label %bb.ch, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit477, !prof !241

bb.ch:                                            ; preds = %bb.cg
  %i.jp = or i64 %i.je, 1152920405095219200
  store i64 %i.jp, ptr %i.jd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit477 unwind label %bb.cu

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit477: ; preds = %bb.cg, %bb.cf, %bb.cb, %bb.ch
  %i.jq = load ptr, ptr %20, align 8, !tbaa !249  ; 3 uses
  %i.jr = load i64, ptr %i.jq, align 8            ; 3 uses
  %i.js = and i64 %i.jr, 1152920405095219200
  %.not.i.i478 = icmp eq i64 %i.js, 1152920405095219200
  br i1 %.not.i.i478, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit480, label %bb.ci, !prof !241

bb.ci:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit477
  %i.jt = add i64 %i.jr, 1152920405095219200
  %i.ju = and i64 %i.jt, 1152920405095219200      ; 2 uses
  %i.jv = and i64 %i.jr, -1152920405095219201
  %i.jw = or disjoint i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %i.jq, align 8
  %i.jx = icmp eq i64 %i.ju, 0
  br i1 %i.jx, label %bb.cj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit480, !prof !241

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit480 unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jy = landingpad { ptr, i32 }
          catch ptr null
  %i.jz = extractvalue { ptr, i32 } %i.jy, 0
  call void @__clang_call_terminate(ptr %i.jz) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit480: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit477, %bb.ci, %bb.cj
  %i.ka = load ptr, ptr %22, align 8, !tbaa !249  ; 3 uses
  %i.kb = load i64, ptr %i.ka, align 8            ; 3 uses
  %i.kc = and i64 %i.kb, 1152920405095219200
  %.not.i.i481 = icmp eq i64 %i.kc, 1152920405095219200
  br i1 %.not.i.i481, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit498, label %bb.cl, !prof !241

bb.cl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit480
  %i.kd = add i64 %i.kb, 1152920405095219200
  %i.ke = and i64 %i.kd, 1152920405095219200      ; 2 uses
  %i.kf = and i64 %i.kb, -1152920405095219201
  %i.kg = or disjoint i64 %i.ke, %i.kf
  store i64 %i.kg, ptr %i.ka, align 8
  %i.kh = icmp eq i64 %i.ke, 0
  br i1 %i.kh, label %bb.cm, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit498, !prof !241

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit498 unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #26
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit498: ; preds = %bb.cm, %bb.cl, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit480
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.kk = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.kl = icmp eq i8 %i.kk, 0
  br i1 %i.kl, label %bb.co, label %bb.cp, !prof !500

bb.co:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit498
  invoke void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
          to label %.noexc499 unwind label %bb.cx

.noexc499:                                        ; preds = %bb.co
  %i.km = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #18 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %.noexc499, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit498
  %i.kn = call noundef nonnull align 8 dereferenceable(2544) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current)
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERN4cvc58internal6RandomEEvT_SB_OT0_(ptr %i.ak, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(2544) %i.kn)
          to label %bb.cq unwind label %bb.cx

bb.cq:                                            ; preds = %bb.cp
  %i.ko = ashr exact i64 %i.al, 3                 ; 3 uses
  %.not1213.not = icmp eq i64 %.pre-phi.i, %.pre-phi4.i
  br i1 %.not1213.not, label %.critedge314, label %.lr.ph1217

.lr.ph1217:                                       ; preds = %bb.cq
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i12.i, i64 48
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.ku = getelementptr inbounds nuw i8, ptr %26, i64 40
  %i.kv = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.ky = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.lc = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 4 uses
  %i.lg = insertelement <2 x ptr> poison, ptr %i.kv, i64 0
  %i.lh = shufflevector <2 x ptr> %i.lg, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.cy

.loopexit:                                        ; preds = %bb.kc
  %exitcond.not = icmp eq i64 %i.lz, %i.ko
  br i1 %exitcond.not, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851.lr.ph, label %bb.cy, !llvm.loop !501

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851.lr.ph: ; preds = %.loopexit
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i12.i, i64 48
  %i.lj = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851

bb.cr:                                            ; preds = %bb.bz
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

bb.cs:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit456
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ct:                                            ; preds = %bb.ca
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ch, %bb.ce
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #18
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn244 = phi { ptr, i32 } [ %i.lq, %bb.cu ], [ %i.lp, %bb.ct ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #18
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cs
  %.pn244.pn = phi { ptr, i32 } [ %.pn244, %bb.cv ], [ %i.lo, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.kr

bb.cx:                                            ; preds = %bb.co, %bb.cp
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.cy:                                            ; preds = %.lr.ph1217, %.loopexit
  %.01991216 = phi i1 [ undef, %.lr.ph1217 ], [ %.4203, %.loopexit ]
  %.02101215 = phi i64 [ 0, %.lr.ph1217 ], [ %i.lz, %.loopexit ] ; 2 uses
  %.02111214 = phi i1 [ false, %.lr.ph1217 ], [ %.3214, %.loopexit ]
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.02101215
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !453 ; 5 uses
  %i.lu = load ptr, ptr %3, align 8, !tbaa !258
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.lt
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !249
  %i.lx = load ptr, ptr %i.kp, align 8, !tbaa !449
  %i.ly = getelementptr inbounds nuw [56 x i8], ptr %i.lx, i64 %i.lt
  %i.lz = add nuw i64 %.02101215, 1               ; 3 uses
  %i.ma = icmp eq i64 %i.lz, %i.ko
  br label %bb.cz

bb.cz:                                            ; preds = %bb.kc, %bb.cy
  %.0 = phi i64 [ 0, %bb.cy ], [ %i.mc, %bb.kc ]  ; 2 uses
  %.1212 = phi i1 [ %.02111214, %bb.cy ], [ %.3214, %bb.kc ] ; 4 uses
  %.1200 = phi i1 [ %.01991216, %bb.cy ], [ %.4203, %bb.kc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.mb = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.da unwind label %bb.fa     ; 0 uses

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN4cvc58internal6theory11quantifiers8MVarInfo17getEnumeratedTermEPNS0_11NodeManagerEm(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %23, ptr noundef nonnull align 8 dereferenceable(56) %i.ly, ptr poison, i64 noundef %.0)
          to label %bb.db unwind label %bb.fa

bb.db:                                            ; preds = %bb.da
  %i.mc = add i64 %.0, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  %i.md = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.me = icmp eq i8 %i.md, 0
  br i1 %i.me, label %bb.dc, label %bb.dg, !prof !284

bb.dc:                                            ; preds = %bb.db
  %i.mf = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i500 = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i500, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.de unwind label %bb.df     ; 3 uses

bb.de:                                            ; preds = %bb.dd
  store i64 1152920405095219200, ptr %i.mg, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mh, i8 0, i64 16, i1 false)
  store ptr %i.mg, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %.body501

bb.dg:                                            ; preds = %bb.de, %bb.dc, %bb.db
  %i.mj = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  store ptr %i.mj, ptr %24, align 8, !tbaa !249
  %i.mk = load ptr, ptr %23, align 8, !tbaa !249
  %i.ml = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %bb.dh, label %bb.dl, !prof !284

bb.dh:                                            ; preds = %bb.dg
  %i.mn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  %.not.i.i503 = icmp eq i32 %i.mn, 0
  br i1 %.not.i.i503, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.dj unwind label %bb.dk     ; 3 uses

bb.dj:                                            ; preds = %bb.di
  store i64 1152920405095219200, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i8 0, i64 16, i1 false)
  store ptr %i.mo, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %.body504

bb.dl:                                            ; preds = %bb.dj, %bb.dh, %bb.dg
  %i.mr = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !279
  %i.ms = icmp eq ptr %i.mk, %i.mr
  br i1 %i.ms, label %bb.fk, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit552

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit552: ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  invoke void @_ZNK4cvc58internal4Subs5applyERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %25, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dm unwind label %bb.fc

bb.dm:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit552
  %i.mt = load ptr, ptr %23, align 8, !tbaa !249  ; 4 uses
  %i.mu = load ptr, ptr %25, align 8, !tbaa !249
  %.not.i568 = icmp eq ptr %i.mt, %i.mu
  br i1 %.not.i568, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit573, label %bb.dn, !prof !241

bb.dn:                                            ; preds = %bb.dm
  %i.mv = load i64, ptr %i.mt, align 8            ; 3 uses
  %i.mw = and i64 %i.mv, 1152920405095219200
  %.not.i.i569 = icmp eq i64 %i.mw, 1152920405095219200
  br i1 %.not.i.i569, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i570, label %bb.do, !prof !241

bb.do:                                            ; preds = %bb.dn
  %i.mx = add i64 %i.mv, 1152920405095219200
  %i.my = and i64 %i.mx, 1152920405095219200      ; 2 uses
  %i.mz = and i64 %i.mv, -1152920405095219201
  %i.na = or disjoint i64 %i.my, %i.mz
  store i64 %i.na, ptr %i.mt, align 8
  %i.nb = icmp eq i64 %i.my, 0
  br i1 %i.nb, label %bb.dp, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i570, !prof !241

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mt)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i570 unwind label %bb.fd

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i570: ; preds = %bb.dp, %bb.do, %bb.dn
  %i.nc = load ptr, ptr %25, align 8, !tbaa !249  ; 5 uses
  store ptr %i.nc, ptr %23, align 8, !tbaa !249
  %i.nd = load i64, ptr %i.nc, align 8            ; 3 uses
  %i.ne = lshr i64 %i.nd, 40
  %i.nf = trunc nuw nsw i64 %i.ne to i32
  %i.ng = and i32 %i.nf, 1048575                  ; 3 uses
  %i.nh = icmp samesign ult i32 %i.ng, 1048574
  br i1 %i.nh, label %bb.dq, label %bb.dr, !prof !240

bb.dq:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i570
  %i.ni = add nuw nsw i32 %i.ng, 1
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = shl nuw nsw i64 %i.nj, 40
  %i.nl = and i64 %i.nd, -1152920405095219201
  %i.nm = or i64 %i.nk, %i.nl
  store i64 %i.nm, ptr %i.nc, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit573

bb.dr:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i570
  %i.nn = icmp eq i32 %i.ng, 1048574
  br i1 %i.nn, label %bb.ds, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit573, !prof !241

bb.ds:                                            ; preds = %bb.dr
  %i.no = or i64 %i.nd, 1152920405095219200
  store i64 %i.no, ptr %i.nc, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit573 unwind label %bb.fd

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit573: ; preds = %bb.dr, %bb.dq, %bb.dm, %bb.ds
  %i.np = load ptr, ptr %25, align 8, !tbaa !249  ; 3 uses
  %i.nq = load i64, ptr %i.np, align 8            ; 3 uses
  %i.nr = and i64 %i.nq, 1152920405095219200
  %.not.i.i574 = icmp eq i64 %i.nr, 1152920405095219200
  br i1 %.not.i.i574, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit576, label %bb.dt, !prof !241

bb.dt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit573
  %i.ns = add i64 %i.nq, 1152920405095219200
  %i.nt = and i64 %i.ns, 1152920405095219200      ; 2 uses
  %i.nu = and i64 %i.nq, -1152920405095219201
  %i.nv = or disjoint i64 %i.nt, %i.nu
  store i64 %i.nv, ptr %i.np, align 8
  %i.nw = icmp eq i64 %i.nt, 0
  br i1 %i.nw, label %bb.du, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit576, !prof !241

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.np)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit576 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  call void @__clang_call_terminate(ptr %i.ny) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit576: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit573, %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  %i.nz = load ptr, ptr %24, align 8, !tbaa !249  ; 5 uses
  %i.oa = load ptr, ptr %23, align 8, !tbaa !249
  %.not.i577 = icmp eq ptr %i.nz, %i.oa
  br i1 %.not.i577, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit582, label %bb.dw, !prof !241

bb.dw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit576
  %i.ob = load i64, ptr %i.nz, align 8            ; 3 uses
  %i.oc = and i64 %i.ob, 1152920405095219200
  %.not.i.i578 = icmp eq i64 %i.oc, 1152920405095219200
  br i1 %.not.i.i578, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i579, label %bb.dx, !prof !241

bb.dx:                                            ; preds = %bb.dw
  %i.od = add i64 %i.ob, 1152920405095219200
  %i.oe = and i64 %i.od, 1152920405095219200      ; 2 uses
  %i.of = and i64 %i.ob, -1152920405095219201
  %i.og = or disjoint i64 %i.oe, %i.of
  store i64 %i.og, ptr %i.nz, align 8
  %i.oh = icmp eq i64 %i.oe, 0
  br i1 %i.oh, label %bb.dy, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i579, !prof !241

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.nz)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i579 unwind label %bb.fb

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i579: ; preds = %bb.dy, %bb.dx, %bb.dw
  %i.oi = load ptr, ptr %23, align 8, !tbaa !249  ; 8 uses
  store ptr %i.oi, ptr %24, align 8, !tbaa !249
  %i.oj = load i64, ptr %i.oi, align 8            ; 3 uses
  %i.ok = lshr i64 %i.oj, 40
  %i.ol = trunc nuw nsw i64 %i.ok to i32
  %i.om = and i32 %i.ol, 1048575                  ; 3 uses
  %i.on = icmp samesign ult i32 %i.om, 1048574
  br i1 %i.on, label %bb.dz, label %bb.ea, !prof !240

bb.dz:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i579
  %i.oo = add nuw nsw i32 %i.om, 1
  %i.op = zext nneg i32 %i.oo to i64
  %i.oq = shl nuw nsw i64 %i.op, 40
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers8MbqiEnum22constructInstantiationERKNS0_12NodeTemplateILb1EEES7_RKSt6vectorIS5_SaIS5_EERSA_RKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEERS8_ISH_IS5_NS1_11InferenceIdEESaISO_EE:.critedge298

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit782: ; preds = %bb.is, %bb.it, %bb.iu
  %i.aec = load i64, ptr %i.acg, align 8          ; 3 uses
  %i.aed = and i64 %i.aec, 1152920405095219200
  %.not.i.i783 = icmp eq i64 %i.aed, 1152920405095219200
  br i1 %.not.i.i783, label %bb.jp, label %bb.iw, !prof !241

bb.iw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit782
  %i.aee = add i64 %i.aec, 1152920405095219200
  %i.aef = and i64 %i.aee, 1152920405095219200    ; 2 uses
  %i.aeg = and i64 %i.aec, -1152920405095219201
  %i.aeh = or disjoint i64 %i.aef, %i.aeg
  store i64 %i.aeh, ptr %i.acg, align 8
  %i.aei = icmp eq i64 %i.aef, 0
  br i1 %i.aei, label %bb.ix, label %bb.jp, !prof !241

bb.ix:                                            ; preds = %bb.iw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acg)
          to label %bb.jp unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aej = landingpad { ptr, i32 }
          catch ptr null
  %i.aek = extractvalue { ptr, i32 } %i.aej, 0
  call void @__clang_call_terminate(ptr %i.aek) #26
  unreachable

bb.iz:                                            ; preds = %bb.gv
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.ja:                                            ; preds = %bb.hc, %bb.gz
  %i.aem = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #18
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %.pn257 = phi { ptr, i32 } [ %i.aem, %bb.ja ], [ %i.ael, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.ke

bb.jc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit679
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.jd:                                            ; preds = %bb.hm, %bb.hj
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #18
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %.pn259 = phi { ptr, i32 } [ %i.aeo, %bb.jd ], [ %i.aen, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  br label %bb.ke

bb.jf:                                            ; preds = %bb.hs
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6ResultD2Ev.exit809

bb.jg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit705
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #18
  br label %_ZN4cvc58internal6ResultD2Ev.exit809

bb.jh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit708
  %i.aer = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal6ResultD2Ev.exit788

bb.ji:                                            ; preds = %bb.hx
  %i.aes = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aet = load ptr, ptr %i.lc, align 8, !tbaa !311 ; 2 uses
  %i.aeu = icmp eq ptr %i.aet, %i.ld
  br i1 %i.aeu, label %_ZN4cvc58internal6ResultD2Ev.exit788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786: ; preds = %bb.ji
  %i.aev = load i64, ptr %i.ld, align 8, !tbaa !308
  %i.aew = add i64 %i.aev, 1
  call void @_ZdlPvm(ptr noundef %i.aet, i64 noundef %i.aew) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit788

_ZN4cvc58internal6ResultD2Ev.exit788:             ; preds = %bb.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786, %bb.jh
  %.pn261 = phi { ptr, i32 } [ %i.aer, %bb.jh ], [ %i.aes, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i786 ], [ %i.aes, %bb.ji ]
  %i.aex = load ptr, ptr %41, align 8, !tbaa !311 ; 2 uses
  %i.aey = icmp eq ptr %i.aex, %i.la
  br i1 %i.aey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i789

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i789: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit788
  %i.aez = load i64, ptr %i.la, align 8, !tbaa !308
  %i.afa = add i64 %i.aez, 1
  call void @_ZdlPvm(ptr noundef %i.aex, i64 noundef %i.afa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit788, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i789
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  br label %bb.kd

bb.jj:                                            ; preds = %bb.il, %bb.ii, %bb.if, %bb.ic, %bb.jq
  %i.afb = landingpad { ptr, i32 }
          cleanup
  br label %bb.kd

bb.jk:                                            ; preds = %bb.io, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit771
  %i.afc = landingpad { ptr, i32 }
          cleanup
  br label %bb.jo

bb.jl:                                            ; preds = %bb.ir, %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit775
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.jm:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit779
  %i.afe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %42) #18
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %.pn268 = phi { ptr, i32 } [ %i.afe, %bb.jm ], [ %i.afd, %bb.jl ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #18
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jk
  %.pn268.pn = phi { ptr, i32 } [ %.pn268, %bb.jn ], [ %i.afc, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br label %bb.kd

bb.jp:                                            ; preds = %bb.ix, %bb.iw, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit782
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #18
  br i1 %i.ma, label %bb.jq, label %.thread

bb.jq:                                            ; preds = %bb.jp
  %i.aff = load ptr, ptr %i.kz, align 8, !tbaa !476, !nonnull !196, !align !197
  %i.afg = invoke noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers16InstStrategyMbqi16tryInstantiationERKNS0_12NodeTemplateILb1EEERKSt6vectorIS5_SaIS5_EENS1_11InferenceIdERKSt3mapIS5_S5_St4lessIS5_ESaISt4pairIS6_S5_EEE(ptr noundef nonnull align 8 dereferenceable(632) %i.aff, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 172, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.jr unwind label %bb.jj     ; 2 uses

bb.jr:                                            ; preds = %bb.jq
  %i.afh = or i1 %.1212, %i.afg
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715, %bb.jr, %bb.jp
  %.2213 = phi i1 [ %i.afh, %bb.jr ], [ %.1212, %bb.jp ], [ %.1212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ]
  %.1205.in = phi i1 [ %i.afg, %bb.jr ], [ true, %bb.jp ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715 ] ; 2 uses
  %or.cond9 = select i1 %.1205.in, i1 true, i1 %.3202
  %i.afi = load ptr, ptr %i.le, align 8, !tbaa !311 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.lf
  br i1 %i.afj, label %_ZN4cvc58internal6ResultD2Ev.exit797, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i795

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i795: ; preds = %.thread
  %i.afk = load i64, ptr %i.lf, align 8, !tbaa !308
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit797

_ZN4cvc58internal6ResultD2Ev.exit797:             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i795
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %i.afm = load ptr, ptr %32, align 8, !tbaa !249 ; 3 uses
  %i.afn = load i64, ptr %i.afm, align 8          ; 3 uses
  %i.afo = and i64 %i.afn, 1152920405095219200
  %.not.i.i798 = icmp eq i64 %i.afo, 1152920405095219200
  br i1 %.not.i.i798, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800, label %bb.js, !prof !241

bb.js:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit797
  %i.afp = add i64 %i.afn, 1152920405095219200
  %i.afq = and i64 %i.afp, 1152920405095219200    ; 2 uses
  %i.afr = and i64 %i.afn, -1152920405095219201
  %i.afs = or disjoint i64 %i.afq, %i.afr
  store i64 %i.afs, ptr %i.afm, align 8
  %i.aft = icmp eq i64 %i.afq, 0
  br i1 %i.aft, label %bb.jt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800, !prof !241

bb.jt:                                            ; preds = %bb.js
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afm)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800 unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800: ; preds = %_ZN4cvc58internal6ResultD2Ev.exit797, %bb.js, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %bb.jv

bb.jv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit639, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800
  %.4226 = phi i1 [ %or.cond9, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit639 ]
  %.3214 = phi i1 [ %.2213, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800 ], [ %.1212, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit639 ] ; 3 uses
  %.2206 = phi i1 [ %.1205.in, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800 ], [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit639 ]
  %.4203 = phi i1 [ %.3202, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit800 ], [ %.2201, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit639 ] ; 2 uses
  %i.afw = load ptr, ptr %24, align 8, !tbaa !249 ; 3 uses
  %i.afx = load i64, ptr %i.afw, align 8          ; 3 uses
  %i.afy = and i64 %i.afx, 1152920405095219200
  %.not.i.i801 = icmp eq i64 %i.afy, 1152920405095219200
  br i1 %.not.i.i801, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit803, label %bb.jw, !prof !241

bb.jw:                                            ; preds = %bb.jv
  %i.afz = add i64 %i.afx, 1152920405095219200
  %i.aga = and i64 %i.afz, 1152920405095219200    ; 2 uses
  %i.agb = and i64 %i.afx, -1152920405095219201
  %i.agc = or disjoint i64 %i.aga, %i.agb
  store i64 %i.agc, ptr %i.afw, align 8
  %i.agd = icmp eq i64 %i.aga, 0
  br i1 %i.agd, label %bb.jx, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit803, !prof !241

bb.jx:                                            ; preds = %bb.jw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.afw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit803 unwind label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.age = landingpad { ptr, i32 }
          catch ptr null
  %i.agf = extractvalue { ptr, i32 } %i.age, 0
  call void @__clang_call_terminate(ptr %i.agf) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit803: ; preds = %bb.jv, %bb.jw, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.agg = load ptr, ptr %23, align 8, !tbaa !249 ; 3 uses
  %i.agh = load i64, ptr %i.agg, align 8          ; 3 uses
  %i.agi = and i64 %i.agh, 1152920405095219200
  %.not.i.i804 = icmp eq i64 %i.agi, 1152920405095219200
  br i1 %.not.i.i804, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit806, label %bb.jz, !prof !241

bb.jz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit803
  %i.agj = add i64 %i.agh, 1152920405095219200
  %i.agk = and i64 %i.agj, 1152920405095219200    ; 2 uses
  %i.agl = and i64 %i.agh, -1152920405095219201
  %i.agm = or disjoint i64 %i.agk, %i.agl
  store i64 %i.agm, ptr %i.agg, align 8
  %i.agn = icmp eq i64 %i.agk, 0
  br i1 %i.agn, label %bb.ka, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit806, !prof !241

bb.ka:                                            ; preds = %bb.jz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.agg)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit806 unwind label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.ago = landingpad { ptr, i32 }
          catch ptr null
  %i.agp = extractvalue { ptr, i32 } %i.ago, 0
  call void @__clang_call_terminate(ptr %i.agp) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit806: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit803, %bb.jz, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br i1 %.4226, label %bb.kc, label %.critedge314

bb.kc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit806
  br i1 %.2206, label %.loopexit, label %bb.cz, !llvm.loop !501

bb.kd:                                            ; preds = %bb.jo, %bb.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791
  %.pn271 = phi { ptr, i32 } [ %.pn261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791 ], [ %i.afb, %bb.jj ], [ %.pn268.pn, %bb.jo ] ; 2 uses
  %i.agq = load ptr, ptr %i.le, align 8, !tbaa !311 ; 2 uses
  %i.agr = icmp eq ptr %i.agq, %i.lf
  br i1 %i.agr, label %_ZN4cvc58internal6ResultD2Ev.exit809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i807: ; preds = %bb.kd
  %i.ags = load i64, ptr %i.lf, align 8, !tbaa !308
  %i.agt = add i64 %i.ags, 1
  call void @_ZdlPvm(ptr noundef %i.agq, i64 noundef %i.agt) #27
  br label %_ZN4cvc58internal6ResultD2Ev.exit809

_ZN4cvc58internal6ResultD2Ev.exit809:             ; preds = %bb.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i807, %bb.jg, %bb.jf
  %.pn271.pn = phi { ptr, i32 } [ %i.aep, %bb.jf ], [ %i.aeq, %bb.jg ], [ %.pn271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i807 ], [ %.pn271, %bb.kd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  br label %bb.ke

bb.ke:                                            ; preds = %_ZN4cvc58internal6ResultD2Ev.exit809, %bb.je, %bb.jb
  %.pn271.pn.pn = phi { ptr, i32 } [ %.pn271.pn, %_ZN4cvc58internal6ResultD2Ev.exit809 ], [ %.pn257, %bb.jb ], [ %.pn259, %bb.je ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #18
  br label %.body668

.body668:                                         ; preds = %bb.gu, %bb.ke
  %.pn271.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn, %bb.ke ], [ %i.wg, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18
  br label %.body504

.body504:                                         ; preds = %bb.fb, %bb.dk, %.body668, %bb.gq, %bb.fj, %bb.fe
  %.pn271.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn.pn, %.body668 ], [ %.pn249, %bb.fe ], [ %.pn254.pn, %bb.gq ], [ %i.mq, %bb.dk ], [ %.pn251.pn, %bb.fj ], [ %i.sh, %bb.fb ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #18
  br label %.body501

.body501:                                         ; preds = %bb.df, %.body504
  %.pn271.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn.pn.pn, %.body504 ], [ %i.mi, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #18
  br label %bb.kf

bb.kf:                                            ; preds = %.body501, %bb.fa
  %.pn271.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn271.pn.pn.pn.pn.pn, %.body501 ], [ %i.sg, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.kr

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851.lr.ph, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit
  %.01931218 = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851.lr.ph ], [ %i.aig, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit ] ; 2 uses
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.01931218
  %i.agv = load i64, ptr %i.agu, align 8, !tbaa !453 ; 2 uses
  %i.agw = load ptr, ptr %i.li, align 8, !tbaa !449
  %i.agx = getelementptr inbounds nuw [56 x i8], ptr %i.agw, i64 %i.agv
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  %i.agy = load ptr, ptr %4, align 8, !tbaa !258
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false), !alias.scope !510
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !300, !noalias !510 ; 2 uses
  %.not.i852 = icmp eq ptr %i.aha, null
  br i1 %.not.i852, label %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit, label %bb.kg

bb.kg:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %i.agv
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !510
  invoke void @_ZN4cvc58internal6theory11quantifiers8MVarInfo23ChoiceElimNodeConverter19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.509") align 8 %7, ptr noundef nonnull align 8 dereferenceable(352) %i.aha, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.ahb)
          to label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i unwind label %bb.kh, !noalias !510

_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i: ; preds = %bb.kg
  %i.ahc = load ptr, ptr %7, align 8, !tbaa !419, !noalias !510 ; 2 uses
  store ptr %i.ahc, ptr %44, align 8, !tbaa !419, !alias.scope !510
  %i.ahd = load <2 x ptr>, ptr %i.ll, align 8, !tbaa !408, !noalias !510
  %i.ahe = load ptr, ptr %i.ll, align 8, !tbaa !414, !noalias !510
  store <2 x ptr> %i.ahd, ptr %i.lj, align 8, !tbaa !408, !alias.scope !510
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !510
  br label %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit

bb.kh:                                            ; preds = %bb.kg
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !510
  br label %.body853

_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit: ; preds = %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851
  %i.ahg = phi ptr [ %i.ahe, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851 ]
  %i.ahh = phi ptr [ %i.ahc, %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit.i ], [ null, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit851 ]
  %i.ahi = load ptr, ptr %i.lm, align 8, !tbaa !408
  %i.ahj = load ptr, ptr %6, align 8, !tbaa !408  ; 2 uses
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = sub i64 %i.ahk, %i.ahl
  %i.ahn = getelementptr inbounds i8, ptr %i.ahj, i64 %i.ahm
  invoke void @_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEEvSE_T_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ahn, ptr %i.ahh, ptr %i.ahg)
          to label %bb.ki unwind label %bb.kn

bb.ki:                                            ; preds = %_ZN4cvc58internal6theory11quantifiers8MVarInfo19getEnumeratedLemmasERKNS0_12NodeTemplateILb1EEE.exit
  %i.aho = load ptr, ptr %44, align 8, !tbaa !419 ; 3 uses
  %i.ahp = load ptr, ptr %i.lj, align 8, !tbaa !414 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aho, %i.ahp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ki, %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aia, %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i ], [ %i.aho, %bb.ki ] ; 2 uses
  %i.ahq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !249 ; 3 uses
  %i.ahr = load i64, ptr %i.ahq, align 8          ; 3 uses
  %i.ahs = and i64 %i.ahr, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ahs, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i, label %bb.kj, !prof !241

bb.kj:                                            ; preds = %.lr.ph.i.i.i
  %i.aht = add i64 %i.ahr, 1152920405095219200
  %i.ahu = and i64 %i.aht, 1152920405095219200    ; 2 uses
  %i.ahv = and i64 %i.ahr, -1152920405095219201
  %i.ahw = or disjoint i64 %i.ahu, %i.ahv
  store i64 %i.ahw, ptr %i.ahq, align 8
  %i.ahx = icmp eq i64 %i.ahu, 0
  br i1 %i.ahx, label %bb.kk, label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i, !prof !241

bb.kk:                                            ; preds = %bb.kj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ahq)
          to label %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i unwind label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ahy = landingpad { ptr, i32 }
          catch ptr null
  %i.ahz = extractvalue { ptr, i32 } %i.ahy, 0
  call void @__clang_call_terminate(ptr %i.ahz) #26
  unreachable

_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i: ; preds = %bb.kk, %bb.kj, %.lr.ph.i.i.i
  %i.aia = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aia, %i.ahp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !420

_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %44, align 8, !tbaa !419
  br label %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %bb.ki
  %i.aib = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.aho, %bb.ki ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aib, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEESaIS7_EED2Ev.exit, label %bb.km

end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm:bb.a
bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !281
  store ptr %i.x, ptr %3, align 8, !tbaa !281
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !529
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
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !530
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !529
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !529
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !527
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !527
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !551  ; 3 uses
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
  store ptr null, ptr %i.b, align 8, !tbaa !553
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
  %i.k = load i64, ptr %i.j, align 8, !tbaa !530
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !529  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !280
  store ptr %i.o, ptr %.031, align 8, !tbaa !281
  store ptr %.031, ptr %i.g, align 8, !tbaa !280
  store ptr %i.g, ptr %i.m, align 8, !tbaa !529
  %i.p = load ptr, ptr %.031, align 8, !tbaa !281
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !529
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !281
  store ptr %i.r, ptr %.031, align 8, !tbaa !281
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !529
  store ptr %.031, ptr %i.s, align 8, !tbaa !281
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !554

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !555
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !556  ; 2 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_12NodeTemplateILb1EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !557

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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !609
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
  store i64 %i.c, ptr %i.b, align 8, !tbaa !552
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
  %i.r = load i64, ptr %i.d, align 8, !tbaa !519
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.t, align 8, !tbaa !530
  %i.u = load ptr, ptr %0, align 8, !tbaa !517    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !529  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !281
  store ptr %i.x, ptr %3, align 8, !tbaa !281
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !529
  store ptr %3, ptr %i.y, align 8, !tbaa !281
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !520
  store ptr %i.aa, ptr %3, align 8, !tbaa !281
  store ptr %3, ptr %i.z, align 8, !tbaa !520
  %i.ab = load ptr, ptr %3, align 8, !tbaa !281   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !519
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !530
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !529
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !529
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !609
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !609
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEES6_ELb1EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJOS6_EESG_IJEEEEEPS9_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !281
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %2, align 8, !tbaa !619
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
  store ptr null, ptr %i.b, align 8, !tbaa !624
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !520  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !520
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !281 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !530
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !529  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !520
  store ptr %i.o, ptr %.031, align 8, !tbaa !281
  store ptr %.031, ptr %i.g, align 8, !tbaa !520
  store ptr %i.g, ptr %i.m, align 8, !tbaa !529
  %i.p = load ptr, ptr %.031, align 8, !tbaa !281
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !529
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !281
  store ptr %i.r, ptr %.031, align 8, !tbaa !281
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !529
  store ptr %.031, ptr %i.s, align 8, !tbaa !281
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !625

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !517    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !519
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !519
  store ptr %.0.i, ptr %0, align 8, !tbaa !517
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
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4cvc58internal12NodeTemplateILb1EEENS2_6theory11InferenceIdEES8_ET0_T_SA_S9_.exit, !llvm.loop !626

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
