Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ackermann?download=true
inline.NumInlined: 1505
inline.NumDeleted: 709
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes9Ackermann13applyInternalEPNS1_17AssertionPipelineE:bb.a
  %i.hm = or i64 %i.hb, 1152920405095219200
  store i64 %i.hm, ptr %i.ha, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ha)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i.i unwind label %bb.jz

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  invoke void @_ZN4cvc58internal13SkolemManager14mkPurifySkolemENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.20") align 8 %51, ptr noundef nonnull align 8 %52)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i.i
  %i.hn = load ptr, ptr %52, align 8, !tbaa !48   ; 3 uses
  %i.ho = load i64, ptr %i.hn, align 8            ; 3 uses
  %i.hp = and i64 %i.ho, 1152920405095219200
  %.not.i.i55.i.i = icmp eq i64 %i.hp, 1152920405095219200
  br i1 %.not.i.i55.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, label %bb.au, !prof !45

bb.au:                                            ; preds = %bb.at
  %i.hq = add i64 %i.ho, 1152920405095219200
  %i.hr = and i64 %i.hq, 1152920405095219200      ; 2 uses
  %i.hs = and i64 %i.ho, -1152920405095219201
  %i.ht = or disjoint i64 %i.hr, %i.hs
  store i64 %i.ht, ptr %i.hn, align 8
  %i.hu = icmp eq i64 %i.hr, 0
  br i1 %i.hu, label %bb.av, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, !prof !45

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %.sroa.077.0152.i.i = load ptr, ptr %i.hx, align 8, !tbaa !19 ; 2 uses
  %.not153.i.i = icmp eq ptr %.sroa.077.0152.i.i, null
  br i1 %.not153.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.je, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i
  %i.hy = load ptr, ptr %61, align 8, !tbaa !22
  store ptr %i.hy, ptr %55, align 8, !tbaa !22
  %i.hz = load ptr, ptr %51, align 8, !tbaa !48
  store ptr %i.hz, ptr %56, align 8, !tbaa !22
  invoke void @_ZN4cvc58internal6theory15SubstitutionMap15addSubstitutionENS0_12NodeTemplateILb0EEES4_b(ptr noundef nonnull align 8 dereferenceable(256) %i.aw, ptr noundef nonnull align 8 %55, ptr noundef nonnull align 8 %56, i1 noundef zeroext true)
          to label %bb.jf unwind label %bb.ji

bb.ax:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit.i.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, %bb.je
  %.sroa.077.0154.i.i = phi ptr [ %.sroa.077.0.i.i, %bb.je ], [ %.sroa.077.0152.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.077.0154.i.i, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !22
  store ptr %i.ic, ptr %53, align 8, !tbaa !22
  %i.id = load ptr, ptr %61, align 8, !tbaa !22
  store ptr %i.id, ptr %54, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.ie = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.if = icmp eq i8 %i.ie, 0
  br i1 %i.if, label %bb.ay, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit.i.i.i, !prof !49

bb.ay:                                            ; preds = %.lr.ph.i.i
  %i.ig = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i.i.i46.i = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i.i.i46.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ih = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.ba unwind label %bb.bb     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  store i64 1152920405095219200, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i8 0, i64 16, i1 false)
  store ptr %i.ih, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !50
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %.body.i.i

_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit.i.i.i: ; preds = %bb.ba, %bb.ay, %.lr.ph.i.i
  %i.ik = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !50 ; 17 uses
  store ptr %i.ik, ptr %30, align 8, !tbaa !48
  %i.il = load ptr, ptr %53, align 8, !tbaa !22
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8
  %i.io = and i64 %i.in, 1023
  %i.ip = icmp eq i64 %i.io, 26
  br i1 %i.ip, label %bb.bc, label %bb.et

bb.bc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.iq = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 26)
          to label %bb.bd unwind label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  %i.ir = icmp eq i32 %i.iq, 2
  %i.is = load i64, ptr %i.im, align 8
  %i.it = lshr i64 %i.is, 32
  %i.iu = and i64 %i.it, 67108863
  %i.iv = sext i1 %i.ir to i64
  %i.iw = add nsw i64 %i.iu, %i.iv
  %i.ix = and i64 %i.iw, 4294967295               ; 5 uses
  %.not.i.i.i.i.i56.i.i = icmp eq i64 %i.ix, 0
  br i1 %.not.i.i.i.i.i56.i.i, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.thread.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.thread.i: ; preds = %bb.bd
  store ptr null, ptr %31, align 8, !tbaa !65
  store ptr null, ptr %i.cb, align 8, !tbaa !83
  br label %_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4cvc58internal12NodeTemplateILb1EEEmEET_S7_T0_.exit.i

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.bd
  %i.iy = shl nuw nsw i64 %i.ix, 3                ; 2 uses
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #26
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.i unwind label %bb.bo ; 6 uses

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.iz, ptr %31, align 8, !tbaa !65
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ix
  store ptr %i.ja, ptr %i.cb, align 8, !tbaa !83
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %bb.bh, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.i
  %.014.i.i = phi ptr [ %i.jl, %bb.bh ], [ %i.iz, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.i ] ; 3 uses
  %.01013.i.i = phi i64 [ %i.jk, %bb.bh ], [ %i.ix, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.i ]
  %i.jb = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.jc = icmp eq i8 %i.jb, 0
  br i1 %i.jc, label %bb.be, label %bb.bh, !prof !49

bb.be:                                            ; preds = %.lr.ph.i65.i
  %i.jd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %.not.i.i.i.i68.i = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i.i.i68.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.je = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.bg unwind label %.body.i69.i ; 3 uses

bb.bg:                                            ; preds = %bb.bf
  store i64 1152920405095219200, ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false)
  store ptr %i.je, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !50
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  br label %bb.bh

.body.i69.i:                                      ; preds = %bb.bf
  %i.jg = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #22
  %i.jh = extractvalue { ptr, i32 } %i.jg, 0
  %i.ji = call ptr @__cxa_begin_catch(ptr %i.jh) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef nonnull %i.iz, ptr noundef nonnull %.014.i.i)
          to label %bb.bi unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg, %bb.be, %.lr.ph.i65.i
  %i.jj = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !50
  store ptr %i.jj, ptr %.014.i.i, align 8, !tbaa !48
  %i.jk = add nsw i64 %.01013.i.i, -1             ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8 ; 2 uses
  %.not.i66.i = icmp eq i64 %i.jk, 0
  br i1 %.not.i66.i, label %_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4cvc58internal12NodeTemplateILb1EEEmEET_S7_T0_.exit.i, label %.lr.ph.i65.i, !llvm.loop !123

bb.bi:                                            ; preds = %.body.i69.i
  invoke void @__cxa_rethrow() #23
          to label %bb.bl unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.body.i69.i
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body70.thread.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #24
  unreachable

bb.bl:                                            ; preds = %bb.bi
  unreachable

.body70.thread.i:                                 ; preds = %bb.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.iy) #25
  br label %.body.i.i.i

_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4cvc58internal12NodeTemplateILb1EEEmEET_S7_T0_.exit.i: ; preds = %bb.bh, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.thread.i
  %.pr.i.i.i83.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.thread.i ], [ %i.iz, %bb.bh ] ; 10 uses
  %.0.lcssa.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2EmRKS4_.exit.i.i.i.thread.i ], [ %i.jl, %bb.bh ] ; 6 uses
  store ptr %.0.lcssa.i.i, ptr %i.cc, align 8, !tbaa !64
  %i.jp = load ptr, ptr %53, align 8, !tbaa !22
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = trunc i64 %i.jr to i32
  %i.jt = and i32 %i.js, 1023                     ; 2 uses
  %i.ju = icmp eq i32 %i.jt, 1023
  %i.jv = select i1 %i.ju, i32 -1, i32 %i.jt
  %i.jw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.jv)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4cvc58internal12NodeTemplateILb1EEEmEET_S7_T0_.exit.i
  %i.jx = icmp eq i32 %i.jw, 2
  %i.jy = load i64, ptr %i.jq, align 8
  %i.jz = lshr i64 %i.jy, 32
  %i.ka = and i64 %i.jz, 67108863
  %i.kb = sext i1 %i.jx to i64
  %i.kc = add nsw i64 %i.ka, %i.kb                ; 2 uses
  %.not.i.i45.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i.i45.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bm
  %wide.trip.count.i.i.i = and i64 %i.kc, 4294967295
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, %bb.bm
  %i.kd = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ke = ptrtoint ptr %.pr.i.i.i83.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = icmp ugt i64 %i.kf, 8
  br i1 %i.kg, label %bb.cm, label %bb.da

bb.bn:                                            ; preds = %bb.bc
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bo:                                            ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bp:                                            ; preds = %_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN4cvc58internal12NodeTemplateILb1EEEmEET_S7_T0_.exit.i
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kk = load ptr, ptr %53, align 8, !tbaa !22, !noalias !378 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !noalias !378
  %i.kn = trunc i64 %i.km to i32
  %i.ko = and i32 %i.kn, 1023                     ; 2 uses
  %i.kp = icmp eq i32 %i.ko, 1023
  %i.kq = select i1 %i.kp, i32 -1, i32 %i.ko
  %i.kr = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.kq)
          to label %bb.bq unwind label %bb.ci

bb.bq:                                            ; preds = %.lr.ph.i.i.i
  %i.ks = icmp eq i32 %i.kr, 2
  %i.kt = zext i1 %i.ks to i64
  %spec.select.i.i.i.i.i = add nuw i64 %indvars.iv.i.i.i, %i.kt
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %sext.i.i.i = shl i64 %spec.select.i.i.i.i.i, 32
  %i.kv = ashr exact i64 %sext.i.i.i, 29
  %i.kw = getelementptr inbounds i8, ptr %i.ku, i64 %i.kv
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !50, !noalias !378 ; 2 uses
  %i.ky = load ptr, ptr %54, align 8, !tbaa !22, !noalias !379 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !noalias !379
  %i.lb = trunc i64 %i.la to i32
  %i.lc = and i32 %i.lb, 1023                     ; 2 uses
  %i.ld = icmp eq i32 %i.lc, 1023
  %i.le = select i1 %i.ld, i32 -1, i32 %i.lc
  %i.lf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.le)
          to label %bb.br unwind label %bb.cj

bb.br:                                            ; preds = %bb.bq
  %i.lg = icmp eq i32 %i.lf, 2
  %i.lh = zext i1 %i.lg to i64
  %spec.select.i.i100.i.i.i = add nuw i64 %indvars.iv.i.i.i, %i.lh
  %i.li = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %sext46.i.i.i = shl i64 %spec.select.i.i100.i.i.i, 32
  %i.lj = ashr exact i64 %sext46.i.i.i, 29
  %i.lk = getelementptr inbounds i8, ptr %i.li, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !50, !noalias !379
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22, !noalias !380
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !86, !noalias !380
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef %i.ln, i32 noundef 5)
          to label %.noexc103.i.i.i unwind label %bb.ck

.noexc103.i.i.i:                                  ; preds = %bb.br
  store ptr %i.kx, ptr %28, align 8, !tbaa !22, !noalias !380
  %i.lo = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull align 8 %28)
          to label %bb.bs unwind label %bb.bv, !noalias !380

bb.bs:                                            ; preds = %.noexc103.i.i.i
  store ptr %i.ll, ptr %29, align 8, !tbaa !22, !noalias !380
  %i.lp = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.lo, ptr noundef nonnull align 8 %29)
          to label %bb.bt unwind label %bb.bw, !noalias !380 ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.20") align 8 %32, ptr noundef nonnull align 8 dereferenceable(124) %27)
          to label %bb.by unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bv:                                            ; preds = %.noexc103.i.i.i
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bs
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %.pn5.i.i.i.i = phi { ptr, i32 } [ %i.lq, %bb.bu ], [ %i.ls, %bb.bw ], [ %i.lr, %bb.bv ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22, !noalias !380
  br label %.body104.i.i.i

bb.by:                                            ; preds = %bb.bt
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.pr.i.i.i83.i, i64 %indvars.iv.i.i.i ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !48 ; 4 uses
  %i.lv = load ptr, ptr %32, align 8, !tbaa !48
  %.not.i.i58.i.i = icmp eq ptr %i.lu, %i.lv
  br i1 %.not.i.i58.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i, label %bb.bz, !prof !45

bb.bz:                                            ; preds = %bb.by
  %i.lw = load i64, ptr %i.lu, align 8            ; 3 uses
  %i.lx = and i64 %i.lw, 1152920405095219200
  %.not.i.i106.i.i.i = icmp eq i64 %i.lx, 1152920405095219200
  br i1 %.not.i.i106.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i, label %bb.ca, !prof !45

bb.ca:                                            ; preds = %bb.bz
  %i.ly = add i64 %i.lw, 1152920405095219200
  %i.lz = and i64 %i.ly, 1152920405095219200      ; 2 uses
  %i.ma = and i64 %i.lw, -1152920405095219201
  %i.mb = or disjoint i64 %i.lz, %i.ma
  store i64 %i.mb, ptr %i.lu, align 8
  %i.mc = icmp eq i64 %i.lz, 0
  br i1 %i.mc, label %bb.cb, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i, !prof !45

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i unwind label %bb.cl

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.md = load ptr, ptr %32, align 8, !tbaa !48   ; 5 uses
  store ptr %i.md, ptr %i.lt, align 8, !tbaa !48
  %i.me = load i64, ptr %i.md, align 8            ; 3 uses
  %i.mf = lshr i64 %i.me, 40
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %i.mh = and i32 %i.mg, 1048575                  ; 3 uses
  %i.mi = icmp samesign ult i32 %i.mh, 1048574
  br i1 %i.mi, label %bb.cc, label %bb.cd, !prof !66

bb.cc:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i
  %i.mj = add nuw nsw i32 %i.mh, 1
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = shl nuw nsw i64 %i.mk, 40
  %i.mm = and i64 %i.me, -1152920405095219201
  %i.mn = or i64 %i.ml, %i.mm
  store i64 %i.mn, ptr %i.md, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i

bb.cd:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i
  %i.mo = icmp eq i32 %i.mh, 1048574
  br i1 %i.mo, label %bb.ce, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i, !prof !45

bb.ce:                                            ; preds = %bb.cd
  %i.mp = or i64 %i.me, 1152920405095219200
  store i64 %i.mp, ptr %i.md, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.md)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i unwind label %bb.cl

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i: ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.by
  %i.mq = load ptr, ptr %32, align 8, !tbaa !48   ; 3 uses
  %i.mr = load i64, ptr %i.mq, align 8            ; 3 uses
  %i.ms = and i64 %i.mr, 1152920405095219200
  %.not.i.i109.i.i.i = icmp eq i64 %i.ms, 1152920405095219200
  br i1 %.not.i.i109.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, label %bb.cf, !prof !45

bb.cf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i
  %i.mt = add i64 %i.mr, 1152920405095219200
  %i.mu = and i64 %i.mt, 1152920405095219200      ; 2 uses
  %i.mv = and i64 %i.mr, -1152920405095219201
  %i.mw = or disjoint i64 %i.mu, %i.mv
  store i64 %i.mw, ptr %i.mq, align 8
  %i.mx = icmp eq i64 %i.mu, 0
  br i1 %i.mx, label %bb.cg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i, !prof !45

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.my = landingpad { ptr, i32 }
          catch ptr null
  %i.mz = extractvalue { ptr, i32 } %i.my, 0
  call void @__clang_call_terminate(ptr %i.mz) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i.i: ; preds = %bb.cg, %bb.cf, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !130

bb.ci:                                            ; preds = %.lr.ph.i.i.i
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body104.i.i.i

bb.cj:                                            ; preds = %bb.bq
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %.body104.i.i.i

bb.ck:                                            ; preds = %bb.br
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body104.i.i.i

bb.cl:                                            ; preds = %bb.ce, %bb.cb
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #22
  br label %.body104.i.i.i

.body104.i.i.i:                                   ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.bx
  %.pn83.pn.pn.i.i.i = phi { ptr, i32 } [ %i.na, %bb.ci ], [ %i.nb, %bb.cj ], [ %i.nd, %bb.cl ], [ %i.nc, %bb.ck ], [ %.pn5.i.i.i.i, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.es

bb.cm:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22, !noalias !381
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %26, ptr noundef nonnull align 8 dereferenceable(3592) %i.r, i32 noundef 21)
          to label %.noexc112.i.i.i unwind label %bb.cy

.noexc112.i.i.i:                                  ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !381
  %.not6.i.i.i.i.i.i = icmp eq ptr %.0.lcssa.i.i, %.pr.i.i.i83.i
  br i1 %.not6.i.i.i.i.i.i, label %.loopexit4.i.i.i.i, label %.lr.ph.i.i.i.i59.i.i

.lr.ph.i.i.i.i59.i.i:                             ; preds = %.noexc112.i.i.i, %.noexc.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.ng, %.noexc.i.i.i.i ], [ %.pr.i.i.i83.i, %.noexc112.i.i.i ] ; 2 uses
  %i.ne = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !48, !noalias !381
  store ptr %i.ne, ptr %25, align 8, !tbaa !22, !noalias !381
  %i.nf = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %26, ptr noundef nonnull align 8 %25)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !381 ; 0 uses

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i59.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i111.i.i.i = icmp eq ptr %i.ng, %.0.lcssa.i.i
  br i1 %.not.i.i.i111.i.i.i, label %.loopexit4.i.i.i.i, label %.lr.ph.i.i.i.i59.i.i, !llvm.loop !133

.loopexit4.i.i.i.i:                               ; preds = %.noexc.i.i.i.i, %.noexc112.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !381
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.20") align 8 %33, ptr noundef nonnull align 8 dereferenceable(124) %26)
          to label %bb.co unwind label %.loopexit.split-lp.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i59.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.loopexit.split-lp.i.i.i.i:                       ; preds = %.loopexit4.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cn:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22, !noalias !381
  br label %.body113.i.i.i

bb.co:                                            ; preds = %.loopexit4.i.i.i.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22, !noalias !381
  %i.nh = load ptr, ptr %33, align 8, !tbaa !48
  %.not.i115.i.i.i = icmp eq ptr %i.ik, %i.nh
  br i1 %.not.i115.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit120.i.i.i, label %bb.cp, !prof !45

bb.cp:                                            ; preds = %bb.co
  %i.ni = load i64, ptr %i.ik, align 8            ; 3 uses
  %i.nj = and i64 %i.ni, 1152920405095219200
  %.not.i.i116.i.i.i = icmp eq i64 %i.nj, 1152920405095219200
  br i1 %.not.i.i116.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i117.i.i.i, label %bb.cq, !prof !45

bb.cq:                                            ; preds = %bb.cp
  %i.nk = add i64 %i.ni, 1152920405095219200
  %i.nl = and i64 %i.nk, 1152920405095219200      ; 2 uses
  %i.nm = and i64 %i.ni, -1152920405095219201
  %i.nn = or disjoint i64 %i.nl, %i.nm
  store i64 %i.nn, ptr %i.ik, align 8
  %i.no = icmp eq i64 %i.nl, 0
  br i1 %i.no, label %bb.cr, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i117.i.i.i, !prof !45

bb.cr:                                            ; preds = %bb.cq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ik)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i117.i.i.i unwind label %bb.cz

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i117.i.i.i: ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.np = load ptr, ptr %33, align 8, !tbaa !48   ; 8 uses
  store ptr %i.np, ptr %30, align 8, !tbaa !48
  %i.nq = load i64, ptr %i.np, align 8            ; 3 uses
  %i.nr = lshr i64 %i.nq, 40
  %i.ns = trunc nuw nsw i64 %i.nr to i32
  %i.nt = and i32 %i.ns, 1048575                  ; 3 uses
  %i.nu = icmp samesign ult i32 %i.nt, 1048574
  br i1 %i.nu, label %bb.cs, label %bb.ct, !prof !66

bb.cs:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i117.i.i.i
  %i.nv = add nuw nsw i32 %i.nt, 1
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = shl nuw nsw i64 %i.nw, 40
  %i.ny = and i64 %i.nq, -1152920405095219201
  %i.nz = or i64 %i.nx, %i.ny
  store i64 %i.nz, ptr %i.np, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit120.i.i.i

bb.ct:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i117.i.i.i
  %i.oa = icmp eq i32 %i.nt, 1048574
  br i1 %i.oa, label %bb.cu, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit120.i.i.i, !prof !45

bb.cu:                                            ; preds = %bb.ct
  %i.ob = or i64 %i.nq, 1152920405095219200
  store i64 %i.ob, ptr %i.np, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.np)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit120.i.i.i unwind label %bb.cz

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit120.i.i.i: ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.co
  %i.oc = phi ptr [ %i.np, %bb.ct ], [ %i.np, %bb.cs ], [ %i.ik, %bb.co ], [ %i.np, %bb.cu ]
  %i.od = load ptr, ptr %33, align 8, !tbaa !48   ; 3 uses
  %i.oe = load i64, ptr %i.od, align 8            ; 3 uses
  %i.of = and i64 %i.oe, 1152920405095219200
  %.not.i.i121.i.i.i = icmp eq i64 %i.of, 1152920405095219200
  br i1 %.not.i.i121.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123.i.i.i, label %bb.cv, !prof !45

bb.cv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit120.i.i.i
  %i.og = add i64 %i.oe, 1152920405095219200
  %i.oh = and i64 %i.og, 1152920405095219200      ; 2 uses
  %i.oi = and i64 %i.oe, -1152920405095219201
  %i.oj = or disjoint i64 %i.oh, %i.oi
  store i64 %i.oj, ptr %i.od, align 8
  %i.ok = icmp eq i64 %i.oh, 0
  br i1 %i.ok, label %bb.cw, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123.i.i.i, !prof !45

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.od)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123.i.i.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ol = landingpad { ptr, i32 }
          catch ptr null
  %i.om = extractvalue { ptr, i32 } %i.ol, 0
  call void @__clang_call_terminate(ptr %i.om) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123.i.i.i: ; preds = %bb.cw, %bb.cv, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit120.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit129.i.i.i

bb.cy:                                            ; preds = %bb.cm
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %.body113.i.i.i

bb.cz:                                            ; preds = %bb.cu, %bb.cr
  %i.oo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #22
  br label %.body113.i.i.i

.body113.i.i.i:                                   ; preds = %bb.cz, %bb.cy, %bb.cn
  %.pn77.i.i.i = phi { ptr, i32 } [ %i.oo, %bb.cz ], [ %i.on, %bb.cy ], [ %lpad.phi.i.i.i.i, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %bb.es

bb.da:                                            ; preds = %._crit_edge.i.i.i
  %i.op = load ptr, ptr %.pr.i.i.i83.i, align 8, !tbaa !48
  %.not.i124.i.i.i = icmp eq ptr %i.ik, %i.op
  br i1 %.not.i124.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit129.i.i.i, label %bb.db, !prof !45

bb.db:                                            ; preds = %bb.da
  %i.oq = load i64, ptr %i.ik, align 8            ; 3 uses
  %i.or = and i64 %i.oq, 1152920405095219200
  %.not.i.i125.i.i.i = icmp eq i64 %i.or, 1152920405095219200
  br i1 %.not.i.i125.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126.i.i.i, label %bb.dc, !prof !45

bb.dc:                                            ; preds = %bb.db
  %i.os = add i64 %i.oq, 1152920405095219200
  %i.ot = and i64 %i.os, 1152920405095219200      ; 2 uses
  %i.ou = and i64 %i.oq, -1152920405095219201
  %i.ov = or disjoint i64 %i.ot, %i.ou
  store i64 %i.ov, ptr %i.ik, align 8
  %i.ow = icmp eq i64 %i.ot, 0
  br i1 %i.ow, label %bb.dd, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126.i.i.i, !prof !45

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ik)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126.i.i.i unwind label %bb.dh

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126.i.i.i: ; preds = %bb.dd, %bb.dc, %bb.db
  %i.ox = load ptr, ptr %.pr.i.i.i83.i, align 8, !tbaa !48 ; 8 uses
  store ptr %i.ox, ptr %30, align 8, !tbaa !48
  %i.oy = load i64, ptr %i.ox, align 8            ; 3 uses
  %i.oz = lshr i64 %i.oy, 40
  %i.pa = trunc nuw nsw i64 %i.oz to i32
  %i.pb = and i32 %i.pa, 1048575                  ; 3 uses
  %i.pc = icmp samesign ult i32 %i.pb, 1048574
  br i1 %i.pc, label %bb.de, label %bb.df, !prof !66

bb.de:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126.i.i.i
  %i.pd = add nuw nsw i32 %i.pb, 1
  %i.pe = zext nneg i32 %i.pd to i64
  %i.pf = shl nuw nsw i64 %i.pe, 40
  %i.pg = and i64 %i.oy, -1152920405095219201
  %i.ph = or i64 %i.pf, %i.pg
  store i64 %i.ph, ptr %i.ox, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit129.i.i.i

bb.df:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i126.i.i.i
  %i.pi = icmp eq i32 %i.pb, 1048574
  br i1 %i.pi, label %bb.dg, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit129.i.i.i, !prof !45

bb.dg:                                            ; preds = %bb.df
  %i.pj = or i64 %i.oy, 1152920405095219200
  store i64 %i.pj, ptr %i.ox, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ox)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit129.i.i.i unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.dd
  %i.pk = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit129.i.i.i: ; preds = %bb.dg, %bb.df, %bb.de, %bb.da, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123.i.i.i
  %i.pl = phi ptr [ %i.ox, %bb.df ], [ %i.ox, %bb.de ], [ %i.ik, %bb.da ], [ %i.ox, %bb.dg ], [ %i.oc, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit123.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.pm = load ptr, ptr %53, align 8, !tbaa !22   ; 2 uses
  %i.pn = load ptr, ptr %54, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22, !noalias !382
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !86, !noalias !382
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef %i.pp, i32 noundef 5)
          to label %.noexc131.i.i.i unwind label %bb.en

.noexc131.i.i.i:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit129.i.i.i
  store ptr %i.pm, ptr %23, align 8, !tbaa !22, !noalias !382
  %i.pq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull align 8 %23)
          to label %bb.di unwind label %bb.dl, !noalias !382

bb.di:                                            ; preds = %.noexc131.i.i.i
end_hunk_0
