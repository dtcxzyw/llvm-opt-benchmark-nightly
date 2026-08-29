Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/multiclass_obj?download=true
inline.NumInlined: 3054
inline.NumDeleted: 1257
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE24_M_get_insert_unique_posERS7_:bb.a
  %.08.i.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i.i12 = trunc nsw i64 %.08.i.i.i.i.i11 to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9
  %.0.i.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i6 ], [ %.0.i6.i.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i.i8, 0            ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare void @_ZN7xgboost10JsonObjectC1EOS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #15

declare noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7xgboost3obj12_GLOBAL__N_113ValidateLabelEPKNS_7ContextERKNS_8MetaInfoEl(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.xgboost::linalg::TensorView", align 8 ; 18 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %9 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.d, align 8
  call void @_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::TensorView") align 8 %6, ptr noundef nonnull align 8 dereferenceable(25) %i.c, i32 %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 1, ptr %i.b, align 4, !tbaa !91
  %.not.i = icmp ugt i64 %i.f, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_LEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_LEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_LEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_LEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %7, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_LEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.68, i32 noundef 41)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.32, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.79, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load ptr, ptr %7, align 8, !tbaa !132    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.80, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.e unwind label %bb.az

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ay

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.pr33 = load ptr, ptr %7, align 8, !tbaa !132  ; 4 uses
  %.not.i22 = icmp eq ptr %.pr33, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %.pr33, align 8, !tbaa !9  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pr33, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !15
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr33, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_LEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_LEImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i to i16
  %.off.i.i = add i16 %.sroa.0.0.extract.trunc.i, -2
  %switch.i.i = icmp ult i16 %.off.i.i, 3
  br i1 %switch.i.i, label %bb.h, label %bb.l, !prof !409

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.y, ptr noundef nonnull @.str.83, i32 noundef 205)
  %i.z = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i unwind label %bb.i

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i: ; preds = %bb.h
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.84, i64 noundef 47)
          to label %"_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelEPKNS_7ContextERKNS_8MetaInfoElENK3$_1clEv.exit.i" unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %bb.k

common.resume:                                    ; preds = %bb.j, %bb.an, %bb.au, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %.pn9, %bb.ay ], [ %i.ab, %bb.j ], [ %i.il, %bb.an ], [ %.pn.i.i, %bb.au ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #37
  unreachable

"_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelEPKNS_7ContextERKNS_8MetaInfoElENK3$_1clEv.exit.i": ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread"

bb.l:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %sext.i.i = shl i32 %.sroa.0.0.copyload.i.i, 16
  %i.ae = ashr exact i32 %sext.i.i, 16
  switch i32 %i.ae, label %bb.ap [
    i32 0, label %bb.m
    i32 1, label %bb.al
  ]

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !410 ; 4 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m
  %i.ai = load i64, ptr %6, align 8, !tbaa !17    ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !411 ; 4 uses
  %i.an = sitofp i64 %2 to float                  ; 4 uses
  %10 = and i64 %i.ag, -4
  %i.ao = load i64, ptr %i.e, align 8             ; 15 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 14 uses
  %i.aq = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ap)
  %.not.i7.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.aq, 2 ; 4 uses
  %i.ar = add i32 %i.ap, -1                       ; 5 uses
  %i.as = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ar) ; 4 uses
  %i.at = add i64 %i.ao, -1                       ; 4 uses
  %i.au = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.av = shufflevector <2 x i64> %i.au, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aw = add <2 x i64> %i.av, <i64 0, i64 -1>
  %i.ax = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.aw) ; 2 uses
  %i.ay = extractelement <2 x i64> %i.ax, i64 1   ; 4 uses
  %i.az = extractelement <2 x i64> %i.ax, i64 0
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.az, 2 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i
  %.0201.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ed, %bb.z ] ; 2 uses
  %.sroa.0149.0200.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ec, %bb.z ] ; 11 uses
  %i.ba = icmp ugt i64 %.sroa.0149.0200.i.i.i.i.i, 4294967295 ; 4 uses
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.o
  %i.bb = lshr i64 %.sroa.0149.0200.i.i.i.i.i, %i.ay
  %i.bc = and i64 %i.at, %.sroa.0149.0200.i.i.i.i.i
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.o
  %i.bd = udiv i64 %.sroa.0149.0200.i.i.i.i.i, %i.ao ; 2 uses
  %i.be = mul i64 %i.bd, %i.ao                    ; 0 uses
  %.recomposed = urem i64 %.sroa.0149.0200.i.i.i.i.i, %i.ao
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bf = trunc nuw i64 %.sroa.0149.0200.i.i.i.i.i to i32 ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i.i.i.i.i.i, label %.split.i8.i.i.i.i.i.i.i.i.i

.split.us.i11.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.p
  %i.bg = lshr i32 %i.bf, %i.as
  %i.bh = and i32 %i.ar, %i.bf
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i

.split.i8.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.p
  %i.bi = udiv i32 %i.bf, %i.ap                   ; 2 uses
  %i.bj = mul i32 %i.bi, %i.ap                    ; 0 uses
  %.recomposed41 = urem i32 %i.bf, %i.ap
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i.i.i.i.i.i, %.split.us.i11.i.i.i.i.i.i.i.i.i
  %.us-phi.i9.i.i.i.i.i.i.i.i.i = phi i32 [ %.recomposed41, %.split.i8.i.i.i.i.i.i.i.i.i ], [ %i.bh, %.split.us.i11.i.i.i.i.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bi, %.split.i8.i.i.i.i.i.i.i.i.i ], [ %i.bg, %.split.us.i11.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i.i.i.i.i.i to i64
  %i.bk = zext i32 %.us-phi23.i10.i.i.i.i.i.i.i.i.i to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i ], [ %.recomposed, %.split.i.i.i.i.i.i.i.i.i.i ], [ %i.bc, %.split.us.i.i.i.i.i.i.i.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bk, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i.i.i.i.i.i ], [ %i.bd, %.split.i.i.i.i.i.i.i.i.i.i ], [ %i.bb, %.split.us.i.i.i.i.i.i.i.i.i.i ]
  %i.bl = mul i64 %.sink.i.i.i.i.i.i.i.i.i, %i.ai
  %i.bm = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i.i.i.i.i.i, %i.ak
  %i.bn = getelementptr [4 x i8], ptr %i.am, i64 %i.bl
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %i.bm
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !273 ; 4 uses
  %i.bq = fcmp ult float %i.bp, 0.000000e+00
  %i.br = fcmp uge float %i.bp, %i.an
  %or.cond.i.i.not192.i.i.i.i.i = or i1 %i.bq, %i.br
  %i.bs = call float @llvm.trunc.f32(float %i.bp)
  %i.bt = fcmp une float %i.bs, %i.bp
  %or.cond.i.i.i.i.i = or i1 %or.cond.i.i.not192.i.i.i.i.i, %i.bt
  br i1 %or.cond.i.i.i.i.i, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit", label %bb.q

bb.q:                                             ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.i
  %i.bu = or disjoint i64 %.sroa.0149.0200.i.i.i.i.i, 1 ; 6 uses
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i55.i.i.i.i.i, label %.split.i.i.i.i.i54.i.i.i.i.i

.split.us.i.i.i.i.i55.i.i.i.i.i:                  ; preds = %bb.r
  %i.bv = lshr i64 %i.bu, %i.ay
  %i.bw = and i64 %i.at, %i.bu
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i48.i.i.i.i.i

.split.i.i.i.i.i54.i.i.i.i.i:                     ; preds = %bb.r
  %i.bx = udiv i64 %i.bu, %i.ao                   ; 2 uses
  %i.by = mul i64 %i.bx, %i.ao                    ; 0 uses
  %.recomposed42 = urem i64 %i.bu, %i.ao
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i48.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bz = trunc nuw i64 %i.bu to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i52.i.i.i.i.i, label %.split.i8.i.i.i.i43.i.i.i.i.i

.split.us.i11.i.i.i.i52.i.i.i.i.i:                ; preds = %bb.s
  %i.ca = lshr i32 %i.bz, %i.as
  %i.cb = and i32 %i.ar, %i.bz
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i44.i.i.i.i.i

.split.i8.i.i.i.i43.i.i.i.i.i:                    ; preds = %bb.s
  %i.cc = udiv i32 %i.bz, %i.ap                   ; 2 uses
  %i.cd = mul i32 %i.cc, %i.ap                    ; 0 uses
  %.recomposed43 = urem i32 %i.bz, %i.ap
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i44.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i44.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i43.i.i.i.i.i, %.split.us.i11.i.i.i.i52.i.i.i.i.i
  %.us-phi.i9.i.i.i.i45.i.i.i.i.i = phi i32 [ %.recomposed43, %.split.i8.i.i.i.i43.i.i.i.i.i ], [ %i.cb, %.split.us.i11.i.i.i.i52.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i46.i.i.i.i.i = phi i32 [ %i.cc, %.split.i8.i.i.i.i43.i.i.i.i.i ], [ %i.ca, %.split.us.i11.i.i.i.i52.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i47.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i45.i.i.i.i.i to i64
  %i.ce = zext i32 %.us-phi23.i10.i.i.i.i46.i.i.i.i.i to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i48.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i48.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i44.i.i.i.i.i, %.split.i.i.i.i.i54.i.i.i.i.i, %.split.us.i.i.i.i.i55.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i49.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i47.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i44.i.i.i.i.i ], [ %.recomposed42, %.split.i.i.i.i.i54.i.i.i.i.i ], [ %i.bw, %.split.us.i.i.i.i.i55.i.i.i.i.i ]
  %.sink.i.i.i.i50.i.i.i.i.i = phi i64 [ %i.ce, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i44.i.i.i.i.i ], [ %i.bx, %.split.i.i.i.i.i54.i.i.i.i.i ], [ %i.bv, %.split.us.i.i.i.i.i55.i.i.i.i.i ]
  %i.cf = mul i64 %.sink.i.i.i.i50.i.i.i.i.i, %i.ai
  %i.cg = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i49.i.i.i.i.i, %i.ak
  %i.ch = getelementptr [4 x i8], ptr %i.am, i64 %i.cf
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !273 ; 4 uses
  %i.ck = fcmp ult float %i.cj, 0.000000e+00
  %i.cl = fcmp uge float %i.cj, %i.an
  %or.cond.i.i51.not194.i.i.i.i.i = or i1 %i.ck, %i.cl
  %i.cm = call float @llvm.trunc.f32(float %i.cj)
  %i.cn = fcmp une float %i.cm, %i.cj
  %or.cond174.i.i.i.i.i = or i1 %or.cond.i.i51.not194.i.i.i.i.i, %i.cn
  br i1 %or.cond174.i.i.i.i.i, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit", label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i48.i.i.i.i.i
  %i.co = or disjoint i64 %.sroa.0149.0200.i.i.i.i.i, 2 ; 6 uses
  br i1 %i.ba, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i70.i.i.i.i.i, label %.split.i.i.i.i.i69.i.i.i.i.i

.split.us.i.i.i.i.i70.i.i.i.i.i:                  ; preds = %bb.u
  %i.cp = lshr i64 %i.co, %i.ay
  %i.cq = and i64 %i.at, %i.co
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i63.i.i.i.i.i

.split.i.i.i.i.i69.i.i.i.i.i:                     ; preds = %bb.u
  %i.cr = udiv i64 %i.co, %i.ao                   ; 2 uses
  %i.cs = mul i64 %i.cr, %i.ao                    ; 0 uses
  %.recomposed44 = urem i64 %i.co, %i.ao
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i63.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ct = trunc nuw i64 %i.co to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i67.i.i.i.i.i, label %.split.i8.i.i.i.i58.i.i.i.i.i

.split.us.i11.i.i.i.i67.i.i.i.i.i:                ; preds = %bb.v
  %i.cu = lshr i32 %i.ct, %i.as
  %i.cv = and i32 %i.ar, %i.ct
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i59.i.i.i.i.i

.split.i8.i.i.i.i58.i.i.i.i.i:                    ; preds = %bb.v
  %i.cw = udiv i32 %i.ct, %i.ap                   ; 2 uses
  %i.cx = mul i32 %i.cw, %i.ap                    ; 0 uses
  %.recomposed45 = urem i32 %i.ct, %i.ap
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i59.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i59.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i58.i.i.i.i.i, %.split.us.i11.i.i.i.i67.i.i.i.i.i
  %.us-phi.i9.i.i.i.i60.i.i.i.i.i = phi i32 [ %.recomposed45, %.split.i8.i.i.i.i58.i.i.i.i.i ], [ %i.cv, %.split.us.i11.i.i.i.i67.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i61.i.i.i.i.i = phi i32 [ %i.cw, %.split.i8.i.i.i.i58.i.i.i.i.i ], [ %i.cu, %.split.us.i11.i.i.i.i67.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i62.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i60.i.i.i.i.i to i64
  %i.cy = zext i32 %.us-phi23.i10.i.i.i.i61.i.i.i.i.i to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i63.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i63.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i59.i.i.i.i.i, %.split.i.i.i.i.i69.i.i.i.i.i, %.split.us.i.i.i.i.i70.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i64.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i62.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i59.i.i.i.i.i ], [ %.recomposed44, %.split.i.i.i.i.i69.i.i.i.i.i ], [ %i.cq, %.split.us.i.i.i.i.i70.i.i.i.i.i ]
  %.sink.i.i.i.i65.i.i.i.i.i = phi i64 [ %i.cy, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i59.i.i.i.i.i ], [ %i.cr, %.split.i.i.i.i.i69.i.i.i.i.i ], [ %i.cp, %.split.us.i.i.i.i.i70.i.i.i.i.i ]
  %i.cz = mul i64 %.sink.i.i.i.i65.i.i.i.i.i, %i.ai
  %i.da = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i64.i.i.i.i.i, %i.ak
  %i.db = getelementptr [4 x i8], ptr %i.am, i64 %i.cz
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !273 ; 4 uses
  %i.de = fcmp ult float %i.dd, 0.000000e+00
  %i.df = fcmp uge float %i.dd, %i.an
  %or.cond.i.i66.not196.i.i.i.i.i = or i1 %i.de, %i.df
  %i.dg = call float @llvm.trunc.f32(float %i.dd)
  %i.dh = fcmp une float %i.dg, %i.dd
  %or.cond176.i.i.i.i.i = or i1 %or.cond.i.i66.not196.i.i.i.i.i, %i.dh
  br i1 %or.cond176.i.i.i.i.i, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit", label %bb.w

bb.w:                                             ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i63.i.i.i.i.i
  %i.di = or disjoint i64 %.sroa.0149.0200.i.i.i.i.i, 3 ; 6 uses
  br i1 %i.ba, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i85.i.i.i.i.i, label %.split.i.i.i.i.i84.i.i.i.i.i

.split.us.i.i.i.i.i85.i.i.i.i.i:                  ; preds = %bb.x
  %i.dj = lshr i64 %i.di, %i.ay
  %i.dk = and i64 %i.at, %i.di
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i78.i.i.i.i.i

.split.i.i.i.i.i84.i.i.i.i.i:                     ; preds = %bb.x
  %i.dl = udiv i64 %i.di, %i.ao                   ; 2 uses
  %i.dm = mul i64 %i.dl, %i.ao                    ; 0 uses
  %.recomposed46 = urem i64 %i.di, %i.ao
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i78.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dn = trunc nuw i64 %i.di to i32              ; 4 uses
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %.split.us.i11.i.i.i.i82.i.i.i.i.i, label %.split.i8.i.i.i.i73.i.i.i.i.i

.split.us.i11.i.i.i.i82.i.i.i.i.i:                ; preds = %bb.y
  %i.do = lshr i32 %i.dn, %i.as
  %i.dp = and i32 %i.ar, %i.dn
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i74.i.i.i.i.i

.split.i8.i.i.i.i73.i.i.i.i.i:                    ; preds = %bb.y
  %i.dq = udiv i32 %i.dn, %i.ap                   ; 2 uses
  %i.dr = mul i32 %i.dq, %i.ap                    ; 0 uses
  %.recomposed47 = urem i32 %i.dn, %i.ap
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i74.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i74.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i73.i.i.i.i.i, %.split.us.i11.i.i.i.i82.i.i.i.i.i
  %.us-phi.i9.i.i.i.i75.i.i.i.i.i = phi i32 [ %.recomposed47, %.split.i8.i.i.i.i73.i.i.i.i.i ], [ %i.dp, %.split.us.i11.i.i.i.i82.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i76.i.i.i.i.i = phi i32 [ %i.dq, %.split.i8.i.i.i.i73.i.i.i.i.i ], [ %i.do, %.split.us.i11.i.i.i.i82.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i77.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i75.i.i.i.i.i to i64
  %i.ds = zext i32 %.us-phi23.i10.i.i.i.i76.i.i.i.i.i to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i78.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i78.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i74.i.i.i.i.i, %.split.i.i.i.i.i84.i.i.i.i.i, %.split.us.i.i.i.i.i85.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i79.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i77.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i74.i.i.i.i.i ], [ %.recomposed46, %.split.i.i.i.i.i84.i.i.i.i.i ], [ %i.dk, %.split.us.i.i.i.i.i85.i.i.i.i.i ]
  %.sink.i.i.i.i80.i.i.i.i.i = phi i64 [ %i.ds, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i74.i.i.i.i.i ], [ %i.dl, %.split.i.i.i.i.i84.i.i.i.i.i ], [ %i.dj, %.split.us.i.i.i.i.i85.i.i.i.i.i ]
  %i.dt = mul i64 %.sink.i.i.i.i80.i.i.i.i.i, %i.ai
  %i.du = mul i64 %.sroa.5.1.le.i.sink.i.i.i.i79.i.i.i.i.i, %i.ak
  %i.dv = getelementptr [4 x i8], ptr %i.am, i64 %i.dt
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !273 ; 4 uses
  %i.dy = fcmp ult float %i.dx, 0.000000e+00
  %i.dz = fcmp uge float %i.dx, %i.an
  %or.cond.i.i81.not198.i.i.i.i.i = or i1 %i.dy, %i.dz
  %i.ea = call float @llvm.trunc.f32(float %i.dx)
  %i.eb = fcmp une float %i.ea, %i.dx
  %or.cond178.i.i.i.i.i = or i1 %or.cond.i.i81.not198.i.i.i.i.i, %i.eb
  br i1 %or.cond178.i.i.i.i.i, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit", label %bb.z

bb.z:                                             ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i78.i.i.i.i.i
  %i.ec = add nuw i64 %.sroa.0149.0200.i.i.i.i.i, 4
  %i.ed = add nsw i64 %.0201.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.0201.i.i.i.i.i, 1
  br i1 %i.ee, label %bb.n, label %._crit_edge.i.i.i.i.i, !llvm.loop !412

._crit_edge.i.i.i.i.i:                            ; preds = %bb.z, %bb.m
  %.sroa.0149.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %10, %bb.z ] ; 11 uses
  %i.ef = sub i64 %i.ag, %.sroa.0149.0.lcssa.i.i.i.i.i
  switch i64 %i.ef, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread36" [
    i64 3, label %bb.aa
    i64 2, label %bb.ae
    i64 1, label %bb.ai
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.eg = icmp ugt i64 %.sroa.0149.0.lcssa.i.i.i.i.i, 4294967295
  br i1 %i.eg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eh = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !413 ; 5 uses
  %i.ei = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.eh)
  %.not.i.i.i.i.i98.i.i.i.i.i = icmp samesign ult i64 %i.ei, 2
  br i1 %.not.i.i.i.i.i98.i.i.i.i.i, label %.split.us.i.i.i.i.i100.i.i.i.i.i, label %.split.i.i.i.i.i99.i.i.i.i.i

.split.us.i.i.i.i.i100.i.i.i.i.i:                 ; preds = %bb.ab
  %i.ej = add i64 %i.eh, -1                       ; 2 uses
  %i.ek = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ej)
  %i.el = lshr i64 %.sroa.0149.0.lcssa.i.i.i.i.i, %i.ek
  %i.em = and i64 %i.ej, %.sroa.0149.0.lcssa.i.i.i.i.i
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i93.i.i.i.i.i

.split.i.i.i.i.i99.i.i.i.i.i:                     ; preds = %bb.ab
  %i.en = udiv i64 %.sroa.0149.0.lcssa.i.i.i.i.i, %i.eh ; 2 uses
  %i.eo = mul i64 %i.en, %i.eh                    ; 0 uses
  %.recomposed48 = urem i64 %.sroa.0149.0.lcssa.i.i.i.i.i, %i.eh
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i93.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ep = trunc nuw i64 %.sroa.0149.0.lcssa.i.i.i.i.i to i32 ; 4 uses
  %i.eq = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !418
  %i.er = trunc i64 %i.eq to i32                  ; 5 uses
  %i.es = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.er)
  %.not.i7.i.i.i.i87.i.i.i.i.i = icmp samesign ult i32 %i.es, 2
  br i1 %.not.i7.i.i.i.i87.i.i.i.i.i, label %.split.us.i11.i.i.i.i97.i.i.i.i.i, label %.split.i8.i.i.i.i88.i.i.i.i.i

.split.us.i11.i.i.i.i97.i.i.i.i.i:                ; preds = %bb.ac
  %i.et = add i32 %i.er, -1                       ; 2 uses
  %i.eu = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.et)
  %i.ev = lshr i32 %i.ep, %i.eu
  %i.ew = and i32 %i.et, %i.ep
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i89.i.i.i.i.i

.split.i8.i.i.i.i88.i.i.i.i.i:                    ; preds = %bb.ac
  %i.ex = udiv i32 %i.ep, %i.er                   ; 2 uses
  %i.ey = mul i32 %i.ex, %i.er                    ; 0 uses
  %.recomposed49 = urem i32 %i.ep, %i.er
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i89.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i89.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i88.i.i.i.i.i, %.split.us.i11.i.i.i.i97.i.i.i.i.i
  %.us-phi.i9.i.i.i.i90.i.i.i.i.i = phi i32 [ %.recomposed49, %.split.i8.i.i.i.i88.i.i.i.i.i ], [ %i.ew, %.split.us.i11.i.i.i.i97.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i91.i.i.i.i.i = phi i32 [ %i.ex, %.split.i8.i.i.i.i88.i.i.i.i.i ], [ %i.ev, %.split.us.i11.i.i.i.i97.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i92.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i90.i.i.i.i.i to i64
  %i.ez = zext i32 %.us-phi23.i10.i.i.i.i91.i.i.i.i.i to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i93.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i93.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i89.i.i.i.i.i, %.split.i.i.i.i.i99.i.i.i.i.i, %.split.us.i.i.i.i.i100.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i92.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i89.i.i.i.i.i ], [ %.recomposed48, %.split.i.i.i.i.i99.i.i.i.i.i ], [ %i.em, %.split.us.i.i.i.i.i100.i.i.i.i.i ]
  %.sink.i.i.i.i95.i.i.i.i.i = phi i64 [ %i.ez, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i89.i.i.i.i.i ], [ %i.en, %.split.i.i.i.i.i99.i.i.i.i.i ], [ %i.el, %.split.us.i.i.i.i.i100.i.i.i.i.i ]
  %i.fa = load i64, ptr %6, align 8, !tbaa !17
  %i.fb = mul i64 %i.fa, %.sink.i.i.i.i95.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !17
  %i.fe = mul i64 %i.fd, %.sroa.5.1.le.i.sink.i.i.i.i94.i.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !411
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %i.fb
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %i.fe
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !273 ; 4 uses
  %i.fk = fcmp ult float %i.fj, 0.000000e+00
  %i.fl = sitofp i64 %2 to float
  %i.fm = fcmp uge float %i.fj, %i.fl
  %or.cond.i.i96.not186.i.i.i.i.i = or i1 %i.fk, %i.fm
  %i.fn = call float @llvm.trunc.f32(float %i.fj)
  %i.fo = fcmp une float %i.fn, %i.fj
  %or.cond180.i.i.i.i.i = or i1 %or.cond.i.i96.not186.i.i.i.i.i, %i.fo
  br i1 %or.cond180.i.i.i.i.i, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit", label %bb.ad

bb.ad:                                            ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i93.i.i.i.i.i
  %11 = or disjoint i64 %.sroa.0149.0.lcssa.i.i.i.i.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.sroa.0149.1.i.i.i.i.i = phi i64 [ %11, %bb.ad ], [ %.sroa.0149.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 8 uses
  %i.fp = icmp ugt i64 %.sroa.0149.1.i.i.i.i.i, 4294967295
  br i1 %i.fp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fq = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !421 ; 5 uses
  %i.fr = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fq)
  %.not.i.i.i.i.i113.i.i.i.i.i = icmp samesign ult i64 %i.fr, 2
  br i1 %.not.i.i.i.i.i113.i.i.i.i.i, label %.split.us.i.i.i.i.i115.i.i.i.i.i, label %.split.i.i.i.i.i114.i.i.i.i.i

.split.us.i.i.i.i.i115.i.i.i.i.i:                 ; preds = %bb.af
  %i.fs = add i64 %i.fq, -1                       ; 2 uses
  %i.ft = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fs)
  %i.fu = lshr i64 %.sroa.0149.1.i.i.i.i.i, %i.ft
  %i.fv = and i64 %i.fs, %.sroa.0149.1.i.i.i.i.i
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i108.i.i.i.i.i

.split.i.i.i.i.i114.i.i.i.i.i:                    ; preds = %bb.af
  %i.fw = udiv i64 %.sroa.0149.1.i.i.i.i.i, %i.fq ; 2 uses
  %i.fx = mul i64 %i.fw, %i.fq                    ; 0 uses
  %.recomposed50 = urem i64 %.sroa.0149.1.i.i.i.i.i, %i.fq
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i108.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.fy = trunc nuw i64 %.sroa.0149.1.i.i.i.i.i to i32 ; 4 uses
  %i.fz = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !426
  %i.ga = trunc i64 %i.fz to i32                  ; 5 uses
  %i.gb = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ga)
  %.not.i7.i.i.i.i102.i.i.i.i.i = icmp samesign ult i32 %i.gb, 2
  br i1 %.not.i7.i.i.i.i102.i.i.i.i.i, label %.split.us.i11.i.i.i.i112.i.i.i.i.i, label %.split.i8.i.i.i.i103.i.i.i.i.i

.split.us.i11.i.i.i.i112.i.i.i.i.i:               ; preds = %bb.ag
  %i.gc = add i32 %i.ga, -1                       ; 2 uses
  %i.gd = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.gc)
  %i.ge = lshr i32 %i.fy, %i.gd
  %i.gf = and i32 %i.gc, %i.fy
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i104.i.i.i.i.i

.split.i8.i.i.i.i103.i.i.i.i.i:                   ; preds = %bb.ag
  %i.gg = udiv i32 %i.fy, %i.ga                   ; 2 uses
  %i.gh = mul i32 %i.gg, %i.ga                    ; 0 uses
  %.recomposed51 = urem i32 %i.fy, %i.ga
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i104.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i104.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i103.i.i.i.i.i, %.split.us.i11.i.i.i.i112.i.i.i.i.i
  %.us-phi.i9.i.i.i.i105.i.i.i.i.i = phi i32 [ %.recomposed51, %.split.i8.i.i.i.i103.i.i.i.i.i ], [ %i.gf, %.split.us.i11.i.i.i.i112.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i106.i.i.i.i.i = phi i32 [ %i.gg, %.split.i8.i.i.i.i103.i.i.i.i.i ], [ %i.ge, %.split.us.i11.i.i.i.i112.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i107.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i105.i.i.i.i.i to i64
  %i.gi = zext i32 %.us-phi23.i10.i.i.i.i106.i.i.i.i.i to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i108.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i108.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i104.i.i.i.i.i, %.split.i.i.i.i.i114.i.i.i.i.i, %.split.us.i.i.i.i.i115.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i109.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i107.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i104.i.i.i.i.i ], [ %.recomposed50, %.split.i.i.i.i.i114.i.i.i.i.i ], [ %i.fv, %.split.us.i.i.i.i.i115.i.i.i.i.i ]
  %.sink.i.i.i.i110.i.i.i.i.i = phi i64 [ %i.gi, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i104.i.i.i.i.i ], [ %i.fw, %.split.i.i.i.i.i114.i.i.i.i.i ], [ %i.fu, %.split.us.i.i.i.i.i115.i.i.i.i.i ]
  %i.gj = load i64, ptr %6, align 8, !tbaa !17
  %i.gk = mul i64 %i.gj, %.sink.i.i.i.i110.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !17
  %i.gn = mul i64 %i.gm, %.sroa.5.1.le.i.sink.i.i.i.i109.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !411
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.gk
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !273 ; 4 uses
  %i.gt = fcmp ult float %i.gs, 0.000000e+00
  %i.gu = sitofp i64 %2 to float
  %i.gv = fcmp uge float %i.gs, %i.gu
  %or.cond.i.i111.not188.i.i.i.i.i = or i1 %i.gt, %i.gv
  %i.gw = call float @llvm.trunc.f32(float %i.gs)
  %i.gx = fcmp une float %i.gw, %i.gs
  %or.cond182.i.i.i.i.i = or i1 %or.cond.i.i111.not188.i.i.i.i.i, %i.gx
  br i1 %or.cond182.i.i.i.i.i, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit", label %bb.ah

bb.ah:                                            ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i108.i.i.i.i.i
  %i.gy = add nuw i64 %.sroa.0149.1.i.i.i.i.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i.i.i.i.i
  %.sroa.0149.2.i.i.i.i.i = phi i64 [ %i.gy, %bb.ah ], [ %.sroa.0149.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 7 uses
  %i.gz = icmp ugt i64 %.sroa.0149.2.i.i.i.i.i, 4294967295
  br i1 %i.gz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ha = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !429 ; 5 uses
  %i.hb = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ha)
  %.not.i.i.i.i.i128.i.i.i.i.i = icmp samesign ult i64 %i.hb, 2
  br i1 %.not.i.i.i.i.i128.i.i.i.i.i, label %.split.us.i.i.i.i.i130.i.i.i.i.i, label %.split.i.i.i.i.i129.i.i.i.i.i

.split.us.i.i.i.i.i130.i.i.i.i.i:                 ; preds = %bb.aj
  %i.hc = add i64 %i.ha, -1                       ; 2 uses
  %i.hd = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.hc)
  %i.he = lshr i64 %.sroa.0149.2.i.i.i.i.i, %i.hd
  %i.hf = and i64 %i.hc, %.sroa.0149.2.i.i.i.i.i
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i123.i.i.i.i.i

.split.i.i.i.i.i129.i.i.i.i.i:                    ; preds = %bb.aj
  %i.hg = udiv i64 %.sroa.0149.2.i.i.i.i.i, %i.ha ; 2 uses
  %i.hh = mul i64 %i.hg, %i.ha                    ; 0 uses
  %.recomposed52 = urem i64 %.sroa.0149.2.i.i.i.i.i, %i.ha
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i123.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.hi = trunc nuw i64 %.sroa.0149.2.i.i.i.i.i to i32 ; 4 uses
  %i.hj = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !434
  %i.hk = trunc i64 %i.hj to i32                  ; 5 uses
  %i.hl = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hk)
  %.not.i7.i.i.i.i117.i.i.i.i.i = icmp samesign ult i32 %i.hl, 2
  br i1 %.not.i7.i.i.i.i117.i.i.i.i.i, label %.split.us.i11.i.i.i.i127.i.i.i.i.i, label %.split.i8.i.i.i.i118.i.i.i.i.i

.split.us.i11.i.i.i.i127.i.i.i.i.i:               ; preds = %bb.ak
  %i.hm = add i32 %i.hk, -1                       ; 2 uses
  %i.hn = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hm)
  %i.ho = lshr i32 %i.hi, %i.hn
  %i.hp = and i32 %i.hm, %i.hi
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i119.i.i.i.i.i

.split.i8.i.i.i.i118.i.i.i.i.i:                   ; preds = %bb.ak
  %i.hq = udiv i32 %i.hi, %i.hk                   ; 2 uses
  %i.hr = mul i32 %i.hq, %i.hk                    ; 0 uses
  %.recomposed53 = urem i32 %i.hi, %i.hk
  br label %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i119.i.i.i.i.i

_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i119.i.i.i.i.i: ; preds = %.split.i8.i.i.i.i118.i.i.i.i.i, %.split.us.i11.i.i.i.i127.i.i.i.i.i
  %.us-phi.i9.i.i.i.i120.i.i.i.i.i = phi i32 [ %.recomposed53, %.split.i8.i.i.i.i118.i.i.i.i.i ], [ %i.hp, %.split.us.i11.i.i.i.i127.i.i.i.i.i ]
  %.us-phi23.i10.i.i.i.i121.i.i.i.i.i = phi i32 [ %i.hq, %.split.i8.i.i.i.i118.i.i.i.i.i ], [ %i.ho, %.split.us.i11.i.i.i.i127.i.i.i.i.i ]
  %.sroa.5.1.le.i.i.i.i.i122.i.i.i.i.i = zext i32 %.us-phi.i9.i.i.i.i120.i.i.i.i.i to i64
  %i.hs = zext i32 %.us-phi23.i10.i.i.i.i121.i.i.i.i.i to i64
  br label %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i123.i.i.i.i.i

_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i123.i.i.i.i.i: ; preds = %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i119.i.i.i.i.i, %.split.i.i.i.i.i129.i.i.i.i.i, %.split.us.i.i.i.i.i130.i.i.i.i.i
  %.sroa.5.1.le.i.sink.i.i.i.i124.i.i.i.i.i = phi i64 [ %.sroa.5.1.le.i.i.i.i.i122.i.i.i.i.i, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i119.i.i.i.i.i ], [ %.recomposed52, %.split.i.i.i.i.i129.i.i.i.i.i ], [ %i.hf, %.split.us.i.i.i.i.i130.i.i.i.i.i ]
  %.sink.i.i.i.i125.i.i.i.i.i = phi i64 [ %i.hs, %_ZN7xgboost6linalg6detail11UnravelImplIjLi2EEEDaT_NS_6common4SpanIKmXT0_EEE.exit.i.i.i.i119.i.i.i.i.i ], [ %i.hg, %.split.i.i.i.i.i129.i.i.i.i.i ], [ %i.he, %.split.us.i.i.i.i.i130.i.i.i.i.i ]
  %i.ht = load i64, ptr %6, align 8, !tbaa !17
  %i.hu = mul i64 %i.ht, %.sink.i.i.i.i125.i.i.i.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !17
  %i.hx = mul i64 %i.hw, %.sroa.5.1.le.i.sink.i.i.i.i124.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !411
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.hu
  %i.ib = getelementptr [4 x i8], ptr %i.ia, i64 %i.hx
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !273 ; 4 uses
  %i.id = fcmp ult float %i.ic, 0.000000e+00
  %i.ie = sitofp i64 %2 to float
  %i.if = fcmp uge float %i.ic, %i.ie
  %or.cond.i.i126.not190.i.i.i.i.i = or i1 %i.id, %i.if
  %i.ig = call float @llvm.trunc.f32(float %i.ic)
  %i.ih = fcmp une float %i.ig, %i.ic
  %or.cond184.i.i.i.i.i = or i1 %or.cond.i.i126.not190.i.i.i.i.i, %i.ih
  br i1 %or.cond184.i.i.i.i.i, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit", label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread36"

bb.al:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ii = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ii, ptr noundef nonnull @.str.83, i32 noundef 187)
  %i.ij = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i unwind label %bb.am

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i: ; preds = %bb.al
  %i.ik = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef nonnull @.str.89, i64 noundef 46)
          to label %"_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelEPKNS_7ContextERKNS_8MetaInfoElENK3$_2clEv.exit.i.i" unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i, %bb.al
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume

bb.ao:                                            ; preds = %bb.am
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #37
  unreachable

"_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelEPKNS_7ContextERKNS_8MetaInfoElENK3$_2clEv.exit.i.i": ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread"

bb.ap:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.io = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.io, ptr noundef nonnull @.str.85, i32 noundef 271)
  %i.ip = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i unwind label %bb.ar ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i: ; preds = %bb.ap
  %i.iq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, ptr noundef nonnull @.str.88, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i.i unwind label %bb.ar ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i
  %.sroa.0.0.copyload.i30.i.i = load i32, ptr %i.d, align 8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.copyload.i30.i.i to i16
  %i.ir = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEs(ptr noundef nonnull align 8 dereferenceable(8) %i.ip, i16 noundef signext %.sroa.0.0.extract.trunc.i.i)
          to label %bb.aq unwind label %bb.as     ; 0 uses

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i.i
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread"

bb.ar:                                            ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i.i, %bb.ap
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i.i
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn.i.i = phi { ptr, i32 } [ %i.it, %bb.as ], [ %i.is, %bb.ar ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume

bb.av:                                            ; preds = %bb.at
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #37
  unreachable

"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit": ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i78.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i63.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i48.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i123.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i108.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i93.i.i.i.i.i
  %.sroa.014.0.in.sroa.speculated.i.i.i.i.i = phi i64 [ %.sroa.0149.0.lcssa.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i93.i.i.i.i.i ], [ %.sroa.0149.2.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i123.i.i.i.i.i ], [ %.sroa.0149.1.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i108.i.i.i.i.i ], [ %i.di, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i78.i.i.i.i.i ], [ %i.co, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i63.i.i.i.i.i ], [ %.sroa.0149.0200.i.i.i.i.i, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i.i.i.i.i.i ], [ %i.bu, %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i48.i.i.i.i.i ]
  %i.iw = icmp eq i64 %i.ag, %.sroa.014.0.in.sroa.speculated.i.i.i.i.i
  br i1 %i.iw, label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread36", label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread", !prof !437

"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread": ; preds = %bb.aq, %"_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelEPKNS_7ContextERKNS_8MetaInfoElENK3$_2clEv.exit.i.i", %"_ZZN7xgboost3obj12_GLOBAL__N_113ValidateLabelEPKNS_7ContextERKNS_8MetaInfoElENK3$_1clEv.exit.i", %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ix = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ix, ptr noundef nonnull @.str.68, i32 noundef 64)
  %i.iy = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit24 unwind label %bb.aw ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit24: ; preds = %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread"
  %i.iz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.81, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit24
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.27, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull @.str.82, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread36"

bb.aw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit24, %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread"
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.ay

"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit.thread36": ; preds = %_ZNK7xgboost6common18IndexTransformIterIZNS_6linalg6cbeginIKfLi2EEEDaRKNS2_10TensorViewIT_XT0_EEEEUlmE_EdeEv.exit.i123.i.i.i.i.i, %._crit_edge.i.i.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %"_ZNK7xgboost7Context14DispatchDeviceIZNS_3obj12_GLOBAL__N_113ValidateLabelEPKS0_RKNS_8MetaInfoElE3$_0ZNS3_13ValidateLabelES5_S8_lE3$_2ZNS3_13ValidateLabelES5_S8_lE3$_1EEDcOT_OT0_OT1_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

end_hunk_0
