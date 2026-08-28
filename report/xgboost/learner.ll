Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/learner?download=true
inline.NumInlined: 7339
inline.NumDeleted: 2449
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK7xgboost11LearnerImpl15ValidateDMatrixEPNS_7DMatrixEb:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5224
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !63 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5212
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !64 ; 2 uses
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = icmp eq i32 %i.ca, 0
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.umax.i32(i32 %i.bx, i32 %i.bz)
  %.sroa.speculated.i = select i1 %i.cb, i32 1, i32 %.sroa.speculate.load.false.sroa.speculated.i ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.b, align 4, !tbaa !19
  %i.cc = zext i32 %.sroa.speculated.i to i64
  %i.cd = icmp eq i64 %i.bv, %i.cc
  br i1 %i.cd, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit68

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.s
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.19") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr76 = load ptr, ptr %7, align 8, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not82 = icmp eq ptr %.pr76, null
  br i1 %.not82, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit68, label %bb.t

bb.t:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ce = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc51 unwind label %bb.u

.noexc51:                                         ; preds = %bb.t
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ce, ptr noundef nonnull @.str, i32 noundef 1319)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit53 unwind label %bb.u

_ZN4dmlc15LogMessageFatalC2EPKci.exit53:          ; preds = %.noexc51
  %i.cf = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit55 unwind label %bb.v ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit55: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit53
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit55
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.138, i64 noundef 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.ci = load ptr, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !67
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef %i.cj, i64 noundef %i.cl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61 unwind label %bb.v

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %.noexc51, %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit55, %_ZN4dmlc15LogMessageFatalC2EPKci.exit53
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn17 = phi { ptr, i32 } [ %i.co, %bb.u ], [ %i.cp, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.aa

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.pr77 = load ptr, ptr %7, align 8, !tbaa !87   ; 4 uses
  %.not.i64 = icmp eq ptr %.pr77, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = load ptr, ptr %.pr77, align 8, !tbaa !21 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pr77, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65: ; preds = %bb.y
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !18
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i66

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i66: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i65
  call void @_ZdlPvm(ptr noundef nonnull %.pr77, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit68

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit68: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.x, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit68, %bb.r
  ret void

bb.aa:                                            ; preds = %bb.w, %bb.m, %bb.f
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.w ], [ %.pn15, %bb.f ], [ %.pn, %bb.m ]
  resume { ptr, i32 } %.pn17.pn

bb.ab:                                            ; preds = %bb.v, %bb.l, %bb.e
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #40
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost11LearnerImpl10PredictRawEPNS_7DMatrixEPNS_20PredictionCacheEntryEbjj(ptr noundef nonnull align 8 dereferenceable(6096) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull @.str, i32 noundef 1295)
  %i.d = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.139, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.140, i64 noundef 47)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9, %bb.a
  call fastcc void @_ZNK7xgboost12_GLOBAL__N_19Intercept21CheckModelInitializedEv(ptr noundef nonnull align 8 dereferenceable(5272) %0)
  call void @_ZNK7xgboost11LearnerImpl15ValidateDMatrixEPNS_7DMatrixEb(ptr noundef nonnull align 8 dereferenceable(6096) %0, ptr noundef %1, i1 noundef zeroext false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #40
  unreachable
}

declare void @_ZNK7xgboost8MetaInfo8ValidateENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(248), i32) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS_7ContextE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.xgboost::linalg::TensorView.354", align 8 ; 10 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"class.std::vector.149", align 8   ; 14 uses
  %5 = alloca %"class.xgboost::Json", align 8     ; 4 uses
  %6 = alloca %"struct.xgboost::collective::Result", align 8 ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.xgboost::Json", align 8     ; 7 uses
  %9 = alloca %"class.xgboost::Json", align 8     ; 7 uses
  tail call void @_ZNK7xgboost23LearnerModelParamLegacy14ValidateLengthEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 4                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.j = and i64 %i.g, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.045.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.h, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.b, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %i.k = load float, ptr %.sroa.025.044.i.i.i.i, align 4, !tbaa !356
  %i.l = tail call float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp ueq float %i.l, +inf
  br i1 %i.m, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !356
  %i.p = tail call float @llvm.fabs.f32(float %i.o)
  %i.q = fcmp ueq float %i.p, +inf
  br i1 %i.q, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !356
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp ueq float %i.t, +inf
  br i1 %i.u, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit110, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !356
  %i.x = tail call float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp ueq float %i.x, +inf
  br i1 %i.y, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit112, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 16
  %i.aa = add nsw i64 %.045.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.045.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !948

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre50.i.i.i.i = sub i64 %i.e, %.pre.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi51.i.i.i.i = phi i64 [ %.pre50.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.025.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.ac = ashr exact i64 %.pre-phi51.i.i.i.i, 2
  switch i64 %i.ac, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.thread [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = load float, ptr %.sroa.025.0.lcssa.i.i.i.i, align 4, !tbaa !356
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad)
  %i.af = fcmp ueq float %i.ae, +inf
  br i1 %i.af, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.sroa.025.1.i.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %.sroa.025.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ah = load float, ptr %.sroa.025.1.i.i.i.i, align 4, !tbaa !356
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fcmp ueq float %i.ai, +inf
  br i1 %i.aj, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.025.2.i.i.i.i = phi ptr [ %i.ak, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.al = load float, ptr %.sroa.025.2.i.i.i.i, align 4, !tbaa !356
  %i.am = tail call float @llvm.fabs.f32(float %i.al)
  %i.an = fcmp ueq float %i.am, +inf
  br i1 %i.an, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.thread

_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 4
  br label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit

_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit110: ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 8
  br label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit

_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit112: ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i, i64 12
  br label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit

_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit, %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit110, %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit112, %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i, %bb.h ], [ %.sroa.025.2.i.i.i.i, %bb.j ], [ %.sroa.025.0.lcssa.i.i.i.i, %bb.f ], [ %i.aq, %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit112 ], [ %i.ao, %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit ], [ %i.ap, %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.loopexit.split.loop.exit110 ], [ %.sroa.025.044.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.ar = icmp eq ptr %i.d, %.sroa.08.0.in.sroa.speculated.i.i.i.i
  br i1 %i.ar, label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.thread, label %bb.k, !prof !949

bb.k:                                             ; preds = %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.as = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.as, ptr noundef nonnull @.str, i32 noundef 188)
  %i.at = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.l ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.k
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.130, i64 noundef 122)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.thread

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.m unwind label %bb.bl

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bk

_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.thread: ; preds = %bb.j, %._crit_edge.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29, %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit
  %i.ax = call noundef zeroext i1 @_ZN7xgboost10collective13IsDistributedEv() #17
  br i1 %i.ax, label %bb.n, label %bb.bf

bb.n:                                             ; preds = %_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEZNK7xgboost23LearnerModelParamLegacy8ValidateEPKNS8_7ContextEEUlfE_EbT_SE_T0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZNK7xgboost23LearnerModelParamLegacy6ToJsonEv(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::Json") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.o unwind label %bb.aj

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN7xgboost4Json4DumpES0_PSt6vectorIcSaIcEESt13_Ios_Openmode(ptr noundef nonnull align 8 %5, ptr noundef nonnull %4, i32 noundef 4)
          to label %bb.p unwind label %bb.ak

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %5, align 8, !tbaa !230   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZN7xgboost4JsonD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw sub ptr %i.az, i32 1 release, align 4
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.r, label %_ZN7xgboost4JsonD2Ev.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #17, !inline_history !287
  br label %_ZN7xgboost4JsonD2Ev.exit

_ZN7xgboost4JsonD2Ev.exit:                        ; preds = %bb.p, %bb.q, %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !502 ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !501   ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i, label %.noexc30, label %bb.s

bb.s:                                             ; preds = %_ZN7xgboost4JsonD2Ev.exit
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !20

.noexc.i.i:                                       ; preds = %bb.s
  invoke void @_ZSt17__throw_bad_allocv() #41
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.s
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #42
          to label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge unwind label %bb.an

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge: ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !181   ; 3 uses
  %.pre89 = load ptr, ptr %i.bf, align 8, !tbaa !181 ; 2 uses
  %.pre90 = ptrtoint ptr %.pre89 to i64
  %.pre91 = ptrtoint ptr %.pre to i64
  %i.bn = icmp eq ptr %.pre89, %.pre
  br label %.noexc30

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge, %_ZN7xgboost4JsonD2Ev.exit
  %.pre-phi92 = phi i64 [ %.pre91, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ], [ %i.bj, %_ZN7xgboost4JsonD2Ev.exit ]
  %.pre-phi = phi i64 [ %.pre90, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ], [ %i.bi, %_ZN7xgboost4JsonD2Ev.exit ]
  %i.bo = phi i1 [ %i.bn, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ], [ true, %_ZN7xgboost4JsonD2Ev.exit ]
  %i.bp = phi ptr [ %.pre, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ], [ %i.bh, %_ZN7xgboost4JsonD2Ev.exit ] ; 2 uses
  %i.bq = phi ptr [ %i.bm, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ], [ null, %_ZN7xgboost4JsonD2Ev.exit ] ; 11 uses
  %i.br = sub i64 %.pre-phi, %.pre-phi92          ; 7 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.t, label %bb.u, !prof !76

bb.t:                                             ; preds = %.noexc30
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bp, i64 %i.br, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %.noexc30
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %i.bu = load i8, ptr %i.bp, align 1, !tbaa !18
  store i8 %i.bu, ptr %i.bq, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  br label %_ZN7xgboost6linalg7MakeVecIcEEDaPT_mNS_9DeviceOrdE.exit

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bv = icmp ne ptr %i.bq, null
  %i.bw = or i1 %i.bv, %i.bo
  br i1 %i.bw, label %_ZN7xgboost6linalg7MakeVecIcEEDaPT_mNS_9DeviceOrdE.exit, label %bb.w, !prof !950

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #40, !noalias !951
  unreachable

_ZN7xgboost6linalg7MakeVecIcEEDaPT_mNS_9DeviceOrdE.exit: ; preds = %bb.v, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 1, ptr %2, align 8
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.br, ptr %.sroa.265.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.br, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.bq, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.br, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 -65536, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost10collective15GlobalCommGroupEv()
          to label %.noexc31 unwind label %bb.ao

.noexc31:                                         ; preds = %_ZN7xgboost6linalg7MakeVecIcEEDaPT_mNS_9DeviceOrdE.exit
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !719, !noalias !954
  invoke void @_ZN7xgboost10collective9BroadcastIcEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_Li1EEEi(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::collective::Result") align 8 %6, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull byval(%"class.xgboost::linalg::TensorView.354") align 8 %2, i32 noundef 0)
          to label %bb.x unwind label %bb.ao

bb.x:                                             ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  invoke void @_ZN7xgboost10collective8SafeCollERKNS0_6ResultEPKci(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str, i32 noundef 199)
          to label %bb.y unwind label %bb.ap

bb.y:                                             ; preds = %bb.x
  %i.bz = load ptr, ptr %4, align 8, !tbaa !181   ; 3 uses
  %i.ca = load ptr, ptr %i.bf, align 8, !tbaa !181 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.ca, %i.bz
  br i1 %.not.not.i.i.i.i, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEES7_EbT_S8_T0_.exit.thread, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEES7_EbT_S8_T0_.exit

_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEES7_EbT_S8_T0_.exit: ; preds = %bb.y
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cc, %i.cb
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bz, ptr %i.bq, i64 %i.cd)
  %.not9.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEES7_EbT_S8_T0_.exit.thread, label %bb.z, !prof !957

bb.z:                                             ; preds = %_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEES7_EbT_S8_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ce = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc33 unwind label %bb.aq

.noexc33:                                         ; preds = %bb.z
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ce, ptr noundef nonnull @.str, i32 noundef 201)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.aq

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc33
  %i.cf = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit36 unwind label %bb.ar ; 4 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit36: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.131, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit36
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull @.str.132, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.cj = load ptr, ptr %4, align 8, !tbaa !501   ; 2 uses
  %i.ck = load ptr, ptr %i.bf, align 8, !tbaa !502
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  invoke void @_ZN7xgboost4Json4LoadENS_10StringViewESt13_Ios_Openmode(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::Json") align 8 %8, ptr %i.cj, i64 %i.cn, i32 noundef 4)
          to label %bb.aa unwind label %bb.as

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboostlsERSoRKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ab unwind label %bb.at     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull @.str.133, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZN7xgboost4Json4LoadENS_10StringViewESt13_Ios_Openmode(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::Json") align 8 %9, ptr %i.bq, i64 %i.br, i32 noundef 4)
          to label %bb.ac unwind label %bb.au

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboostlsERSoRKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ad unwind label %bb.av     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cr = load ptr, ptr %9, align 8, !tbaa !230   ; 4 uses
  %.not.i.i.i45 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i45, label %_ZN7xgboost4JsonD2Ev.exit46, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
end_hunk_0
begin_hunk_1_@bcmp
!749 = distinct !{!749, !34}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN7xgboost12_GLOBAL__N_123CanonicalizeBoosterNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!752 = distinct !{!752, !"_ZN7xgboost12_GLOBAL__N_123CanonicalizeBoosterNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN7xgboost12_GLOBAL__N_123CanonicalizeBoosterNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!755 = distinct !{!755, !"_ZN7xgboost12_GLOBAL__N_123CanonicalizeBoosterNameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZSt19__relocate_object_aISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!758 = distinct !{!758, !"_ZSt19__relocate_object_aISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!759 = !{!760}
!760 = distinct !{!760, !758, !"_ZSt19__relocate_object_aISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!761 = !{!760, !762}
!762 = distinct !{!762, !763}
!763 = distinct !{!763, !"LVerDomain"}
!764 = !{!757, !765}
!765 = distinct !{!765, !763}
!766 = distinct !{!766, !34, !406, !407}
!767 = distinct !{!767, !34, !406}
!768 = distinct !{null, null}
!769 = !{!770, !277, i64 48}
!770 = !{!"_ZTSNSt11_Deque_baseIN7xgboost4JsonESaIS1_EE16_Deque_impl_dataE", !771, i64 0, !25, i64 8, !772, i64 16, !772, i64 48}
!771 = !{!"p2 _ZTSN7xgboost4JsonE", !141, i64 0}
!772 = !{!"_ZTSSt15_Deque_iteratorIN7xgboost4JsonERS1_PS1_E", !277, i64 0, !277, i64 8, !277, i64 16, !771, i64 24}
!773 = !{!770, !277, i64 64}
!774 = !{!772, !277, i64 0}
!775 = !{!772, !277, i64 8}
!776 = !{!777}
!777 = distinct !{!777, !778, !"_ZNSt5dequeIN7xgboost4JsonESaIS1_EE3endEv: argument 0"}
!778 = distinct !{!778, !"_ZNSt5dequeIN7xgboost4JsonESaIS1_EE3endEv"}
!779 = !{!772, !771, i64 24}
!780 = !{!770, !277, i64 56}
!781 = !{!770, !771, i64 72}
!782 = !{!772, !277, i64 16}
!783 = distinct !{null, null}
!784 = distinct !{!784, !34}
!785 = !{!786}
!786 = distinct !{!786, !787, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!787 = distinct !{!787, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!788 = !{!789}
!789 = distinct !{!789, !790, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!790 = distinct !{!790, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!791 = distinct !{!791, !34}
!792 = !{!793, !793, i64 0}
!793 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE", !13, i64 0}
!794 = distinct !{!794, !34}
!795 = distinct !{!795, !34}
!796 = !{!797}
!797 = distinct !{!797, !798, !"_ZZN7xgboost20LearnerConfiguration18ValidateParametersEvENKUlRKSt4pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4JsonEEE_clESF_: argument 0"}
!798 = distinct !{!798, !"_ZZN7xgboost20LearnerConfiguration18ValidateParametersEvENKUlRKSt4pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_4JsonEEE_clESF_"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!801 = distinct !{!801, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!802 = !{!803}
!803 = distinct !{!803, !801, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!804 = !{!800, !803}
!805 = distinct !{!805, !34}
!806 = !{!770, !25, i64 8}
!807 = !{!770, !771, i64 0}
!808 = !{!770, !771, i64 40}
!809 = distinct !{!809, !34}
!810 = distinct !{!810, !34}
!811 = !{!812}
!812 = distinct !{!812, !813, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!813 = distinct !{!813, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!814 = !{!815}
!815 = distinct !{!815, !816, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!816 = distinct !{!816, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!817 = !{!815, !812}
!818 = distinct !{!818, !34}
!819 = distinct !{!819, !34}
!820 = distinct !{!820, !34}
!821 = !{!822}
!822 = distinct !{!822, !823, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!823 = distinct !{!823, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!824 = !{!825}
!825 = distinct !{!825, !826, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!826 = distinct !{!826, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!827 = !{!825, !822}
!828 = !{!829, !830, i64 0}
!829 = !{!"_ZTSSt12__shared_ptrIN7xgboost10collective8HostCommELN9__gnu_cxx12_Lock_policyE2EE", !830, i64 0, !11, i64 8}
!830 = !{!"p1 _ZTSN7xgboost10collective8HostCommE", !13, i64 0}
!831 = !{!832, !5, i64 24}
!832 = !{!"_ZTSN7xgboost10collective4CommE", !833, i64 8, !5, i64 24, !5, i64 28, !837, i64 32, !5, i64 40, !838, i64 48, !839, i64 88, !840, i64 96, !5, i64 104, !22, i64 112, !841, i64 144, !846, i64 168}
!833 = !{!"_ZTSSt23enable_shared_from_thisIN7xgboost10collective4CommEE", !834, i64 0}
!834 = !{!"_ZTSSt8weak_ptrIN7xgboost10collective4CommEE", !835, i64 0}
!835 = !{!"_ZTSSt10__weak_ptrIN7xgboost10collective4CommELN9__gnu_cxx12_Lock_policyE2EE", !836, i64 0, !351, i64 8}
!836 = !{!"p1 _ZTSN7xgboost10collective4CommE", !13, i64 0}
!837 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !25, i64 0}
!838 = !{!"_ZTSN7xgboost10collective5proto8PeerInfoE", !22, i64 0, !5, i64 32, !5, i64 36}
!839 = !{!"_ZTSN7xgboost10collective10SockDomainE", !6, i64 0}
!840 = !{!"_ZTSSt6thread", !347, i64 0}
!841 = !{!"_ZTSSt6vectorISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE", !842, i64 0}
!842 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE", !843, i64 0}
!843 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE12_Vector_implE", !844, i64 0}
!844 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7xgboost10collective7ChannelEESaIS4_EE17_Vector_impl_dataE", !845, i64 0, !845, i64 8, !845, i64 16}
!845 = !{!"p1 _ZTSSt10shared_ptrIN7xgboost10collective7ChannelEE", !13, i64 0}
!846 = !{!"_ZTSSt10shared_ptrIN7xgboost10collective4LoopEE", !847, i64 0}
!847 = !{!"_ZTSSt12__shared_ptrIN7xgboost10collective4LoopELN9__gnu_cxx12_Lock_policyE2EE", !848, i64 0, !11, i64 8}
!848 = !{!"p1 _ZTSN7xgboost10collective4LoopE", !13, i64 0}
!849 = !{!850, !738, i64 0}
!850 = !{!"_ZTSSt10_Head_baseILm0EPN7xgboost10collective6detail10ResultImplELb0EE", !738, i64 0}
!851 = !{!852}
!852 = distinct !{!852, !853, !"_ZN7xgboost10collective7SuccessEv: argument 0"}
!853 = distinct !{!853, !"_ZN7xgboost10collective7SuccessEv"}
!854 = !{!855, !25, i64 0}
!855 = !{!"_ZTSN7xgboost6common4SpanIjLm18446744073709551615EEE", !25, i64 0, !730, i64 8}
!856 = !{!857, !25, i64 40}
!857 = !{!"_ZTSN7xgboost6linalg10TensorViewIjLi1EEE", !6, i64 0, !6, i64 8, !855, i64 16, !730, i64 32, !25, i64 40, !83, i64 48}
!858 = !{!730, !730, i64 0}
!859 = !{!860, !861, i64 0}
!860 = !{!"_ZTSSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EE", !861, i64 0, !11, i64 8}
!861 = !{!"p1 _ZTSN7xgboost10collective4CollE", !13, i64 0}
!862 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!865 = distinct !{!865, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!866 = !{!867}
!867 = distinct !{!867, !868, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!868 = distinct !{!868, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!869 = !{!867, !864}
!870 = distinct !{!870, !34}
!871 = distinct !{!871, !34}
!872 = distinct !{!872, !34}
!873 = !{!342, !5, i64 5228}
!874 = distinct !{null, null}
!875 = distinct !{!875, !34}
!876 = distinct !{!876, !34}
!877 = distinct !{!877, !34}
!878 = !{!770, !277, i64 16}
!879 = distinct !{!879, !34}
!880 = !{!881}
!881 = distinct !{!881, !882, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!882 = distinct !{!882, !"_ZSt9make_pairIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!883 = distinct !{!883, !34}
!884 = distinct !{!884, !34}
!885 = !{!886, !887, i64 8}
!886 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeE", !793, i64 0, !887, i64 8}
!887 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonEEE", !13, i64 0}
!888 = distinct !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE10_Auto_nodeD2Ev, null, null, null, null, null, null}
!889 = distinct !{!889, !34}
!890 = !{!891}
!891 = distinct !{!891, !892, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!892 = distinct !{!892, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!893 = !{!894}
!894 = distinct !{!894, !892, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!895 = !{!891, !894}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!898 = distinct !{!898, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!899 = !{!900}
!900 = distinct !{!900, !898, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!901 = !{!897, !900}
!902 = !{!903, !793, i64 0}
!903 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE11_Alloc_nodeE", !793, i64 0}
!904 = !{i64 8}
!905 = !{!109, !110, i64 0}
!906 = !{!109, !111, i64 8}
!907 = distinct !{!907, !34}
!908 = !{!909}
!909 = distinct !{!909, !910, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!910 = distinct !{!910, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!911 = !{!912}
!912 = distinct !{!912, !910, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!913 = !{!909, !912}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!916 = distinct !{!916, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!917 = !{!918}
!918 = distinct !{!918, !916, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!919 = !{!915, !918}
!920 = distinct !{!920, !34}
!921 = distinct !{!921, !34}
!922 = distinct !{!922, !34}
!923 = distinct !{!923, !34}
!924 = distinct !{!924, !34}
!925 = distinct !{!925, !34}
!926 = distinct !{!926, !34}
!927 = distinct !{!927, !34}
!928 = distinct !{!928, !34}
!929 = distinct !{!929, !34}
!930 = distinct !{!930, !34}
!931 = distinct !{!931, !34}
!932 = distinct !{!932, !34}
!933 = distinct !{!933, !34}
!934 = !{!935}
!935 = distinct !{!935, !936, !"_ZNSt5dequeIN7xgboost4JsonESaIS1_EE5beginEv: argument 0"}
!936 = distinct !{!936, !"_ZNSt5dequeIN7xgboost4JsonESaIS1_EE5beginEv"}
!937 = !{!938}
!938 = distinct !{!938, !939, !"_ZNSt5dequeIN7xgboost4JsonESaIS1_EE3endEv: argument 0"}
!939 = distinct !{!939, !"_ZNSt5dequeIN7xgboost4JsonESaIS1_EE3endEv"}
!940 = distinct !{!940, !34}
!941 = !{!942}
!942 = distinct !{!942, !943, !"_ZN4dmlc11LogCheck_EQIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!943 = distinct !{!943, !"_ZN4dmlc11LogCheck_EQIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!944 = !{!945}
!945 = distinct !{!945, !946, !"_ZN4dmlc11LogCheck_GEIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!946 = distinct !{!946, !"_ZN4dmlc11LogCheck_GEIjmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!947 = !{!724, !25, i64 0}
!948 = distinct !{!948, !34}
!949 = !{!"branch_weights", !"expected", i32 2145997093, i32 1486555}
!950 = !{!"branch_weights", !"expected", i32 2146410175, i32 1073473}
!951 = !{!952}
!952 = distinct !{!952, !953, !"_ZN7xgboost6linalg7MakeVecIcEEDaPT_mNS_9DeviceOrdE: argument 0"}
!953 = distinct !{!953, !"_ZN7xgboost6linalg7MakeVecIcEEDaPT_mNS_9DeviceOrdE"}
!954 = !{!955}
!955 = distinct !{!955, !956, !"_ZN7xgboost10collective9BroadcastIcEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_Li1EEEi: argument 0"}
!956 = distinct !{!956, !"_ZN7xgboost10collective9BroadcastIcEENS0_6ResultEPKNS_7ContextENS_6linalg10TensorViewIT_Li1EEEi"}
!957 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!958 = !{!959}
!959 = distinct !{!959, !960, !"_ZN7xgboost10collective7SuccessEv: argument 0"}
!960 = distinct !{!960, !"_ZN7xgboost10collective7SuccessEv"}
!961 = !{!962, !25, i64 0}
!962 = !{!"_ZTSN7xgboost6common4SpanIcLm18446744073709551615EEE", !25, i64 0, !24, i64 8}
!963 = !{!964, !25, i64 40}
!964 = !{!"_ZTSN7xgboost6linalg10TensorViewIcLi1EEE", !6, i64 0, !6, i64 8, !962, i64 16, !24, i64 32, !25, i64 40, !83, i64 48}
!965 = !{!966}
!966 = distinct !{!966, !967, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!967 = distinct !{!967, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!968 = !{!969}
!969 = distinct !{!969, !970, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!970 = distinct !{!970, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!971 = !{!969, !966}
!972 = distinct !{!972, !34}
!973 = distinct !{!973, !34}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!976 = distinct !{!976, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!977 = !{!978}
!978 = distinct !{!978, !979, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!979 = distinct !{!979, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!980 = !{!978, !975}
!981 = distinct !{!981, !34}
!982 = distinct !{!982, !34}
!983 = distinct !{!983, !34}
!984 = distinct !{!984, !34}
!985 = distinct !{!985, !34}
!986 = distinct !{!986, !34}
!987 = !{!988, !449, i64 0}
!988 = !{!"_ZTSZN7xgboost11LearnerImpl5SliceEiiiPbEUlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_", !449, i64 0}
!989 = !{!990, !111, i64 0}
!990 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeE", !111, i64 0, !111, i64 8, !603, i64 16}
!991 = !{!990, !111, i64 8}
!992 = !{!990, !603, i64 16}
!993 = distinct !{!993, !34}
!994 = distinct !{!994, !34}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!997 = distinct !{!997, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1000 = distinct !{!1000, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1001 = !{!999, !996}
!1002 = !{!1003, !1003, i64 0}
!1003 = !{!"p1 _ZTSSt8_Rb_treeIPKN7xgboost7LearnerESt4pairIKS3_NS0_22XGBAPIThreadLocalEntryEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE", !13, i64 0}
!1004 = !{!1005, !1006, i64 8}
!1005 = !{!"_ZTSNSt8_Rb_treeIPKN7xgboost7LearnerESt4pairIKS3_NS0_22XGBAPIThreadLocalEntryEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeE", !1003, i64 0, !1006, i64 8}
!1006 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKPKN7xgboost7LearnerENS1_22XGBAPIThreadLocalEntryEEE", !13, i64 0}
!1007 = distinct !{!1007, !34}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1010, !"_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!1010 = distinct !{!1010, !"_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1013, !"_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_: argument 0"}
!1013 = distinct !{!1013, !"_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_"}
!1014 = !{!1015}
!1015 = distinct !{!1015, !1016, !"_ZN7xgboost16XGBoostParameterINS_17LearnerTrainParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EEEESE_RKT_: argument 0"}
!1016 = distinct !{!1016, !"_ZN7xgboost16XGBoostParameterINS_17LearnerTrainParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_ESaISC_EEEESE_RKT_"}
!1017 = !{!1018}
!1018 = distinct !{!1018, !1019, !"_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_: argument 0"}
!1019 = distinct !{!1019, !"_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE18UpdateAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_"}
!1020 = !{!1018, !1015}
!1021 = !{!1022}
!1022 = distinct !{!1022, !1023, !"_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_: argument 0"}
!1023 = distinct !{!1023, !"_ZN4dmlc9ParameterIN7xgboost17LearnerTrainParamEE16InitAllowUnknownISt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ESaISD_EEEESF_RKT_"}
!1024 = !{!1022, !1015}
!1025 = !{!1026}
!1026 = distinct !{!1026, !1027, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!1027 = distinct !{!1027, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1027, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!1030 = !{!1026, !1029}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!1033 = distinct !{!1033, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_"}
!1034 = !{!1035}
!1035 = distinct !{!1035, !1033, !"_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!1036 = !{!1032, !1035}
!1037 = !{!1038}
!1038 = distinct !{!1038, !1039, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1039 = distinct !{!1039, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1042, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1042 = distinct !{!1042, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1043 = !{!1041, !1038}
!1044 = !{!1045, !31, i64 0}
!1045 = !{!"_ZTSSt10_Head_baseILm0EPN7xgboost6MetricELb0EE", !31, i64 0}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZSt19__relocate_object_aISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!1048 = distinct !{!1048, !"_ZSt19__relocate_object_aISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1048, !"_ZSt19__relocate_object_aISt10unique_ptrIN7xgboost6MetricESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!1051 = !{!1050, !1052}
!1052 = distinct !{!1052, !1053}
!1053 = distinct !{!1053, !"LVerDomain"}
!1054 = !{!1047, !1055}
!1055 = distinct !{!1055, !1053}
!1056 = distinct !{!1056, !34, !406, !407}
!1057 = distinct !{!1057, !34, !406}
!1058 = distinct !{!1058, !34}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1061, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1061 = distinct !{!1061, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1062 = !{!1063}
!1063 = distinct !{!1063, !1064, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1064 = distinct !{!1064, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1065 = !{!1063, !1060}
!1066 = !{!1067}
!1067 = distinct !{!1067, !1068, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1068 = distinct !{!1068, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1069 = !{!1070}
!1070 = distinct !{!1070, !1071, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1071 = distinct !{!1071, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1072 = !{!1070, !1067}
!1073 = !{!1074, !1076}
!1074 = distinct !{!1074, !1075, !"_ZN4dmlc16type_name_helperIN7xgboost6common10ParamArrayIfEEE5valueB5cxx11Ev: argument 0"}
!1075 = distinct !{!1075, !"_ZN4dmlc16type_name_helperIN7xgboost6common10ParamArrayIfEEE5valueB5cxx11Ev"}
!1076 = distinct !{!1076, !1077, !"_ZN4dmlc9type_nameIN7xgboost6common10ParamArrayIfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv: argument 0"}
!1077 = distinct !{!1077, !"_ZN4dmlc9type_nameIN7xgboost6common10ParamArrayIfEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv"}
!1078 = !{!1079, !25, i64 120}
!1079 = !{!"_ZTSN4dmlc9parameter16FieldAccessEntryE", !61, i64 8, !25, i64 16, !22, i64 24, !22, i64 56, !22, i64 88, !25, i64 120}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_ZNK7xgboost10StringViewcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!1082 = distinct !{!1082, !"_ZNK7xgboost10StringViewcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!1083 = !{!1079, !61, i64 8}
!1084 = !{!1085, !61, i64 133}
!1085 = !{!"_ZTSN4dmlc9parameter17FieldEntryNumericINS0_10FieldEntryIjEEjEE", !1086, i64 0, !61, i64 132, !61, i64 133, !5, i64 136, !5, i64 140}
!1086 = !{!"_ZTSN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIjEEjEE", !1079, i64 0, !5, i64 128}
!1087 = !{!1086, !5, i64 128}
!1088 = !{!1089, !5, i64 128}
!1089 = !{!"_ZTSN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIiEEiEE", !1079, i64 0, !5, i64 128}
!1090 = !{!1079, !25, i64 16}
!1091 = !{!1092, !61, i64 132}
!1092 = !{!"_ZTSN4dmlc9parameter17FieldEntryNumericINS0_10FieldEntryIiEEiEE", !1089, i64 0, !61, i64 132, !61, i64 133, !5, i64 136, !5, i64 140}
!1093 = !{!1092, !61, i64 133}
!1094 = !{!1095, !61, i64 144}
!1095 = !{!"_ZTSN4dmlc9parameter10FieldEntryIiEE", !1092, i64 0, !61, i64 144, !1096, i64 152, !1099, i64 200}
!1096 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE", !1097, i64 0}
!1097 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !1098, i64 0}
!1098 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !382, i64 0, !108, i64 8}
!1099 = !{!"_ZTSSt3mapIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIiESaISt4pairIKiS5_EEE", !1100, i64 0}
!1100 = !{!"_ZTSSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE", !1101, i64 0}
!1101 = !{!"_ZTSNSt8_Rb_treeIiSt4pairIKiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !1102, i64 0, !108, i64 8}
!1102 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIiEE", !1103, i64 0}
!1103 = !{!"_ZTSSt4lessIiE"}
!1104 = !{!1105, !1107}
!1105 = distinct !{!1105, !1106, !"_ZN4dmlc16type_name_helperIiE5valueB5cxx11Ev: argument 0"}
!1106 = distinct !{!1106, !"_ZN4dmlc16type_name_helperIiE5valueB5cxx11Ev"}
!1107 = distinct !{!1107, !1108, !"_ZN4dmlc9type_nameIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv: argument 0"}
!1108 = distinct !{!1108, !"_ZN4dmlc9type_nameIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv"}
!1109 = !{ptr @_ZN4dmlc9parameter16FieldAccessEntryD2Ev}
!1110 = !{ptr @_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_ED2Ev}
!1111 = !{ptr @_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIN7xgboost6common10ParamArrayIfEEEES6_ED2Ev, ptr @_ZN4dmlc9parameter16FieldAccessEntryD2Ev}
!1112 = !{!1113}
!1113 = distinct !{!1113, !1114, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1114 = distinct !{!1114, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1115 = !{!1116}
!1116 = distinct !{!1116, !1117, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1117 = distinct !{!1117, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1118 = !{!1116, !1113}
!1119 = !{!1120}
!1120 = distinct !{!1120, !1121, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1121 = distinct !{!1121, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1124 = distinct !{!1124, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1125 = !{!1123, !1120}
!1126 = distinct !{!1126, !34}
!1127 = !{!1128, !1128, i64 0}
!1128 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE", !13, i64 0}
!1129 = !{!1130, !1131, i64 8}
!1130 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4dmlc9parameter16FieldAccessEntryEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeE", !1128, i64 0, !1131, i64 8}
!1131 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryEEE", !13, i64 0}
!1132 = distinct !{!1132, !34}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZN4dmlc9type_nameIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv: argument 0"}
!1135 = distinct !{!1135, !"_ZN4dmlc9type_nameIjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_ZN4dmlc16type_name_helperIjE5valueB5cxx11Ev: argument 0"}
!1138 = distinct !{!1138, !"_ZN4dmlc16type_name_helperIjE5valueB5cxx11Ev"}
!1139 = !{!1137, !1134}
!1140 = !{!1085, !61, i64 132}
!1141 = !{!1085, !5, i64 136}
!1142 = !{!1085, !5, i64 140}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1145, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1145 = distinct !{!1145, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!1148 = distinct !{!1148, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!1149 = !{!1147, !1144}
end_hunk_1
