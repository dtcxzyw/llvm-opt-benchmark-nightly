Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/c_api?download=true
inline.NumInlined: 16379
inline.NumDeleted: 3208
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 38
begin_hunk_0_@XGBoosterTrainOneIter:bb.a
.body159:                                         ; preds = %bb.ch, %bb.bm, %bb.ck
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.ck ], [ %i.jz, %bb.ch ], [ %i.ie, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.body97

.body97:                                          ; preds = %bb.av, %bb.be, %bb.cf, %.body159, %bb.cg, %_ZN7xgboost4JsonD2Ev.exit5.i94
  %.pn54.pn.pn.pn.pn = phi { ptr, i32 } [ %i.az, %_ZN7xgboost4JsonD2Ev.exit5.i94 ], [ %i.jy, %bb.cg ], [ %.pn45.pn, %bb.av ], [ %.pn51.pn, %bb.cf ], [ %.pn48.pn, %bb.be ], [ %.pn54.pn, %.body159 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body90

.body90:                                          ; preds = %bb.an, %_ZN7xgboost4JsonD2Ev.exit5.i, %.body97
  %.pn54.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn, %.body97 ], [ %i.dv, %bb.an ], [ %i.ai, %_ZN7xgboost4JsonD2Ev.exit5.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #19
  br label %bb.cl

bb.cl:                                            ; preds = %.body90, %bb.am
  %.pn54.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn.pn, %.body90 ], [ %i.du, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

.body:                                            ; preds = %bb.l, %bb.r, %bb.cl, %bb.d, %bb.f
  %.pn54.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %.pn54.pn.pn.pn.pn.pn.pn, %bb.cl ], [ %.pn43, %bb.r ], [ %.pn, %bb.l ], [ %i.m, %bb.f ] ; 3 uses
  %.16 = extractvalue { ptr, i32 } %.pn54.pn.pn.pn.pn.pn.pn.pn.pn, 0 ; 2 uses
  %.1637 = extractvalue { ptr, i32 } %.pn54.pn.pn.pn.pn.pn.pn.pn.pn, 1 ; 2 uses
  %i.kc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #19
  %i.kd = icmp eq i32 %.1637, %i.kc
  br i1 %i.kd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.body
  %i.ke = call ptr @__cxa_begin_catch(ptr %.16) #19 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !63
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = call noundef ptr %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.ke) #19, !inline_history !7
  invoke void @_Z18XGBAPISetLastErrorPKc(ptr noundef %i.ki)
          to label %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit unwind label %bb.cv

_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit:    ; preds = %bb.cm
  call void @__cxa_end_catch()
  br label %bb.cw

bb.cn:                                            ; preds = %.body
  %i.kj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.kk = icmp eq i32 %.1637, %i.kj
  br i1 %i.kk, label %bb.co, label %bb.cx

bb.co:                                            ; preds = %bb.cn
  %i.kl = call ptr @__cxa_begin_catch(ptr %.16) #19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !63
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = call noundef ptr %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.kl) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %i.kp, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.cp unwind label %bb.cr

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4dmlc5ErrorE, i64 16), ptr %21, align 8, !tbaa !63
  %i.kq = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #19, !inline_history !7
  invoke void @_Z18XGBAPISetLastErrorPKc(ptr noundef %i.kq)
          to label %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit171 unwind label %bb.ct

_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit171: ; preds = %bb.cq
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #19
  %i.kr = load ptr, ptr %22, align 8, !tbaa !75   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit171
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !58
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @__cxa_end_catch()
  br label %bb.cw

bb.cr:                                            ; preds = %bb.co
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.cs:                                            ; preds = %bb.cp
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #19
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn64 = phi { ptr, i32 } [ %i.ky, %bb.ct ], [ %i.kx, %bb.cs ] ; 2 uses
  %i.kz = load ptr, ptr %22, align 8, !tbaa !75   ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.cu
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !58
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.cr
  %.pn64.pn = phi { ptr, i32 } [ %i.kw, %bb.cr ], [ %.pn64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %.pn64, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  invoke void @__cxa_end_catch()
          to label %bb.cx unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cm
  %i.le = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cx unwind label %bb.cy

bb.cw:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit
  %.0 = phi i32 [ 0, %_ZNSt12__shared_ptrIN7xgboost7DMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167 ], [ -1, %_Z21XGBAPIHandleExceptionRKN4dmlc5ErrorE.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i32 %.0

bb.cx:                                            ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.cn
  %.merged = phi { ptr, i32 } [ %.pn64.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %.pn54.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cn ], [ %i.le, %bb.cv ]
  resume { ptr, i32 } %.merged

bb.cy:                                            ; preds = %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.bh, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp196.loopexit.split-lp, %bb.q, %bb.k
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost26CopyGradientFromCudaArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES6_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(66) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(66) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.a, ptr noundef nonnull @.str.170, i32 noundef 187)
  %i.b = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.b

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.171, i64 noundef 46)
          to label %_ZN7xgboost6common16AssertGPUSupportEv.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #38
  unreachable

_ZN7xgboost6common16AssertGPUSupportEv.exit:      ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES6_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1, ptr noundef nonnull align 8 dereferenceable(66) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"struct.xgboost::DeviceOrd", align 4 ; 4 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %class.anon.473, align 8            ; 6 uses
  %9 = alloca %class.anon.192, align 8            ; 6 uses
  %10 = alloca %"class.xgboost::ArrayInterface.100", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %13 = alloca %"class.xgboost::linalg::TensorView.189", align 8 ; 13 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !347
  %i.h = tail call noundef zeroext i1 @_ZN7xgboost21ArrayInterfaceHandler9IsCudaPtrEPKv(ptr noundef %i.g) ; 2 uses
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %i.d, align 1, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !347
  %i.l = tail call noundef zeroext i1 @_ZN7xgboost21ArrayInterfaceHandler9IsCudaPtrEPKv(ptr noundef %i.k) ; 2 uses
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr %i.e, align 1, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.n = xor i1 %i.h, %i.l
  br i1 %i.n, label %_ZN4dmlc11LogCheck_EQIbbEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.a

_ZN4dmlc11LogCheck_EQIbbEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatIbbEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %.pr = load ptr, ptr %11, align 8, !tbaa !127
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.a, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_EQIbbEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.o = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.o, ptr noundef nonnull @.str.4, i32 noundef 1163)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.p = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.25, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.73, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.s = load ptr, ptr %11, align 8, !tbaa !127   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !57
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.t, i64 noundef %i.v)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.74, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.e unwind label %bb.x

common.resume:                                    ; preds = %bb.u, %bb.o, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.e ], [ %.pn.i, %bb.o ], [ %i.ck, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %common.resume

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %.pr26 = load ptr, ptr %11, align 8, !tbaa !127 ; 4 uses
  %.not.i = icmp eq ptr %.pr26, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.a, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %.pr26, align 8, !tbaa !75 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pr26, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr26, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.a

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.a: ; preds = %bb.a, %_ZN4dmlc11LogCheck_EQIbbEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ag = load i8, ptr %i.d, align 1, !tbaa !102, !range !77, !noundef !78
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.s, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !76 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !76 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.aj, ptr %i.am, align 8, !tbaa !76
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.al, ptr %i.an, align 8, !tbaa !76
  %i.ao = mul i64 %i.al, %i.aj
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(25) %3, i64 noundef %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %3), !noalias !754 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !755, !noalias !754 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !350, !noalias !754 ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !759, !noalias !754
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.ptr13.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !76, !alias.scope !754
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.as, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !tbaa !351, !alias.scope !754
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.as, ptr %i.bb, align 8, !tbaa !354, !alias.scope !754
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 -65536, ptr %i.bc, align 8, !alias.scope !754
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !76, !noalias !754 ; 3 uses
  store i64 %i.bd, ptr %i.az, align 8, !tbaa !76, !alias.scope !754
  %i.be = load i64, ptr %i.an, align 8, !tbaa !76, !noalias !754 ; 3 uses
  store i64 %i.be, ptr %.ptr13.i.i.i, align 8, !tbaa !76, !alias.scope !754
  switch i8 %i.ay, label %bb.k [
    i8 0, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  store i64 1, ptr %.ptr.i.i.i, align 8, !tbaa !76, !alias.scope !754
  store i64 %i.be, ptr %13, align 8, !tbaa !76, !alias.scope !754
  br label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv.exit

bb.j:                                             ; preds = %bb.h
  store i64 1, ptr %13, align 8, !tbaa !76, !alias.scope !754
  store i64 %i.bd, ptr %.ptr.i.i.i, align 8, !tbaa !76, !alias.scope !754
  br label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv.exit

bb.k:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #38, !noalias !754
  unreachable

_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv.exit: ; preds = %bb.i, %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.bg = icmp eq ptr %i.ar, %i.as
  %i.bh = mul i64 %i.be, %i.bd
  %.sink.i.i.i.i = select i1 %i.bg, i64 0, i64 %i.bh
  store i64 %.sink.i.i.i.i, ptr %i.bf, align 8, !tbaa !355, !alias.scope !754
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %13, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %2, ptr %.sroa.3.0..sroa_idx, align 8
  store i32 -65536, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !760
  %i.bk = shl i64 %i.bj, 3                        ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !50
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %"_ZN7xgboost13DispatchDTypeILi2EZNS_22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES7_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEE3$_0EEvNS4_IXT_EXeqT_Li1EEEENS_9DeviceOrdET0_.exit"

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EE8HostViewEv.exit
  call void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i24 = icmp eq ptr %.pr.i, null
  br i1 %.not.i24, label %"_ZN7xgboost13DispatchDTypeILi2EZNS_22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES7_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEE3$_0EEvNS4_IXT_EXeqT_Li1EEEENS_9DeviceOrdET0_.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bm = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bm, ptr noundef nonnull @.str.188, i32 noundef 673)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.m

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc.i
  %i.bn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.n ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.25, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull @.str.329, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.bq = load ptr, ptr %6, align 8, !tbaa !127   ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !75
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !57
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.i unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.i, %.noexc.i, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.bw, %bb.m ], [ %i.bx, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pr11.i = load ptr, ptr %6, align 8, !tbaa !127 ; 4 uses
  %.not.i.i = icmp eq ptr %.pr11.i, null
  br i1 %.not.i.i, label %"_ZN7xgboost13DispatchDTypeILi2EZNS_22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES7_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEE3$_0EEvNS4_IXT_EXeqT_Li1EEEENS_9DeviceOrdET0_.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = load ptr, ptr %.pr11.i, align 8, !tbaa !75 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pr11.i, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !58
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr11.i, i64 noundef 32) #36
  br label %"_ZN7xgboost13DispatchDTypeILi2EZNS_22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES7_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEE3$_0EEvNS4_IXT_EXeqT_Li1EEEENS_9DeviceOrdET0_.exit"

bb.r:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #38
  unreachable

"_ZN7xgboost13DispatchDTypeILi2EZNS_22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES7_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEE3$_0EEvNS4_IXT_EXeqT_Li1EEEENS_9DeviceOrdET0_.exit": ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 65
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !212
  store ptr %9, ptr %8, align 8, !tbaa !139
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %10, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !761
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %5, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !762
  call fastcc void @"_ZN7xgboost13DispatchDTypeIZNS_13DispatchDTypeILi2EZNS_22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES8_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEE3$_0EEvNS5_IXT_EXeqT_Li1EEEENS_9DeviceOrdET0_EUlT_E_EEDaNS_21ArrayInterfaceHandler4TypeESK_"(i8 noundef signext %i.cg, ptr noundef nonnull byval(%class.anon.473) align 8 %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ch = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.170, i32 noundef 187)
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.t

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.s
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.171, i64 noundef 46)
          to label %_ZN7xgboost26CopyGradientFromCudaArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES6_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %common.resume

bb.v:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #38
  unreachable

_ZN7xgboost26CopyGradientFromCudaArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES6_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.w

bb.w:                                             ; preds = %_ZN7xgboost26CopyGradientFromCudaArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES6_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEE.exit, %"_ZN7xgboost13DispatchDTypeILi2EZNS_22CopyGradientFromArraysEPKNS_7ContextERKNS_14ArrayInterfaceILi2ELb0EEES7_PNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEE3$_0EEvNS4_IXT_EXeqT_Li1EEEENS_9DeviceOrdET0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret void

bb.x:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #38
  unreachable
}

declare noundef zeroext i1 @_ZN7xgboost21ArrayInterfaceHandler9IsCudaPtrEPKv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @XGBoosterTrainOneIterWithSplitGrad(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.xgboost::Json", align 8     ; 7 uses
  %8 = alloca %"class.xgboost::Json", align 8     ; 7 uses
  %9 = alloca %"class.xgboost::Json", align 8     ; 7 uses
  %10 = alloca %"class.xgboost::Json", align 8    ; 7 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"struct.xgboost::GradientContainer", align 8 ; 12 uses
  %13 = alloca %"class.xgboost::ArrayInterface.100", align 8 ; 7 uses
  %14 = alloca %"class.xgboost::ArrayInterface.100", align 8 ; 7 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %17 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %18 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %19 = alloca %"class.xgboost::ArrayInterface.100", align 8 ; 7 uses
  %20 = alloca %"class.xgboost::ArrayInterface.100", align 8 ; 7 uses
  %21 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %22 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %23 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %24 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %25 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %26 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %27 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %28 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.j = alloca i64, align 8                      ; 7 uses
  %29 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %30 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %31 = alloca %"struct.dmlc::Error", align 8     ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc98 unwind label %bb.f

.noexc98:                                         ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str.173, i32 noundef 273)
          to label %.noexc99 unwind label %bb.f

.noexc99:                                         ; preds = %.noexc98
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.c

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %.noexc99
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.184, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN7xgboost6detail11EmptyHandleEv.exit unwind label %bb.f

bb.c:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %.noexc99
  %i.o = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #38
  unreachable

_ZN7xgboost6detail11EmptyHandleEv.exit:           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc98, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  br label %.body

bb.g:                                             ; preds = %_ZN7xgboost6detail11EmptyHandleEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEEC1EmS3_NS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(64) %12, i64 noundef 0, <2 x float> zeroinitializer, i32 -65536)
          to label %.noexc101 unwind label %bb.ac

.noexc101:                                        ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.s, i8 0, i64 17, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  invoke void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEEC1EmS3_NS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(25) %i.t, i64 noundef 0, <2 x float> zeroinitializer, i32 -65536)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %.noexc101
  %i.u = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %12) #19
  br label %.body102

bb.i:                                             ; preds = %.noexc101
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.v, i8 0, i64 17, i1 false)
  %i.w = load ptr, ptr %0, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef ptr %i.y(ptr noundef nonnull align 8 dereferenceable(5152) %0)
          to label %bb.j unwind label %bb.ad      ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.aa = icmp eq ptr %3, null
  br i1 %i.aa, label %_ZN7xgboost10StringViewC2EPKc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  br label %_ZN7xgboost10StringViewC2EPKc.exit

_ZN7xgboost10StringViewC2EPKc.exit:               ; preds = %bb.j, %bb.k
  %i.ac = phi i64 [ %i.ab, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZN7xgboost4Json4LoadENS_10StringViewESt13_Ios_Openmode(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::Json") align 8 %10, ptr %3, i64 %i.ac, i32 noundef 8)
          to label %.noexc104 unwind label %bb.ae

.noexc104:                                        ; preds = %_ZN7xgboost10StringViewC2EPKc.exit
  invoke void @_ZN7xgboost14ArrayInterfaceILi2ELb0EEC2ERKNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(66) %13, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.noexc104
  %i.ad = load ptr, ptr %10, align 8, !tbaa !61   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i32 -1 release, align 4
end_hunk_0
