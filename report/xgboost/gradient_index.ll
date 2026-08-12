inline.NumInlined: 3303
inline.NumDeleted: 1033
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN7xgboost16GHistIndexMatrixC2EPKNS_7ContextERKNS_10SparsePageENS_6common4SpanIKNS_11FeatureTypeELm18446744073709551615EEENS7_13HistogramCutsEibd:bb.a
  call void @_ZN7xgboost16HostDeviceVectorIjED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #8
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #8
  call void @_ZN7xgboost6common15RefResourceViewImED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.k) #8
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i75, label %_ZN7xgboost6common5IndexD2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !129
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #31
  br label %_ZN7xgboost6common5IndexD2Ev.exit

_ZN7xgboost6common5IndexD2Ev.exit:                ; preds = %bb.ck, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN7xgboost6common15RefResourceViewIhED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.io) #8
  call void @_ZN7xgboost6common15RefResourceViewImED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #8
  resume { ptr, i32 } %.pn32.pn.pn.pn

bb.cl:                                            ; preds = %bb.h
  %i.ip = landingpad { ptr, i32 }
          catch ptr null
  %i.iq = extractvalue { ptr, i32 } %i.ip, 0
  call void @__clang_call_terminate(ptr %i.iq) #30
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !236    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !78
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #31
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost16GHistIndexMatrix13ResizeColumnsEd(ptr noundef nonnull align 8 dereferenceable(225) %0, double noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = fcmp uno double %1, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.b = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull @.str, i32 noundef 164)
  %i.c = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.7, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.f

common.resume:                                    ; preds = %.body.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %common.resume

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %bb.a
  %i.g = call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #33, !noalias !319 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false), !noalias !319
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(218) %i.g, i8 0, i64 160, i1 false), !noalias !319
  invoke void @_ZN7xgboost6common12ColumnMatrix11InitStorageERKNS_16GHistIndexMatrixEd(ptr noundef nonnull align 8 dereferenceable(218) %i.g, ptr noundef nonnull align 8 dereferenceable(225) %0, double noundef %1)
          to label %_ZSt11make_uniqueIN7xgboost6common12ColumnMatrixEJRNS0_16GHistIndexMatrixERdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %.body.i, !noalias !319

.body.i:                                          ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @_ZN7xgboost6common12ColumnMatrix16MissingIndicatorD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.h) #8, !noalias !319
  call void @_ZN7xgboost6common15RefResourceViewImED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #8, !noalias !319
  call void @_ZN7xgboost6common15RefResourceViewImED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.k) #8, !noalias !319
  call void @_ZN7xgboost6common15RefResourceViewImED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #8, !noalias !319
  call void @_ZN7xgboost6common15RefResourceViewINS0_10ColumnTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #8, !noalias !319
  call void @_ZN7xgboost6common15RefResourceViewIhED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(218) %i.g) #8, !noalias !319
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 224) #31, !noalias !319
  br label %common.resume

_ZSt11make_uniqueIN7xgboost6common12ColumnMatrixEJRNS0_16GHistIndexMatrixERdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10   ; 3 uses
  store ptr %i.g, ptr %i.n, align 8, !tbaa !10
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7xgboost6common12ColumnMatrixESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN7xgboost6common12ColumnMatrixEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN7xgboost6common12ColumnMatrixEEclEPS2_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN7xgboost6common12ColumnMatrixEJRNS0_16GHistIndexMatrixERdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN7xgboost6common12ColumnMatrixD2Ev(ptr noundef nonnull align 8 dead_on_return(218) dereferenceable(218) %i.o) #8
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 224) #31
  br label %_ZNSt10unique_ptrIN7xgboost6common12ColumnMatrixESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN7xgboost6common12ColumnMatrixESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7xgboost6common12ColumnMatrixEEclEPS2_.exit.i.i.i.i, %_ZSt11make_uniqueIN7xgboost6common12ColumnMatrixEJRNS0_16GHistIndexMatrixERdEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(225) %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %7 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 12 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %9 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %"class.std::shared_ptr.87", align 8 ; 8 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 6 uses
  %13 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 7 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %15 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %16 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %17 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %18 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 12 uses
  %19 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %20 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 6 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %21 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.87", align 8 ; 8 uses
  %23 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 6 uses
  %24 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 7 uses
  %25 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %26 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %28 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %29 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 12 uses
  %30 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %31 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 6 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %32 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %33 = alloca %"class.std::shared_ptr.87", align 8 ; 8 uses
  %34 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 6 uses
  %35 = alloca %"class.xgboost::common::RefResourceView.0", align 8 ; 7 uses
  %36 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.k = load float, ptr %i.j, align 4, !tbaa !297
  %i.l = fadd float %i.k, 1.000000e+00
  %i.m = fptosi float %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load i32, ptr %i.n, align 8, !tbaa !137
  %.sroa.speculated.i = tail call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %i.m) ; 2 uses
  %i.p = icmp slt i32 %.sroa.speculated.i, 257
  %or.cond = and i1 %3, %i.p
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  br i1 %or.cond, label %bb.b, label %bb.cn

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store i64 %2, ptr %i.g, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.q = load i64, ptr %38, align 8, !tbaa !322   ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !8
  %.not.i.i = icmp ult i64 %2, %i.q
  br i1 %.not.i.i, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i: ; preds = %bb.b
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pr.i = load ptr, ptr %26, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  %.not110.i = icmp eq ptr %.pr.i, null
  br i1 %.not110.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #8
  %i.r = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.r, ptr noundef nonnull @.str, i32 noundef 175)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i unwind label %bb.d

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i:          ; preds = %.noexc.i
  %i.s = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i unwind label %bb.e ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.30, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.v = load ptr, ptr %26, align 8, !tbaa !236   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !77
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.w, i64 noundef %i.y)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.e

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i, %.noexc.i, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.f unwind label %bb.cm

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.d ], [ %i.ac, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  br label %bb.cl

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #8
  %.pr107.i = load ptr, ptr %26, align 8, !tbaa !236 ; 4 uses
  %.not.i33.i = icmp eq ptr %.pr107.i, null
  br i1 %.not.i33.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %.pr107.i, align 8, !tbaa !74 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr107.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !78
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr107.i, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.g, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !211, !noalias !323 ; 3 uses
  store ptr %i.aj, ptr %28, align 8, !tbaa !211, !alias.scope !323
  %i.ak = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !130, !noalias !323 ; 3 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !130, !alias.scope !323
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78, !noalias !323
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !137, !noalias !323
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !137, !noalias !323
  br label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4, !noalias !323 ; 0 uses
  %.pre.i = load ptr, ptr %28, align 8, !tbaa !211
  br label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i

_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i: ; preds = %bb.k, %bb.j, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  %i.as = phi ptr [ %i.aj, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i ], [ %i.aj, %bb.j ], [ %.pre.i, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, i8 0, i64 32, i1 false)
  %.not111.i = icmp eq ptr %i.as, null
  br i1 %.not111.i, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i
  %i.at = load i64, ptr %38, align 8, !tbaa !322
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.r, label %bb.m, !prof !140

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #8
  %i.av = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %.noexc34.i unwind label %bb.o

.noexc34.i:                                       ; preds = %bb.m
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.av, ptr noundef nonnull @.str, i32 noundef 180)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i unwind label %bb.o

_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i:        ; preds = %.noexc34.i
  %i.aw = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i unwind label %bb.p ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.31, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8
  br label %bb.r

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i, %.noexc34.i, %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.q unwind label %bb.cm

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn13.i = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.ba, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #8
  br label %bb.ck

bb.r:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #8
  %i.bb = load i64, ptr %i.g, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store i8 0, ptr %i.i, align 1, !tbaa !78
  invoke void @_ZN7xgboost6common22MakeFixedVecWithMallocIhEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView.0") align 8 %31, ptr noundef %1, i64 noundef %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
          to label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i unwind label %bb.s

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #8
  br label %bb.bp

bb.s:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmb:bb.a
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #8, !inline_history !332
  %i.fw = load ptr, ptr %i.fn, align 8, !tbaa !134
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #8, !inline_history !332
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i

bb.bs:                                            ; preds = %bb.bq
  %i.fz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i83.i = icmp eq i8 %i.fz, 0
  br i1 %.not.i.i.i.i.i.i83.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ga = add nsw i32 %i.fr, -1
  store i32 %i.ga, ptr %i.fo, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i

bb.bu:                                            ; preds = %bb.bs
  %i.gb = atomicrmw volatile add ptr %i.fo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i.i.i85.i = phi i32 [ %i.fr, %bb.bt ], [ %i.gb, %bb.bu ]
  %i.gc = icmp eq i32 %.0.i.i.i.i.i.i.i85.i, 1
  br i1 %i.gc, label %bb.bv, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i, !prof !13

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fn) #8
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i

_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i: ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i, %bb.br, %bb.bp
  %i.gd = load ptr, ptr %37, align 8, !tbaa !336  ; 2 uses
  %i.ge = load i64, ptr %38, align 8, !tbaa !322  ; 2 uses
  %i.gf = icmp ne ptr %i.gd, null
  %i.gg = icmp eq i64 %i.ge, 0
  %i.gh = or i1 %i.gf, %i.gg
  br i1 %i.gh, label %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i, label %bb.bw, !prof !140

bb.bw:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i: ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ge, ptr %i.gi, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.gd, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !273
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !128 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !129
  %.not.i.i.i.i.i.i88.i = icmp eq ptr %i.gk, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i88.i, label %_ZN7xgboost6common5IndexD2Ev.exit.i, label %bb.bx

bb.bx:                                            ; preds = %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef %i.gp) #31
  br label %_ZN7xgboost6common5IndexD2Ev.exit.i

_ZN7xgboost6common5IndexD2Ev.exit.i:              ; preds = %bb.bx, %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.gq, align 8
  %.sroa.18106.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN7xgboost6common5Index17GetValueFromUint8EPKhm, ptr %.sroa.18106.40..sroa_idx.i, align 8
  %i.gr = load ptr, ptr %i.fm, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i91.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i91.i, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i, label %bb.by

bb.by:                                            ; preds = %_ZN7xgboost6common5IndexD2Ev.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.gs, align 8, !tbaa !131
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !133
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !134
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #8, !inline_history !333
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !134
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #8, !inline_history !333
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i

bb.ca:                                            ; preds = %bb.by
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i92.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i92.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i

bb.cc:                                            ; preds = %bb.ca
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i: ; preds = %bb.cc, %bb.cb
  %.0.i.i.i.i.i94.i = phi i32 [ %i.gv, %bb.cb ], [ %i.hf, %bb.cc ]
  %i.hg = icmp eq i32 %.0.i.i.i.i.i94.i, 1
  br i1 %i.hg, label %bb.cd, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i, !prof !13

bb.cd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #8
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i: ; preds = %bb.cd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i, %bb.bz, %_ZN7xgboost6common5IndexD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #8
  %i.hh = load ptr, ptr %i.ak, align 8, !tbaa !130 ; 8 uses
  %.not.i.i96.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i96.i, label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIhEEDaT_NS_6common11BinTypeSizeE.exit", label %bb.ce

bb.ce:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i32 0, ptr %i.hi, align 8, !tbaa !131
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !133
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !134
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #8, !inline_history !334
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !134
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #8, !inline_history !334
  br label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIhEEDaT_NS_6common11BinTypeSizeE.exit"

bb.cg:                                            ; preds = %bb.ce
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i97.i = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i97.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i

bb.ci:                                            ; preds = %bb.cg
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i: ; preds = %bb.ci, %bb.ch
  %.0.i.i.i.i99.i = phi i32 [ %i.hl, %bb.ch ], [ %i.hv, %bb.ci ]
  %i.hw = icmp eq i32 %.0.i.i.i.i99.i, 1
  br i1 %i.hw, label %bb.cj, label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIhEEDaT_NS_6common11BinTypeSizeE.exit", !prof !13

bb.cj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #8
  br label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIhEEDaT_NS_6common11BinTypeSizeE.exit"

bb.ck:                                            ; preds = %bb.bo, %bb.y, %bb.s, %bb.q
  %.pn22.i = phi { ptr, i32 } [ %.pn13.i, %bb.q ], [ %.pn19.pn.i, %bb.bo ], [ %.pn15.i, %bb.y ], [ %i.be, %bb.s ]
  call void @_ZN7xgboost6common15RefResourceViewIhED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %29) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #8
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #8
  br label %bb.cl

common.resume:                                    ; preds = %bb.jk, %bb.fy, %bb.cl
  %common.resume.op = phi { ptr, i32 } [ %.pn22.pn.i, %bb.cl ], [ %.pn22.pn.i19, %bb.fy ], [ %.pn22.pn.i118, %bb.jk ]
  resume { ptr, i32 } %common.resume.op

bb.cl:                                            ; preds = %bb.ck, %bb.f
  %.pn22.pn.i = phi { ptr, i32 } [ %.pn22.i, %bb.ck ], [ %.pn.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  br label %common.resume

bb.cm:                                            ; preds = %bb.af, %bb.x, %bb.p, %bb.e
  %i.hx = landingpad { ptr, i32 }
          catch ptr null
  %i.hy = extractvalue { ptr, i32 } %i.hx, 0
  call void @__clang_call_terminate(ptr %i.hy) #30
  unreachable

"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIhEEDaT_NS_6common11BinTypeSizeE.exit": ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i, %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  br label %bb.jm

bb.cn:                                            ; preds = %bb.a
  %i.hz = add i32 %.sroa.speculated.i, -257
  %i.ia = icmp ult i32 %i.hz, 65280
  %or.cond213 = and i1 %3, %i.ia
  br i1 %or.cond213, label %bb.co, label %bb.ga

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ib = shl i64 %2, 1                           ; 2 uses
  store i64 %i.ib, ptr %i.d, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ic = load i64, ptr %38, align 8, !tbaa !322  ; 2 uses
  store i64 %i.ic, ptr %i.e, align 8, !tbaa !8
  %.not.i.i9 = icmp ult i64 %i.ib, %i.ic
  br i1 %.not.i.i9, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i92, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i10

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i10: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i92: ; preds = %bb.co
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pr.i93 = load ptr, ptr %15, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %.not110.i94 = icmp eq ptr %.pr.i93, null
  br i1 %.not110.i94, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11, label %bb.cp

bb.cp:                                            ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i92
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #8
  %i.id = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc.i96 unwind label %bb.cq

.noexc.i96:                                       ; preds = %bb.cp
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.id, ptr noundef nonnull @.str, i32 noundef 175)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i97 unwind label %bb.cq

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i97:        ; preds = %.noexc.i96
  %i.ie = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i98 unwind label %bb.cr ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i98: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i97
  %i.if = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i99 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i99: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i98
  %i.ig = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull @.str.30, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i100 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i100: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i99
  %i.ih = load ptr, ptr %15, align 8, !tbaa !236  ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !74
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !77
  %i.il = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef %i.ii, i64 noundef %i.ik)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101 unwind label %bb.cr

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i100
  %i.im = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i102 unwind label %bb.cr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i102: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ct unwind label %bb.cq

bb.cq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i102, %.noexc.i96, %bb.cp
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i101, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i99, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i98, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i97
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.cs unwind label %bb.fz

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn.i95 = phi { ptr, i32 } [ %i.in, %bb.cq ], [ %i.io, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %bb.fy

bb.ct:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #8
  %.pr107.i103 = load ptr, ptr %15, align 8, !tbaa !236 ; 4 uses
  %.not.i33.i104 = icmp eq ptr %.pr107.i103, null
  br i1 %.not.i33.i104, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ip = load ptr, ptr %.pr107.i103, align 8, !tbaa !74 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.pr107.i103, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105: ; preds = %bb.cu
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !78
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i105
  call void @_ZdlPvm(ptr noundef nonnull %.pr107.i103, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i106, %bb.ct, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i92, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !211, !noalias !337 ; 3 uses
  store ptr %i.iv, ptr %17, align 8, !tbaa !211, !alias.scope !337
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !130, !noalias !337 ; 3 uses
  store ptr %i.iy, ptr %i.iw, align 8, !tbaa !130, !alias.scope !337
  %.not.i.i.i.i.i12 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i.i.i12, label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i14, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 3 uses
  %i.ja = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78, !noalias !337
  %.not.i.i.i.i.i.i13 = icmp eq i8 %i.ja, 0
  br i1 %.not.i.i.i.i.i.i13, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.jb = load i32, ptr %i.iz, align 4, !tbaa !137, !noalias !337
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %i.iz, align 4, !tbaa !137, !noalias !337
  br label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i14

bb.cx:                                            ; preds = %bb.cv
  %i.jd = atomicrmw volatile add ptr %i.iz, i32 1 acq_rel, align 4, !noalias !337 ; 0 uses
  %.pre.i91 = load ptr, ptr %17, align 8, !tbaa !211
  br label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i14

_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i14: ; preds = %bb.cx, %bb.cw, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11
  %i.je = phi ptr [ %i.iv, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i11 ], [ %i.iv, %bb.cw ], [ %.pre.i91, %bb.cx ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  %.not111.i15 = icmp eq ptr %i.je, null
  br i1 %.not111.i15, label %bb.cy, label %bb.dg

bb.cy:                                            ; preds = %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i14
  %i.jf = load i64, ptr %38, align 8, !tbaa !322
  %i.jg = icmp eq i64 %i.jf, 0
  br i1 %i.jg, label %bb.de, label %bb.cz, !prof !140

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #8
  %i.jh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %.noexc34.i85 unwind label %bb.db

.noexc34.i85:                                     ; preds = %bb.cz
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jh, ptr noundef nonnull @.str, i32 noundef 180)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i86 unwind label %bb.db

_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i86:      ; preds = %.noexc34.i85
  %i.ji = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i87 unwind label %bb.dc ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i87: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i86
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.31, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i88 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i88: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i87
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i89 unwind label %bb.dc ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i89: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i88
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  br label %bb.de

bb.db:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i89, %.noexc34.i85, %bb.cz
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i88, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i87, %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i86
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.dd unwind label %bb.fz

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn13.i84 = phi { ptr, i32 } [ %i.jl, %bb.db ], [ %i.jm, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #8
  br label %bb.fx

bb.de:                                            ; preds = %bb.da, %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #8
  %i.jn = load i64, ptr %i.d, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store i8 0, ptr %i.f, align 1, !tbaa !78
  invoke void @_ZN7xgboost6common22MakeFixedVecWithMallocIhEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView.0") align 8 %20, ptr noundef %1, i64 noundef %i.jn, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i90 unwind label %bb.df

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i90: ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 16, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.jp = load <2 x ptr>, ptr %i.jo, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br label %bb.fc

bb.df:                                            ; preds = %bb.de
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #8
  br label %bb.fx

bb.dg:                                            ; preds = %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i14
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.js = load i8, ptr %i.jr, align 8, !tbaa !205
  %.not.i16 = icmp eq i8 %i.js, 0
  br i1 %.not.i16, label %bb.dm, label %bb.dh, !prof !140

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #8
  %i.jt = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %.noexc45.i20 unwind label %bb.dj

.noexc45.i20:                                     ; preds = %bb.dh
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jt, ptr noundef nonnull @.str, i32 noundef 183)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i21 unwind label %bb.dj

_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i21:      ; preds = %.noexc45.i20
  %i.ju = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i22 unwind label %bb.dk ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i22: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i21
  %i.jv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.32, i64 noundef 66)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i23 unwind label %bb.dk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i23: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i22
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i24 unwind label %bb.dk ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i23
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  br label %bb.dm

bb.dj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i24, %.noexc45.i20, %bb.dh
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i23, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i22, %_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i21
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.dl unwind label %bb.fz

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pn15.i17 = phi { ptr, i32 } [ %i.jx, %bb.dj ], [ %i.jy, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #8
  br label %bb.fx

bb.dm:                                            ; preds = %bb.di, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.jz = call ptr @__dynamic_cast(ptr nonnull %i.je, ptr nonnull @_ZTIN7xgboost6common15ResourceHandlerE, ptr nonnull @_ZTIN7xgboost6common14MallocResourceE, i64 0) #8, !noalias !340 ; 4 uses
  %.not.not.i.i25 = icmp eq ptr %i.jz, null
  br i1 %.not.not.i.i25, label %_ZNSt10shared_ptrIN7xgboost6common14MallocResourceEEC2INS1_15ResourceHandlerEEERKS_IT_EPS2_.exit.i.i83, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  store ptr %i.jz, ptr %22, align 8, !tbaa !329, !alias.scope !340
  %i.ka = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.kb = load ptr, ptr %i.iw, align 8, !tbaa !130, !noalias !340 ; 3 uses
  store ptr %i.kb, ptr %i.ka, align 8, !tbaa !130, !alias.scope !340
  %.not.i.i.i.i54.i26 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i.i54.i26, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i29, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 3 uses
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78, !noalias !340
  %.not.i.i.i.i.i55.i27 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i.i55.i27, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.i75, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.thread.i28

_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.thread.i28: ; preds = %bb.do
  %i.ke = load i32, ptr %i.kc, align 4, !tbaa !137, !noalias !340
  %i.kf = add nsw i32 %i.ke, 1
  store i32 %i.kf, ptr %i.kc, align 4, !tbaa !137, !noalias !340
  br label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i29

_ZNSt10shared_ptrIN7xgboost6common14MallocResourceEEC2INS1_15ResourceHandlerEEERKS_IT_EPS2_.exit.i.i83: ; preds = %bb.dm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false), !alias.scope !340
  br label %bb.dp

_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.i75: ; preds = %bb.do
  %i.kg = atomicrmw volatile add ptr %i.kc, i32 1 acq_rel, align 4, !noalias !340 ; 0 uses
  %.pr109.pre.i76 = load ptr, ptr %22, align 8, !tbaa !329 ; 2 uses
  %i.kh = icmp eq ptr %.pr109.pre.i76, null
  br i1 %i.kh, label %bb.dp, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i29, !prof !331

bb.dp:                                            ; preds = %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.i75, %_ZNSt10shared_ptrIN7xgboost6common14MallocResourceEEC2INS1_15ResourceHandlerEEERKS_IT_EPS2_.exit.i.i83
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #8
  %i.ki = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %.noexc56.i78 unwind label %bb.dr

.noexc56.i78:                                     ; preds = %bb.dp
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ki, ptr noundef nonnull @.str, i32 noundef 185)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i79 unwind label %bb.dr

_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i79:      ; preds = %.noexc56.i78
  %i.kj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i80 unwind label %bb.ds ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i80: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i79
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull @.str.33, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i81 unwind label %bb.ds ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i81: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i80
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i82 unwind label %bb.ds ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i82: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i81
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i82
  unreachable

bb.dr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i82, %.noexc56.i78, %bb.dp
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i81, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i80, %_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i79
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.dt unwind label %bb.fz

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn17.i77 = phi { ptr, i32 } [ %i.km, %bb.dr ], [ %i.kn, %bb.ds ]
end_hunk_1
begin_hunk_2_@_ZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmb:bb.a
  %i.ls = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i68.i35 = icmp eq i8 %i.ls, 0
  br i1 %.not.i.i.i.i.i.i68.i35, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.lt = add nsw i32 %i.lk, -1
  store i32 %i.lt, ptr %i.lh, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i36

bb.ee:                                            ; preds = %bb.ec
  %i.lu = atomicrmw volatile add ptr %i.lh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i36

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i36: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i.i70.i37 = phi i32 [ %i.lk, %bb.ed ], [ %i.lu, %bb.ee ]
  %i.lv = icmp eq i32 %.0.i.i.i.i.i.i.i70.i37, 1
  br i1 %i.lv, label %bb.ef, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i38, !prof !13

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i36
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lg) #8
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i38

_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i38: ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i36, %bb.eb, %bb.dz
  %i.lw = load ptr, ptr %i.ld, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i72.i39 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i72.i39, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i43, label %bb.eg

bb.eg:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i38
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 4 uses
  %i.ly = load atomic i64, ptr %i.lx acquire, align 8 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 4294967297
  %i.ma = trunc i64 %i.ly to i32                  ; 2 uses
  br i1 %i.lz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.lx, align 8, !tbaa !131
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  store i32 0, ptr %i.mb, align 4, !tbaa !133
  %i.mc = load ptr, ptr %i.lw, align 8, !tbaa !134
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #8, !inline_history !344
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !134
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #8, !inline_history !344
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i43

bb.ei:                                            ; preds = %bb.eg
  %i.mi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i73.i40 = icmp eq i8 %i.mi, 0
  br i1 %.not.i.i.i.i73.i40, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.mj = add nsw i32 %i.ma, -1
  store i32 %i.mj, ptr %i.lx, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i41

bb.ek:                                            ; preds = %bb.ei
  %i.mk = atomicrmw volatile add ptr %i.lx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i41: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i75.i42 = phi i32 [ %i.ma, %bb.ej ], [ %i.mk, %bb.ek ]
  %i.ml = icmp eq i32 %.0.i.i.i.i.i75.i42, 1
  br i1 %i.ml, label %bb.el, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i43, !prof !13

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #8
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i43

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i43: ; preds = %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i41, %bb.eh, %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i38
  %i.mm = load ptr, ptr %i.ku, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i44 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i44, label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i48, label %bb.em

bb.em:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i43
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 4 uses
  %i.mo = load atomic i64, ptr %i.mn acquire, align 8 ; 2 uses
  %i.mp = icmp eq i64 %i.mo, 4294967297
  %i.mq = trunc i64 %i.mo to i32                  ; 2 uses
  br i1 %i.mp, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  store i32 0, ptr %i.mn, align 8, !tbaa !131
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  store i32 0, ptr %i.mr, align 4, !tbaa !133
  %i.ms = load ptr, ptr %i.mm, align 8, !tbaa !134
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #8, !inline_history !345
  %i.mv = load ptr, ptr %i.mm, align 8, !tbaa !134
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #8, !inline_history !345
  br label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i48

bb.eo:                                            ; preds = %bb.em
  %i.my = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i77.i45 = icmp eq i8 %i.my, 0
  br i1 %.not.i.i.i77.i45, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mz = add nsw i32 %i.mq, -1
  store i32 %i.mz, ptr %i.mn, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

bb.eq:                                            ; preds = %bb.eo
  %i.na = atomicrmw volatile add ptr %i.mn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46: ; preds = %bb.eq, %bb.ep
  %.0.i.i.i.i.i47 = phi i32 [ %i.mq, %bb.ep ], [ %i.na, %bb.eq ]
  %i.nb = icmp eq i32 %.0.i.i.i.i.i47, 1
  br i1 %i.nb, label %bb.er, label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i48, !prof !13

bb.er:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mm) #8
  br label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i48

_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i48: ; preds = %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i46, %bb.en, %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  %i.nc = load ptr, ptr %i.ka, align 8, !tbaa !130 ; 8 uses
  %.not.i.i78.i49 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i78.i49, label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53, label %bb.es

bb.es:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i48
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 4 uses
  %i.ne = load atomic i64, ptr %i.nd acquire, align 8 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, 4294967297
  %i.ng = trunc i64 %i.ne to i32                  ; 2 uses
  br i1 %i.nf, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.nd, align 8, !tbaa !131
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store i32 0, ptr %i.nh, align 4, !tbaa !133
  %i.ni = load ptr, ptr %i.nc, align 8, !tbaa !134
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(16) %i.nc) #8, !inline_history !346
  %i.nl = load ptr, ptr %i.nc, align 8, !tbaa !134
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(16) %i.nc) #8, !inline_history !346
  br label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53

bb.eu:                                            ; preds = %bb.es
  %i.no = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i79.i50 = icmp eq i8 %i.no, 0
  br i1 %.not.i.i.i79.i50, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.np = add nsw i32 %i.ng, -1
  store i32 %i.np, ptr %i.nd, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i51

bb.ew:                                            ; preds = %bb.eu
  %i.nq = atomicrmw volatile add ptr %i.nd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i51: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i81.i52 = phi i32 [ %i.ng, %bb.ev ], [ %i.nq, %bb.ew ]
  %i.nr = icmp eq i32 %.0.i.i.i.i81.i52, 1
  br i1 %i.nr, label %bb.ex, label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53, !prof !13

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nc) #8
  br label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53

_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53: ; preds = %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i51, %bb.et, %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  %i.ns = load <2 x ptr>, ptr %i.lb, align 8, !tbaa !141
  br label %bb.fc

bb.ey:                                            ; preds = %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i29
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.ez:                                            ; preds = %bb.du
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %_ZNSt10shared_ptrIN7xgboost6common15ResourceHandlerEEC2INS1_14MallocResourceEvEERKS_IT_E.exit.i33
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.dt
  %.pn19.pn.i30 = phi { ptr, i32 } [ %.pn17.i77, %bb.dt ], [ %i.nt, %bb.ey ], [ %i.nv, %bb.fa ], [ %i.nu, %bb.ez ]
  call void @_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #8
  br label %bb.fx

bb.fc:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53, %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i90
  %i.nw = phi <2 x ptr> [ %i.ns, %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i53 ], [ %i.jp, %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i90 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 16, i1 false)
  %i.nx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ny = getelementptr inbounds nuw i8, ptr %18, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i8 0, i64 16, i1 false)
  %i.nz = load ptr, ptr %i.ix, align 8, !tbaa !130 ; 8 uses
  store <2 x ptr> %i.nw, ptr %i.iu, align 8, !tbaa !141
  %.not.i.i.i.i.i82.i56 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i.i.i82.i56, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i60, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8 ; 4 uses
  %i.ob = load atomic i64, ptr %i.oa acquire, align 8 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, 4294967297
  %i.od = trunc i64 %i.ob to i32                  ; 2 uses
  br i1 %i.oc, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 0, ptr %i.oa, align 8, !tbaa !131
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  store i32 0, ptr %i.oe, align 4, !tbaa !133
  %i.of = load ptr, ptr %i.nz, align 8, !tbaa !134
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(16) %i.nz) #8, !inline_history !343
  %i.oi = load ptr, ptr %i.nz, align 8, !tbaa !134
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(16) %i.nz) #8, !inline_history !343
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i60

bb.ff:                                            ; preds = %bb.fd
  %i.ol = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i83.i57 = icmp eq i8 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i83.i57, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.om = add nsw i32 %i.od, -1
  store i32 %i.om, ptr %i.oa, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i58

bb.fh:                                            ; preds = %bb.ff
  %i.on = atomicrmw volatile add ptr %i.oa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i58: ; preds = %bb.fh, %bb.fg
  %.0.i.i.i.i.i.i.i85.i59 = phi i32 [ %i.od, %bb.fg ], [ %i.on, %bb.fh ]
  %i.oo = icmp eq i32 %.0.i.i.i.i.i.i.i85.i59, 1
  br i1 %i.oo, label %bb.fi, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i60, !prof !13

bb.fi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nz) #8
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i60

_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i60: ; preds = %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i58, %bb.fe, %bb.fc
  %i.op = load ptr, ptr %37, align 8, !tbaa !336  ; 2 uses
  %i.oq = load i64, ptr %38, align 8, !tbaa !322  ; 2 uses
  %i.or = icmp ne ptr %i.op, null
  %i.os = icmp eq i64 %i.oq, 0
  %i.ot = or i1 %i.or, %i.os
  br i1 %i.ot, label %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i61, label %bb.fj, !prof !140

bb.fj:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i60
  call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i61: ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i60
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.oq, ptr %i.ou, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.op, ptr %.sroa.5.0..sroa_idx.i62, align 8, !tbaa !273
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !128 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !129
  %.not.i.i.i.i.i.i88.i63 = icmp eq ptr %i.ow, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ov, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i88.i63, label %_ZN7xgboost6common5IndexD2Ev.exit.i64, label %bb.fk

bb.fk:                                            ; preds = %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i61
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = ptrtoint ptr %i.ow to i64
  %i.pb = sub i64 %i.oz, %i.pa
  call void @_ZdlPvm(ptr noundef nonnull %i.ow, i64 noundef %i.pb) #31
  br label %_ZN7xgboost6common5IndexD2Ev.exit.i64

_ZN7xgboost6common5IndexD2Ev.exit.i64:            ; preds = %bb.fk, %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i61
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 2, ptr %i.pc, align 8
  %.sroa.18106.40..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN7xgboost6common5Index18GetValueFromUint16EPKhm, ptr %.sroa.18106.40..sroa_idx.i65, align 8
  %i.pd = load ptr, ptr %i.ny, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i91.i66 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i91.i66, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i70, label %bb.fl

bb.fl:                                            ; preds = %_ZN7xgboost6common5IndexD2Ev.exit.i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 4 uses
  %i.pf = load atomic i64, ptr %i.pe acquire, align 8 ; 2 uses
  %i.pg = icmp eq i64 %i.pf, 4294967297
  %i.ph = trunc i64 %i.pf to i32                  ; 2 uses
  br i1 %i.pg, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  store i32 0, ptr %i.pe, align 8, !tbaa !131
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 0, ptr %i.pi, align 4, !tbaa !133
  %i.pj = load ptr, ptr %i.pd, align 8, !tbaa !134
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #8, !inline_history !344
  %i.pm = load ptr, ptr %i.pd, align 8, !tbaa !134
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #8, !inline_history !344
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i70

bb.fn:                                            ; preds = %bb.fl
  %i.pp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i92.i67 = icmp eq i8 %i.pp, 0
  br i1 %.not.i.i.i.i92.i67, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.pq = add nsw i32 %i.ph, -1
  store i32 %i.pq, ptr %i.pe, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i68

bb.fp:                                            ; preds = %bb.fn
  %i.pr = atomicrmw volatile add ptr %i.pe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i68

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i68: ; preds = %bb.fp, %bb.fo
  %.0.i.i.i.i.i94.i69 = phi i32 [ %i.ph, %bb.fo ], [ %i.pr, %bb.fp ]
  %i.ps = icmp eq i32 %.0.i.i.i.i.i94.i69, 1
  br i1 %i.ps, label %bb.fq, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i70, !prof !13

bb.fq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i68
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pd) #8
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i70

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i70: ; preds = %bb.fq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i68, %bb.fm, %_ZN7xgboost6common5IndexD2Ev.exit.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  %i.pt = load ptr, ptr %i.iw, align 8, !tbaa !130 ; 8 uses
  %.not.i.i96.i71 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i96.i71, label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clItEEDaT_NS_6common11BinTypeSizeE.exit", label %bb.fr

bb.fr:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i70
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 4 uses
  %i.pv = load atomic i64, ptr %i.pu acquire, align 8 ; 2 uses
  %i.pw = icmp eq i64 %i.pv, 4294967297
  %i.px = trunc i64 %i.pv to i32                  ; 2 uses
  br i1 %i.pw, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i32 0, ptr %i.pu, align 8, !tbaa !131
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store i32 0, ptr %i.py, align 4, !tbaa !133
  %i.pz = load ptr, ptr %i.pt, align 8, !tbaa !134
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #8, !inline_history !345
  %i.qc = load ptr, ptr %i.pt, align 8, !tbaa !134
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  call void %i.qe(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #8, !inline_history !345
  br label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clItEEDaT_NS_6common11BinTypeSizeE.exit"

bb.ft:                                            ; preds = %bb.fr
  %i.qf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i97.i72 = icmp eq i8 %i.qf, 0
  br i1 %.not.i.i.i97.i72, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.qg = add nsw i32 %i.px, -1
  store i32 %i.qg, ptr %i.pu, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i73

bb.fv:                                            ; preds = %bb.ft
  %i.qh = atomicrmw volatile add ptr %i.pu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i73: ; preds = %bb.fv, %bb.fu
  %.0.i.i.i.i99.i74 = phi i32 [ %i.px, %bb.fu ], [ %i.qh, %bb.fv ]
  %i.qi = icmp eq i32 %.0.i.i.i.i99.i74, 1
  br i1 %i.qi, label %bb.fw, label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clItEEDaT_NS_6common11BinTypeSizeE.exit", !prof !13

bb.fw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i73
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #8
  br label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clItEEDaT_NS_6common11BinTypeSizeE.exit"

bb.fx:                                            ; preds = %bb.fb, %bb.dl, %bb.df, %bb.dd
  %.pn22.i18 = phi { ptr, i32 } [ %.pn13.i84, %bb.dd ], [ %.pn19.pn.i30, %bb.fb ], [ %.pn15.i17, %bb.dl ], [ %i.jq, %bb.df ]
  call void @_ZN7xgboost6common15RefResourceViewIhED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %18) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #8
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.cs
  %.pn22.pn.i19 = phi { ptr, i32 } [ %.pn22.i18, %bb.fx ], [ %.pn.i95, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %common.resume

bb.fz:                                            ; preds = %bb.ds, %bb.dk, %bb.dc, %bb.cr
  %i.qj = landingpad { ptr, i32 }
          catch ptr null
  %i.qk = extractvalue { ptr, i32 } %i.qj, 0
  call void @__clang_call_terminate(ptr %i.qk) #30
  unreachable

"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clItEEDaT_NS_6common11BinTypeSizeE.exit": ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i70, %bb.fs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i73, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %bb.jm

bb.ga:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ql = shl i64 %2, 2                           ; 2 uses
  store i64 %i.ql, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.qm = load i64, ptr %38, align 8, !tbaa !322  ; 2 uses
  store i64 %i.qm, ptr %i.b, align 8, !tbaa !8
  %.not.i.i108 = icmp ult i64 %i.ql, %i.qm
  br i1 %.not.i.i108, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i191, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i109

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i109: ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i191: ; preds = %bb.ga
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pr.i192 = load ptr, ptr %4, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not110.i193 = icmp eq ptr %.pr.i192, null
  br i1 %.not110.i193, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110, label %bb.gb

bb.gb:                                            ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i191
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.qn = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc.i195 unwind label %bb.gc

.noexc.i195:                                      ; preds = %bb.gb
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.qn, ptr noundef nonnull @.str, i32 noundef 175)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i196 unwind label %bb.gc

_ZN4dmlc15LogMessageFatalC2EPKci.exit.i196:       ; preds = %.noexc.i195
  %i.qo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i197 unwind label %bb.gd ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i197: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i196
  %i.qp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qo, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i198 unwind label %bb.gd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i198: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i197
  %i.qq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qo, ptr noundef nonnull @.str.30, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i199 unwind label %bb.gd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i199: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i198
  %i.qr = load ptr, ptr %4, align 8, !tbaa !236   ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !74
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !77
  %i.qv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qo, ptr noundef %i.qs, i64 noundef %i.qu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i200 unwind label %bb.gd

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i200: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i199
  %i.qw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qv, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i201 unwind label %bb.gd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i201: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i200
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.gf unwind label %bb.gc

bb.gc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i201, %.noexc.i195, %bb.gb
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.gd:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i200, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit29.i199, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i198, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i197, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i196
  %i.qy = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ge unwind label %bb.jl

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.pn.i194 = phi { ptr, i32 } [ %i.qx, %bb.gc ], [ %i.qy, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.jk

bb.gf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pr107.i202 = load ptr, ptr %4, align 8, !tbaa !236 ; 4 uses
  %.not.i33.i203 = icmp eq ptr %.pr107.i202, null
  br i1 %.not.i33.i203, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.qz = load ptr, ptr %.pr107.i202, align 8, !tbaa !74 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.pr107.i202, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204: ; preds = %bb.gg
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !78
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rd) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i204
  call void @_ZdlPvm(ptr noundef nonnull %.pr107.i202, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205, %bb.gf, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i191, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !211, !noalias !347 ; 3 uses
  store ptr %i.rf, ptr %6, align 8, !tbaa !211, !alias.scope !347
  %i.rg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !130, !noalias !347 ; 3 uses
  store ptr %i.ri, ptr %i.rg, align 8, !tbaa !130, !alias.scope !347
  %.not.i.i.i.i.i111 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i.i.i.i111, label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i113, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 3 uses
  %i.rk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78, !noalias !347
  %.not.i.i.i.i.i.i112 = icmp eq i8 %i.rk, 0
  br i1 %.not.i.i.i.i.i.i112, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.rl = load i32, ptr %i.rj, align 4, !tbaa !137, !noalias !347
  %i.rm = add nsw i32 %i.rl, 1
  store i32 %i.rm, ptr %i.rj, align 4, !tbaa !137, !noalias !347
  br label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i113

bb.gj:                                            ; preds = %bb.gh
  %i.rn = atomicrmw volatile add ptr %i.rj, i32 1 acq_rel, align 4, !noalias !347 ; 0 uses
  %.pre.i190 = load ptr, ptr %6, align 8, !tbaa !211
  br label %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i113

_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i113: ; preds = %bb.gj, %bb.gi, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110
  %i.ro = phi ptr [ %i.rf, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i110 ], [ %i.rf, %bb.gi ], [ %.pre.i190, %bb.gj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %.not111.i114 = icmp eq ptr %i.ro, null
  br i1 %.not111.i114, label %bb.gk, label %bb.gs

bb.gk:                                            ; preds = %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i113
  %i.rp = load i64, ptr %38, align 8, !tbaa !322
  %i.rq = icmp eq i64 %i.rp, 0
  br i1 %i.rq, label %bb.gq, label %bb.gl, !prof !140

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.rr = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc34.i184 unwind label %bb.gn

.noexc34.i184:                                    ; preds = %bb.gl
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.rr, ptr noundef nonnull @.str, i32 noundef 180)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i185 unwind label %bb.gn

_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i185:     ; preds = %.noexc34.i184
  %i.rs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i186 unwind label %bb.go ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i186: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i185
  %i.rt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rs, ptr noundef nonnull @.str.31, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i187 unwind label %bb.go ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i187: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i186
  %i.ru = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rs, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i188 unwind label %bb.go ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i188: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i187
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.gm unwind label %bb.gn

bb.gm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.gq

bb.gn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.i188, %.noexc34.i184, %bb.gl
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.go:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.i187, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit38.i186, %_ZN4dmlc15LogMessageFatalC2EPKci.exit36.i185
  %i.rw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.gp unwind label %bb.jl

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.pn13.i183 = phi { ptr, i32 } [ %i.rv, %bb.gn ], [ %i.rw, %bb.go ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.jj

bb.gq:                                            ; preds = %bb.gm, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.rx = load i64, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i8 0, ptr %i.c, align 1, !tbaa !78
  invoke void @_ZN7xgboost6common22MakeFixedVecWithMallocIhEENS0_15RefResourceViewIT_EEPKNS_7ContextEmRKS3_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::common::RefResourceView.0") align 8 %9, ptr noundef %1, i64 noundef %i.rx, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i189 unwind label %bb.gr

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i189: ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false)
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rz = load <2 x ptr>, ptr %i.ry, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.io

bb.gr:                                            ; preds = %bb.gq
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.jj

bb.gs:                                            ; preds = %_ZNK7xgboost6common15RefResourceViewIhE8ResourceEv.exit.i113
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.sc = load i8, ptr %i.sb, align 8, !tbaa !205
  %.not.i115 = icmp eq i8 %i.sc, 0
  br i1 %.not.i115, label %bb.gy, label %bb.gt, !prof !140

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.sd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc45.i119 unwind label %bb.gv

.noexc45.i119:                                    ; preds = %bb.gt
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.sd, ptr noundef nonnull @.str, i32 noundef 183)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i120 unwind label %bb.gv

_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i120:     ; preds = %.noexc45.i119
  %i.se = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i121 unwind label %bb.gw ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i121: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i120
  %i.sf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.se, ptr noundef nonnull @.str.32, i64 noundef 66)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i122 unwind label %bb.gw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i122: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i121
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.se, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i123 unwind label %bb.gw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i123: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i122
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.gu unwind label %bb.gv

bb.gu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.gy

bb.gv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.i123, %.noexc45.i119, %bb.gt
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51.i122, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit49.i121, %_ZN4dmlc15LogMessageFatalC2EPKci.exit47.i120
  %i.si = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.gx unwind label %bb.jl

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn15.i116 = phi { ptr, i32 } [ %i.sh, %bb.gv ], [ %i.si, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %bb.jj

bb.gy:                                            ; preds = %bb.gu, %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.sj = call ptr @__dynamic_cast(ptr nonnull %i.ro, ptr nonnull @_ZTIN7xgboost6common15ResourceHandlerE, ptr nonnull @_ZTIN7xgboost6common14MallocResourceE, i64 0) #8, !noalias !350 ; 4 uses
  %.not.not.i.i124 = icmp eq ptr %i.sj, null
  br i1 %.not.not.i.i124, label %_ZNSt10shared_ptrIN7xgboost6common14MallocResourceEEC2INS1_15ResourceHandlerEEERKS_IT_EPS2_.exit.i.i182, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  store ptr %i.sj, ptr %11, align 8, !tbaa !329, !alias.scope !350
  %i.sk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.sl = load ptr, ptr %i.rg, align 8, !tbaa !130, !noalias !350 ; 3 uses
  store ptr %i.sl, ptr %i.sk, align 8, !tbaa !130, !alias.scope !350
  %.not.i.i.i.i54.i125 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i.i.i54.i125, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i128, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 3 uses
  %i.sn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78, !noalias !350
  %.not.i.i.i.i.i55.i126 = icmp eq i8 %i.sn, 0
  br i1 %.not.i.i.i.i.i55.i126, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.i174, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.thread.i127

_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.thread.i127: ; preds = %bb.ha
  %i.so = load i32, ptr %i.sm, align 4, !tbaa !137, !noalias !350
  %i.sp = add nsw i32 %i.so, 1
  store i32 %i.sp, ptr %i.sm, align 4, !tbaa !137, !noalias !350
  br label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i128

_ZNSt10shared_ptrIN7xgboost6common14MallocResourceEEC2INS1_15ResourceHandlerEEERKS_IT_EPS2_.exit.i.i182: ; preds = %bb.gy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !alias.scope !350
  br label %bb.hb

_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.i174: ; preds = %bb.ha
  %i.sq = atomicrmw volatile add ptr %i.sm, i32 1 acq_rel, align 4, !noalias !350 ; 0 uses
  %.pr109.pre.i175 = load ptr, ptr %11, align 8, !tbaa !329 ; 2 uses
  %i.sr = icmp eq ptr %.pr109.pre.i175, null
  br i1 %i.sr, label %bb.hb, label %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i128, !prof !331

bb.hb:                                            ; preds = %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exitthread-pre-split.i174, %_ZNSt10shared_ptrIN7xgboost6common14MallocResourceEEC2INS1_15ResourceHandlerEEERKS_IT_EPS2_.exit.i.i182
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.ss = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %.noexc56.i177 unwind label %bb.hd

.noexc56.i177:                                    ; preds = %bb.hb
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ss, ptr noundef nonnull @.str, i32 noundef 185)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i178 unwind label %bb.hd

_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i178:     ; preds = %.noexc56.i177
  %i.st = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i179 unwind label %bb.he ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i179: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i178
  %i.su = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.st, ptr noundef nonnull @.str.33, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i180 unwind label %bb.he ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i180: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i179
  %i.sv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.st, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i181 unwind label %bb.he ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i181: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i180
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.hc unwind label %bb.hd

bb.hc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i181
  unreachable

bb.hd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64.i181, %.noexc56.i177, %bb.hb
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.he:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62.i180, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit60.i179, %_ZN4dmlc15LogMessageFatalC2EPKci.exit58.i178
  %i.sx = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.hf unwind label %bb.jl

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %.pn17.i176 = phi { ptr, i32 } [ %i.sw, %bb.hd ], [ %i.sx, %bb.he ]
end_hunk_2
begin_hunk_3_@_ZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmb:bb.a
  %i.uc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i68.i134 = icmp eq i8 %i.uc, 0
  br i1 %.not.i.i.i.i.i.i68.i134, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ud = add nsw i32 %i.tu, -1
  store i32 %i.ud, ptr %i.tr, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i135

bb.hq:                                            ; preds = %bb.ho
  %i.ue = atomicrmw volatile add ptr %i.tr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i135: ; preds = %bb.hq, %bb.hp
  %.0.i.i.i.i.i.i.i70.i136 = phi i32 [ %i.tu, %bb.hp ], [ %i.ue, %bb.hq ]
  %i.uf = icmp eq i32 %.0.i.i.i.i.i.i.i70.i136, 1
  br i1 %i.uf, label %bb.hr, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i137, !prof !13

bb.hr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tq) #8
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i137

_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i137: ; preds = %bb.hr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i69.i135, %bb.hn, %bb.hl
  %i.ug = load ptr, ptr %i.tn, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i72.i138 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i72.i138, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i142, label %bb.hs

bb.hs:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i137
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 4 uses
  %i.ui = load atomic i64, ptr %i.uh acquire, align 8 ; 2 uses
  %i.uj = icmp eq i64 %i.ui, 4294967297
  %i.uk = trunc i64 %i.ui to i32                  ; 2 uses
  br i1 %i.uj, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  store i32 0, ptr %i.uh, align 8, !tbaa !131
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  store i32 0, ptr %i.ul, align 4, !tbaa !133
  %i.um = load ptr, ptr %i.ug, align 8, !tbaa !134
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #8, !inline_history !354
  %i.up = load ptr, ptr %i.ug, align 8, !tbaa !134
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #8, !inline_history !354
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i142

bb.hu:                                            ; preds = %bb.hs
  %i.us = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i73.i139 = icmp eq i8 %i.us, 0
  br i1 %.not.i.i.i.i73.i139, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ut = add nsw i32 %i.uk, -1
  store i32 %i.ut, ptr %i.uh, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i140

bb.hw:                                            ; preds = %bb.hu
  %i.uu = atomicrmw volatile add ptr %i.uh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i140: ; preds = %bb.hw, %bb.hv
  %.0.i.i.i.i.i75.i141 = phi i32 [ %i.uk, %bb.hv ], [ %i.uu, %bb.hw ]
  %i.uv = icmp eq i32 %.0.i.i.i.i.i75.i141, 1
  br i1 %i.uv, label %bb.hx, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i142, !prof !13

bb.hx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #8
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i142

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i142: ; preds = %bb.hx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i74.i140, %bb.ht, %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit71.i137
  %i.uw = load ptr, ptr %i.te, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i143 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.i143, label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i147, label %bb.hy

bb.hy:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i142
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 4 uses
  %i.uy = load atomic i64, ptr %i.ux acquire, align 8 ; 2 uses
  %i.uz = icmp eq i64 %i.uy, 4294967297
  %i.va = trunc i64 %i.uy to i32                  ; 2 uses
  br i1 %i.uz, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  store i32 0, ptr %i.ux, align 8, !tbaa !131
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 12
  store i32 0, ptr %i.vb, align 4, !tbaa !133
  %i.vc = load ptr, ptr %i.uw, align 8, !tbaa !134
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(16) %i.uw) #8, !inline_history !355
  %i.vf = load ptr, ptr %i.uw, align 8, !tbaa !134
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8
  call void %i.vh(ptr noundef nonnull align 8 dereferenceable(16) %i.uw) #8, !inline_history !355
  br label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i147

bb.ia:                                            ; preds = %bb.hy
  %i.vi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i77.i144 = icmp eq i8 %i.vi, 0
  br i1 %.not.i.i.i77.i144, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.vj = add nsw i32 %i.va, -1
  store i32 %i.vj, ptr %i.ux, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i145

bb.ic:                                            ; preds = %bb.ia
  %i.vk = atomicrmw volatile add ptr %i.ux, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i145

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i145: ; preds = %bb.ic, %bb.ib
  %.0.i.i.i.i.i146 = phi i32 [ %i.va, %bb.ib ], [ %i.vk, %bb.ic ]
  %i.vl = icmp eq i32 %.0.i.i.i.i.i146, 1
  br i1 %i.vl, label %bb.id, label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i147, !prof !13

bb.id:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i145
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.uw) #8
  br label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i147

_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i147: ; preds = %bb.id, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i145, %bb.hz, %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit76.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.vm = load ptr, ptr %i.sk, align 8, !tbaa !130 ; 8 uses
  %.not.i.i78.i148 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i78.i148, label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i147
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8 ; 4 uses
  %i.vo = load atomic i64, ptr %i.vn acquire, align 8 ; 2 uses
  %i.vp = icmp eq i64 %i.vo, 4294967297
  %i.vq = trunc i64 %i.vo to i32                  ; 2 uses
  br i1 %i.vp, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  store i32 0, ptr %i.vn, align 8, !tbaa !131
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 12
  store i32 0, ptr %i.vr, align 4, !tbaa !133
  %i.vs = load ptr, ptr %i.vm, align 8, !tbaa !134
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %i.vu = load ptr, ptr %i.vt, align 8
  call void %i.vu(ptr noundef nonnull align 8 dereferenceable(16) %i.vm) #8, !inline_history !356
  %i.vv = load ptr, ptr %i.vm, align 8, !tbaa !134
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.vx = load ptr, ptr %i.vw, align 8
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(16) %i.vm) #8, !inline_history !356
  br label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152

bb.ig:                                            ; preds = %bb.ie
  %i.vy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i79.i149 = icmp eq i8 %i.vy, 0
  br i1 %.not.i.i.i79.i149, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.vz = add nsw i32 %i.vq, -1
  store i32 %i.vz, ptr %i.vn, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i150

bb.ii:                                            ; preds = %bb.ig
  %i.wa = atomicrmw volatile add ptr %i.vn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i150

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i150: ; preds = %bb.ii, %bb.ih
  %.0.i.i.i.i81.i151 = phi i32 [ %i.vq, %bb.ih ], [ %i.wa, %bb.ii ]
  %i.wb = icmp eq i32 %.0.i.i.i.i81.i151, 1
  br i1 %i.wb, label %bb.ij, label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152, !prof !13

bb.ij:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i150
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vm) #8
  br label %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152

_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152: ; preds = %bb.ij, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80.i150, %bb.if, %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.wc = load <2 x ptr>, ptr %i.tl, align 8, !tbaa !141
  br label %bb.io

bb.ik:                                            ; preds = %_ZSt20dynamic_pointer_castIN7xgboost6common14MallocResourceENS1_15ResourceHandlerEESt10shared_ptrIT_ERKS4_IT0_E.exit.thread.i128
  %i.wd = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.il:                                            ; preds = %bb.hg
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.im:                                            ; preds = %_ZNSt10shared_ptrIN7xgboost6common15ResourceHandlerEEC2INS1_14MallocResourceEvEERKS_IT_E.exit.i132
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il, %bb.ik, %bb.hf
  %.pn19.pn.i129 = phi { ptr, i32 } [ %.pn17.i176, %bb.hf ], [ %i.wd, %bb.ik ], [ %i.wf, %bb.im ], [ %i.we, %bb.il ]
  call void @_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.jj

bb.io:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152, %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i189
  %i.wg = phi <2 x ptr> [ %i.wc, %_ZNSt12__shared_ptrIN7xgboost6common14MallocResourceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152 ], [ %i.rz, %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit.i189 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false)
  %i.wh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.wi = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wh, i8 0, i64 16, i1 false)
  %i.wj = load ptr, ptr %i.rh, align 8, !tbaa !130 ; 8 uses
  store <2 x ptr> %i.wg, ptr %i.re, align 8, !tbaa !141
  %.not.i.i.i.i.i82.i155 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i.i.i.i82.i155, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i159, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8 ; 4 uses
  %i.wl = load atomic i64, ptr %i.wk acquire, align 8 ; 2 uses
  %i.wm = icmp eq i64 %i.wl, 4294967297
  %i.wn = trunc i64 %i.wl to i32                  ; 2 uses
  br i1 %i.wm, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  store i32 0, ptr %i.wk, align 8, !tbaa !131
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 12
  store i32 0, ptr %i.wo, align 4, !tbaa !133
  %i.wp = load ptr, ptr %i.wj, align 8, !tbaa !134
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #8, !inline_history !353
  %i.ws = load ptr, ptr %i.wj, align 8, !tbaa !134
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #8, !inline_history !353
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i159

bb.ir:                                            ; preds = %bb.ip
  %i.wv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i.i.i83.i156 = icmp eq i8 %i.wv, 0
  br i1 %.not.i.i.i.i.i.i83.i156, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.ww = add nsw i32 %i.wn, -1
  store i32 %i.ww, ptr %i.wk, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i157

bb.it:                                            ; preds = %bb.ir
  %i.wx = atomicrmw volatile add ptr %i.wk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i157

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i157: ; preds = %bb.it, %bb.is
  %.0.i.i.i.i.i.i.i85.i158 = phi i32 [ %i.wn, %bb.is ], [ %i.wx, %bb.it ]
  %i.wy = icmp eq i32 %.0.i.i.i.i.i.i.i85.i158, 1
  br i1 %i.wy, label %bb.iu, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i159, !prof !13

bb.iu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i157
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #8
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i159

_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i159: ; preds = %bb.iu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i84.i157, %bb.iq, %bb.io
  %i.wz = load ptr, ptr %37, align 8, !tbaa !336  ; 2 uses
  %i.xa = load i64, ptr %38, align 8, !tbaa !322  ; 2 uses
  %i.xb = icmp ne ptr %i.wz, null
  %i.xc = icmp eq i64 %i.xa, 0
  %i.xd = or i1 %i.xb, %i.xc
  br i1 %i.xd, label %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i160, label %bb.iv, !prof !140

bb.iv:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i159
  call void @_ZSt9terminatev() #30
  unreachable

_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i160: ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit86.i159
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.xa, ptr %i.xe, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.wz, ptr %.sroa.5.0..sroa_idx.i161, align 8, !tbaa !273
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !128 ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !129
  %.not.i.i.i.i.i.i88.i162 = icmp eq ptr %i.xg, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xf, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i88.i162, label %_ZN7xgboost6common5IndexD2Ev.exit.i163, label %bb.iw

bb.iw:                                            ; preds = %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i160
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = ptrtoint ptr %i.xg to i64
  %i.xl = sub i64 %i.xj, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %i.xg, i64 noundef %i.xl) #31
  br label %_ZN7xgboost6common5IndexD2Ev.exit.i163

_ZN7xgboost6common5IndexD2Ev.exit.i163:           ; preds = %bb.iw, %_ZN7xgboost6common5IndexC2ENS0_4SpanIhLm18446744073709551615EEENS0_11BinTypeSizeE.exit.i160
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 4, ptr %i.xm, align 8
  %.sroa.18106.40..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN7xgboost6common5Index18GetValueFromUint32EPKhm, ptr %.sroa.18106.40..sroa_idx.i164, align 8
  %i.xn = load ptr, ptr %i.wi, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i91.i165 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i.i91.i165, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i169, label %bb.ix

bb.ix:                                            ; preds = %_ZN7xgboost6common5IndexD2Ev.exit.i163
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 4 uses
  %i.xp = load atomic i64, ptr %i.xo acquire, align 8 ; 2 uses
  %i.xq = icmp eq i64 %i.xp, 4294967297
  %i.xr = trunc i64 %i.xp to i32                  ; 2 uses
  br i1 %i.xq, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  store i32 0, ptr %i.xo, align 8, !tbaa !131
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  store i32 0, ptr %i.xs, align 4, !tbaa !133
  %i.xt = load ptr, ptr %i.xn, align 8, !tbaa !134
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8
  call void %i.xv(ptr noundef nonnull align 8 dereferenceable(16) %i.xn) #8, !inline_history !354
  %i.xw = load ptr, ptr %i.xn, align 8, !tbaa !134
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  %i.xy = load ptr, ptr %i.xx, align 8
  call void %i.xy(ptr noundef nonnull align 8 dereferenceable(16) %i.xn) #8, !inline_history !354
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i169

bb.iz:                                            ; preds = %bb.ix
  %i.xz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i.i92.i166 = icmp eq i8 %i.xz, 0
  br i1 %.not.i.i.i.i92.i166, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.ya = add nsw i32 %i.xr, -1
  store i32 %i.ya, ptr %i.xo, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i167

bb.jb:                                            ; preds = %bb.iz
  %i.yb = atomicrmw volatile add ptr %i.xo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i167

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i167: ; preds = %bb.jb, %bb.ja
  %.0.i.i.i.i.i94.i168 = phi i32 [ %i.xr, %bb.ja ], [ %i.yb, %bb.jb ]
  %i.yc = icmp eq i32 %.0.i.i.i.i.i94.i168, 1
  br i1 %i.yc, label %bb.jc, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i169, !prof !13

bb.jc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i167
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xn) #8
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i169

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i169: ; preds = %bb.jc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i93.i167, %bb.iy, %_ZN7xgboost6common5IndexD2Ev.exit.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.yd = load ptr, ptr %i.rg, align 8, !tbaa !130 ; 8 uses
  %.not.i.i96.i170 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i96.i170, label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIjEEDaT_NS_6common11BinTypeSizeE.exit", label %bb.jd

bb.jd:                                            ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i169
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8 ; 4 uses
  %i.yf = load atomic i64, ptr %i.ye acquire, align 8 ; 2 uses
  %i.yg = icmp eq i64 %i.yf, 4294967297
  %i.yh = trunc i64 %i.yf to i32                  ; 2 uses
  br i1 %i.yg, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  store i32 0, ptr %i.ye, align 8, !tbaa !131
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yd, i64 12
  store i32 0, ptr %i.yi, align 4, !tbaa !133
  %i.yj = load ptr, ptr %i.yd, align 8, !tbaa !134
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8
  call void %i.yl(ptr noundef nonnull align 8 dereferenceable(16) %i.yd) #8, !inline_history !355
  %i.ym = load ptr, ptr %i.yd, align 8, !tbaa !134
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8
  call void %i.yo(ptr noundef nonnull align 8 dereferenceable(16) %i.yd) #8, !inline_history !355
  br label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIjEEDaT_NS_6common11BinTypeSizeE.exit"

bb.jf:                                            ; preds = %bb.jd
  %i.yp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !78
  %.not.i.i.i97.i171 = icmp eq i8 %i.yp, 0
  br i1 %.not.i.i.i97.i171, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.yq = add nsw i32 %i.yh, -1
  store i32 %i.yq, ptr %i.ye, align 8, !tbaa !137
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i172

bb.jh:                                            ; preds = %bb.jf
  %i.yr = atomicrmw volatile add ptr %i.ye, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i172

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i172: ; preds = %bb.jh, %bb.jg
  %.0.i.i.i.i99.i173 = phi i32 [ %i.yh, %bb.jg ], [ %i.yr, %bb.jh ]
  %i.ys = icmp eq i32 %.0.i.i.i.i99.i173, 1
  br i1 %i.ys, label %bb.ji, label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIjEEDaT_NS_6common11BinTypeSizeE.exit", !prof !13

bb.ji:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i172
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yd) #8
  br label %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIjEEDaT_NS_6common11BinTypeSizeE.exit"

bb.jj:                                            ; preds = %bb.in, %bb.gx, %bb.gr, %bb.gp
  %.pn22.i117 = phi { ptr, i32 } [ %.pn13.i183, %bb.gp ], [ %.pn19.pn.i129, %bb.in ], [ %.pn15.i116, %bb.gx ], [ %i.sa, %bb.gr ]
  call void @_ZN7xgboost6common15RefResourceViewIhED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ge
  %.pn22.pn.i118 = phi { ptr, i32 } [ %.pn22.i117, %bb.jj ], [ %.pn.i194, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %common.resume

bb.jl:                                            ; preds = %bb.he, %bb.gw, %bb.go, %bb.gd
  %i.yt = landingpad { ptr, i32 }
          catch ptr null
  %i.yu = extractvalue { ptr, i32 } %i.yt, 0
  call void @__clang_call_terminate(ptr %i.yu) #30
  unreachable

"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIjEEDaT_NS_6common11BinTypeSizeE.exit": ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit95.i169, %bb.je, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98.i172, %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.jm

bb.jm:                                            ; preds = %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clItEEDaT_NS_6common11BinTypeSizeE.exit", %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIjEEDaT_NS_6common11BinTypeSizeE.exit", %"_ZZN7xgboost16GHistIndexMatrix11ResizeIndexEPKNS_7ContextEmbENK3$_0clIhEEDaT_NS_6common11BinTypeSizeE.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(218) ptr @_ZNK7xgboost16GHistIndexMatrix9TransposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(225) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.c = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull @.str, i32 noundef 213)
  %i.d = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.1, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
end_hunk_3
