Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/auc?download=true
inline.NumInlined: 2442
inline.NumDeleted: 966
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsE:bb.a
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bu, i64 1
  %i.ca = fmul <2 x float> %i.bx, %i.bz
  %i.cb = fpext <2 x float> %i.ca to <2 x double>
  %i.cc = fadd <2 x double> %i.bp, %i.cb
  %i.cd = or disjoint i64 %storemerge54, 1        ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !40
  %i.cg = mul i64 %i.j, %i.cd
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !40 ; 2 uses
  %i.cj = fsub float 1.000000e+00, %i.ci
  %i.ck = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.ci, i64 1
  %i.co = fmul <2 x float> %i.cl, %i.cn
  %i.cp = fpext <2 x float> %i.co to <2 x double>
  %i.cq = fadd <2 x double> %i.cc, %i.cp          ; 3 uses
  %i.cr = add nuw i64 %storemerge54, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit124.unr-lcssa, label %.lr.ph.split, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph.split.preheader
  call void @_ZSt9terminatev() #35
  unreachable

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %._crit_edge
  %.sroa.034.0.copyload = load i64, ptr %4, align 8, !tbaa !38 ; 2 uses
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.335.0.copyload = load ptr, ptr %.sroa.335.0..sroa_idx, align 8, !tbaa !13 ; 2 uses
  %.sroa.042.0.copyload = load i64, ptr %5, align 8, !tbaa !15 ; 3 uses
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.243.0.copyload = load ptr, ptr %.sroa.243.0..sroa_idx, align 8, !tbaa !13 ; 2 uses
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.344.0.copyload = load float, ptr %.sroa.344.0..sroa_idx, align 8, !tbaa !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11, !noalias !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11, !noalias !62
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15, !noalias !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11, !noalias !62
  store i64 %2, ptr %i.b, align 8, !tbaa !15, !noalias !62
  %i.cs = icmp eq i64 %i.e, %2
  br i1 %i.cs, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !62
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc14 unwind label %bb.u

.noexc14:                                         ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  %.pr21.i = load ptr, ptr %6, align 8, !tbaa !31, !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11, !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11, !noalias !62
  %.not26.i = icmp eq ptr %.pr21.i, null
  br i1 %.not26.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i, label %bb.d

bb.d:                                             ; preds = %.noexc14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11, !noalias !62
  %i.ct = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc53.i unwind label %bb.e, !noalias !62

.noexc53.i:                                       ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ct, ptr noundef nonnull @.str, i32 noundef 41)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit55.i unwind label %bb.e, !noalias !62

_ZN4dmlc15LogMessageFatalC2EPKci.exit55.i:        ; preds = %.noexc53.i
  %i.cu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit57.i unwind label %bb.f, !noalias !62 ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit57.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit55.i
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i unwind label %bb.f, !noalias !62 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit57.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull @.str.35, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61.i unwind label %bb.f, !noalias !62 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i
  %i.cx = load ptr, ptr %6, align 8, !tbaa !31, !noalias !62 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33, !noalias !62
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !37, !noalias !62
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cy, i64 noundef %i.da)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63.i unwind label %bb.f, !noalias !62

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61.i
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65.i unwind label %bb.f, !noalias !62 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.e, !noalias !62

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65.i, %.noexc53.i, %bb.d
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit57.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit55.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %bb.t, !noalias !62

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn40.i = phi { ptr, i32 } [ %i.dd, %bb.e ], [ %i.de, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !62
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #11, !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !62
  br label %.body

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11, !noalias !62
  %.pr22.i = load ptr, ptr %6, align 8, !tbaa !31, !noalias !62 ; 4 uses
  %.not.i66.i = icmp eq ptr %.pr22.i, null
  br i1 %.not.i66.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = load ptr, ptr %.pr22.i, align 8, !tbaa !33, !noalias !62 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr22.i, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67.i: ; preds = %bb.i
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !38, !noalias !62
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #32, !noalias !62
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr22.i, i64 noundef 32) #32, !noalias !62
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i68.i, %bb.h, %.noexc14, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11, !noalias !62
  %i.dk = load ptr, ptr %8, align 8, !tbaa !23, !noalias !62 ; 4 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !15, !noalias !62 ; 3 uses
  %i.dm = mul i64 %i.dl, %.sroa.034.0.copyload
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.335.0.copyload, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !40, !noalias !62 ; 2 uses
  %i.dp = icmp eq i64 %.sroa.042.0.copyload, 0    ; 2 uses
  br i1 %i.dp, label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i
  %i.dq = icmp ult i64 %i.dl, %.sroa.042.0.copyload
  br i1 %i.dq, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, label %bb.k, !prof !43

bb.k:                                             ; preds = %bb.j
  call void @_ZSt9terminatev() #35, !noalias !62
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.243.0.copyload, i64 %i.dl
  %.in.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i = load float, ptr %i.dr, align 4, !tbaa !40, !noalias !62
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i

_ZNK7xgboost6common15OptionalWeightsixEm.exit.i:  ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.in.i.i.sroa.speculated = phi float [ %.in.i.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ], [ %.sroa.344.0.copyload, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit70.i ] ; 2 uses
  %i.ds = fpext float %i.do to double
  %i.dt = fsub double 1.000000e+00, %i.ds
  %i.du = fpext float %.in.i.i.sroa.speculated to double
  %i.dv = fmul double %i.dt, %i.du                ; 2 uses
  %i.dw = fmul float %i.do, %.in.i.i.sroa.speculated
  %i.dx = fpext float %i.dw to double             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !17, !noalias !62
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dk to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = icmp ugt i64 %i.ed, 1
  br i1 %i.ee, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i
  %i.ef = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i
  %.017.lcssa.i = phi double [ 0.000000e+00, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i ], [ %.118.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ]
  %.015.lcssa.i = phi double [ %i.dv, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i ], [ %i.gt, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ] ; 2 uses
  %.0.lcssa.i = phi double [ %i.dx, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i ], [ %i.gw, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ] ; 4 uses
  %.034.lcssa.i = phi double [ 0.000000e+00, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i ], [ %.135.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ] ; 4 uses
  %.032.lcssa.i = phi double [ 0.000000e+00, %_ZNK7xgboost6common15OptionalWeightsixEm.exit.i ], [ %.133.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ] ; 2 uses
  %i.eg = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = insertelement <2 x double> poison, double %.0.lcssa.i, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %.034.lcssa.i, i64 1
  %i.ej = fdiv <2 x double> %i.ei, %i.eg          ; 5 uses
  %i.ek = fcmp oeq double %.0.lcssa.i, %.034.lcssa.i
  br i1 %i.ek, label %.thread.i.i.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.el = fsub double %.015.lcssa.i, %.032.lcssa.i
  %i.em = fsub double %.0.lcssa.i, %.034.lcssa.i
  %i.en = fdiv double %i.el, %i.em                ; 2 uses
  %i.eo = fneg double %i.en
  %i.ep = call double @llvm.fmuladd.f64(double %i.eo, double %.034.lcssa.i, double %.032.lcssa.i)
  %i.eq = fdiv double %i.ep, %i.bl                ; 3 uses
  %9 = insertelement <2 x double> poison, double %i.en, i64 0
  %10 = insertelement <2 x double> %9, double %i.eq, i64 1 ; 2 uses
  %11 = fadd <2 x double> %10, <double 1.000000e+00, double poison> ; 2 uses
  %i.er = fcmp une double %i.eq, 0.000000e+00
  %12 = extractelement <2 x double> %11, i64 0    ; 3 uses
  br i1 %i.er, label %bb.m, label %.thread.i.i.i

bb.m:                                             ; preds = %bb.l
  %shift = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ej, %shift
  %i.es = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.et = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> %i.ej, <2 x double> %13) ; 2 uses
  %i.ev = extractelement <2 x double> %i.eu, i64 0
  %i.ew = call double @log(double noundef %i.ev) #11, !noalias !62
  %i.ex = extractelement <2 x double> %i.eu, i64 1
  %i.ey = call double @log(double noundef %i.ex) #11, !noalias !62
  %i.ez = fsub double %i.ew, %i.ey
  %i.fa = fneg double %i.eq
  %i.fb = fdiv double %i.fa, %12
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double %i.ez, double %i.es)
  br label %.thread

.thread.i.i.i:                                    ; preds = %bb.l, %._crit_edge.i
  %.03238.i.i.i = phi double [ %12, %bb.l ], [ 1.000000e+00, %._crit_edge.i ]
  %shift109 = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop110 = fsub <2 x double> %i.ej, %shift109
  %i.fd = extractelement <2 x double> %foldExtExtBinop110, i64 0
  br label %.thread

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i
  %.03138.i = phi i64 [ %i.gx, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.03237.i = phi double [ %.133.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ], [ 0.000000e+00, %.lr.ph.i.preheader ] ; 3 uses
  %.03436.i = phi double [ %.135.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ], [ 0.000000e+00, %.lr.ph.i.preheader ] ; 5 uses
  %.035.i = phi double [ %i.gw, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ], [ %i.dx, %.lr.ph.i.preheader ] ; 5 uses
  %.01533.i = phi double [ %i.gt, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ], [ %i.dv, %.lr.ph.i.preheader ] ; 3 uses
  %.01732.i = phi double [ %.118.i, %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i ], [ 0.000000e+00, %.lr.ph.i.preheader ] ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %i.dk, i64 %.03138.i ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !15, !noalias !62 ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !40, !noalias !62
  %i.fi = getelementptr i8, ptr %i.fe, i64 -8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !15, !noalias !62
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !40, !noalias !62
  %i.fm = fcmp une float %i.fh, %i.fl
  br i1 %i.fm, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph.i
  %i.fn = insertelement <2 x double> poison, double %.035.i, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %.03436.i, i64 1
  %i.fp = fdiv <2 x double> %i.fo, %i.ef          ; 5 uses
  %i.fq = fcmp oeq double %.035.i, %.03436.i
  br i1 %i.fq, label %.thread.i.i71.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = fsub double %.01533.i, %.03237.i
  %i.fs = fsub double %.035.i, %.03436.i
  %i.ft = fdiv double %i.fr, %i.fs                ; 2 uses
  %i.fu = fneg double %i.ft
  %i.fv = call double @llvm.fmuladd.f64(double %i.fu, double %.03436.i, double %.03237.i)
  %i.fw = fdiv double %i.fv, %i.bl                ; 3 uses
  %14 = insertelement <2 x double> poison, double %i.ft, i64 0
  %15 = insertelement <2 x double> %14, double %i.fw, i64 1 ; 2 uses
  %16 = fadd <2 x double> %15, <double 1.000000e+00, double poison> ; 2 uses
  %i.fx = fcmp une double %i.fw, 0.000000e+00
  %17 = extractelement <2 x double> %16, i64 0    ; 3 uses
  br i1 %i.fx, label %bb.p, label %.thread.i.i71.i

bb.p:                                             ; preds = %bb.o
  %shift112 = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop113 = fsub <2 x double> %i.fp, %shift112
  %i.fy = extractelement <2 x double> %foldExtExtBinop113, i64 0
  %i.fz = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.fp, <2 x double> %18) ; 2 uses
  %i.gb = extractelement <2 x double> %i.ga, i64 0
  %i.gc = call double @log(double noundef %i.gb) #11, !noalias !62
  %i.gd = extractelement <2 x double> %i.ga, i64 1
  %i.ge = call double @log(double noundef %i.gd) #11, !noalias !62
  %i.gf = fsub double %i.gc, %i.ge
  %i.gg = fneg double %i.fw
  %i.gh = fdiv double %i.gg, %17
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.gf, double %i.fy)
  br label %"_ZZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsEENK3$_0clEdddd.exit76.i"

.thread.i.i71.i:                                  ; preds = %bb.o, %bb.n
  %.03238.i.i72.i = phi double [ %17, %bb.o ], [ 1.000000e+00, %bb.n ]
  %shift115 = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop116 = fsub <2 x double> %i.fp, %shift115
  %i.gj = extractelement <2 x double> %foldExtExtBinop116, i64 0
  br label %"_ZZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsEENK3$_0clEdddd.exit76.i"

"_ZZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsEENK3$_0clEdddd.exit76.i": ; preds = %.thread.i.i71.i, %bb.p
  %.03237.i.i73.i = phi double [ %17, %bb.p ], [ %.03238.i.i72.i, %.thread.i.i71.i ]
  %.pn.i.i74.i = phi double [ %i.gi, %bb.p ], [ %i.gj, %.thread.i.i71.i ]
  %.0.i.i75.i = fdiv double %.pn.i.i74.i, %.03237.i.i73.i
  %i.gk = fadd double %.01732.i, %.0.i.i75.i
  br label %bb.q

bb.q:                                             ; preds = %"_ZZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsEENK3$_0clEdddd.exit76.i", %.lr.ph.i
  %.118.i = phi double [ %i.gk, %"_ZZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsEENK3$_0clEdddd.exit76.i" ], [ %.01732.i, %.lr.ph.i ] ; 2 uses
  %.135.i = phi double [ %.035.i, %"_ZZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsEENK3$_0clEdddd.exit76.i" ], [ %.03436.i, %.lr.ph.i ] ; 2 uses
  %.133.i = phi double [ %.01533.i, %"_ZZN7xgboost6metric11BinaryPRAUCEPKNS_7ContextENS_6common4SpanIKfLm18446744073709551615EEENS_6linalg10TensorViewIS6_Li1EEENS4_15OptionalWeightsEENK3$_0clEdddd.exit76.i" ], [ %.03237.i, %.lr.ph.i ] ; 2 uses
  %i.gl = mul i64 %i.ff, %.sroa.034.0.copyload
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.335.0.copyload, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !40, !noalias !62 ; 2 uses
  br i1 %i.dp, label %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.go = icmp ult i64 %i.ff, %.sroa.042.0.copyload
  br i1 %i.go, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i77.i, label %bb.s, !prof !43

bb.s:                                             ; preds = %bb.r
  call void @_ZSt9terminatev() #35, !noalias !62
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i77.i: ; preds = %bb.r
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.243.0.copyload, i64 %i.ff
  %.in.i78.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i77.i = load float, ptr %i.gp, align 4, !tbaa !40, !noalias !62
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i

_ZNK7xgboost6common15OptionalWeightsixEm.exit79.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i77.i, %bb.q
  %.in.i78.i.sroa.speculated = phi float [ %.in.i78.i.sroa.speculate.load._ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i77.i, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i77.i ], [ %.sroa.344.0.copyload, %bb.q ] ; 2 uses
  %i.gq = fsub float 1.000000e+00, %i.gn
  %i.gr = fmul float %i.gq, %.in.i78.i.sroa.speculated
  %i.gs = fpext float %i.gr to double
  %i.gt = fadd double %.01533.i, %i.gs            ; 2 uses
  %i.gu = fmul float %i.gn, %.in.i78.i.sroa.speculated
  %i.gv = fpext float %i.gu to double
  %i.gw = fadd double %.035.i, %i.gv              ; 2 uses
  %i.gx = add nuw i64 %.03138.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gx, %i.ed
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !65

bb.t:                                             ; preds = %bb.f
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #35, !noalias !62
  unreachable

.thread:                                          ; preds = %bb.m, %.thread.i.i.i
  %.03237.i.i.i = phi double [ %12, %bb.m ], [ %.03238.i.i.i, %.thread.i.i.i ]
  %.pn.i.i.i = phi double [ %i.fc, %bb.m ], [ %i.fd, %.thread.i.i.i ]
  %.0.i.i.i = fdiv double %.pn.i.i.i, %.03237.i.i.i
  %i.ha = fadd double %.017.lcssa.i, %.0.i.i.i
  %i.hb = fcmp ole double %.015.lcssa.i, 0.000000e+00
  %i.hc = fcmp ole double %.0.lcssa.i, 0.000000e+00
  %or.cond.i = or i1 %i.hb, %i.hc
  %.2.i = select i1 %or.cond.i, double 0.000000e+00, double %i.ha
  store double %.2.i, ptr %0, align 8, !tbaa !47, !alias.scope !66
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %i.hd, align 8, !tbaa !57, !alias.scope !66
  br label %bb.v

bb.u:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  store <2 x double> <double +qnan, double 1.000000e+00>, ptr %0, align 8, !tbaa !57
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double 1.000000e+00, ptr %i.hf, align 8, !tbaa !55
  %.pre = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.thread, %._crit_edge.thread
  %i.hg = phi ptr [ %i.dk, %.thread ], [ %.pre, %._crit_edge.thread ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !12
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge.thread, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret void

.body:                                            ; preds = %bb.u, %bb.g
  %.pn = phi { ptr, i32 } [ %.pn40.i, %bb.g ], [ %i.he, %bb.u ]
  %i.hm = load ptr, ptr %8, align 8, !tbaa !8     ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorImSaImEED2Ev.exit16, label %bb.w

bb.w:                                             ; preds = %.body
  %i.hn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !12
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit16

_ZNSt6vectorImSaImEED2Ev.exit16:                  ; preds = %.body, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZN4dmlc8RegistryIN7xgboost9MetricRegEE3GetEv() local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost9MetricRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #33
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37   ; 4 uses
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.k) ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.p = sub i64 %i.k, %i.h
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.q, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.q, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !75

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.r = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.r, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.h) ; 2 uses
  %i.u = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i) #11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.y = sub i64 %i.h, %i.t
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.x, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  br label %_ZNSt6vectorIPN7xgboost9MetricRegESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost9MetricRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit
  %i.ad = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #34
          to label %bb.h unwind label %bb.r       ; 17 uses

bb.h:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.ae, i8 0, i64 136, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.af, ptr %i.ad, align 16, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !78
  store i8 0, ptr %i.ai, align 16, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.aj, i8 0, i64 56, i1 false)
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !78
  store i8 0, ptr %i.al, align 8, !tbaa !38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.h
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost9MetricRegESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.ad, ptr %i.am, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !79 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.k, label %bb.j
end_hunk_0
