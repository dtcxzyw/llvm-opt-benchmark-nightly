Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZNK7xgboost9predictor12CPUPredictor14InplacePredictESt10shared_ptrINS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEii:bb.a
bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !69 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !69
  %i.dg = icmp eq ptr %i.dd, %i.df
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, i8 0, i64 16, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.dh = icmp ne ptr %i.dd, null
  %i.di = icmp eq i32 %.0, %5
  %i.dj = or i1 %i.di, %i.dh
  br i1 %i.dj, label %_ZN7xgboost6common4SpanIKfLm18446744073709551615EEC2EPS2_m.exit, label %bb.p, !prof !70

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #35
  unreachable

_ZN7xgboost6common4SpanIKfLm18446744073709551615EEC2EPS2_m.exit: ; preds = %bb.o
  %i.dk = sub nsw i32 %.0, %5
  %i.dl = sext i32 %i.dk to i64
  %i.dm = sext i32 %5 to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dm
  store i64 %i.dl, ptr %13, align 8, !tbaa !59
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dn, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %_ZN7xgboost6common4SpanIKfLm18446744073709551615EEC2EPS2_m.exit, %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  store float 1.000000e+00, ptr %i.do, align 8, !tbaa !541
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %0, ptr %14, align 8, !tbaa !126
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ce, ptr %i.dp, align 8, !tbaa !127
  %i.dq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.e, ptr %i.dq, align 8, !tbaa !128
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %12, ptr %i.dr, align 8, !tbaa !129
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %11, ptr %i.ds, align 8, !tbaa !130
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.d, ptr %i.dt, align 8, !tbaa !131
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.c, ptr %i.du, align 8, !tbaa !132
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 56
  store ptr %13, ptr %i.dv, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.b, ptr %15, align 8, !tbaa !542
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %2, ptr %i.dw, align 8, !tbaa !543
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %0, ptr %i.dx, align 8, !tbaa !137
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.a, ptr %i.dy, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %14, ptr %i.dz, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store i8 0, ptr %i.f, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ea = load ptr, ptr %i.bm, align 8, !tbaa !64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(5360) %i.bm)
          to label %.noexc33 unwind label %bb.ae, !inline_history !533

.noexc33:                                         ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 256 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ef, align 8, !tbaa !50, !alias.scope !544
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !139, !noalias !544 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc33
  store ptr null, ptr %8, align 8, !tbaa !139, !alias.scope !544
  br label %_ZNK7xgboost4data12DMatrixProxy7AdapterEv.exit.i

bb.s:                                             ; preds = %.noexc33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !544
  store ptr %8, ptr %7, align 8, !tbaa !50, !noalias !544
  invoke void %i.eg(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull %7)
          to label %.noexc34 unwind label %bb.ae, !inline_history !533

.noexc34:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !544
  br label %_ZNK7xgboost4data12DMatrixProxy7AdapterEv.exit.i

_ZNK7xgboost4data12DMatrixProxy7AdapterEv.exit.i: ; preds = %.noexc34, %bb.r
  invoke void @_ZN7xgboost4data8cpu_impl11DispatchAnyILb0ESt10shared_ptrRZNKS_9predictor12CPUPredictor14InplacePredictES3_INS_7DMatrixEERKNS_3gbm11GBTreeModelEfPNS_20PredictionCacheEntryEiiEUlT_E_EEDcPKNS_7ContextESt3anyOT1_Pb(ptr noundef %i.ed, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull %i.f)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7xgboost4data12DMatrixProxy7AdapterEv.exit.i
  %i.eh = load ptr, ptr %8, align 8, !tbaa !139   ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i5.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.eh(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef null)
          to label %bb.z unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #35
  unreachable

bb.w:                                             ; preds = %_ZNK7xgboost4data12DMatrixProxy7AdapterEv.exit.i
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %8, align 8, !tbaa !139   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i6.i, label %.body, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void %i.el(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef null)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #35
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.eo = load i8, ptr %i.f, align 1, !tbaa !82, !range !140, !noundef !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %.val29 = load ptr, ptr %12, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val29, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.val30 = load ptr, ptr %i.ep, align 8
  %i.eq = ptrtoint ptr %.val30 to i64
  %i.er = ptrtoint ptr %.val29 to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.val29, i64 noundef %i.es) #34
  br label %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit

_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.et = load ptr, ptr %11, align 8, !tbaa !147  ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.et, %i.ev
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fc, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i ], [ %i.et, %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit ] ; 3 uses
  %i.ew = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !84
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = sub i64 %i.ez, %i.fa
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fb) #34
  br label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %i.fc, %i.ev
  br i1 %.not.i.i.i.i35, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %11, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit
  %i.fd = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.et, %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i1.i.i, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !149
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fi) #34
  br label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EED2Ev.exit

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ac
  %16 = trunc nuw i8 %i.eo to i1
  %17 = xor i1 %16, true
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i1 %17

bb.ad:                                            ; preds = %bb.l
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit37

bb.ae:                                            ; preds = %bb.s, %bb.q
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.x, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.fk, %bb.ae ], [ %i.ek, %bb.x ], [ %i.ek, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %.val = load ptr, ptr %12, align 8, !tbaa !144  ; 3 uses
  %.not.i.i.i.i36 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i36, label %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit37, label %bb.af

bb.af:                                            ; preds = %.body
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.val28 = load ptr, ptr %i.fl, align 8
  %i.fm = ptrtoint ptr %.val28 to i64
  %i.fn = ptrtoint ptr %.val to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.fo) #34
  br label %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit37

_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit37: ; preds = %bb.af, %.body, %bb.ad
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.af ], [ %i.fj, %bb.ad ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit37, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit37 ], [ %lpad.loopexit.split-lp40, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %common.resume

bb.ah:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost9predictor12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i32 noundef %4) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.xgboost::RegTree::FVec", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.xgboost::predictor::(anonymous namespace)::ThreadTmp.444", align 8 ; 12 uses
  %7 = alloca %"class.xgboost::predictor::GBTreeModelView", align 8 ; 9 uses
  %8 = alloca %class.anon.552, align 8            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = tail call noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.e) ; 3 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !83
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp eq i32 %4, 0
  %i.q = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.o)
  %.0.i = select i1 %i.p, i32 %i.o, i32 %i.q      ; 3 uses
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !83
  %i.r = load ptr, ptr %1, align 8, !tbaa !64
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.u = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 4 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !166
  %i.w = sext i32 %.0.i to i64
  %i.x = mul i64 %i.v, %i.w                       ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !167  ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !68  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 3 uses
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ag = sub nuw i64 %i.x, %i.ae
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef %i.ag)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.ah = icmp ult i64 %i.x, %i.ae
  br i1 %i.ah, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.x ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.ai
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !167
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !168
  store i32 %i.am, ptr %i.c, align 4, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.an = sext i32 %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr null, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(25) %5)
          to label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i unwind label %bb.g

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i: ; preds = %bb.e
  %i.ao = load ptr, ptr %5, align 8, !tbaa !68    ; 3 uses
  %.not.i.i.i.i6.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i6.i, label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i

_ZN7xgboost7RegTree4FVecD2Ev.exit.i:              ; preds = %bb.f, %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %5, align 8, !tbaa !68    ; 3 uses
  %.not.i.i.i.i7.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i7.i, label %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !84
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i

common.resume:                                    ; preds = %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit19, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.au, %_ZN7xgboost7RegTree4FVecD2Ev.exit8.i ], [ %.pn, %_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEED2Ev.exit19 ]
  resume { ptr, i32 } %common.resume.op

_ZN7xgboost7RegTree4FVecD2Ev.exit8.i:             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #18
  br label %common.resume

bb.i:                                             ; preds = %_ZN7xgboost7RegTree4FVecD2Ev.exit.i, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke fastcc void @_ZN7xgboost9predictor15GBTreeModelViewINS0_12_GLOBAL__N_13VecESt7variantIJNS_4tree14ScalarTreeViewENS5_19MultiTargetTreeViewEEENS2_9CopyViewsEEC2ENS_9DeviceOrdERKNS_3gbm11GBTreeModelEbiiOS9_(ptr noundef nonnull align 8 dereferenceable(60) %7, i32 -65536, ptr noundef nonnull align 8 dereferenceable(192) %3, i32 noundef 0, i32 noundef %.0.i)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %6, ptr %8, align 8, !tbaa !170
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %i.bc, align 8, !tbaa !131
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.bd, align 8, !tbaa !131
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.be, align 8, !tbaa !129
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.u, ptr %i.bf, align 8, !tbaa !127
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.bg, align 8, !tbaa !131
  invoke fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_ZNS1_13LaunchPredictISF_EEvPKNS_7ContextES5_SC_SE_EUlPKS4_E_EEvSK_S5_SC_SE_OT0_(ptr noundef %i.bb, ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(192) %3, ptr noundef nonnull readonly align 8 dereferenceable(48) %8)
          to label %_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_.exit unwind label %bb.o

end_hunk_0
begin_hunk_1_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a
  %i.x = alloca i32, align 4                      ; 5 uses
  %113 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %114 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %115 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %116 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.y = alloca i32, align 4                      ; 5 uses
  %i.z = alloca i32, align 4                      ; 5 uses
  %117 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %118 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %119 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i32, align 4                     ; 5 uses
  %120 = alloca %"class.std::vector.31", align 8  ; 12 uses
  %121 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %i.ac = alloca i64, align 8                     ; 6 uses
  %i.ad = alloca i64, align 8                     ; 6 uses
  %122 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %123 = alloca %class.anon.432, align 8          ; 13 uses
  %124 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 4 uses
  %125 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 4 uses
  %126 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %127 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 3 uses
  %128 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %129 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %130 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %131 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %132 = alloca %"class.xgboost::predictor::GHistIndexMatrixView.427", align 8 ; 12 uses
  %133 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %134 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %135 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %136 = alloca %"class.xgboost::predictor::SparsePageView.429", align 8 ; 9 uses
  %137 = alloca %"struct.xgboost::RegTree::FVec", align 8 ; 9 uses
  %138 = alloca %"class.xgboost::predictor::(anonymous namespace)::ThreadTmp", align 8 ; 13 uses
  %139 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %140 = alloca %"class.xgboost::common::Range1d", align 8 ; 7 uses
  %141 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %142 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %143 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %144 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %145 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %146 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %147 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %148 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %149 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.ae = alloca i32, align 4                     ; 5 uses
  %i.af = alloca i32, align 4                     ; 5 uses
  %150 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %151 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %152 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %153 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.ag = alloca i32, align 4                     ; 5 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %154 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %155 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %156 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %157 = alloca %"class.std::vector.31", align 8  ; 9 uses
  %158 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %i.ai = alloca i64, align 8                     ; 6 uses
  %i.aj = alloca i64, align 8                     ; 6 uses
  %159 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %160 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 5 uses
  %161 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 5 uses
  %162 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %163 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %164 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %165 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %166 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %167 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %168 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %169 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %170 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.ak = alloca i32, align 4                     ; 5 uses
  %i.al = alloca i32, align 4                     ; 5 uses
  %171 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %172 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %173 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %174 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.am = alloca i32, align 4                     ; 5 uses
  %i.an = alloca i32, align 4                     ; 5 uses
  %175 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %176 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %177 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %i.ao = alloca i8, align 1                      ; 4 uses
  %i.ap = alloca i32, align 4                     ; 5 uses
  %178 = alloca %"class.std::vector.31", align 8  ; 12 uses
  %179 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %i.aq = alloca i64, align 8                     ; 6 uses
  %i.ar = alloca i64, align 8                     ; 6 uses
  %180 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %181 = alloca %class.anon.304, align 8          ; 13 uses
  %182 = alloca %"struct.xgboost::common::OptionalWeights", align 8 ; 4 uses
  %183 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 4 uses
  %184 = alloca %"class.std::tuple.184", align 8  ; 6 uses
  %185 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %186 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %.sroa.0285.i.i = alloca %"struct.enc::MappingView", align 8 ; 6 uses
  %187 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %188 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %189 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %190 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %191 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %192 = alloca %"class.xgboost::predictor::GHistIndexMatrixView", align 8 ; 13 uses
  %193 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %194 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %195 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %196 = alloca %"class.xgboost::predictor::SparsePageView", align 8 ; 11 uses
  %197 = alloca %"struct.xgboost::RegTree::FVec", align 8 ; 9 uses
  %198 = alloca %"class.xgboost::predictor::(anonymous namespace)::ThreadTmp", align 8 ; 15 uses
  %199 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !64
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1
  %i.av = load i64, ptr %i.au, align 8, !tbaa !166
  %i.aw = load ptr, ptr %1, align 8, !tbaa !64
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !192
  %i.bb = mul i64 %i.ba, %i.av
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = load ptr, ptr %1, align 8, !tbaa !64
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !193
  %i.bh = uitofp i64 %i.bg to double
  %i.bi = uitofp i64 %.sroa.speculated.i to double
  %i.bj = fdiv double %i.bh, %i.bi
  %i.bk = fcmp ogt double %i.bj, 1.250000e-01
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !226
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !237
  %.not23 = icmp eq i32 %i.bo, 0                  ; 2 uses
  br i1 %i.bk, label %bb.b, label %bb.sl

bb.b:                                             ; preds = %bb.a
  br i1 %.not23, label %bb.jc, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #18
  %i.bp = load ptr, ptr %1, align 8, !tbaa !64, !noalias !774
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !774
  %i.bs = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.br(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !774, !inline_history !622
  call void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %199, ptr noundef nonnull align 8 dereferenceable(248) %i.bs)
  %i.bt = load ptr, ptr %199, align 8, !tbaa !239 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %199, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.bw, align 8, !tbaa !242
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !243
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #18, !inline_history !623
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #18, !inline_history !623
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit

bb.f:                                             ; preds = %bb.d
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.g ], [ %i.cj, %bb.h ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit, !prof !173

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #18
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit

_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !237
  %200 = icmp eq i32 %i.cm, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.co = load i8, ptr %i.cn, align 8, !range !140
  %201 = trunc nuw i8 %i.co to i1
  %.not25 = select i1 %200, i1 true, i1 %201
  br i1 %.not25, label %bb.jc, label %bb.j

bb.j:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #18
  %i.cp = load ptr, ptr %3, align 8, !tbaa !776, !nonnull !141, !align !244 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !83 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %198, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %197, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %198, ptr null, i64 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(25) %197)
          to label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i unwind label %bb.m

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i: ; preds = %bb.k
  %i.ct = load ptr, ptr %197, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i.i6.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i6.i.i, label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %197, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !84
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i

_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i:            ; preds = %bb.l, %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #18
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !776
  br label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i

bb.m:                                             ; preds = %bb.k
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = load ptr, ptr %197, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i7.i.i, label %.body.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %197, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !84
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #34
  br label %.body.thread

.body.thread:                                     ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #18
  call void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %198) #18
  br label %common.resume

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i: ; preds = %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i, %bb.j
  %i.dg = phi ptr [ %i.cp, %bb.j ], [ %.pre.i, %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !777, !nonnull !141, !align !245 ; 17 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !778, !nonnull !141 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !779, !nonnull !141, !align !245 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !780, !nonnull !141, !align !245 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %187)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0285.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #18
  %i.dp = load ptr, ptr %1, align 8, !tbaa !64, !noalias !781
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !781
  %i.ds = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i unwind label %bb.iy, !inline_history !626

.noexc.i:                                         ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i
  invoke void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %186, ptr noundef nonnull align 8 dereferenceable(248) %i.ds)
          to label %.noexc3.i unwind label %bb.iy

.noexc3.i:                                        ; preds = %.noexc.i
  %i.dt = load ptr, ptr %186, align 8, !tbaa !239
  %i.du = getelementptr inbounds nuw i8, ptr %186, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i38, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc3.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.dw, align 8, !tbaa !242
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !243
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #18, !inline_history !627
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #18, !inline_history !627
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dz, %bb.r ], [ %i.ej, %bb.s ]
  %i.ek = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ek, label %bb.t, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i, !prof !173

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #18
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i

_ZNK7xgboost7DMatrix4CatsEv.exit.i.i:             ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %186) #18
  invoke void @_ZNK7xgboost12CatContainer8HostViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.enc::detail::ColumnsViewImpl") align 8 %187, ptr noundef nonnull align 8 dereferenceable(73) %i.dt)
          to label %.noexc4.i unwind label %bb.iy

.noexc4.i:                                        ; preds = %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i
  %.val.i.i = load ptr, ptr %i.bl, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %185)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %185, ptr noundef nonnull align 8 dereferenceable(40) %187, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #18, !noalias !782
  invoke void @_ZN7xgboost8cpu_impl15MakeCatAccessorEPKNS_7ContextERKN3enc6detail15ColumnsViewImplISt7variantIJNS4_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSA_IKaLm18446744073709551615EEENSA_IKtLm18446744073709551615EEENSA_IKsLm18446744073709551615EEENSA_IKjLm18446744073709551615EEENSA_IKiLm18446744073709551615EEENSA_IKmLm18446744073709551615EEENSA_IKlLm18446744073709551615EEEEEEEPKNS_12CatContainerE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.184") align 8 %184, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %185, ptr noundef %.val.i.i)
          to label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i unwind label %bb.iy

_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i: ; preds = %.noexc4.i
  %i.el = getelementptr inbounds nuw i8, ptr %184, i64 24
  %i.em = load ptr, ptr %184, align 8, !tbaa !175, !noalias !782 ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %184, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !246, !noalias !782 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0285.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 32, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #18, !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %185)
  %i.ep = load ptr, ptr %1, align 8, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 136
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc6.i unwind label %bb.iy, !inline_history !626

.noexc6.i:                                        ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i
  br i1 %i.es, label %bb.ej, label %bb.u

bb.u:                                             ; preds = %.noexc6.i
  %i.et = load ptr, ptr %1, align 8, !tbaa !64
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.eu(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc7.i unwind label %bb.iy, !inline_history !626

.noexc7.i:                                        ; preds = %bb.u
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 184
  %i.ex = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %.noexc8.i unwind label %bb.iy ; 3 uses

.noexc8.i:                                        ; preds = %.noexc7.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !249 ; 2 uses
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !250 ; 3 uses
  %i.fb = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fc = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %.not.i.i.i.i30.i.i = icmp eq ptr %i.ez, %i.fa
  br i1 %.not.i.i.i.i30.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc8.i
  %i.fe = icmp slt i64 %i.fd, 0
  br i1 %i.fe, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !173

.noexc.i.i.i.i:                                   ; preds = %bb.v
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc9.i unwind label %bb.iy

.noexc9.i:                                        ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #33
          to label %.noexc10.i unwind label %bb.iy

.noexc10.i:                                       ; preds = %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.ex, align 8, !tbaa !65 ; 2 uses
  %.pre380.i.i = load ptr, ptr %i.ey, align 8, !tbaa !65
end_hunk_1
begin_hunk_2_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_ZNS1_13LaunchPredictISI_EEvPKNS_7ContextES5_SD_SH_EUlPKS4_E_EEvSN_S5_SD_SH_OT0_:bb.a

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i122.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph119.i.i.i.i.i142.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i.i121.i.i
  %lpad.loopexit.split-lp937 = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i.i84.i.i

.body47.i.i84.i.i:                                ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i122.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i83.i.i, %bb.rf
  %eh.lpad-body48.i.i85.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i127.i.i, %bb.rf ], [ %eh.lpad-body.i.i.i.i.i81.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i.i83.i.i ], [ %lpad.loopexit.split-lp937, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i122.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #18
  br label %.body.i.i86.i.i

.body.i.i86.i.i:                                  ; preds = %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body47.i.i84.i.i, %bb.ra, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i189.i.i, %bb.qa
  %.pn22.i.i87.i.i = phi { ptr, i32 } [ %eh.lpad-body48.i.i85.i.i, %.body47.i.i84.i.i ], [ %.pn.i.i.i.i224.i.i, %bb.qa ], [ %.pn.pn.i.i157.i.i, %bb.ra ], [ %eh.lpad-body.i.i.i.i187.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit82.i.i.i.i189.i.i ], [ %lpad.loopexit.split-lp942, %.loopexit.split-lp66.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bes = load ptr, ptr %98, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i50.i.i88.i.i = icmp eq ptr %i.bes, null
  br i1 %.not.i.i.i50.i.i88.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i89.i.i, label %bb.sc

bb.sc:                                            ; preds = %.body.i.i86.i.i
  %i.bet = load ptr, ptr %i.aul, align 8, !tbaa !246
  %i.beu = ptrtoint ptr %i.bet to i64
  %i.bev = ptrtoint ptr %i.bes to i64
  %i.bew = sub i64 %i.beu, %i.bev
  call void @_ZdlPvm(ptr noundef nonnull %i.bes, i64 noundef %i.bew) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i89.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i89.i.i:        ; preds = %bb.sc, %.body.i.i86.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  br label %.body251.i.i

bb.sd:                                            ; preds = %bb.pn
  %i.bex = landingpad { ptr, i32 }
          catch ptr null
  %i.bey = extractvalue { ptr, i32 } %i.bex, 0
  call void @__clang_call_terminate(ptr %i.bey) #35
  unreachable

bb.se:                                            ; preds = %bb.sb, %_ZN7xgboost6common13ParallelFor1dILm64EmZNS_9predictor12_GLOBAL__N_125PredictBatchByBlockKernelILm64ENS2_14SparsePageViewINS_12NoOpAccessorEEEEEvRKT0_RKNS2_15GBTreeModelViewINS3_3VecESt7variantIJNS_4tree14ScalarTreeViewENSE_19MultiTargetTreeViewEEENS3_9CopyViewsEEEPNS3_9ThreadTmpIXT_EEEibNS_6linalg10TensorViewIfLi2EEENS0_15OptionalWeightsEEUlOT_E_EEvS8_iOT1_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %103)
  call void @llvm.lifetime.end.p0(ptr nonnull %102)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #18
  %i.bez = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %134)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i278 unwind label %bb.sf ; 0 uses

bb.sf:                                            ; preds = %bb.se, %bb.pb, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i278
  %i.bfa = landingpad { ptr, i32 }
          cleanup
  br label %bb.sh

bb.sg:                                            ; preds = %.noexc70.i.i, %bb.pc
  %i.bfb = landingpad { ptr, i32 }
          cleanup
  br label %.body251.i.i

.body251.i.i:                                     ; preds = %bb.sg, %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i89.i.i
  %eh.lpad-body252.i.i = phi { ptr, i32 } [ %i.bfb, %bb.sg ], [ %.pn22.i.i87.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit51.i.i89.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #18
  br label %bb.sh

bb.sh:                                            ; preds = %.body251.i.i, %bb.sf
  %.pn26.i.i279 = phi { ptr, i32 } [ %i.bfa, %bb.sf ], [ %eh.lpad-body252.i.i, %.body251.i.i ]
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %135) #18
  br label %.body54.i.i

.body54.i.i:                                      ; preds = %bb.sh, %bb.og
  %.pn26.pn.i.i274 = phi { ptr, i32 } [ %.pn26.i.i279, %bb.sh ], [ %i.auz, %bb.og ]
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #18
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %134) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #18
  call void @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %133) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #18
  br label %.body.i53

_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i: ; preds = %_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev.exit.i.i281, %bb.kr, %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEED2Ev.exit.i.i260
  %i.bfc = load ptr, ptr %138, align 8, !tbaa !147 ; 3 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %138, i64 8
  %i.bfe = load ptr, ptr %i.bfd, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i.i.i261 = icmp eq ptr %i.bfc, %i.bfe
  br i1 %.not4.i.i.i.i.i261, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i268, label %.lr.ph.i.i.i.i.i262

.lr.ph.i.i.i.i.i262:                              ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i265
  %.05.i.i.i.i.i263 = phi ptr [ %i.bfl, %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i265 ], [ %i.bfc, %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i ] ; 3 uses
  %i.bff = load ptr, ptr %.05.i.i.i.i.i263, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i264 = icmp eq ptr %i.bff, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i264, label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i265, label %bb.si

bb.si:                                            ; preds = %.lr.ph.i.i.i.i.i262
  %i.bfg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i263, i64 16
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !84
  %i.bfi = ptrtoint ptr %i.bfh to i64
  %i.bfj = ptrtoint ptr %i.bff to i64
  %i.bfk = sub i64 %i.bfi, %i.bfj
  call void @_ZdlPvm(ptr noundef nonnull %i.bff, i64 noundef %i.bfk) #34
  br label %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i265

_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i265: ; preds = %bb.si, %.lr.ph.i.i.i.i.i262
  %i.bfl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i263, i64 32 ; 2 uses
  %.not.i.i.i.i11.i = icmp eq ptr %i.bfl, %i.bfe
  br i1 %.not.i.i.i.i11.i, label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i266, label %.lr.ph.i.i.i.i.i262, !llvm.loop !0

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i266: ; preds = %_ZSt8_DestroyIN7xgboost7RegTree4FVecEEvPT_.exit.i.i.i.i.i265
  %.pr.i.i.i267 = load ptr, ptr %138, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i268

_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i268: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i266, %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i
  %i.bfm = phi ptr [ %.pr.i.i.i267, %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i266 ], [ %i.bfc, %_ZN7xgboost9predictor12_GLOBAL__N_112LaunchConfigIJNS1_11BlockPolicyENS1_21NullEncAccessorPolicyEEE12ForEachBatchIZZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clIS5_EEDaSL_EUlSL_E_EEvSL_.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i269 = icmp eq ptr %i.bfm, null
  br i1 %.not.i.i1.i.i.i269, label %_ZZNK7xgboost9predictor12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSI_11BlockPolicyENSI_21NullEncAccessorPolicyEEEEEEDaSF_.exit, label %bb.sj

bb.sj:                                            ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i268
  %i.bfn = getelementptr inbounds nuw i8, ptr %138, i64 16
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !149
  %i.bfp = ptrtoint ptr %i.bfo to i64
  %i.bfq = ptrtoint ptr %i.bfm to i64
  %i.bfr = sub i64 %i.bfp, %i.bfq
  call void @_ZdlPvm(ptr noundef nonnull %i.bfm, i64 noundef %i.bfr) #34
  br label %_ZZNK7xgboost9predictor12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSI_11BlockPolicyENSI_21NullEncAccessorPolicyEEEEEEDaSF_.exit

bb.sk:                                            ; preds = %bb.oc, %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i67, %.noexc.i.i.i.i270, %.noexc6.i64, %bb.jn, %.noexc4.i62, %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i61, %.noexc.i55, %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EEC2Ei.exit.i52
  %i.bfs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i53

.body.i53:                                        ; preds = %bb.sk, %.body54.i.i, %bb.ob, %bb.oa
  %eh.lpad-body.i54 = phi { ptr, i32 } [ %i.bfs, %bb.sk ], [ %.pn26.pn.i.i274, %.body54.i.i ], [ %.pn20.pn.pn.i.i72, %bb.oa ], [ %.pn20.pn.pn.i.i72, %bb.ob ]
  call fastcc void @_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm64EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %138) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #18
  br label %common.resume

_ZZNK7xgboost9predictor12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEENKUlOT_E_clINS0_12_GLOBAL__N_112LaunchConfigIJNSI_11BlockPolicyENSI_21NullEncAccessorPolicyEEEEEEDaSF_.exit: ; preds = %_ZSt8_DestroyIPN7xgboost7RegTree4FVecES2_EvT_S4_RSaIT0_E.exit.i.i.i268, %bb.sj
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #18
  br label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicyD2Ev.exit

bb.sl:                                            ; preds = %bb.a
  br i1 %.not23, label %bb.yn, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #18
  %i.bft = load ptr, ptr %1, align 8, !tbaa !64, !noalias !806
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 16
  %i.bfv = load ptr, ptr %i.bfu, align 8, !noalias !806
  %i.bfw = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.bfv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !806, !inline_history !622
  call void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %81, ptr noundef nonnull align 8 dereferenceable(248) %i.bfw)
  %i.bfx = load ptr, ptr %81, align 8, !tbaa !239 ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i282 = icmp eq ptr %i.bfz, null
  br i1 %.not.i.i.i.i282, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit286, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8 ; 4 uses
  %i.bgb = load atomic i64, ptr %i.bga acquire, align 8 ; 2 uses
  %i.bgc = icmp eq i64 %i.bgb, 4294967297
  %i.bgd = trunc i64 %i.bgb to i32                ; 2 uses
  br i1 %i.bgc, label %bb.so, label %bb.sp

bb.so:                                            ; preds = %bb.sn
  store i32 0, ptr %i.bga, align 8, !tbaa !242
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfz, i64 12
  store i32 0, ptr %i.bge, align 4, !tbaa !243
  %i.bgf = load ptr, ptr %i.bfz, align 8, !tbaa !64
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bgf, i64 16
  %i.bgh = load ptr, ptr %i.bgg, align 8
  call void %i.bgh(ptr noundef nonnull align 8 dereferenceable(16) %i.bfz) #18, !inline_history !623
  %i.bgi = load ptr, ptr %i.bfz, align 8, !tbaa !64
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 24
  %i.bgk = load ptr, ptr %i.bgj, align 8
  call void %i.bgk(ptr noundef nonnull align 8 dereferenceable(16) %i.bfz) #18, !inline_history !623
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit286

bb.sp:                                            ; preds = %bb.sn
  %i.bgl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i283 = icmp eq i8 %i.bgl, 0
  br i1 %.not.i.i.i.i.i283, label %bb.sr, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.bgm = add nsw i32 %i.bgd, -1
  store i32 %i.bgm, ptr %i.bga, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284

bb.sr:                                            ; preds = %bb.sp
  %i.bgn = atomicrmw volatile add ptr %i.bga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284: ; preds = %bb.sr, %bb.sq
  %.0.i.i.i.i.i.i285 = phi i32 [ %i.bgd, %bb.sq ], [ %i.bgn, %bb.sr ]
  %i.bgo = icmp eq i32 %.0.i.i.i.i.i.i285, 1
  br i1 %i.bgo, label %bb.ss, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit286, !prof !173

bb.ss:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfz) #18
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit286

_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit286: ; preds = %bb.sm, %bb.so, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284, %bb.ss
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #18
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bfx, i64 48
  %i.bgq = load i32, ptr %i.bgp, align 8, !tbaa !237
  %202 = icmp eq i32 %i.bgq, 0
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bfx, i64 72
  %i.bgs = load i8, ptr %i.bgr, align 8, !range !140
  %203 = trunc nuw i8 %i.bgs to i1
  %.not22 = select i1 %202, i1 true, i1 %203
  br i1 %.not22, label %bb.yn, label %bb.st

bb.st:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor14PredictDMatrixEPNS_7DMatrixEPSt6vectorIfSaIfEERKNS_3gbm11GBTreeModelEiiNS_6common15OptionalWeightsEEUlOT_E_EEvPKNS_7ContextES5_SD_SH_ENKUlPKS4_E_clESN_.exit286
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #18
  %i.bgt = load ptr, ptr %3, align 8, !tbaa !776, !nonnull !141, !align !244 ; 2 uses
  %i.bgu = load i32, ptr %i.bgt, align 4, !tbaa !83 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %80, i8 0, i64 24, i1 false)
  %.not.i.i287 = icmp eq i32 %i.bgu, 0
  br i1 %.not.i.i287, label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EEC2Ei.exit.i, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.bgv = sext i32 %i.bgu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %79, i8 0, i64 32, i1 false)
  invoke void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr null, i64 noundef %i.bgv, ptr noundef nonnull align 8 dereferenceable(25) %79)
          to label %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i292 unwind label %bb.sw

_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i292: ; preds = %bb.su
  %i.bgw = load ptr, ptr %79, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i.i6.i.i293 = icmp eq ptr %i.bgw, null
  br i1 %.not.i.i.i.i6.i.i293, label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i294, label %bb.sv

bb.sv:                                            ; preds = %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i292
  %i.bgx = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !84
  %i.bgz = ptrtoint ptr %i.bgy to i64
  %i.bha = ptrtoint ptr %i.bgw to i64
  %i.bhb = sub i64 %i.bgz, %i.bha
  call void @_ZdlPvm(ptr noundef nonnull %i.bgw, i64 noundef %i.bhb) #34
  br label %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i294

_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i294:         ; preds = %bb.sv, %_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EE6resizeEmRKS2_.exit.i.i292
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #18
  %.pre.i295 = load ptr, ptr %3, align 8, !tbaa !776
  br label %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EEC2Ei.exit.i

bb.sw:                                            ; preds = %bb.su
  %i.bhc = landingpad { ptr, i32 }
          cleanup
  %i.bhd = load ptr, ptr %79, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i.i7.i.i288 = icmp eq ptr %i.bhd, null
  br i1 %.not.i.i.i.i7.i.i288, label %.body495.thread, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.bhe = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.bhf = load ptr, ptr %i.bhe, align 8, !tbaa !84
  %i.bhg = ptrtoint ptr %i.bhf to i64
  %i.bhh = ptrtoint ptr %i.bhd to i64
  %i.bhi = sub i64 %i.bhg, %i.bhh
  call void @_ZdlPvm(ptr noundef nonnull %i.bhd, i64 noundef %i.bhi) #34
  br label %.body495.thread

.body495.thread:                                  ; preds = %bb.sw, %bb.sx
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #18
  call void @_ZNSt6vectorIN7xgboost7RegTree4FVecESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %80) #18
  br label %common.resume

_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EEC2Ei.exit.i: ; preds = %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i294, %bb.st
  %i.bhj = phi ptr [ %i.bgt, %bb.st ], [ %.pre.i295, %_ZN7xgboost7RegTree4FVecD2Ev.exit.i.i294 ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bhl = load ptr, ptr %i.bhk, align 8, !tbaa !777, !nonnull !141, !align !245 ; 5 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bhn = load ptr, ptr %i.bhm, align 8, !tbaa !778, !nonnull !141 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !779, !nonnull !141, !align !245 ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !780, !nonnull !141, !align !245 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0178.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #18
  %i.bhs = load ptr, ptr %1, align 8, !tbaa !64, !noalias !807
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhs, i64 16
  %i.bhu = load ptr, ptr %i.bht, align 8, !noalias !807
  %i.bhv = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.bhu(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i298 unwind label %bb.yj, !inline_history !710

.noexc.i298:                                      ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_19ThreadTmpILm1EEC2Ei.exit.i
  invoke void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %68, ptr noundef nonnull align 8 dereferenceable(248) %i.bhv)
          to label %.noexc3.i299 unwind label %bb.yj

.noexc3.i299:                                     ; preds = %.noexc.i298
  %i.bhw = load ptr, ptr %68, align 8, !tbaa !239
  %i.bhx = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i.i300 = icmp eq ptr %i.bhy, null
  br i1 %.not.i.i.i.i.i300, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i304, label %bb.sy

bb.sy:                                            ; preds = %.noexc3.i299
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 8 ; 4 uses
  %i.bia = load atomic i64, ptr %i.bhz acquire, align 8 ; 2 uses
  %i.bib = icmp eq i64 %i.bia, 4294967297
  %i.bic = trunc i64 %i.bia to i32                ; 2 uses
  br i1 %i.bib, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  store i32 0, ptr %i.bhz, align 8, !tbaa !242
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bhy, i64 12
  store i32 0, ptr %i.bid, align 4, !tbaa !243
  %i.bie = load ptr, ptr %i.bhy, align 8, !tbaa !64
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 16
  %i.big = load ptr, ptr %i.bif, align 8
  call void %i.big(ptr noundef nonnull align 8 dereferenceable(16) %i.bhy) #18, !inline_history !711
  %i.bih = load ptr, ptr %i.bhy, align 8, !tbaa !64
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bih, i64 24
  %i.bij = load ptr, ptr %i.bii, align 8
  call void %i.bij(ptr noundef nonnull align 8 dereferenceable(16) %i.bhy) #18, !inline_history !711
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i304

bb.ta:                                            ; preds = %bb.sy
  %i.bik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i301 = icmp eq i8 %i.bik, 0
  br i1 %.not.i.i.i.i.i.i301, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.bil = add nsw i32 %i.bic, -1
  store i32 %i.bil, ptr %i.bhz, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302

bb.tc:                                            ; preds = %bb.ta
  %i.bim = atomicrmw volatile add ptr %i.bhz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302: ; preds = %bb.tc, %bb.tb
  %.0.i.i.i.i.i.i.i303 = phi i32 [ %i.bic, %bb.tb ], [ %i.bim, %bb.tc ]
  %i.bin = icmp eq i32 %.0.i.i.i.i.i.i.i303, 1
  br i1 %i.bin, label %bb.td, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i304, !prof !173

bb.td:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhy) #18
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i304

_ZNK7xgboost7DMatrix4CatsEv.exit.i.i304:          ; preds = %bb.td, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i302, %bb.sz, %.noexc3.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #18
  invoke void @_ZNK7xgboost12CatContainer8HostViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.enc::detail::ColumnsViewImpl") align 8 %69, ptr noundef nonnull align 8 dereferenceable(73) %i.bhw)
          to label %.noexc4.i305 unwind label %bb.yj

.noexc4.i305:                                     ; preds = %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i304
  %.val.i.i306 = load ptr, ptr %i.bl, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %67, ptr noundef nonnull align 8 dereferenceable(40) %69, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #18, !noalias !808
  invoke void @_ZN7xgboost8cpu_impl15MakeCatAccessorEPKNS_7ContextERKN3enc6detail15ColumnsViewImplISt7variantIJNS4_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSA_IKaLm18446744073709551615EEENSA_IKtLm18446744073709551615EEENSA_IKsLm18446744073709551615EEENSA_IKjLm18446744073709551615EEENSA_IKiLm18446744073709551615EEENSA_IKmLm18446744073709551615EEENSA_IKlLm18446744073709551615EEEEEEEPKNS_12CatContainerE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.184") align 8 %66, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %67, ptr noundef %.val.i.i306)
          to label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i309 unwind label %bb.yj

_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i309: ; preds = %.noexc4.i305
  %i.bio = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.bip = load ptr, ptr %66, align 8, !tbaa !175, !noalias !808 ; 10 uses
  %i.biq = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !246, !noalias !808 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0178.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bio, i64 32, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #18, !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %67)
  %i.bis = load ptr, ptr %1, align 8, !tbaa !64
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bis, i64 136
  %i.biu = load ptr, ptr %i.bit, align 8
  %i.biv = invoke noundef zeroext i1 %i.biu(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc6.i310 unwind label %bb.yj, !inline_history !710

.noexc6.i310:                                     ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i309
  br i1 %i.biv, label %bb.vv, label %bb.te

bb.te:                                            ; preds = %.noexc6.i310
  %i.biw = load ptr, ptr %1, align 8, !tbaa !64
  %i.bix = load ptr, ptr %i.biw, align 8
  %i.biy = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.bix(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc7.i311 unwind label %bb.yj, !inline_history !710

.noexc7.i311:                                     ; preds = %bb.te
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 184
  %i.bja = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.biz)
          to label %.noexc8.i312 unwind label %bb.yj ; 3 uses

.noexc8.i312:                                     ; preds = %.noexc7.i311
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bja, i64 8 ; 2 uses
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !249 ; 2 uses
  %i.bjd = load ptr, ptr %i.bja, align 8, !tbaa !250 ; 3 uses
  %i.bje = ptrtoint ptr %i.bjc to i64             ; 2 uses
  %i.bjf = ptrtoint ptr %i.bjd to i64             ; 2 uses
  %i.bjg = sub i64 %i.bje, %i.bjf                 ; 4 uses
  %.not.i.i.i.i30.i.i313 = icmp eq ptr %i.bjc, %i.bjd
  br i1 %.not.i.i.i.i30.i.i313, label %bb.tg, label %bb.tf

bb.tf:                                            ; preds = %.noexc8.i312
  %i.bjh = icmp slt i64 %i.bjg, 0
  br i1 %i.bjh, label %.noexc.i.i.i.i423, label %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i314, !prof !173

.noexc.i.i.i.i423:                                ; preds = %bb.tf
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc9.i424 unwind label %bb.yj

.noexc9.i424:                                     ; preds = %.noexc.i.i.i.i423
  unreachable

_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i314: ; preds = %bb.tf
  %i.bji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bjg) #33
          to label %.noexc10.i315 unwind label %bb.yj

.noexc10.i315:                                    ; preds = %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i314
  %.pre.i.i316 = load ptr, ptr %i.bja, align 8, !tbaa !65 ; 2 uses
  %.pre227.i.i = load ptr, ptr %i.bjb, align 8, !tbaa !65
  %.pre228.i.i = ptrtoint ptr %.pre227.i.i to i64
end_hunk_2
begin_hunk_3_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_ZNS1_13LaunchPredictISF_EEvPKNS_7ContextES5_SC_SE_EUlPKS4_E_EEvSK_S5_SC_SE_OT0_:bb.a
  %31 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %32 = alloca %"class.xgboost::predictor::SparsePageView.429", align 8 ; 9 uses
  %33 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %34 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %35 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %36 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %37 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %38 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %39 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %40 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %41 = alloca %class.anon.583, align 8           ; 10 uses
  %42 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %43 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %44 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %45 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %46 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %47 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %48 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %49 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %50 = alloca %class.anon.578, align 8           ; 10 uses
  %51 = alloca %"class.std::tuple.184", align 8   ; 6 uses
  %52 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %53 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %.sroa.0151.i.i157 = alloca %"struct.enc::MappingView", align 8 ; 6 uses
  %54 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %55 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %56 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %57 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %58 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %59 = alloca %"class.xgboost::predictor::GHistIndexMatrixView", align 8 ; 13 uses
  %60 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %61 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %62 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %63 = alloca %"class.xgboost::predictor::SparsePageView", align 8 ; 10 uses
  %64 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %65 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %66 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %67 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %68 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %69 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %70 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %71 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %72 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %73 = alloca %class.anon.572, align 8           ; 10 uses
  %74 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %75 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %76 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %77 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %78 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %79 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %80 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %81 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %82 = alloca %class.anon.567, align 8           ; 10 uses
  %83 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %84 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 3 uses
  %85 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %86 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %87 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %88 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %89 = alloca %"class.xgboost::predictor::GHistIndexMatrixView.427", align 8 ; 12 uses
  %90 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %91 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %92 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %93 = alloca %"class.xgboost::predictor::SparsePageView.429", align 8 ; 9 uses
  %94 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %95 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %96 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %97 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %98 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %99 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %100 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %101 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %102 = alloca %class.anon.561, align 8          ; 10 uses
  %103 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %104 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %105 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %106 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %107 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %108 = alloca %"class.std::unique_ptr", align 8 ; 8 uses
  %109 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %110 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %111 = alloca %class.anon.556, align 8          ; 10 uses
  %112 = alloca %"class.std::tuple.184", align 8  ; 6 uses
  %113 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %114 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %.sroa.0151.i.i = alloca %"struct.enc::MappingView", align 8 ; 6 uses
  %115 = alloca %"struct.enc::detail::ColumnsViewImpl", align 8 ; 4 uses
  %116 = alloca %"class.xgboost::BatchSet", align 16 ; 7 uses
  %117 = alloca %"struct.xgboost::BatchParam", align 8 ; 8 uses
  %118 = alloca %"class.xgboost::BatchIterator", align 16 ; 9 uses
  %119 = alloca %"class.xgboost::BatchIterator", align 8 ; 8 uses
  %120 = alloca %"class.xgboost::predictor::GHistIndexMatrixView", align 8 ; 13 uses
  %121 = alloca %"class.xgboost::BatchSet.174", align 16 ; 7 uses
  %122 = alloca %"class.xgboost::BatchIterator.175", align 16 ; 9 uses
  %123 = alloca %"class.xgboost::BatchIterator.175", align 8 ; 8 uses
  %124 = alloca %"class.xgboost::predictor::SparsePageView", align 8 ; 10 uses
  %125 = alloca %"class.std::shared_ptr.140", align 8 ; 5 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1
  %i.t = load i64, ptr %i.s, align 8, !tbaa !166
  %i.u = load ptr, ptr %1, align 8, !tbaa !64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !192
  %i.z = mul i64 %i.y, %i.t
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !193
  %i.af = uitofp i64 %i.ae to double
  %i.ag = uitofp i64 %.sroa.speculated.i to double
  %i.ah = fdiv double %i.af, %i.ag
  %i.ai = fcmp ogt double %i.ah, 1.250000e-01
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !226
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !237
  %.not23 = icmp eq i32 %i.am, 0                  ; 2 uses
  br i1 %i.ai, label %bb.b, label %bb.jj

bb.b:                                             ; preds = %bb.a
  br i1 %.not23, label %bb.el, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #18
  %i.an = load ptr, ptr %1, align 8, !tbaa !64, !noalias !1738
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1738
  %i.aq = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !1738, !inline_history !1604
  call void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %125, ptr noundef nonnull align 8 dereferenceable(248) %i.aq)
  %i.ar = load ptr, ptr %125, align 8, !tbaa !239 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %125, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.au, align 8, !tbaa !242
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !243
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #18, !inline_history !1605
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #18, !inline_history !1605
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit

bb.f:                                             ; preds = %bb.d
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.g ], [ %i.bh, %bb.h ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.i, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit, !prof !173

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #18
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit

_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !237
  %126 = icmp eq i32 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.bm = load i8, ptr %i.bl, align 8, !range !140
  %127 = trunc nuw i8 %i.bm to i1
  %.not25 = select i1 %126, i1 true, i1 %127
  br i1 %.not25, label %bb.el, label %bb.j

bb.j:                                             ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit
  %i.bn = load ptr, ptr %3, align 8, !tbaa !1740, !nonnull !141, !align !245 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1741, !nonnull !141, !align !244 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1742, !nonnull !141, !align !244 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1743, !nonnull !141, !align !245 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1744, !nonnull !141, !align !245 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1745, !nonnull !141, !align !244 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %115)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0151.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #18
  %i.by = load ptr, ptr %1, align 8, !tbaa !64, !noalias !1746
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !1746
  %i.cb = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.ej, !inline_history !1608

.noexc:                                           ; preds = %bb.j
  invoke void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %114, ptr noundef nonnull align 8 dereferenceable(248) %i.cb)
          to label %.noexc39 unwind label %bb.ej

.noexc39:                                         ; preds = %.noexc
  %i.cc = load ptr, ptr %114, align 8, !tbaa !239
  %i.cd = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i38, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc39
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.cf, align 8, !tbaa !242
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !243
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18, !inline_history !1609
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18, !inline_history !1609
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ci, %bb.n ], [ %i.cs, %bb.o ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ct, label %bb.p, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i, !prof !173

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i

_ZNK7xgboost7DMatrix4CatsEv.exit.i.i:             ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #18
  invoke void @_ZNK7xgboost12CatContainer8HostViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.enc::detail::ColumnsViewImpl") align 8 %115, ptr noundef nonnull align 8 dereferenceable(73) %i.cc)
          to label %.noexc40 unwind label %bb.ej

.noexc40:                                         ; preds = %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i
  %.val.i.i = load ptr, ptr %i.aj, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %113)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %113, ptr noundef nonnull align 8 dereferenceable(40) %115, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #18, !noalias !1747
  invoke void @_ZN7xgboost8cpu_impl15MakeCatAccessorEPKNS_7ContextERKN3enc6detail15ColumnsViewImplISt7variantIJNS4_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSA_IKaLm18446744073709551615EEENSA_IKtLm18446744073709551615EEENSA_IKsLm18446744073709551615EEENSA_IKjLm18446744073709551615EEENSA_IKiLm18446744073709551615EEENSA_IKmLm18446744073709551615EEENSA_IKlLm18446744073709551615EEEEEEEPKNS_12CatContainerE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.184") align 8 %112, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %113, ptr noundef %.val.i.i)
          to label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i unwind label %bb.ej

_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i: ; preds = %.noexc40
  %i.cu = getelementptr inbounds nuw i8, ptr %112, i64 24
  %i.cv = load ptr, ptr %112, align 8, !tbaa !175, !noalias !1747 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %112, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !246, !noalias !1747 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0151.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #18, !noalias !1747
  call void @llvm.lifetime.end.p0(ptr nonnull %113)
  %i.cy = load ptr, ptr %1, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 136
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc42 unwind label %bb.ej, !inline_history !1608

.noexc42:                                         ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i
  br i1 %i.db, label %bb.cd, label %bb.q

bb.q:                                             ; preds = %.noexc42
  %i.dc = load ptr, ptr %1, align 8, !tbaa !64
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc43 unwind label %bb.ej, !inline_history !1608

.noexc43:                                         ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 184
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %.noexc44 unwind label %bb.ej  ; 3 uses

.noexc44:                                         ; preds = %.noexc43
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !249 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !250 ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 4 uses
  %.not.i.i.i.i30.i.i = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i.i.i30.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc44
  %i.dn = icmp slt i64 %i.dm, 0
  br i1 %i.dn, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !173

.noexc.i.i.i.i:                                   ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc45 unwind label %bb.ej

.noexc45:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.r
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #33
          to label %.noexc46 unwind label %bb.ej

.noexc46:                                         ; preds = %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.dg, align 8, !tbaa !65 ; 2 uses
  %.pre188.i.i = load ptr, ptr %i.dh, align 8, !tbaa !65
  %.pre189.i.i = ptrtoint ptr %.pre188.i.i to i64
  %.pre190.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %bb.s

bb.s:                                             ; preds = %.noexc46, %.noexc44
  %.pre-phi191.i.i = phi i64 [ %.pre190.i.i, %.noexc46 ], [ %i.dl, %.noexc44 ]
  %.pre-phi.i.i = phi i64 [ %.pre189.i.i, %.noexc46 ], [ %i.dk, %.noexc44 ]
  %i.dp = phi ptr [ %.pre.i.i, %.noexc46 ], [ %i.dj, %.noexc44 ] ; 2 uses
  %i.dq = phi ptr [ %i.do, %.noexc46 ], [ null, %.noexc44 ] ; 7 uses
  %i.dr = sub i64 %.pre-phi.i.i, %.pre-phi191.i.i ; 4 uses
  %i.ds = icmp sgt i64 %i.dr, 1
  br i1 %i.ds, label %bb.t, label %bb.u, !prof !70

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dp, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.dt = icmp eq i64 %i.dr, 1
  br i1 %i.dt, label %bb.v, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.du = load i8, ptr %i.dp, align 1, !tbaa !252
  store i8 %i.du, ptr %i.dq, align 1, !tbaa !252
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #18
  %i.dv = getelementptr inbounds nuw i8, ptr %117, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %117, i8 0, i64 48, i1 false)
  store double +qnan, ptr %i.dv, align 8, !tbaa !255
  %i.dw = getelementptr inbounds nuw i8, ptr %117, i64 40
  store i8 1, ptr %i.dw, align 8, !tbaa !256
  %i.dx = getelementptr inbounds nuw i8, ptr %117, i64 44
  store i32 3, ptr %i.dx, align 4, !tbaa !257
  %i.dy = load ptr, ptr %1, align 8, !tbaa !64, !noalias !1748
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !1748
  invoke void %i.ea(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %116, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %117)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i unwind label %bb.av, !inline_history !2

_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i: ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %i.eb = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %116, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !240, !noalias !1749 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %116, align 16, !tbaa !65, !noalias !1749
  store <2 x ptr> %i.ee, ptr %118, align 16, !tbaa !65, !alias.scope !1749
  %.not.i.i.i.i.i31.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i31.i.i, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i, label %bb.w

end_hunk_3
begin_hunk_4_@_ZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIRZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_ZNS1_13LaunchPredictISF_EEvPKNS_7ContextES5_SC_SE_EUlPKS4_E_EEvSK_S5_SC_SE_OT0_:bb.a
  %.not.i15.i.i.i103.i.i = icmp eq ptr %.pr20.i.i.i102.i.i, null
  br i1 %.not.i15.i.i.i103.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i104.i.i, label %bb.ix

bb.ix:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i101.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %67) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i104.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i104.i.i: ; preds = %bb.ix, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.i.i.i101.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit14.thread.i.i.i105.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #18
  br label %.sink.split.i.i.i91.i.i

bb.iy:                                            ; preds = %bb.iv
  %i.abs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i82.i.i unwind label %bb.ja

bb.iz:                                            ; preds = %bb.iq
  %i.abt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i82.i.i unwind label %bb.ja

.sink.split.i.i.i91.i.i:                          ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit16.i.i.i104.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit12.i.i.i89.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i114.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i108.i.i
  %i.abu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.xk) #18 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZZZNKS2_9predictor12CPUPredictor11PredictLeafEPNS2_7DMatrixEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEiENKUlOT_E_clINS5_12_GLOBAL__N_112LaunchConfigIJNSK_11BlockPolicyENSK_21NullEncAccessorPolicyEEEEEEDaSH_ENKUlSH_E_clINS5_14SparsePageViewINS2_12NoOpAccessorEEEEEDaSH_EUlSH_E_EEvT0_iOT1_EUlSG_E_JmEEEvSG_DpT0_.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i92.i.i

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.abv = landingpad { ptr, i32 }
          catch ptr null
  %i.abw = extractvalue { ptr, i32 } %i.abv, 0
  call void @__clang_call_terminate(ptr %i.abw) #35
  unreachable

_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZZZNKS2_9predictor12CPUPredictor11PredictLeafEPNS2_7DMatrixEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEiENKUlOT_E_clINS5_12_GLOBAL__N_112LaunchConfigIJNSK_11BlockPolicyENSK_21NullEncAccessorPolicyEEEEEEDaSH_ENKUlSH_E_clINS5_14SparsePageViewINS2_12NoOpAccessorEEEEEDaSH_EUlSH_E_EEvT0_iOT1_EUlSG_E_JmEEEvSG_DpT0_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i91.i.i, %.lr.ph111.i.i.i.i80.i.i
  %i.abx = add nuw i64 %.060110.i.i.i.i81.i.i, 1  ; 2 uses
  %exitcond144.not.i.i.i.i94.i.i = icmp eq i64 %i.abx, %i.aah
  br i1 %exitcond144.not.i.i.i.i94.i.i, label %bb.jb, label %.lr.ph111.i.i.i.i80.i.i, !llvm.loop !1670

bb.jb:                                            ; preds = %_ZN4dmlc12OMPException3RunIZN7xgboost6common13ParallelFor1dILm1EmZZZNKS2_9predictor12CPUPredictor11PredictLeafEPNS2_7DMatrixEPNS2_16HostDeviceVectorIfEERKNS2_3gbm11GBTreeModelEiENKUlOT_E_clINS5_12_GLOBAL__N_112LaunchConfigIJNSK_11BlockPolicyENSK_21NullEncAccessorPolicyEEEEEEDaSH_ENKUlSH_E_clINS5_14SparsePageViewINS2_12NoOpAccessorEEEEEDaSH_EUlSH_E_EEvT0_iOT1_EUlSG_E_JmEEEvSG_DpT0_.exit.i.i.i.i
  %.pr84.pr.i.i.i.i95.i.i = load ptr, ptr %72, align 8, !tbaa !290 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  %.not.i77.i.i.i.i96.i.i = icmp eq ptr %.pr84.pr.i.i.i.i95.i.i, null
  br i1 %.not.i77.i.i.i.i96.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i99.i.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i97.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i97.i.i: ; preds = %bb.jb
  store ptr %.pr84.pr.i.i.i.i95.i.i, ptr %69, align 8, !tbaa !290
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %69) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %69) #32
          to label %bb.jc unwind label %bb.jd

bb.jc:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i97.i.i
  unreachable

bb.jd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i.i.i.i97.i.i
  %i.aby = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abz = load ptr, ptr %69, align 8, !tbaa !290
  %.not.i2.i.i.i.i.i98.i.i = icmp eq ptr %i.abz, null
  br i1 %.not.i2.i.i.i.i.i98.i.i, label %.body.i.i.i.i82.i.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %69) #18
  br label %.body.i.i.i.i82.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i99.i.i:    ; preds = %bb.jb, %.thread.i.i.i116.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #18
  br label %.loopexit150.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i92.i.i: ; preds = %.sink.split.i.i.i91.i.i
  %lpad.loopexit.split-lp139.i.i.i.i93.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i82.i.i

.body.i.i.i.i82.i.i:                              ; preds = %bb.it, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i92.i.i, %bb.je, %bb.jd, %bb.iz, %bb.iy
  %eh.lpad-body.i.i.i.i83.i.i = phi { ptr, i32 } [ %i.aby, %bb.jd ], [ %i.aby, %bb.je ], [ %lpad.loopexit.split-lp139.i.i.i.i93.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i.i.i92.i.i ], [ %i.abs, %bb.iy ], [ %i.abt, %bb.iz ], [ %i.abb, %bb.it ]
  %i.aca = load ptr, ptr %72, align 8, !tbaa !290
  %.not.i.i79.i.i.i.i84.i.i = icmp eq ptr %i.aca, null
  br i1 %.not.i.i79.i.i.i.i84.i.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i85.i.i, label %bb.jf

bb.jf:                                            ; preds = %.body.i.i.i.i82.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %72) #18
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i85.i.i

_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i85.i.i:  ; preds = %bb.jf, %.body.i.i.i.i82.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #18
  br label %.body140.i.i

bb.jg:                                            ; preds = %bb.ik
  %i.acb = landingpad { ptr, i32 }
          catch ptr null
  %i.acc = extractvalue { ptr, i32 } %i.acb, 0
  call void @__clang_call_terminate(ptr %i.acc) #35
  unreachable

.loopexit150.i.i:                                 ; preds = %.noexc138.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit.i.i.i.i99.i.i, %.preheader.i.i.i.i133.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #18
  %i.acd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEEppEv(ptr noundef nonnull align 8 dereferenceable(16) %91)
          to label %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i146 unwind label %bb.jh ; 0 uses

bb.jh:                                            ; preds = %.loopexit150.i.i, %bb.ie, %_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv.exit.i.i146
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph119.i.i.i.i135.i.i, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i.i.i.i117.i.i, %.noexc72.i.i, %bb.if
  %lpad.loopexit.split-lp419 = landingpad { ptr, i32 }
          cleanup
  br label %.body140.i.i

.body140.i.i:                                     ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i85.i.i, %bb.il
  %eh.lpad-body141.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i120.i.i, %bb.il ], [ %eh.lpad-body.i.i.i.i83.i.i, %_ZN4dmlc12OMPExceptionD2Ev.exit81.i.i.i.i85.i.i ], [ %lpad.loopexit.split-lp419, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #18
  br label %bb.ji

bb.ji:                                            ; preds = %.body140.i.i, %bb.jh
  %.pn26.i.i147 = phi { ptr, i32 } [ %i.ace, %bb.jh ], [ %eh.lpad-body141.i.i, %.body140.i.i ]
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %92) #18
  br label %.body56.i.i

.body56.i.i:                                      ; preds = %bb.ji, %bb.hj
  %.pn26.pn.i.i142 = phi { ptr, i32 } [ %.pn26.i.i147, %bb.ji ], [ %i.xl, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #18
  call void @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %91) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #18
  call void @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %90) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #18
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.ek, %.body383, %bb.os, %bb.rl, %bb.rm, %.body56.i.i508, %bb.hd, %bb.he, %.body56.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn20.pn.pn.i.i403, %bb.rm ], [ %.pn20.pn.pn.i.i61, %bb.he ], [ %.pn26.pn.i.i142, %.body56.i.i ], [ %.pn20.pn.pn.i.i61, %bb.hd ], [ %.pn26.pn.i.i509, %.body56.i.i508 ], [ %.pn20.pn.pn.i.i403, %bb.rl ], [ %eh.lpad-body, %bb.ek ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body384, %.body383 ], [ %eh.lpad-body384, %bb.os ]
  resume { ptr, i32 } %common.resume.op

bb.jj:                                            ; preds = %bb.a
  br i1 %.not23, label %bb.ot, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #18
  %i.acf = load ptr, ptr %1, align 8, !tbaa !64, !noalias !1768
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8, !noalias !1768
  %i.aci = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.ach(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !1768, !inline_history !1604
  call void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %64, ptr noundef nonnull align 8 dereferenceable(248) %i.aci)
  %i.acj = load ptr, ptr %64, align 8, !tbaa !239 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i152 = icmp eq ptr %i.acl, null
  br i1 %.not.i.i.i.i152, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit156, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8 ; 4 uses
  %i.acn = load atomic i64, ptr %i.acm acquire, align 8 ; 2 uses
  %i.aco = icmp eq i64 %i.acn, 4294967297
  %i.acp = trunc i64 %i.acn to i32                ; 2 uses
  br i1 %i.aco, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  store i32 0, ptr %i.acm, align 8, !tbaa !242
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acl, i64 12
  store i32 0, ptr %i.acq, align 4, !tbaa !243
  %i.acr = load ptr, ptr %i.acl, align 8, !tbaa !64
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  %i.act = load ptr, ptr %i.acs, align 8
  call void %i.act(ptr noundef nonnull align 8 dereferenceable(16) %i.acl) #18, !inline_history !1605
  %i.acu = load ptr, ptr %i.acl, align 8, !tbaa !64
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 24
  %i.acw = load ptr, ptr %i.acv, align 8
  call void %i.acw(ptr noundef nonnull align 8 dereferenceable(16) %i.acl) #18, !inline_history !1605
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit156

bb.jn:                                            ; preds = %bb.jl
  %i.acx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i153 = icmp eq i8 %i.acx, 0
  br i1 %.not.i.i.i.i.i153, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.acy = add nsw i32 %i.acp, -1
  store i32 %i.acy, ptr %i.acm, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i154

bb.jp:                                            ; preds = %bb.jn
  %i.acz = atomicrmw volatile add ptr %i.acm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i154

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i154: ; preds = %bb.jp, %bb.jo
  %.0.i.i.i.i.i.i155 = phi i32 [ %i.acp, %bb.jo ], [ %i.acz, %bb.jp ]
  %i.ada = icmp eq i32 %.0.i.i.i.i.i.i155, 1
  br i1 %i.ada, label %bb.jq, label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit156, !prof !173

bb.jq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i154
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acl) #18
  br label %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit156

_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit156: ; preds = %bb.jk, %bb.jm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i154, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #18
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  %i.adc = load i32, ptr %i.adb, align 8, !tbaa !237
  %128 = icmp eq i32 %i.adc, 0
  %i.add = getelementptr inbounds nuw i8, ptr %i.acj, i64 72
  %i.ade = load i8, ptr %i.add, align 8, !range !140
  %129 = trunc nuw i8 %i.ade to i1
  %.not22 = select i1 %128, i1 true, i1 %129
  br i1 %.not22, label %bb.ot, label %bb.jr

bb.jr:                                            ; preds = %_ZZN7xgboost9predictor12_GLOBAL__N_113LaunchPredictIZNKS0_12CPUPredictor11PredictLeafEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiEUlOT_E_EEvPKNS_7ContextES5_SC_SE_ENKUlPKS4_E_clESK_.exit156
  %i.adf = load ptr, ptr %3, align 8, !tbaa !1740, !nonnull !141, !align !245 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !1741, !nonnull !141, !align !244 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !1742, !nonnull !141, !align !244 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !1743, !nonnull !141, !align !245 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !1744, !nonnull !141, !align !245 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !1745, !nonnull !141, !align !244 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0151.i.i157)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18
  %i.adq = load ptr, ptr %1, align 8, !tbaa !64, !noalias !1769
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %i.ads = load ptr, ptr %i.adr, align 8, !noalias !1769
  %i.adt = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.ads(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc373 unwind label %bb.or, !inline_history !1675

.noexc373:                                        ; preds = %bb.jr
  invoke void @_ZNK7xgboost8MetaInfo10CatsSharedEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.140") align 8 %53, ptr noundef nonnull align 8 dereferenceable(248) %i.adt)
          to label %.noexc374 unwind label %bb.or

.noexc374:                                        ; preds = %.noexc373
  %i.adu = load ptr, ptr %53, align 8, !tbaa !239
  %i.adv = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !240 ; 8 uses
  %.not.i.i.i.i.i158 = icmp eq ptr %i.adw, null
  br i1 %.not.i.i.i.i.i158, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i162, label %bb.js

bb.js:                                            ; preds = %.noexc374
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 8 ; 4 uses
  %i.ady = load atomic i64, ptr %i.adx acquire, align 8 ; 2 uses
  %i.adz = icmp eq i64 %i.ady, 4294967297
  %i.aea = trunc i64 %i.ady to i32                ; 2 uses
  br i1 %i.adz, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  store i32 0, ptr %i.adx, align 8, !tbaa !242
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adw, i64 12
  store i32 0, ptr %i.aeb, align 4, !tbaa !243
  %i.aec = load ptr, ptr %i.adw, align 8, !tbaa !64
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %i.aee = load ptr, ptr %i.aed, align 8
  call void %i.aee(ptr noundef nonnull align 8 dereferenceable(16) %i.adw) #18, !inline_history !1676
  %i.aef = load ptr, ptr %i.adw, align 8, !tbaa !64
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 24
  %i.aeh = load ptr, ptr %i.aeg, align 8
  call void %i.aeh(ptr noundef nonnull align 8 dereferenceable(16) %i.adw) #18, !inline_history !1676
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i162

bb.ju:                                            ; preds = %bb.js
  %i.aei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i159 = icmp eq i8 %i.aei, 0
  br i1 %.not.i.i.i.i.i.i159, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aej = add nsw i32 %i.aea, -1
  store i32 %i.aej, ptr %i.adx, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i160

bb.jw:                                            ; preds = %bb.ju
  %i.aek = atomicrmw volatile add ptr %i.adx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i160

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i160: ; preds = %bb.jw, %bb.jv
  %.0.i.i.i.i.i.i.i161 = phi i32 [ %i.aea, %bb.jv ], [ %i.aek, %bb.jw ]
  %i.ael = icmp eq i32 %.0.i.i.i.i.i.i.i161, 1
  br i1 %i.ael, label %bb.jx, label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i162, !prof !173

bb.jx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i160
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adw) #18
  br label %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i162

_ZNK7xgboost7DMatrix4CatsEv.exit.i.i162:          ; preds = %bb.jx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i160, %bb.jt, %.noexc374
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18
  invoke void @_ZNK7xgboost12CatContainer8HostViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.enc::detail::ColumnsViewImpl") align 8 %54, ptr noundef nonnull align 8 dereferenceable(73) %i.adu)
          to label %.noexc375 unwind label %bb.or

.noexc375:                                        ; preds = %_ZNK7xgboost7DMatrix4CatsEv.exit.i.i162
  %.val.i.i163 = load ptr, ptr %i.aj, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %52, ptr noundef nonnull align 8 dereferenceable(40) %54, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18, !noalias !1770
  invoke void @_ZN7xgboost8cpu_impl15MakeCatAccessorEPKNS_7ContextERKN3enc6detail15ColumnsViewImplISt7variantIJNS4_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSA_IKaLm18446744073709551615EEENSA_IKtLm18446744073709551615EEENSA_IKsLm18446744073709551615EEENSA_IKjLm18446744073709551615EEENSA_IKiLm18446744073709551615EEENSA_IKmLm18446744073709551615EEENSA_IKlLm18446744073709551615EEEEEEEPKNS_12CatContainerE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.184") align 8 %51, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef %.val.i.i163)
          to label %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i165 unwind label %bb.or

_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i165: ; preds = %.noexc375
  %i.aem = getelementptr inbounds nuw i8, ptr %51, i64 24
  %i.aen = load ptr, ptr %51, align 8, !tbaa !175, !noalias !1770 ; 10 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !246, !noalias !1770 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0151.i.i157, ptr noundef nonnull align 8 dereferenceable(32) %i.aem, i64 32, i1 false), !tbaa.struct !247
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18, !noalias !1770
  call void @llvm.lifetime.end.p0(ptr nonnull %52)
  %i.aeq = load ptr, ptr %1, align 8, !tbaa !64
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 136
  %i.aes = load ptr, ptr %i.aer, align 8
  %i.aet = invoke noundef zeroext i1 %i.aes(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc377 unwind label %bb.or, !inline_history !1675

.noexc377:                                        ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_117EncAccessorPolicy12MakeAccessorEPKNS_7ContextEN3enc6detail15ColumnsViewImplISt7variantIJNS6_15CatStrArrayViewENS_6common4SpanIKhLm18446744073709551615EEENSC_IKaLm18446744073709551615EEENSC_IKtLm18446744073709551615EEENSC_IKsLm18446744073709551615EEENSC_IKjLm18446744073709551615EEENSC_IKiLm18446744073709551615EEENSC_IKmLm18446744073709551615EEENSC_IKlLm18446744073709551615EEEEEEERKNS_3gbm11GBTreeModelE.exit.i.i165
  br i1 %i.aet, label %bb.ml, label %bb.jy

bb.jy:                                            ; preds = %.noexc377
  %i.aeu = load ptr, ptr %1, align 8, !tbaa !64
  %i.aev = load ptr, ptr %i.aeu, align 8
  %i.aew = invoke noundef nonnull align 8 dereferenceable(248) ptr %i.aev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc378 unwind label %bb.or, !inline_history !1675

.noexc378:                                        ; preds = %bb.jy
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 184
  %i.aey = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorINS_11FeatureTypeEE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aex)
          to label %.noexc379 unwind label %bb.or ; 3 uses

.noexc379:                                        ; preds = %.noexc378
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8 ; 2 uses
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !249 ; 2 uses
  %i.afb = load ptr, ptr %i.aey, align 8, !tbaa !250 ; 3 uses
  %i.afc = ptrtoint ptr %i.afa to i64             ; 2 uses
  %i.afd = ptrtoint ptr %i.afb to i64             ; 2 uses
  %i.afe = sub i64 %i.afc, %i.afd                 ; 4 uses
  %.not.i.i.i.i30.i.i166 = icmp eq ptr %i.afa, %i.afb
  br i1 %.not.i.i.i.i30.i.i166, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %.noexc379
  %i.aff = icmp slt i64 %i.afe, 0
  br i1 %i.aff, label %.noexc.i.i.i.i276, label %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i167, !prof !173

.noexc.i.i.i.i276:                                ; preds = %bb.jz
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc380 unwind label %bb.or

.noexc380:                                        ; preds = %.noexc.i.i.i.i276
  unreachable

_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i167: ; preds = %bb.jz
  %i.afg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afe) #33
          to label %.noexc381 unwind label %bb.or

.noexc381:                                        ; preds = %_ZNSt15__new_allocatorIN7xgboost11FeatureTypeEE8allocateEmPKv.exit.i.i.i.i.i.i167
  %.pre.i.i168 = load ptr, ptr %i.aey, align 8, !tbaa !65 ; 2 uses
  %.pre188.i.i169 = load ptr, ptr %i.aez, align 8, !tbaa !65
  %.pre189.i.i170 = ptrtoint ptr %.pre188.i.i169 to i64
  %.pre190.i.i171 = ptrtoint ptr %.pre.i.i168 to i64
  br label %bb.ka

bb.ka:                                            ; preds = %.noexc381, %.noexc379
  %.pre-phi191.i.i172 = phi i64 [ %.pre190.i.i171, %.noexc381 ], [ %i.afd, %.noexc379 ]
  %.pre-phi.i.i173 = phi i64 [ %.pre189.i.i170, %.noexc381 ], [ %i.afc, %.noexc379 ]
  %i.afh = phi ptr [ %.pre.i.i168, %.noexc381 ], [ %i.afb, %.noexc379 ] ; 2 uses
  %i.afi = phi ptr [ %i.afg, %.noexc381 ], [ null, %.noexc379 ] ; 7 uses
  %i.afj = sub i64 %.pre-phi.i.i173, %.pre-phi191.i.i172 ; 4 uses
  %i.afk = icmp sgt i64 %i.afj, 1
  br i1 %i.afk, label %bb.kb, label %bb.kc, !prof !70

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.afi, ptr align 1 %i.afh, i64 %i.afj, i1 false)
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i174

bb.kc:                                            ; preds = %bb.ka
  %i.afl = icmp eq i64 %i.afj, 1
  br i1 %i.afl, label %bb.kd, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i174

bb.kd:                                            ; preds = %bb.kc
  %i.afm = load i8, ptr %i.afh, align 1, !tbaa !252
  store i8 %i.afm, ptr %i.afi, align 1, !tbaa !252
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i174

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i174: ; preds = %bb.kd, %bb.kc, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #18
  %i.afn = getelementptr inbounds nuw i8, ptr %56, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %56, i8 0, i64 48, i1 false)
  store double +qnan, ptr %i.afn, align 8, !tbaa !255
  %i.afo = getelementptr inbounds nuw i8, ptr %56, i64 40
  store i8 1, ptr %i.afo, align 8, !tbaa !256
  %i.afp = getelementptr inbounds nuw i8, ptr %56, i64 44
  store i32 3, ptr %i.afp, align 4, !tbaa !257
  %i.afq = load ptr, ptr %1, align 8, !tbaa !64, !noalias !1771
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 104
  %i.afs = load ptr, ptr %i.afr, align 8, !noalias !1771
  invoke void %i.afs(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::BatchSet") align 8 %55, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %56)
          to label %_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i179 unwind label %bb.ld, !inline_history !2

_ZN7xgboost7DMatrix10GetBatchesINS_16GHistIndexMatrixEEENS_8BatchSetIT_EEPKNS_7ContextERKNS_10BatchParamE.exit.i.i179: ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2ERKS3_.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !1772)
  %i.aft = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.afu = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !240, !noalias !1772 ; 2 uses
  %i.afw = load <2 x ptr>, ptr %55, align 16, !tbaa !65, !noalias !1772
  store <2 x ptr> %i.afw, ptr %57, align 16, !tbaa !65, !alias.scope !1772
  %.not.i.i.i.i.i31.i.i180 = icmp eq ptr %i.afv, null
  br i1 %.not.i.i.i.i.i31.i.i180, label %_ZN7xgboost8BatchSetINS_16GHistIndexMatrixEE5beginEv.exit.i.i182, label %bb.ke

end_hunk_4
