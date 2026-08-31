Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/gradient_index?download=true
inline.NumInlined: 3303
inline.NumDeleted: 1033
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN7xgboost6common15RefResourceViewIjEC2EPjmSt10shared_ptrINS0_15ResourceHandlerEE:bb.a
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !141
  store ptr null, ptr %i.f, align 8, !tbaa !130
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !141
  store ptr null, ptr %3, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !211  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(9) %i.h)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  store i64 %i.l, ptr %i.b, align 8, !tbaa !8
  %.not.i = icmp ult i64 %i.l, %2
  br i1 %.not.i, label %bb.c, label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.e

_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  %.pr = load ptr, ptr %4, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull @.str.42, i32 noundef 57)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.f

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc7
  %i.n = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.g ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.43, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !236    ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.r, i64 noundef %i.t)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.k

bb.f:                                             ; preds = %.noexc7, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #8
  br label %bb.k

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.pr17 = load ptr, ptr %4, align 8, !tbaa !236  ; 4 uses
  %.not.i16 = icmp eq ptr %.pr17, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %.pr17, align 8, !tbaa !74 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pr17, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !78
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr17, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.k:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #8
  resume { ptr, i32 } %.pn.pn

bb.l:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #30
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS4_E_clIhEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not185 = icmp eq i64 %0, 0
  br i1 %.not185, label %.loopexit, label %.lr.ph178

.lr.ph178:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph178, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.049177 = phi i64 [ 0, %.lr.ph178 ], [ %i.ai, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !574, !nonnull !33, !align !479
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8
  %i.j = add i64 %i.i, %.049177                   ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !575, !nonnull !33, !align !479
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  %i.m = mul i64 %i.l, %i.j                       ; 2 uses
  %i.n = add i64 %i.j, 1
  %i.o = mul i64 %i.n, %i.l
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !555
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, %.lr.ph.i
  %.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i ] ; 2 uses
  %.01213.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.ag, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.014.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !576, !nonnull !33, !align !479 ; 2 uses
  %i.w = add i64 %i.u, %i.j                       ; 2 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !272
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, label %bb.d, !prof !140

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i: ; preds = %bb.c
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !577, !nonnull !33, !align !479
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !273
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.01213.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !78
  %i.ag = add nuw i64 %.01213.i, 1
  %i.ah = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.l
  br i1 %exitcond.not.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %bb.c, !llvm.loop !578

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, %bb.b
  %i.ai = add nuw i64 %.049177, 1                 ; 2 uses
  %exitcond196.not = icmp eq i64 %i.ai, %0
  br i1 %exitcond196.not, label %.loopexit, label %bb.b, !llvm.loop !579

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !580
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !580
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.e
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.aj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.aj, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.g

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ak = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.h ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.an = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.y unwind label %bb.z

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr152 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i63 = icmp eq ptr %.pr152, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %.pr152, align 8, !tbaa !74 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pr152, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !78
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr152, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %.loopexit [
    i32 0, label %.preheader155
    i32 1, label %bb.m
    i32 2, label %bb.r
    i32 3, label %.preheader164
  ]

.preheader164:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not179 = icmp eq i64 %0, 0
  br i1 %.not179, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader164
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.w

.preheader155:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not184 = icmp eq i64 %0, 0
  br i1 %.not184, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader155
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph176, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044175 = phi i64 [ 0, %.lr.ph176 ], [ %i.cw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %.sroa.099.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4100.0.copyload = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5101.0.copyload = load ptr, ptr %.sroa.5101.0..sroa_idx, align 8, !tbaa !525 ; 3 uses
  %i.ba = load i64, ptr %.sroa.099.0.copyload, align 8, !tbaa !8
  %i.bb = add i64 %i.ba, %.044175                 ; 5 uses
  %i.bc = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.bd = freeze i64 %i.bc                        ; 6 uses
  %i.be = mul i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = add i64 %i.bb, 1
  %i.bg = mul i64 %i.bf, %i.bd
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.k
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4100.0.copyload, i64 8 ; 3 uses
  %xtraiter282 = and i64 %i.bd, 1
  %i.bk = icmp eq i64 %i.bd, 1
  br i1 %i.bk, label %.epil.preheader281, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter285 = and i64 %i.bd, -2
  br label %bb.l

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1, %.lr.ph.i.i.new
  %.014.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ck, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.be, %.lr.ph.i.i.new ], [ %i.cj, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ] ; 3 uses
  %niter286 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter286.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ]
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !226
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.014.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !8
  %i.bo = add i64 %i.bn, %i.bb                    ; 2 uses
  %i.bp = load i64, ptr %.sroa.4100.0.copyload, align 8, !tbaa !272
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i, label %.loopexit287, !prof !140

.loopexit287:                                     ; preds = %.epil.preheader281, %bb.l, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i: ; preds = %bb.l
  %i.br = load ptr, ptr %.sroa.5101.0.copyload, align 8, !tbaa !273
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.01213.i.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !78
  %i.bu = load ptr, ptr %i.bj, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bo
  store i8 %i.bt, ptr %i.bv, align 1, !tbaa !78
  %i.bw = load ptr, ptr %i.bi, align 8, !tbaa !226
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.014.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !8
  %i.ca = add i64 %i.bz, %i.bb                    ; 2 uses
  %i.cb = load i64, ptr %.sroa.4100.0.copyload, align 8, !tbaa !272
  %i.cc = icmp ult i64 %i.ca, %i.cb
  br i1 %i.cc, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit287, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i
  %i.cd = load ptr, ptr %.sroa.5101.0.copyload, align 8, !tbaa !273
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.01213.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !78
  %i.ch = load ptr, ptr %i.bj, align 8, !tbaa !67
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ca
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !78
  %i.cj = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.ck = add i64 %.014.i.i, 2                    ; 2 uses
  %niter286.next.1 = add i64 %niter286, 2         ; 2 uses
  %niter286.ncmp.1 = icmp eq i64 %niter286.next.1, %unroll_iter285
  br i1 %niter286.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !578

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader281

.epil.preheader281:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ck, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.be, %.lr.ph.i.i ], [ %i.cj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod284 = trunc i64 %i.bd to i1
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.cl = load ptr, ptr %i.bi, align 8, !tbaa !226
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i.epil.init
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !8
  %i.co = add i64 %i.cn, %i.bb                    ; 2 uses
  %i.cp = load i64, ptr %.sroa.4100.0.copyload, align 8, !tbaa !272
  %i.cq = icmp ult i64 %i.co, %i.cp
  br i1 %i.cq, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit287, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader281
  %i.cr = load ptr, ptr %.sroa.5101.0.copyload, align 8, !tbaa !273
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.01213.i.i.epil.init
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !78
  %i.cu = load ptr, ptr %i.bj, align 8, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.co
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.k
  %i.cw = add nuw i64 %.044175, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.cw, %0
  br i1 %exitcond195.not, label %.loopexit, label %bb.k, !llvm.loop !583

bb.m:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.cx = icmp eq i64 %3, 0
  %.not183 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.cx, label %.preheader156, label %.preheader158

.preheader158:                                    ; preds = %bb.m
  br i1 %.not183, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader158
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.p

.preheader156:                                    ; preds = %bb.m
  br i1 %.not183, label %.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader156
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69
  %.043173 = phi i64 [ 0, %.lr.ph174 ], [ %i.eu, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69 ] ; 2 uses
  %.sroa.0107.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2108.0.copyload = load ptr, ptr %.sroa.2108.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4110.0.copyload = load ptr, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5111.0.copyload = load ptr, ptr %.sroa.5111.0..sroa_idx, align 8, !tbaa !525 ; 3 uses
  %i.cy = load i64, ptr %.sroa.0107.0.copyload, align 8, !tbaa !8
  %i.cz = add i64 %i.cy, %.043173                 ; 5 uses
  %i.da = load i64, ptr %.sroa.2108.0.copyload, align 8, !tbaa !8
  %i.db = freeze i64 %i.da                        ; 6 uses
  %i.dc = mul i64 %i.db, %i.cz                    ; 3 uses
  %i.dd = add i64 %i.cz, 1
  %i.de = mul i64 %i.dd, %i.db
  %i.df = icmp ult i64 %i.dc, %i.de
  br i1 %i.df, label %.lr.ph.i.i64, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69

.lr.ph.i.i64:                                     ; preds = %bb.n
  %.sroa.3109.0.copyload = load ptr, ptr %.sroa.3109.0..sroa_idx, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.3109.0.copyload, i64 96 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.4110.0.copyload, i64 8 ; 3 uses
  %xtraiter274 = and i64 %i.db, 1
  %i.di = icmp eq i64 %i.db, 1
  br i1 %i.di, label %.epil.preheader273, label %.lr.ph.i.i64.new

.lr.ph.i.i64.new:                                 ; preds = %.lr.ph.i.i64
  %unroll_iter277 = and i64 %i.db, -2
  br label %bb.o

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.1, %.lr.ph.i.i64.new
  %.014.i.i65 = phi i64 [ 0, %.lr.ph.i.i64.new ], [ %i.ei, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.1 ] ; 3 uses
  %.01213.i.i66 = phi i64 [ %i.dc, %.lr.ph.i.i64.new ], [ %i.eh, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.1 ] ; 3 uses
  %niter278 = phi i64 [ 0, %.lr.ph.i.i64.new ], [ %niter278.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.1 ]
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !226
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.014.i.i65
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !8
  %i.dm = add i64 %i.dl, %i.cz                    ; 2 uses
  %i.dn = load i64, ptr %.sroa.4110.0.copyload, align 8, !tbaa !272
  %i.do = icmp ult i64 %i.dm, %i.dn
  br i1 %i.do, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67, label %.loopexit279, !prof !140

.loopexit279:                                     ; preds = %.epil.preheader273, %bb.o, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67: ; preds = %bb.o
  %i.dp = load ptr, ptr %.sroa.5111.0.copyload, align 8, !tbaa !273
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.01213.i.i66
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !78
  %i.ds = load ptr, ptr %i.dh, align 8, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dm
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !78
  %i.du = load ptr, ptr %i.dg, align 8, !tbaa !226
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.014.i.i65
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !8
  %i.dy = add i64 %i.dx, %i.cz                    ; 2 uses
  %i.dz = load i64, ptr %.sroa.4110.0.copyload, align 8, !tbaa !272
  %i.ea = icmp ult i64 %i.dy, %i.dz
  br i1 %i.ea, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.1, label %.loopexit279, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67
  %i.eb = load ptr, ptr %.sroa.5111.0.copyload, align 8, !tbaa !273
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.01213.i.i66
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !78
  %i.ef = load ptr, ptr %i.dh, align 8, !tbaa !67
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dy
  store i8 %i.ee, ptr %i.eg, align 1, !tbaa !78
  %i.eh = add nuw i64 %.01213.i.i66, 2            ; 2 uses
  %i.ei = add i64 %.014.i.i65, 2                  ; 2 uses
  %niter278.next.1 = add i64 %niter278, 2         ; 2 uses
  %niter278.ncmp.1 = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, label %bb.o, !llvm.loop !578

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.1
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69, label %.epil.preheader273

.epil.preheader273:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, %.lr.ph.i.i64
  %.014.i.i65.epil.init = phi i64 [ 0, %.lr.ph.i.i64 ], [ %i.ei, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa ]
  %.01213.i.i66.epil.init = phi i64 [ %i.dc, %.lr.ph.i.i64 ], [ %i.eh, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa ]
  %lcmp.mod276 = trunc i64 %i.db to i1
  call void @llvm.assume(i1 %lcmp.mod276)
  %i.ej = load ptr, ptr %i.dg, align 8, !tbaa !226
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.014.i.i65.epil.init
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !8
  %i.em = add i64 %i.el, %i.cz                    ; 2 uses
  %i.en = load i64, ptr %.sroa.4110.0.copyload, align 8, !tbaa !272
  %i.eo = icmp ult i64 %i.em, %i.en
  br i1 %i.eo, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.epil, label %.loopexit279, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.epil: ; preds = %.epil.preheader273
  %i.ep = load ptr, ptr %.sroa.5111.0.copyload, align 8, !tbaa !273
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.01213.i.i66.epil.init
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !78
  %i.es = load ptr, ptr %i.dh, align 8, !tbaa !67
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.em
  store i8 %i.er, ptr %i.et, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i67.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, %bb.n
  %i.eu = add nuw i64 %.043173, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.eu, %0
  br i1 %exitcond194.not, label %.loopexit, label %bb.n, !llvm.loop !584

bb.p:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75
  %.042171 = phi i64 [ 0, %.lr.ph172 ], [ %i.gr, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75 ] ; 2 uses
  %.sroa.0117.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2118.0.copyload = load ptr, ptr %.sroa.2118.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5121.0.copyload = load ptr, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !525 ; 3 uses
  %i.ev = load i64, ptr %.sroa.0117.0.copyload, align 8, !tbaa !8
  %i.ew = add i64 %i.ev, %.042171                 ; 5 uses
  %i.ex = load i64, ptr %.sroa.2118.0.copyload, align 8, !tbaa !8
  %i.ey = freeze i64 %i.ex                        ; 6 uses
  %i.ez = mul i64 %i.ey, %i.ew                    ; 3 uses
  %i.fa = add i64 %i.ew, 1
  %i.fb = mul i64 %i.fa, %i.ey
  %i.fc = icmp ult i64 %i.ez, %i.fb
  br i1 %i.fc, label %.lr.ph.i.i70, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75

.lr.ph.i.i70:                                     ; preds = %bb.p
  %.sroa.3119.0.copyload = load ptr, ptr %.sroa.3119.0..sroa_idx, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.3119.0.copyload, i64 96 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.4120.0.copyload, i64 8 ; 3 uses
  %xtraiter266 = and i64 %i.ey, 1
  %i.ff = icmp eq i64 %i.ey, 1
  br i1 %i.ff, label %.epil.preheader265, label %.lr.ph.i.i70.new

.lr.ph.i.i70.new:                                 ; preds = %.lr.ph.i.i70
  %unroll_iter269 = and i64 %i.ey, -2
  br label %bb.q

bb.q:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.1, %.lr.ph.i.i70.new
  %.014.i.i71 = phi i64 [ 0, %.lr.ph.i.i70.new ], [ %i.gf, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.1 ] ; 3 uses
  %.01213.i.i72 = phi i64 [ %i.ez, %.lr.ph.i.i70.new ], [ %i.ge, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.1 ] ; 3 uses
  %niter270 = phi i64 [ 0, %.lr.ph.i.i70.new ], [ %niter270.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.1 ]
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !226
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.014.i.i71
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !8
  %i.fj = add i64 %i.fi, %i.ew                    ; 2 uses
  %i.fk = load i64, ptr %.sroa.4120.0.copyload, align 8, !tbaa !272
  %i.fl = icmp ult i64 %i.fj, %i.fk
  br i1 %i.fl, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73, label %.loopexit271, !prof !140

.loopexit271:                                     ; preds = %.epil.preheader265, %bb.q, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73: ; preds = %bb.q
  %i.fm = load ptr, ptr %.sroa.5121.0.copyload, align 8, !tbaa !273
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.01213.i.i72
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !78
  %i.fp = load ptr, ptr %i.fe, align 8, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fj
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !78
  %i.fr = load ptr, ptr %i.fd, align 8, !tbaa !226
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.014.i.i71
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !8
  %i.fv = add i64 %i.fu, %i.ew                    ; 2 uses
  %i.fw = load i64, ptr %.sroa.4120.0.copyload, align 8, !tbaa !272
  %i.fx = icmp ult i64 %i.fv, %i.fw
  br i1 %i.fx, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.1, label %.loopexit271, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73
  %i.fy = load ptr, ptr %.sroa.5121.0.copyload, align 8, !tbaa !273
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.01213.i.i72
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !78
  %i.gc = load ptr, ptr %i.fe, align 8, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fv
  store i8 %i.gb, ptr %i.gd, align 1, !tbaa !78
  %i.ge = add nuw i64 %.01213.i.i72, 2            ; 2 uses
  %i.gf = add i64 %.014.i.i71, 2                  ; 2 uses
  %niter270.next.1 = add i64 %niter270, 2         ; 2 uses
  %niter270.ncmp.1 = icmp eq i64 %niter270.next.1, %unroll_iter269
  br i1 %niter270.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, label %bb.q, !llvm.loop !578

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.1
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75, label %.epil.preheader265

.epil.preheader265:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, %.lr.ph.i.i70
  %.014.i.i71.epil.init = phi i64 [ 0, %.lr.ph.i.i70 ], [ %i.gf, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa ]
  %.01213.i.i72.epil.init = phi i64 [ %i.ez, %.lr.ph.i.i70 ], [ %i.ge, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa ]
  %lcmp.mod268 = trunc i64 %i.ey to i1
  call void @llvm.assume(i1 %lcmp.mod268)
  %i.gg = load ptr, ptr %i.fd, align 8, !tbaa !226
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.014.i.i71.epil.init
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !8
  %i.gj = add i64 %i.gi, %i.ew                    ; 2 uses
  %i.gk = load i64, ptr %.sroa.4120.0.copyload, align 8, !tbaa !272
  %i.gl = icmp ult i64 %i.gj, %i.gk
  br i1 %i.gl, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.epil, label %.loopexit271, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.epil: ; preds = %.epil.preheader265
  %i.gm = load ptr, ptr %.sroa.5121.0.copyload, align 8, !tbaa !273
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.01213.i.i72.epil.init
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !78
  %i.gp = load ptr, ptr %i.fe, align 8, !tbaa !67
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gj
  store i8 %i.go, ptr %i.gq, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i73.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, %bb.p
  %i.gr = add nuw i64 %.042171, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.gr, %0
  br i1 %exitcond193.not, label %.loopexit, label %bb.p, !llvm.loop !585

bb.r:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.gs = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.gs, label %.preheader160, label %.preheader162

.preheader162:                                    ; preds = %bb.r
  br i1 %.not181, label %.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader162
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.u

.preheader160:                                    ; preds = %bb.r
  br i1 %.not181, label %.loopexit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader160
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81
  %.041169 = phi i64 [ 0, %.lr.ph170 ], [ %i.ip, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81 ] ; 2 uses
  %.sroa.0127.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2128.0.copyload = load ptr, ptr %.sroa.2128.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4130.0.copyload = load ptr, ptr %.sroa.4130.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5131.0.copyload = load ptr, ptr %.sroa.5131.0..sroa_idx, align 8, !tbaa !525 ; 3 uses
  %i.gt = load i64, ptr %.sroa.0127.0.copyload, align 8, !tbaa !8
  %i.gu = add i64 %i.gt, %.041169                 ; 5 uses
  %i.gv = load i64, ptr %.sroa.2128.0.copyload, align 8, !tbaa !8
  %i.gw = freeze i64 %i.gv                        ; 6 uses
  %i.gx = mul i64 %i.gw, %i.gu                    ; 3 uses
  %i.gy = add i64 %i.gu, 1
  %i.gz = mul i64 %i.gy, %i.gw
  %i.ha = icmp ult i64 %i.gx, %i.gz
  br i1 %i.ha, label %.lr.ph.i.i76, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81

.lr.ph.i.i76:                                     ; preds = %bb.s
  %.sroa.3129.0.copyload = load ptr, ptr %.sroa.3129.0..sroa_idx, align 8, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.3129.0.copyload, i64 96 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.4130.0.copyload, i64 8 ; 3 uses
  %xtraiter258 = and i64 %i.gw, 1
  %i.hd = icmp eq i64 %i.gw, 1
  br i1 %i.hd, label %.epil.preheader257, label %.lr.ph.i.i76.new

.lr.ph.i.i76.new:                                 ; preds = %.lr.ph.i.i76
  %unroll_iter261 = and i64 %i.gw, -2
  br label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.1, %.lr.ph.i.i76.new
  %.014.i.i77 = phi i64 [ 0, %.lr.ph.i.i76.new ], [ %i.id, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.1 ] ; 3 uses
  %.01213.i.i78 = phi i64 [ %i.gx, %.lr.ph.i.i76.new ], [ %i.ic, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.1 ] ; 3 uses
  %niter262 = phi i64 [ 0, %.lr.ph.i.i76.new ], [ %niter262.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.1 ]
  %i.he = load ptr, ptr %i.hb, align 8, !tbaa !226
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.014.i.i77
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !8
  %i.hh = add i64 %i.hg, %i.gu                    ; 2 uses
  %i.hi = load i64, ptr %.sroa.4130.0.copyload, align 8, !tbaa !272
  %i.hj = icmp ult i64 %i.hh, %i.hi
  br i1 %i.hj, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79, label %.loopexit263, !prof !140

.loopexit263:                                     ; preds = %.epil.preheader257, %bb.t, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79: ; preds = %bb.t
  %i.hk = load ptr, ptr %.sroa.5131.0.copyload, align 8, !tbaa !273
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.01213.i.i78
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !78
  %i.hn = load ptr, ptr %i.hc, align 8, !tbaa !67
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hh
  store i8 %i.hm, ptr %i.ho, align 1, !tbaa !78
  %i.hp = load ptr, ptr %i.hb, align 8, !tbaa !226
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.014.i.i77
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !8
  %i.ht = add i64 %i.hs, %i.gu                    ; 2 uses
  %i.hu = load i64, ptr %.sroa.4130.0.copyload, align 8, !tbaa !272
  %i.hv = icmp ult i64 %i.ht, %i.hu
  br i1 %i.hv, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.1, label %.loopexit263, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79
  %i.hw = load ptr, ptr %.sroa.5131.0.copyload, align 8, !tbaa !273
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.01213.i.i78
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !78
  %i.ia = load ptr, ptr %i.hc, align 8, !tbaa !67
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ht
  store i8 %i.hz, ptr %i.ib, align 1, !tbaa !78
  %i.ic = add nuw i64 %.01213.i.i78, 2            ; 2 uses
  %i.id = add i64 %.014.i.i77, 2                  ; 2 uses
  %niter262.next.1 = add i64 %niter262, 2         ; 2 uses
  %niter262.ncmp.1 = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, label %bb.t, !llvm.loop !578

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.1
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod259.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81, label %.epil.preheader257

.epil.preheader257:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, %.lr.ph.i.i76
  %.014.i.i77.epil.init = phi i64 [ 0, %.lr.ph.i.i76 ], [ %i.id, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa ]
  %.01213.i.i78.epil.init = phi i64 [ %i.gx, %.lr.ph.i.i76 ], [ %i.ic, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa ]
  %lcmp.mod260 = trunc i64 %i.gw to i1
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.ie = load ptr, ptr %i.hb, align 8, !tbaa !226
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.014.i.i77.epil.init
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !8
  %i.ih = add i64 %i.ig, %i.gu                    ; 2 uses
  %i.ii = load i64, ptr %.sroa.4130.0.copyload, align 8, !tbaa !272
  %i.ij = icmp ult i64 %i.ih, %i.ii
  br i1 %i.ij, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.epil, label %.loopexit263, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.epil: ; preds = %.epil.preheader257
  %i.ik = load ptr, ptr %.sroa.5131.0.copyload, align 8, !tbaa !273
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.01213.i.i78.epil.init
  %i.im = load i8, ptr %i.il, align 1, !tbaa !78
  %i.in = load ptr, ptr %i.hc, align 8, !tbaa !67
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ih
  store i8 %i.im, ptr %i.io, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i79.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, %bb.s
  %i.ip = add nuw i64 %.041169, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.ip, %0
  br i1 %exitcond192.not, label %.loopexit, label %bb.s, !llvm.loop !586

bb.u:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87
  %.040167 = phi i64 [ 0, %.lr.ph168 ], [ %i.km, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87 ] ; 2 uses
  %.sroa.0137.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2138.0.copyload = load ptr, ptr %.sroa.2138.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4140.0.copyload = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5141.0.copyload = load ptr, ptr %.sroa.5141.0..sroa_idx, align 8, !tbaa !525 ; 3 uses
  %i.iq = load i64, ptr %.sroa.0137.0.copyload, align 8, !tbaa !8
  %i.ir = add i64 %i.iq, %.040167                 ; 5 uses
  %i.is = load i64, ptr %.sroa.2138.0.copyload, align 8, !tbaa !8
  %i.it = freeze i64 %i.is                        ; 6 uses
  %i.iu = mul i64 %i.it, %i.ir                    ; 3 uses
  %i.iv = add i64 %i.ir, 1
  %i.iw = mul i64 %i.iv, %i.it
  %i.ix = icmp ult i64 %i.iu, %i.iw
  br i1 %i.ix, label %.lr.ph.i.i82, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87

.lr.ph.i.i82:                                     ; preds = %bb.u
  %.sroa.3139.0.copyload = load ptr, ptr %.sroa.3139.0..sroa_idx, align 8, !tbaa !10
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.3139.0.copyload, i64 96 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.4140.0.copyload, i64 8 ; 3 uses
  %xtraiter250 = and i64 %i.it, 1
  %i.ja = icmp eq i64 %i.it, 1
  br i1 %i.ja, label %.epil.preheader249, label %.lr.ph.i.i82.new

.lr.ph.i.i82.new:                                 ; preds = %.lr.ph.i.i82
  %unroll_iter253 = and i64 %i.it, -2
  br label %bb.v

bb.v:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.1, %.lr.ph.i.i82.new
  %.014.i.i83 = phi i64 [ 0, %.lr.ph.i.i82.new ], [ %i.ka, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.1 ] ; 3 uses
  %.01213.i.i84 = phi i64 [ %i.iu, %.lr.ph.i.i82.new ], [ %i.jz, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.1 ] ; 3 uses
  %niter254 = phi i64 [ 0, %.lr.ph.i.i82.new ], [ %niter254.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.1 ]
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !226
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.014.i.i83
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !8
  %i.je = add i64 %i.jd, %i.ir                    ; 2 uses
  %i.jf = load i64, ptr %.sroa.4140.0.copyload, align 8, !tbaa !272
  %i.jg = icmp ult i64 %i.je, %i.jf
  br i1 %i.jg, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85, label %.loopexit255, !prof !140

.loopexit255:                                     ; preds = %.epil.preheader249, %bb.v, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85: ; preds = %bb.v
  %i.jh = load ptr, ptr %.sroa.5141.0.copyload, align 8, !tbaa !273
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.01213.i.i84
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !78
  %i.jk = load ptr, ptr %i.iz, align 8, !tbaa !67
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.je
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !78
  %i.jm = load ptr, ptr %i.iy, align 8, !tbaa !226
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.014.i.i83
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !8
  %i.jq = add i64 %i.jp, %i.ir                    ; 2 uses
  %i.jr = load i64, ptr %.sroa.4140.0.copyload, align 8, !tbaa !272
  %i.js = icmp ult i64 %i.jq, %i.jr
  br i1 %i.js, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.1, label %.loopexit255, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85
  %i.jt = load ptr, ptr %.sroa.5141.0.copyload, align 8, !tbaa !273
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %.01213.i.i84
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !78
  %i.jx = load ptr, ptr %i.iz, align 8, !tbaa !67
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jq
  store i8 %i.jw, ptr %i.jy, align 1, !tbaa !78
  %i.jz = add nuw i64 %.01213.i.i84, 2            ; 2 uses
  %i.ka = add i64 %.014.i.i83, 2                  ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, label %bb.v, !llvm.loop !578

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.1
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87, label %.epil.preheader249

.epil.preheader249:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, %.lr.ph.i.i82
  %.014.i.i83.epil.init = phi i64 [ 0, %.lr.ph.i.i82 ], [ %i.ka, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa ]
  %.01213.i.i84.epil.init = phi i64 [ %i.iu, %.lr.ph.i.i82 ], [ %i.jz, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa ]
  %lcmp.mod252 = trunc i64 %i.it to i1
  call void @llvm.assume(i1 %lcmp.mod252)
  %i.kb = load ptr, ptr %i.iy, align 8, !tbaa !226
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.014.i.i83.epil.init
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !8
  %i.ke = add i64 %i.kd, %i.ir                    ; 2 uses
  %i.kf = load i64, ptr %.sroa.4140.0.copyload, align 8, !tbaa !272
  %i.kg = icmp ult i64 %i.ke, %i.kf
  br i1 %i.kg, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.epil, label %.loopexit255, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.epil: ; preds = %.epil.preheader249
  %i.kh = load ptr, ptr %.sroa.5141.0.copyload, align 8, !tbaa !273
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.01213.i.i84.epil.init
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !78
  %i.kk = load ptr, ptr %i.iz, align 8, !tbaa !67
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ke
  store i8 %i.kj, ptr %i.kl, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i85.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, %bb.u
  %i.km = add nuw i64 %.040167, 1                 ; 2 uses
  %exitcond191.not = icmp eq i64 %i.km, %0
  br i1 %exitcond191.not, label %.loopexit, label %bb.u, !llvm.loop !587

bb.w:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93
  %.0166 = phi i64 [ 0, %.lr.ph ], [ %i.mj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93 ] ; 2 uses
  %.sroa.0147.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2148.0.copyload = load ptr, ptr %.sroa.2148.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4150.0.copyload = load ptr, ptr %.sroa.4150.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5151.0.copyload = load ptr, ptr %.sroa.5151.0..sroa_idx, align 8, !tbaa !525 ; 3 uses
  %i.kn = load i64, ptr %.sroa.0147.0.copyload, align 8, !tbaa !8
  %i.ko = add i64 %i.kn, %.0166                   ; 5 uses
  %i.kp = load i64, ptr %.sroa.2148.0.copyload, align 8, !tbaa !8
  %i.kq = freeze i64 %i.kp                        ; 6 uses
  %i.kr = mul i64 %i.kq, %i.ko                    ; 3 uses
  %i.ks = add i64 %i.ko, 1
  %i.kt = mul i64 %i.ks, %i.kq
  %i.ku = icmp ult i64 %i.kr, %i.kt
  br i1 %i.ku, label %.lr.ph.i.i88, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93

.lr.ph.i.i88:                                     ; preds = %bb.w
  %.sroa.3149.0.copyload = load ptr, ptr %.sroa.3149.0..sroa_idx, align 8, !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.3149.0.copyload, i64 96 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.4150.0.copyload, i64 8 ; 3 uses
  %xtraiter = and i64 %i.kq, 1
  %i.kx = icmp eq i64 %i.kq, 1
  br i1 %i.kx, label %.epil.preheader, label %.lr.ph.i.i88.new

.lr.ph.i.i88.new:                                 ; preds = %.lr.ph.i.i88
  %unroll_iter = and i64 %i.kq, -2
  br label %bb.x

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.1, %.lr.ph.i.i88.new
  %.014.i.i89 = phi i64 [ 0, %.lr.ph.i.i88.new ], [ %i.lx, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.1 ] ; 3 uses
  %.01213.i.i90 = phi i64 [ %i.kr, %.lr.ph.i.i88.new ], [ %i.lw, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i88.new ], [ %niter.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.1 ]
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !226
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %.014.i.i89
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !8
  %i.lb = add i64 %i.la, %i.ko                    ; 2 uses
  %i.lc = load i64, ptr %.sroa.4150.0.copyload, align 8, !tbaa !272
  %i.ld = icmp ult i64 %i.lb, %i.lc
  br i1 %i.ld, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91, label %.loopexit247, !prof !140

.loopexit247:                                     ; preds = %.epil.preheader, %bb.x, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91: ; preds = %bb.x
  %i.le = load ptr, ptr %.sroa.5151.0.copyload, align 8, !tbaa !273
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %.01213.i.i90
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !78
  %i.lh = load ptr, ptr %i.kw, align 8, !tbaa !67
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lb
  store i8 %i.lg, ptr %i.li, align 1, !tbaa !78
  %i.lj = load ptr, ptr %i.kv, align 8, !tbaa !226
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.014.i.i89
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !8
  %i.ln = add i64 %i.lm, %i.ko                    ; 2 uses
  %i.lo = load i64, ptr %.sroa.4150.0.copyload, align 8, !tbaa !272
  %i.lp = icmp ult i64 %i.ln, %i.lo
  br i1 %i.lp, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.1, label %.loopexit247, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91
  %i.lq = load ptr, ptr %.sroa.5151.0.copyload, align 8, !tbaa !273
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %.01213.i.i90
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !78
  %i.lu = load ptr, ptr %i.kw, align 8, !tbaa !67
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.ln
  store i8 %i.lt, ptr %i.lv, align 1, !tbaa !78
  %i.lw = add nuw i64 %.01213.i.i90, 2            ; 2 uses
  %i.lx = add i64 %.014.i.i89, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, label %bb.x, !llvm.loop !578

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, %.lr.ph.i.i88
  %.014.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i88 ], [ %i.lx, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa ]
  %.01213.i.i90.epil.init = phi i64 [ %i.kr, %.lr.ph.i.i88 ], [ %i.lw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i64 %i.kq to i1
  call void @llvm.assume(i1 %lcmp.mod246)
  %i.ly = load ptr, ptr %i.kv, align 8, !tbaa !226
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %.014.i.i89.epil.init
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !8
  %i.mb = add i64 %i.ma, %i.ko                    ; 2 uses
  %i.mc = load i64, ptr %.sroa.4150.0.copyload, align 8, !tbaa !272
  %i.md = icmp ult i64 %i.mb, %i.mc
  br i1 %i.md, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.epil, label %.loopexit247, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.epil: ; preds = %.epil.preheader
  %i.me = load ptr, ptr %.sroa.5151.0.copyload, align 8, !tbaa !273
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %.01213.i.i90.epil.init
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !78
  %i.mh = load ptr, ptr %i.kw, align 8, !tbaa !67
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mb
  store i8 %i.mg, ptr %i.mi, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i91.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, %bb.w
  %i.mj = add nuw i64 %.0166, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mj, %0
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !588

.loopexit:                                        ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader155, %.preheader156, %.preheader158, %.preheader160, %.preheader162, %.preheader164, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %.preheader
  ret void

bb.y:                                             ; preds = %bb.g, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.au, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %bb.h
  %i.mk = landingpad { ptr, i32 }
          catch ptr null
  %i.ml = extractvalue { ptr, i32 } %i.mk, 0
  call void @__clang_call_terminate(ptr %i.ml) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS4_E_clItEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not185 = icmp eq i64 %0, 0
  br i1 %.not185, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph178

.lr.ph178:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !589, !nonnull !33, !align !479
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !590, !nonnull !33, !align !479
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = freeze i64 %i.h                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !33, !align !479 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %xtraiter290 = and i64 %i.i, 1
  %i.q = icmp eq i64 %i.i, 1
  %unroll_iter293 = and i64 %i.i, -2
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  %lcmp.mod292 = trunc i64 %i.i to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph178, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.049177 = phi i64 [ 0, %.lr.ph178 ], [ %i.bf, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.r = add i64 %i.e, %.049177                   ; 5 uses
  %i.s = mul i64 %i.i, %i.r                       ; 3 uses
  %i.t = add i64 %i.r, 1
  %i.u = mul i64 %i.t, %i.i
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !226  ; 3 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !560  ; 3 uses
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !33, !align !479 ; 2 uses
  br i1 %i.q, label %.epil.preheader289, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1
  %.014.i = phi i64 [ %i.au, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i64 [ %i.at, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %niter294 = phi i64 [ %niter294.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = add i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i, label %.loopexit295, !prof !140

.loopexit295:                                     ; preds = %.epil.preheader289, %.lr.ph.i.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.i.new
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !273 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.01213.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !78
  %i.ag = zext i8 %i.af to i16
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !562 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ab
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !373
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8
  %i.am = add i64 %i.al, %i.r                     ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.x
  br i1 %i.an, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1, label %.loopexit295, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.01213.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !78
  %i.ar = zext i8 %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.am
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !373
  %i.at = add nuw i64 %.01213.i, 2                ; 2 uses
  %i.au = add i64 %.014.i, 2                      ; 2 uses
  %niter294.next.1 = add i64 %niter294, 2         ; 2 uses
  %niter294.ncmp.1 = icmp eq i64 %niter294.next.1, %unroll_iter293
  br i1 %niter294.ncmp.1, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !591

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1
  br i1 %lcmp.mod291.not, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %.epil.preheader289

.epil.preheader289:                               ; preds = %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.au, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ %i.s, %.lr.ph.i ], [ %i.at, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i.epil.init
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ax = add i64 %i.aw, %i.r                     ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.x
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil, label %.loopexit295, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil: ; preds = %.epil.preheader289
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !273
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.01213.i.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !78
  %i.bc = zext i8 %i.bb to i16
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !562
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.ax
  store i16 %i.bc, ptr %i.be, align 2, !tbaa !373
  br label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %bb.b
  %i.bf = add nuw i64 %.049177, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.bf, %0
  br i1 %exitcond197.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !592

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !593
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !593
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bg, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !77
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.e ], [ %i.br, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr152 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i63 = icmp eq ptr %.pr152, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %.pr152, align 8, !tbaa !74 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr152, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !78
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr152, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader154
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %.preheader164
  ]

.preheader164:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not179 = icmp eq i64 %0, 0
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader164
  %.sroa.0147.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2148.0.copyload = load ptr, ptr %.sroa.2148.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5151.0.copyload = load ptr, ptr %.sroa.5151.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.bx = load i64, ptr %.sroa.0147.0.copyload, align 8, !tbaa !8
  %i.by = load i64, ptr %.sroa.2148.0.copyload, align 8, !tbaa !8
  %i.bz = freeze i64 %i.by                        ; 6 uses
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i64 %i.bz, 1
  %unroll_iter = and i64 %i.bz, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod247 = trunc i64 %i.bz to i1
  br label %bb.q

.preheader154:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not184 = icmp eq i64 %0, 0
  br i1 %.not184, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader154
  %.sroa.099.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5101.0.copyload = load ptr, ptr %.sroa.5101.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.cb = load i64, ptr %.sroa.099.0.copyload, align 8, !tbaa !8
  %i.cc = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.cd = freeze i64 %i.cc                        ; 6 uses
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter282 = and i64 %i.cd, 1
  %i.ce = icmp eq i64 %i.cd, 1
  %unroll_iter285 = and i64 %i.cd, -2
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  %lcmp.mod284 = trunc i64 %i.cd to i1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph176, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044175 = phi i64 [ 0, %.lr.ph176 ], [ %i.du, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %i.cf = add i64 %i.cb, %.044175                 ; 5 uses
  %i.cg = mul i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = add i64 %i.cf, 1
  %i.ci = mul i64 %i.ch, %i.cd
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.j
  %.sroa.4100.0.copyload = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !226 ; 3 uses
  %i.cm = load i64, ptr %.sroa.4100.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.4100.0.copyload, i64 8 ; 2 uses
  br i1 %i.ce, label %.epil.preheader281, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1
  %.014.i.i = phi i64 [ %i.dj, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.di, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ %i.cg, %.lr.ph.i.i ] ; 3 uses
  %niter286 = phi i64 [ %niter286.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8
  %i.cq = add i64 %i.cp, %i.cf                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cm
  br i1 %i.cr, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i, label %.loopexit287, !prof !140

.loopexit287:                                     ; preds = %.epil.preheader281, %.lr.ph.i.i.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i: ; preds = %.lr.ph.i.i.new
  %i.cs = load ptr, ptr %.sroa.5101.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.01213.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !78
  %i.cv = zext i8 %i.cu to i16
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !562 ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cq
  store i16 %i.cv, ptr %i.cx, align 2, !tbaa !373
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !8
  %i.db = add i64 %i.da, %i.cf                    ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.cm
  br i1 %i.dc, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit287, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.01213.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !78
  %i.dg = zext i8 %i.df to i16
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.db
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !373
  %i.di = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.dj = add i64 %.014.i.i, 2                    ; 2 uses
  %niter286.next.1 = add i64 %niter286, 2         ; 2 uses
  %niter286.ncmp.1 = icmp eq i64 %niter286.next.1, %unroll_iter285
  br i1 %niter286.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !591

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1
  br i1 %lcmp.mod283.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader281

.epil.preheader281:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %i.di, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i.epil.init
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !8
  %i.dm = add i64 %i.dl, %i.cf                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.cm
  br i1 %i.dn, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit287, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader281
  %i.do = load ptr, ptr %.sroa.5101.0.copyload, align 8, !tbaa !273
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.01213.i.i.epil.init
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !78
  %i.dr = zext i8 %i.dq to i16
  %i.ds = load ptr, ptr %i.cn, align 8, !tbaa !562
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dm
  store i16 %i.dr, ptr %i.dt, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.j
  %i.du = add nuw i64 %.044175, 1                 ; 2 uses
  %exitcond196.not = icmp eq i64 %i.du, %0
  br i1 %exitcond196.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.j, !llvm.loop !596

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.dv = icmp eq i64 %3, 0
  %.not183 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.dv, label %.preheader156, label %.preheader158

.preheader158:                                    ; preds = %bb.k
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader158
  %.sroa.0117.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2118.0.copyload = load ptr, ptr %.sroa.2118.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5121.0.copyload = load ptr, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0117.0.copyload, align 8, !tbaa !8
  %i.dx = load i64, ptr %.sroa.2118.0.copyload, align 8, !tbaa !8
  %i.dy = freeze i64 %i.dx                        ; 6 uses
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter266 = and i64 %i.dy, 1
  %i.dz = icmp eq i64 %i.dy, 1
  %unroll_iter269 = and i64 %i.dy, -2
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  %lcmp.mod268 = trunc i64 %i.dy to i1
  br label %bb.m

.preheader156:                                    ; preds = %bb.k
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader156
  %.sroa.0107.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2108.0.copyload = load ptr, ptr %.sroa.2108.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5111.0.copyload = load ptr, ptr %.sroa.5111.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.ea = load i64, ptr %.sroa.0107.0.copyload, align 8, !tbaa !8
  %i.eb = load i64, ptr %.sroa.2108.0.copyload, align 8, !tbaa !8
  %i.ec = freeze i64 %i.eb                        ; 6 uses
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter274 = and i64 %i.ec, 1
  %i.ed = icmp eq i64 %i.ec, 1
  %unroll_iter277 = and i64 %i.ec, -2
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  %lcmp.mod276 = trunc i64 %i.ec to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69
  %.043173 = phi i64 [ 0, %.lr.ph174 ], [ %i.ft, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69 ] ; 2 uses
  %i.ee = add i64 %i.ea, %.043173                 ; 5 uses
  %i.ef = mul i64 %i.ec, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ee, 1
  %i.eh = mul i64 %i.eg, %i.ec
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i64, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69

.lr.ph.i.i64:                                     ; preds = %bb.l
  %.sroa.4110.0.copyload = load ptr, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3109.0.copyload = load ptr, ptr %.sroa.3109.0..sroa_idx, align 8, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.3109.0.copyload, i64 96
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !226 ; 3 uses
  %i.el = load i64, ptr %.sroa.4110.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.4110.0.copyload, i64 8 ; 2 uses
  br i1 %i.ed, label %.epil.preheader273, label %.lr.ph.i.i64.new

.lr.ph.i.i64.new:                                 ; preds = %.lr.ph.i.i64, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.1
  %.014.i.i65 = phi i64 [ %i.fi, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.1 ], [ 0, %.lr.ph.i.i64 ] ; 3 uses
  %.01213.i.i66 = phi i64 [ %i.fh, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.1 ], [ %i.ef, %.lr.ph.i.i64 ] ; 3 uses
  %niter278 = phi i64 [ %niter278.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.1 ], [ 0, %.lr.ph.i.i64 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i65
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !8
  %i.ep = add i64 %i.eo, %i.ee                    ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.el
  br i1 %i.eq, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67, label %.loopexit279, !prof !140

.loopexit279:                                     ; preds = %.epil.preheader273, %.lr.ph.i.i64.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67: ; preds = %.lr.ph.i.i64.new
  %i.er = load ptr, ptr %.sroa.5111.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.01213.i.i66
  %i.et = load i8, ptr %i.es, align 1, !tbaa !78
  %i.eu = zext i8 %i.et to i16
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !562 ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.ep
  store i16 %i.eu, ptr %i.ew, align 2, !tbaa !373
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i65
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !8
  %i.fa = add i64 %i.ez, %i.ee                    ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.el
  br i1 %i.fb, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.1, label %.loopexit279, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 %.01213.i.i66
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !78
  %i.ff = zext i8 %i.fe to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.fa
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !373
  %i.fh = add nuw i64 %.01213.i.i66, 2            ; 2 uses
  %i.fi = add i64 %.014.i.i65, 2                  ; 2 uses
  %niter278.next.1 = add i64 %niter278, 2         ; 2 uses
  %niter278.ncmp.1 = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, label %.lr.ph.i.i64.new, !llvm.loop !591

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.1
  br i1 %lcmp.mod275.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69, label %.epil.preheader273

.epil.preheader273:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, %.lr.ph.i.i64
  %.014.i.i65.epil.init = phi i64 [ 0, %.lr.ph.i.i64 ], [ %i.fi, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa ]
  %.01213.i.i66.epil.init = phi i64 [ %i.ef, %.lr.ph.i.i64 ], [ %i.fh, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod276)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i65.epil.init
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !8
  %i.fl = add i64 %i.fk, %i.ee                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.el
  br i1 %i.fm, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.epil, label %.loopexit279, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.epil: ; preds = %.epil.preheader273
  %i.fn = load ptr, ptr %.sroa.5111.0.copyload, align 8, !tbaa !273
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.01213.i.i66.epil.init
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !78
  %i.fq = zext i8 %i.fp to i16
  %i.fr = load ptr, ptr %i.em, align 8, !tbaa !562
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fl
  store i16 %i.fq, ptr %i.fs, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i67.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, %bb.l
  %i.ft = add nuw i64 %.043173, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ft, %0
  br i1 %exitcond195.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.l, !llvm.loop !597

bb.m:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75
  %.042171 = phi i64 [ 0, %.lr.ph172 ], [ %i.hj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75 ] ; 2 uses
  %i.fu = add i64 %i.dw, %.042171                 ; 5 uses
  %i.fv = mul i64 %i.dy, %i.fu                    ; 3 uses
  %i.fw = add i64 %i.fu, 1
  %i.fx = mul i64 %i.fw, %i.dy
  %i.fy = icmp ult i64 %i.fv, %i.fx
  br i1 %i.fy, label %.lr.ph.i.i70, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75

.lr.ph.i.i70:                                     ; preds = %bb.m
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3119.0.copyload = load ptr, ptr %.sroa.3119.0..sroa_idx, align 8, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.3119.0.copyload, i64 96
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !226 ; 3 uses
  %i.gb = load i64, ptr %.sroa.4120.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4120.0.copyload, i64 8 ; 2 uses
  br i1 %i.dz, label %.epil.preheader265, label %.lr.ph.i.i70.new

.lr.ph.i.i70.new:                                 ; preds = %.lr.ph.i.i70, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.1
  %.014.i.i71 = phi i64 [ %i.gy, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.1 ], [ 0, %.lr.ph.i.i70 ] ; 3 uses
  %.01213.i.i72 = phi i64 [ %i.gx, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.1 ], [ %i.fv, %.lr.ph.i.i70 ] ; 3 uses
  %niter270 = phi i64 [ %niter270.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.1 ], [ 0, %.lr.ph.i.i70 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i71
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !8
  %i.gf = add i64 %i.ge, %i.fu                    ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.gb
  br i1 %i.gg, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73, label %.loopexit271, !prof !140

.loopexit271:                                     ; preds = %.epil.preheader265, %.lr.ph.i.i70.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73: ; preds = %.lr.ph.i.i70.new
  %i.gh = load ptr, ptr %.sroa.5121.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.01213.i.i72
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !78
  %i.gk = zext i8 %i.gj to i16
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !562 ; 2 uses
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gf
  store i16 %i.gk, ptr %i.gm, align 2, !tbaa !373
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i71
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8
  %i.gq = add i64 %i.gp, %i.fu                    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gb
  br i1 %i.gr, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.1, label %.loopexit271, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.01213.i.i72
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !78
  %i.gv = zext i8 %i.gu to i16
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gq
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !373
  %i.gx = add nuw i64 %.01213.i.i72, 2            ; 2 uses
  %i.gy = add i64 %.014.i.i71, 2                  ; 2 uses
  %niter270.next.1 = add i64 %niter270, 2         ; 2 uses
  %niter270.ncmp.1 = icmp eq i64 %niter270.next.1, %unroll_iter269
  br i1 %niter270.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, label %.lr.ph.i.i70.new, !llvm.loop !591

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.1
  br i1 %lcmp.mod267.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75, label %.epil.preheader265

.epil.preheader265:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, %.lr.ph.i.i70
  %.014.i.i71.epil.init = phi i64 [ 0, %.lr.ph.i.i70 ], [ %i.gy, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa ]
  %.01213.i.i72.epil.init = phi i64 [ %i.fv, %.lr.ph.i.i70 ], [ %i.gx, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i71.epil.init
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !8
  %i.hb = add i64 %i.ha, %i.fu                    ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gb
  br i1 %i.hc, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.epil, label %.loopexit271, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.epil: ; preds = %.epil.preheader265
  %i.hd = load ptr, ptr %.sroa.5121.0.copyload, align 8, !tbaa !273
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.01213.i.i72.epil.init
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !78
  %i.hg = zext i8 %i.hf to i16
  %i.hh = load ptr, ptr %i.gc, align 8, !tbaa !562
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hb
  store i16 %i.hg, ptr %i.hi, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i73.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, %bb.m
  %i.hj = add nuw i64 %.042171, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.hj, %0
  br i1 %exitcond194.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !598

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.hk = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.hk, label %.preheader160, label %.preheader162

.preheader162:                                    ; preds = %bb.n
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader162
  %.sroa.0137.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2138.0.copyload = load ptr, ptr %.sroa.2138.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5141.0.copyload = load ptr, ptr %.sroa.5141.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.hl = load i64, ptr %.sroa.0137.0.copyload, align 8, !tbaa !8
  %i.hm = load i64, ptr %.sroa.2138.0.copyload, align 8, !tbaa !8
  %i.hn = freeze i64 %i.hm                        ; 6 uses
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter250 = and i64 %i.hn, 1
  %i.ho = icmp eq i64 %i.hn, 1
  %unroll_iter253 = and i64 %i.hn, -2
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  %lcmp.mod252 = trunc i64 %i.hn to i1
  br label %bb.p

.preheader160:                                    ; preds = %bb.n
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader160
  %.sroa.0127.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2128.0.copyload = load ptr, ptr %.sroa.2128.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5131.0.copyload = load ptr, ptr %.sroa.5131.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.hp = load i64, ptr %.sroa.0127.0.copyload, align 8, !tbaa !8
  %i.hq = load i64, ptr %.sroa.2128.0.copyload, align 8, !tbaa !8
  %i.hr = freeze i64 %i.hq                        ; 6 uses
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter258 = and i64 %i.hr, 1
  %i.hs = icmp eq i64 %i.hr, 1
  %unroll_iter261 = and i64 %i.hr, -2
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod260 = trunc i64 %i.hr to i1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81
  %.041169 = phi i64 [ 0, %.lr.ph170 ], [ %i.ji, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81 ] ; 2 uses
  %i.ht = add i64 %i.hp, %.041169                 ; 5 uses
  %i.hu = mul i64 %i.hr, %i.ht                    ; 3 uses
  %i.hv = add i64 %i.ht, 1
  %i.hw = mul i64 %i.hv, %i.hr
  %i.hx = icmp ult i64 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i76, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81

.lr.ph.i.i76:                                     ; preds = %bb.o
  %.sroa.4130.0.copyload = load ptr, ptr %.sroa.4130.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3129.0.copyload = load ptr, ptr %.sroa.3129.0..sroa_idx, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.3129.0.copyload, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !226 ; 3 uses
  %i.ia = load i64, ptr %.sroa.4130.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.4130.0.copyload, i64 8 ; 2 uses
  br i1 %i.hs, label %.epil.preheader257, label %.lr.ph.i.i76.new

.lr.ph.i.i76.new:                                 ; preds = %.lr.ph.i.i76, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.1
  %.014.i.i77 = phi i64 [ %i.ix, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.1 ], [ 0, %.lr.ph.i.i76 ] ; 3 uses
  %.01213.i.i78 = phi i64 [ %i.iw, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.1 ], [ %i.hu, %.lr.ph.i.i76 ] ; 3 uses
  %niter262 = phi i64 [ %niter262.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.1 ], [ 0, %.lr.ph.i.i76 ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i77
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8
  %i.ie = add i64 %i.id, %i.ht                    ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.ia
  br i1 %i.if, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79, label %.loopexit263, !prof !140

.loopexit263:                                     ; preds = %.epil.preheader257, %.lr.ph.i.i76.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79: ; preds = %.lr.ph.i.i76.new
  %i.ig = load ptr, ptr %.sroa.5131.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.01213.i.i78
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !78
  %i.ij = zext i8 %i.ii to i16
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !562 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ie
  store i16 %i.ij, ptr %i.il, align 2, !tbaa !373
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i77
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !8
  %i.ip = add i64 %i.io, %i.ht                    ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.ia
  br i1 %i.iq, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.1, label %.loopexit263, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.01213.i.i78
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !78
  %i.iu = zext i8 %i.it to i16
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ip
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !373
  %i.iw = add nuw i64 %.01213.i.i78, 2            ; 2 uses
  %i.ix = add i64 %.014.i.i77, 2                  ; 2 uses
  %niter262.next.1 = add i64 %niter262, 2         ; 2 uses
  %niter262.ncmp.1 = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, label %.lr.ph.i.i76.new, !llvm.loop !591

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.1
  br i1 %lcmp.mod259.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81, label %.epil.preheader257

.epil.preheader257:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, %.lr.ph.i.i76
  %.014.i.i77.epil.init = phi i64 [ 0, %.lr.ph.i.i76 ], [ %i.ix, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa ]
  %.01213.i.i78.epil.init = phi i64 [ %i.hu, %.lr.ph.i.i76 ], [ %i.iw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i77.epil.init
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !8
  %i.ja = add i64 %i.iz, %i.ht                    ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.ia
  br i1 %i.jb, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.epil, label %.loopexit263, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.epil: ; preds = %.epil.preheader257
  %i.jc = load ptr, ptr %.sroa.5131.0.copyload, align 8, !tbaa !273
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.01213.i.i78.epil.init
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !78
  %i.jf = zext i8 %i.je to i16
  %i.jg = load ptr, ptr %i.ib, align 8, !tbaa !562
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %i.ja
  store i16 %i.jf, ptr %i.jh, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i79.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, %bb.o
  %i.ji = add nuw i64 %.041169, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.ji, %0
  br i1 %exitcond193.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.o, !llvm.loop !599

bb.p:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87
  %.040167 = phi i64 [ 0, %.lr.ph168 ], [ %i.ky, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87 ] ; 2 uses
  %i.jj = add i64 %i.hl, %.040167                 ; 5 uses
  %i.jk = mul i64 %i.hn, %i.jj                    ; 3 uses
  %i.jl = add i64 %i.jj, 1
  %i.jm = mul i64 %i.jl, %i.hn
  %i.jn = icmp ult i64 %i.jk, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i82, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87

.lr.ph.i.i82:                                     ; preds = %bb.p
  %.sroa.4140.0.copyload = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3139.0.copyload = load ptr, ptr %.sroa.3139.0..sroa_idx, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.3139.0.copyload, i64 96
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !226 ; 3 uses
  %i.jq = load i64, ptr %.sroa.4140.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.4140.0.copyload, i64 8 ; 2 uses
  br i1 %i.ho, label %.epil.preheader249, label %.lr.ph.i.i82.new

.lr.ph.i.i82.new:                                 ; preds = %.lr.ph.i.i82, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.1
  %.014.i.i83 = phi i64 [ %i.kn, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.1 ], [ 0, %.lr.ph.i.i82 ] ; 3 uses
  %.01213.i.i84 = phi i64 [ %i.km, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.1 ], [ %i.jk, %.lr.ph.i.i82 ] ; 3 uses
  %niter254 = phi i64 [ %niter254.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.1 ], [ 0, %.lr.ph.i.i82 ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i83
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !8
  %i.ju = add i64 %i.jt, %i.jj                    ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jq
  br i1 %i.jv, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85, label %.loopexit255, !prof !140

.loopexit255:                                     ; preds = %.epil.preheader249, %.lr.ph.i.i82.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85: ; preds = %.lr.ph.i.i82.new
  %i.jw = load ptr, ptr %.sroa.5141.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.01213.i.i84
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !78
  %i.jz = zext i8 %i.jy to i16
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !562 ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.ju
  store i16 %i.jz, ptr %i.kb, align 2, !tbaa !373
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i83
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !8
  %i.kf = add i64 %i.ke, %i.jj                    ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.jq
  br i1 %i.kg, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.1, label %.loopexit255, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.01213.i.i84
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !78
  %i.kk = zext i8 %i.kj to i16
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kf
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !373
  %i.km = add nuw i64 %.01213.i.i84, 2            ; 2 uses
  %i.kn = add i64 %.014.i.i83, 2                  ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, label %.lr.ph.i.i82.new, !llvm.loop !591

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.1
  br i1 %lcmp.mod251.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87, label %.epil.preheader249

.epil.preheader249:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, %.lr.ph.i.i82
  %.014.i.i83.epil.init = phi i64 [ 0, %.lr.ph.i.i82 ], [ %i.kn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa ]
  %.01213.i.i84.epil.init = phi i64 [ %i.jk, %.lr.ph.i.i82 ], [ %i.km, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod252)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i83.epil.init
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !8
  %i.kq = add i64 %i.kp, %i.jj                    ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.jq
  br i1 %i.kr, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.epil, label %.loopexit255, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.epil: ; preds = %.epil.preheader249
  %i.ks = load ptr, ptr %.sroa.5141.0.copyload, align 8, !tbaa !273
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.01213.i.i84.epil.init
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !78
  %i.kv = zext i8 %i.ku to i16
  %i.kw = load ptr, ptr %i.jr, align 8, !tbaa !562
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.kq
  store i16 %i.kv, ptr %i.kx, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i85.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, %bb.p
  %i.ky = add nuw i64 %.040167, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.ky, %0
  br i1 %exitcond192.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.p, !llvm.loop !600

bb.q:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93
  %.0166 = phi i64 [ 0, %.lr.ph ], [ %i.mo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93 ] ; 2 uses
  %i.kz = add i64 %i.bx, %.0166                   ; 5 uses
  %i.la = mul i64 %i.bz, %i.kz                    ; 3 uses
  %i.lb = add i64 %i.kz, 1
  %i.lc = mul i64 %i.lb, %i.bz
  %i.ld = icmp ult i64 %i.la, %i.lc
  br i1 %i.ld, label %.lr.ph.i.i88, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93

.lr.ph.i.i88:                                     ; preds = %bb.q
  %.sroa.4150.0.copyload = load ptr, ptr %.sroa.4150.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3149.0.copyload = load ptr, ptr %.sroa.3149.0..sroa_idx, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.3149.0.copyload, i64 96
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !226 ; 3 uses
  %i.lg = load i64, ptr %.sroa.4150.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.4150.0.copyload, i64 8 ; 2 uses
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.i.i88.new

.lr.ph.i.i88.new:                                 ; preds = %.lr.ph.i.i88, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.1
  %.014.i.i89 = phi i64 [ %i.md, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.1 ], [ 0, %.lr.ph.i.i88 ] ; 3 uses
  %.01213.i.i90 = phi i64 [ %i.mc, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.1 ], [ %i.la, %.lr.ph.i.i88 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.1 ], [ 0, %.lr.ph.i.i88 ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i89
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !8
  %i.lk = add i64 %i.lj, %i.kz                    ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lg
  br i1 %i.ll, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91, label %.loopexit, !prof !140

.loopexit:                                        ; preds = %.epil.preheader, %.lr.ph.i.i88.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91: ; preds = %.lr.ph.i.i88.new
  %i.lm = load ptr, ptr %.sroa.5151.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.01213.i.i90
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !78
  %i.lp = zext i8 %i.lo to i16
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !562 ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lk
  store i16 %i.lp, ptr %i.lr, align 2, !tbaa !373
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i89
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !8
  %i.lv = add i64 %i.lu, %i.kz                    ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %i.lg
  br i1 %i.lw, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.1, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.01213.i.i90
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !78
  %i.ma = zext i8 %i.lz to i16
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lv
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !373
  %i.mc = add nuw i64 %.01213.i.i90, 2            ; 2 uses
  %i.md = add i64 %.014.i.i89, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, label %.lr.ph.i.i88.new, !llvm.loop !591

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.1
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, %.lr.ph.i.i88
  %.014.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i88 ], [ %i.md, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa ]
  %.01213.i.i90.epil.init = phi i64 [ %i.la, %.lr.ph.i.i88 ], [ %i.mc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i89.epil.init
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !8
  %i.mg = add i64 %i.mf, %i.kz                    ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.lg
  br i1 %i.mh, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.epil, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.epil: ; preds = %.epil.preheader
  %i.mi = load ptr, ptr %.sroa.5151.0.copyload, align 8, !tbaa !273
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %.01213.i.i90.epil.init
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !78
  %i.ml = zext i8 %i.mk to i16
  %i.mm = load ptr, ptr %i.lh, align 8, !tbaa !562
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %i.mg
  store i16 %i.ml, ptr %i.mn, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i91.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, %bb.q
  %i.mo = add nuw i64 %.0166, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mo, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.q, !llvm.loop !601

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader164, %.preheader162, %.preheader160, %.preheader158, %.preheader156, %.preheader154, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.f
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS4_E_clIjEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not185 = icmp eq i64 %0, 0
  br i1 %.not185, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph178

.lr.ph178:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !602, !nonnull !33, !align !479
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !603, !nonnull !33, !align !479
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = freeze i64 %i.h                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !33, !align !479 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %xtraiter290 = and i64 %i.i, 1
  %i.q = icmp eq i64 %i.i, 1
  %unroll_iter293 = and i64 %i.i, -2
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  %lcmp.mod292 = trunc i64 %i.i to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph178, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.049177 = phi i64 [ 0, %.lr.ph178 ], [ %i.bf, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.r = add i64 %i.e, %.049177                   ; 5 uses
  %i.s = mul i64 %i.i, %i.r                       ; 3 uses
  %i.t = add i64 %i.r, 1
  %i.u = mul i64 %i.t, %i.i
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !226  ; 3 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !567  ; 3 uses
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !33, !align !479 ; 2 uses
  br i1 %i.q, label %.epil.preheader289, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1
  %.014.i = phi i64 [ %i.au, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i64 [ %i.at, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %niter294 = phi i64 [ %niter294.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = add i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i, label %.loopexit295, !prof !140

.loopexit295:                                     ; preds = %.epil.preheader289, %.lr.ph.i.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.i.new
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !273 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.01213.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !78
  %i.ag = zext i8 %i.af to i32
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !569 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ab
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !137
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8
  %i.am = add i64 %i.al, %i.r                     ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.x
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1, label %.loopexit295, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.01213.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !78
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.am
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !137
  %i.at = add nuw i64 %.01213.i, 2                ; 2 uses
  %i.au = add i64 %.014.i, 2                      ; 2 uses
  %niter294.next.1 = add i64 %niter294, 2         ; 2 uses
  %niter294.ncmp.1 = icmp eq i64 %niter294.next.1, %unroll_iter293
  br i1 %niter294.ncmp.1, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !604

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1
  br i1 %lcmp.mod291.not, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %.epil.preheader289

.epil.preheader289:                               ; preds = %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.au, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ %i.s, %.lr.ph.i ], [ %i.at, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod292)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i.epil.init
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ax = add i64 %i.aw, %i.r                     ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.x
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil, label %.loopexit295, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil: ; preds = %.epil.preheader289
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !273
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.01213.i.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !78
  %i.bc = zext i8 %i.bb to i32
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !569
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !137
  br label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %bb.b
  %i.bf = add nuw i64 %.049177, 1                 ; 2 uses
  %exitcond197.not = icmp eq i64 %i.bf, %0
  br i1 %exitcond197.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !605

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !606
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !606
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bg, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !77
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.e ], [ %i.br, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr152 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i63 = icmp eq ptr %.pr152, null
  br i1 %.not.i63, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %.pr152, align 8, !tbaa !74 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr152, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !78
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr152, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader154
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %.preheader164
  ]

.preheader164:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not179 = icmp eq i64 %0, 0
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader164
  %.sroa.0147.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2148.0.copyload = load ptr, ptr %.sroa.2148.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5151.0.copyload = load ptr, ptr %.sroa.5151.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.bx = load i64, ptr %.sroa.0147.0.copyload, align 8, !tbaa !8
  %i.by = load i64, ptr %.sroa.2148.0.copyload, align 8, !tbaa !8
  %i.bz = freeze i64 %i.by                        ; 6 uses
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i64 %i.bz, 1
  %unroll_iter = and i64 %i.bz, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod247 = trunc i64 %i.bz to i1
  br label %bb.q

.preheader154:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not184 = icmp eq i64 %0, 0
  br i1 %.not184, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader154
  %.sroa.099.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5101.0.copyload = load ptr, ptr %.sroa.5101.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.cb = load i64, ptr %.sroa.099.0.copyload, align 8, !tbaa !8
  %i.cc = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.cd = freeze i64 %i.cc                        ; 6 uses
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter282 = and i64 %i.cd, 1
  %i.ce = icmp eq i64 %i.cd, 1
  %unroll_iter285 = and i64 %i.cd, -2
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  %lcmp.mod284 = trunc i64 %i.cd to i1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph176, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044175 = phi i64 [ 0, %.lr.ph176 ], [ %i.du, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %i.cf = add i64 %i.cb, %.044175                 ; 5 uses
  %i.cg = mul i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = add i64 %i.cf, 1
  %i.ci = mul i64 %i.ch, %i.cd
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.j
  %.sroa.4100.0.copyload = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !226 ; 3 uses
  %i.cm = load i64, ptr %.sroa.4100.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.4100.0.copyload, i64 8 ; 2 uses
  br i1 %i.ce, label %.epil.preheader281, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1
  %.014.i.i = phi i64 [ %i.dj, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.di, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ %i.cg, %.lr.ph.i.i ] ; 3 uses
  %niter286 = phi i64 [ %niter286.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8
  %i.cq = add i64 %i.cp, %i.cf                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cm
  br i1 %i.cr, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i, label %.loopexit287, !prof !140

.loopexit287:                                     ; preds = %.epil.preheader281, %.lr.ph.i.i.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i: ; preds = %.lr.ph.i.i.new
  %i.cs = load ptr, ptr %.sroa.5101.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.01213.i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !78
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !569 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cq
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !137
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !8
  %i.db = add i64 %i.da, %i.cf                    ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.cm
  br i1 %i.dc, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit287, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.01213.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !78
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.db
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !137
  %i.di = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.dj = add i64 %.014.i.i, 2                    ; 2 uses
  %niter286.next.1 = add i64 %niter286, 2         ; 2 uses
  %niter286.ncmp.1 = icmp eq i64 %niter286.next.1, %unroll_iter285
  br i1 %niter286.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !604

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1
  br i1 %lcmp.mod283.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader281

.epil.preheader281:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %i.di, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i.epil.init
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !8
  %i.dm = add i64 %i.dl, %i.cf                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.cm
  br i1 %i.dn, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit287, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader281
  %i.do = load ptr, ptr %.sroa.5101.0.copyload, align 8, !tbaa !273
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.01213.i.i.epil.init
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !78
  %i.dr = zext i8 %i.dq to i32
  %i.ds = load ptr, ptr %i.cn, align 8, !tbaa !569
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dm
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.j
  %i.du = add nuw i64 %.044175, 1                 ; 2 uses
  %exitcond196.not = icmp eq i64 %i.du, %0
  br i1 %exitcond196.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.j, !llvm.loop !609

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.dv = icmp eq i64 %3, 0
  %.not183 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.dv, label %.preheader156, label %.preheader158

.preheader158:                                    ; preds = %bb.k
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader158
  %.sroa.0117.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2118.0.copyload = load ptr, ptr %.sroa.2118.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5121.0.copyload = load ptr, ptr %.sroa.5121.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0117.0.copyload, align 8, !tbaa !8
  %i.dx = load i64, ptr %.sroa.2118.0.copyload, align 8, !tbaa !8
  %i.dy = freeze i64 %i.dx                        ; 6 uses
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter266 = and i64 %i.dy, 1
  %i.dz = icmp eq i64 %i.dy, 1
  %unroll_iter269 = and i64 %i.dy, -2
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  %lcmp.mod268 = trunc i64 %i.dy to i1
  br label %bb.m

.preheader156:                                    ; preds = %bb.k
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader156
  %.sroa.0107.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2108.0.copyload = load ptr, ptr %.sroa.2108.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5111.0.copyload = load ptr, ptr %.sroa.5111.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.ea = load i64, ptr %.sroa.0107.0.copyload, align 8, !tbaa !8
  %i.eb = load i64, ptr %.sroa.2108.0.copyload, align 8, !tbaa !8
  %i.ec = freeze i64 %i.eb                        ; 6 uses
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter274 = and i64 %i.ec, 1
  %i.ed = icmp eq i64 %i.ec, 1
  %unroll_iter277 = and i64 %i.ec, -2
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  %lcmp.mod276 = trunc i64 %i.ec to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69
  %.043173 = phi i64 [ 0, %.lr.ph174 ], [ %i.ft, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69 ] ; 2 uses
  %i.ee = add i64 %i.ea, %.043173                 ; 5 uses
  %i.ef = mul i64 %i.ec, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ee, 1
  %i.eh = mul i64 %i.eg, %i.ec
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i64, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69

.lr.ph.i.i64:                                     ; preds = %bb.l
  %.sroa.4110.0.copyload = load ptr, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3109.0.copyload = load ptr, ptr %.sroa.3109.0..sroa_idx, align 8, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.3109.0.copyload, i64 96
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !226 ; 3 uses
  %i.el = load i64, ptr %.sroa.4110.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.4110.0.copyload, i64 8 ; 2 uses
  br i1 %i.ed, label %.epil.preheader273, label %.lr.ph.i.i64.new

.lr.ph.i.i64.new:                                 ; preds = %.lr.ph.i.i64, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.1
  %.014.i.i65 = phi i64 [ %i.fi, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.1 ], [ 0, %.lr.ph.i.i64 ] ; 3 uses
  %.01213.i.i66 = phi i64 [ %i.fh, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.1 ], [ %i.ef, %.lr.ph.i.i64 ] ; 3 uses
  %niter278 = phi i64 [ %niter278.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.1 ], [ 0, %.lr.ph.i.i64 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i65
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !8
  %i.ep = add i64 %i.eo, %i.ee                    ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.el
  br i1 %i.eq, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67, label %.loopexit279, !prof !140

.loopexit279:                                     ; preds = %.epil.preheader273, %.lr.ph.i.i64.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67: ; preds = %.lr.ph.i.i64.new
  %i.er = load ptr, ptr %.sroa.5111.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %.01213.i.i66
  %i.et = load i8, ptr %i.es, align 1, !tbaa !78
  %i.eu = zext i8 %i.et to i32
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !569 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ep
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !137
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i65
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !8
  %i.fa = add i64 %i.ez, %i.ee                    ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.el
  br i1 %i.fb, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.1, label %.loopexit279, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 %.01213.i.i66
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !78
  %i.ff = zext i8 %i.fe to i32
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fa
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !137
  %i.fh = add nuw i64 %.01213.i.i66, 2            ; 2 uses
  %i.fi = add i64 %.014.i.i65, 2                  ; 2 uses
  %niter278.next.1 = add i64 %niter278, 2         ; 2 uses
  %niter278.ncmp.1 = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, label %.lr.ph.i.i64.new, !llvm.loop !604

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.1
  br i1 %lcmp.mod275.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69, label %.epil.preheader273

.epil.preheader273:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, %.lr.ph.i.i64
  %.014.i.i65.epil.init = phi i64 [ 0, %.lr.ph.i.i64 ], [ %i.fi, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa ]
  %.01213.i.i66.epil.init = phi i64 [ %i.ef, %.lr.ph.i.i64 ], [ %i.fh, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod276)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i65.epil.init
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !8
  %i.fl = add i64 %i.fk, %i.ee                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.el
  br i1 %i.fm, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.epil, label %.loopexit279, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.epil: ; preds = %.epil.preheader273
  %i.fn = load ptr, ptr %.sroa.5111.0.copyload, align 8, !tbaa !273
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.01213.i.i66.epil.init
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !78
  %i.fq = zext i8 %i.fp to i32
  %i.fr = load ptr, ptr %i.em, align 8, !tbaa !569
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fl
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i67.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69.loopexit.unr-lcssa, %bb.l
  %i.ft = add nuw i64 %.043173, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.ft, %0
  br i1 %exitcond195.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.l, !llvm.loop !610

bb.m:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75
  %.042171 = phi i64 [ 0, %.lr.ph172 ], [ %i.hj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75 ] ; 2 uses
  %i.fu = add i64 %i.dw, %.042171                 ; 5 uses
  %i.fv = mul i64 %i.dy, %i.fu                    ; 3 uses
  %i.fw = add i64 %i.fu, 1
  %i.fx = mul i64 %i.fw, %i.dy
  %i.fy = icmp ult i64 %i.fv, %i.fx
  br i1 %i.fy, label %.lr.ph.i.i70, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75

.lr.ph.i.i70:                                     ; preds = %bb.m
  %.sroa.4120.0.copyload = load ptr, ptr %.sroa.4120.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3119.0.copyload = load ptr, ptr %.sroa.3119.0..sroa_idx, align 8, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.3119.0.copyload, i64 96
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !226 ; 3 uses
  %i.gb = load i64, ptr %.sroa.4120.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4120.0.copyload, i64 8 ; 2 uses
  br i1 %i.dz, label %.epil.preheader265, label %.lr.ph.i.i70.new

.lr.ph.i.i70.new:                                 ; preds = %.lr.ph.i.i70, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.1
  %.014.i.i71 = phi i64 [ %i.gy, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.1 ], [ 0, %.lr.ph.i.i70 ] ; 3 uses
  %.01213.i.i72 = phi i64 [ %i.gx, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.1 ], [ %i.fv, %.lr.ph.i.i70 ] ; 3 uses
  %niter270 = phi i64 [ %niter270.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.1 ], [ 0, %.lr.ph.i.i70 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i71
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !8
  %i.gf = add i64 %i.ge, %i.fu                    ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.gb
  br i1 %i.gg, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73, label %.loopexit271, !prof !140

.loopexit271:                                     ; preds = %.epil.preheader265, %.lr.ph.i.i70.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73: ; preds = %.lr.ph.i.i70.new
  %i.gh = load ptr, ptr %.sroa.5121.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.01213.i.i72
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !78
  %i.gk = zext i8 %i.gj to i32
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !569 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gf
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !137
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i71
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8
  %i.gq = add i64 %i.gp, %i.fu                    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gb
  br i1 %i.gr, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.1, label %.loopexit271, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.01213.i.i72
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !78
  %i.gv = zext i8 %i.gu to i32
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gq
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !137
  %i.gx = add nuw i64 %.01213.i.i72, 2            ; 2 uses
  %i.gy = add i64 %.014.i.i71, 2                  ; 2 uses
  %niter270.next.1 = add i64 %niter270, 2         ; 2 uses
  %niter270.ncmp.1 = icmp eq i64 %niter270.next.1, %unroll_iter269
  br i1 %niter270.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, label %.lr.ph.i.i70.new, !llvm.loop !604

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.1
  br i1 %lcmp.mod267.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75, label %.epil.preheader265

.epil.preheader265:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, %.lr.ph.i.i70
  %.014.i.i71.epil.init = phi i64 [ 0, %.lr.ph.i.i70 ], [ %i.gy, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa ]
  %.01213.i.i72.epil.init = phi i64 [ %i.fv, %.lr.ph.i.i70 ], [ %i.gx, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod268)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i71.epil.init
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !8
  %i.hb = add i64 %i.ha, %i.fu                    ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gb
  br i1 %i.hc, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.epil, label %.loopexit271, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.epil: ; preds = %.epil.preheader265
  %i.hd = load ptr, ptr %.sroa.5121.0.copyload, align 8, !tbaa !273
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.01213.i.i72.epil.init
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !78
  %i.hg = zext i8 %i.hf to i32
  %i.hh = load ptr, ptr %i.gc, align 8, !tbaa !569
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hb
  store i32 %i.hg, ptr %i.hi, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i73.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75.loopexit.unr-lcssa, %bb.m
  %i.hj = add nuw i64 %.042171, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.hj, %0
  br i1 %exitcond194.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !611

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.hk = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.hk, label %.preheader160, label %.preheader162

.preheader162:                                    ; preds = %bb.n
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader162
  %.sroa.0137.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2138.0.copyload = load ptr, ptr %.sroa.2138.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5141.0.copyload = load ptr, ptr %.sroa.5141.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.hl = load i64, ptr %.sroa.0137.0.copyload, align 8, !tbaa !8
  %i.hm = load i64, ptr %.sroa.2138.0.copyload, align 8, !tbaa !8
  %i.hn = freeze i64 %i.hm                        ; 6 uses
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter250 = and i64 %i.hn, 1
  %i.ho = icmp eq i64 %i.hn, 1
  %unroll_iter253 = and i64 %i.hn, -2
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  %lcmp.mod252 = trunc i64 %i.hn to i1
  br label %bb.p

.preheader160:                                    ; preds = %bb.n
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader160
  %.sroa.0127.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2128.0.copyload = load ptr, ptr %.sroa.2128.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5131.0.copyload = load ptr, ptr %.sroa.5131.0..sroa_idx, align 8, !tbaa !525 ; 2 uses
  %i.hp = load i64, ptr %.sroa.0127.0.copyload, align 8, !tbaa !8
  %i.hq = load i64, ptr %.sroa.2128.0.copyload, align 8, !tbaa !8
  %i.hr = freeze i64 %i.hq                        ; 6 uses
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter258 = and i64 %i.hr, 1
  %i.hs = icmp eq i64 %i.hr, 1
  %unroll_iter261 = and i64 %i.hr, -2
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod260 = trunc i64 %i.hr to i1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81
  %.041169 = phi i64 [ 0, %.lr.ph170 ], [ %i.ji, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81 ] ; 2 uses
  %i.ht = add i64 %i.hp, %.041169                 ; 5 uses
  %i.hu = mul i64 %i.hr, %i.ht                    ; 3 uses
  %i.hv = add i64 %i.ht, 1
  %i.hw = mul i64 %i.hv, %i.hr
  %i.hx = icmp ult i64 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i76, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81

.lr.ph.i.i76:                                     ; preds = %bb.o
  %.sroa.4130.0.copyload = load ptr, ptr %.sroa.4130.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3129.0.copyload = load ptr, ptr %.sroa.3129.0..sroa_idx, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.3129.0.copyload, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !226 ; 3 uses
  %i.ia = load i64, ptr %.sroa.4130.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.4130.0.copyload, i64 8 ; 2 uses
  br i1 %i.hs, label %.epil.preheader257, label %.lr.ph.i.i76.new

.lr.ph.i.i76.new:                                 ; preds = %.lr.ph.i.i76, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.1
  %.014.i.i77 = phi i64 [ %i.ix, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.1 ], [ 0, %.lr.ph.i.i76 ] ; 3 uses
  %.01213.i.i78 = phi i64 [ %i.iw, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.1 ], [ %i.hu, %.lr.ph.i.i76 ] ; 3 uses
  %niter262 = phi i64 [ %niter262.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.1 ], [ 0, %.lr.ph.i.i76 ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i77
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8
  %i.ie = add i64 %i.id, %i.ht                    ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.ia
  br i1 %i.if, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79, label %.loopexit263, !prof !140

.loopexit263:                                     ; preds = %.epil.preheader257, %.lr.ph.i.i76.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79: ; preds = %.lr.ph.i.i76.new
  %i.ig = load ptr, ptr %.sroa.5131.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.01213.i.i78
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !78
  %i.ij = zext i8 %i.ii to i32
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !569 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ie
  store i32 %i.ij, ptr %i.il, align 4, !tbaa !137
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i77
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !8
  %i.ip = add i64 %i.io, %i.ht                    ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.ia
  br i1 %i.iq, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.1, label %.loopexit263, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.01213.i.i78
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  %i.it = load i8, ptr %i.is, align 1, !tbaa !78
  %i.iu = zext i8 %i.it to i32
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ip
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !137
  %i.iw = add nuw i64 %.01213.i.i78, 2            ; 2 uses
  %i.ix = add i64 %.014.i.i77, 2                  ; 2 uses
  %niter262.next.1 = add i64 %niter262, 2         ; 2 uses
  %niter262.ncmp.1 = icmp eq i64 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, label %.lr.ph.i.i76.new, !llvm.loop !604

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.1
  br i1 %lcmp.mod259.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81, label %.epil.preheader257

.epil.preheader257:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, %.lr.ph.i.i76
  %.014.i.i77.epil.init = phi i64 [ 0, %.lr.ph.i.i76 ], [ %i.ix, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa ]
  %.01213.i.i78.epil.init = phi i64 [ %i.hu, %.lr.ph.i.i76 ], [ %i.iw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i77.epil.init
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !8
  %i.ja = add i64 %i.iz, %i.ht                    ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.ia
  br i1 %i.jb, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.epil, label %.loopexit263, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.epil: ; preds = %.epil.preheader257
  %i.jc = load ptr, ptr %.sroa.5131.0.copyload, align 8, !tbaa !273
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.01213.i.i78.epil.init
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !78
  %i.jf = zext i8 %i.je to i32
  %i.jg = load ptr, ptr %i.ib, align 8, !tbaa !569
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ja
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i79.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81.loopexit.unr-lcssa, %bb.o
  %i.ji = add nuw i64 %.041169, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.ji, %0
  br i1 %exitcond193.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.o, !llvm.loop !612

bb.p:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87
  %.040167 = phi i64 [ 0, %.lr.ph168 ], [ %i.ky, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87 ] ; 2 uses
  %i.jj = add i64 %i.hl, %.040167                 ; 5 uses
  %i.jk = mul i64 %i.hn, %i.jj                    ; 3 uses
  %i.jl = add i64 %i.jj, 1
  %i.jm = mul i64 %i.jl, %i.hn
  %i.jn = icmp ult i64 %i.jk, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i82, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87

.lr.ph.i.i82:                                     ; preds = %bb.p
  %.sroa.4140.0.copyload = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3139.0.copyload = load ptr, ptr %.sroa.3139.0..sroa_idx, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.3139.0.copyload, i64 96
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !226 ; 3 uses
  %i.jq = load i64, ptr %.sroa.4140.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.4140.0.copyload, i64 8 ; 2 uses
  br i1 %i.ho, label %.epil.preheader249, label %.lr.ph.i.i82.new

.lr.ph.i.i82.new:                                 ; preds = %.lr.ph.i.i82, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.1
  %.014.i.i83 = phi i64 [ %i.kn, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.1 ], [ 0, %.lr.ph.i.i82 ] ; 3 uses
  %.01213.i.i84 = phi i64 [ %i.km, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.1 ], [ %i.jk, %.lr.ph.i.i82 ] ; 3 uses
  %niter254 = phi i64 [ %niter254.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.1 ], [ 0, %.lr.ph.i.i82 ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i83
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !8
  %i.ju = add i64 %i.jt, %i.jj                    ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jq
  br i1 %i.jv, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85, label %.loopexit255, !prof !140

.loopexit255:                                     ; preds = %.epil.preheader249, %.lr.ph.i.i82.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85: ; preds = %.lr.ph.i.i82.new
  %i.jw = load ptr, ptr %.sroa.5141.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.01213.i.i84
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !78
  %i.jz = zext i8 %i.jy to i32
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !569 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.ju
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !137
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i83
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !8
  %i.kf = add i64 %i.ke, %i.jj                    ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.jq
  br i1 %i.kg, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.1, label %.loopexit255, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.01213.i.i84
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !78
  %i.kk = zext i8 %i.kj to i32
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kf
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !137
  %i.km = add nuw i64 %.01213.i.i84, 2            ; 2 uses
  %i.kn = add i64 %.014.i.i83, 2                  ; 2 uses
  %niter254.next.1 = add i64 %niter254, 2         ; 2 uses
  %niter254.ncmp.1 = icmp eq i64 %niter254.next.1, %unroll_iter253
  br i1 %niter254.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, label %.lr.ph.i.i82.new, !llvm.loop !604

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.1
  br i1 %lcmp.mod251.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87, label %.epil.preheader249

.epil.preheader249:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, %.lr.ph.i.i82
  %.014.i.i83.epil.init = phi i64 [ 0, %.lr.ph.i.i82 ], [ %i.kn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa ]
  %.01213.i.i84.epil.init = phi i64 [ %i.jk, %.lr.ph.i.i82 ], [ %i.km, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod252)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i83.epil.init
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !8
  %i.kq = add i64 %i.kp, %i.jj                    ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.jq
  br i1 %i.kr, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.epil, label %.loopexit255, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.epil: ; preds = %.epil.preheader249
  %i.ks = load ptr, ptr %.sroa.5141.0.copyload, align 8, !tbaa !273
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.01213.i.i84.epil.init
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !78
  %i.kv = zext i8 %i.ku to i32
  %i.kw = load ptr, ptr %i.jr, align 8, !tbaa !569
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.kq
  store i32 %i.kv, ptr %i.kx, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i85.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87.loopexit.unr-lcssa, %bb.p
  %i.ky = add nuw i64 %.040167, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.ky, %0
  br i1 %exitcond192.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.p, !llvm.loop !613

bb.q:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93
  %.0166 = phi i64 [ 0, %.lr.ph ], [ %i.mo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93 ] ; 2 uses
  %i.kz = add i64 %i.bx, %.0166                   ; 5 uses
  %i.la = mul i64 %i.bz, %i.kz                    ; 3 uses
  %i.lb = add i64 %i.kz, 1
  %i.lc = mul i64 %i.lb, %i.bz
  %i.ld = icmp ult i64 %i.la, %i.lc
  br i1 %i.ld, label %.lr.ph.i.i88, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93

.lr.ph.i.i88:                                     ; preds = %bb.q
  %.sroa.4150.0.copyload = load ptr, ptr %.sroa.4150.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3149.0.copyload = load ptr, ptr %.sroa.3149.0..sroa_idx, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.3149.0.copyload, i64 96
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !226 ; 3 uses
  %i.lg = load i64, ptr %.sroa.4150.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.4150.0.copyload, i64 8 ; 2 uses
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.i.i88.new

.lr.ph.i.i88.new:                                 ; preds = %.lr.ph.i.i88, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.1
  %.014.i.i89 = phi i64 [ %i.md, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.1 ], [ 0, %.lr.ph.i.i88 ] ; 3 uses
  %.01213.i.i90 = phi i64 [ %i.mc, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.1 ], [ %i.la, %.lr.ph.i.i88 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.1 ], [ 0, %.lr.ph.i.i88 ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i89
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !8
  %i.lk = add i64 %i.lj, %i.kz                    ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lg
  br i1 %i.ll, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91, label %.loopexit, !prof !140

.loopexit:                                        ; preds = %.epil.preheader, %.lr.ph.i.i88.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91: ; preds = %.lr.ph.i.i88.new
  %i.lm = load ptr, ptr %.sroa.5151.0.copyload, align 8, !tbaa !273 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.01213.i.i90
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !78
  %i.lp = zext i8 %i.lo to i32
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !569 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lk
  store i32 %i.lp, ptr %i.lr, align 4, !tbaa !137
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i89
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !8
  %i.lv = add i64 %i.lu, %i.kz                    ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %i.lg
  br i1 %i.lw, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.1, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.01213.i.i90
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !78
  %i.ma = zext i8 %i.lz to i32
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lv
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !137
  %i.mc = add nuw i64 %.01213.i.i90, 2            ; 2 uses
  %i.md = add i64 %.014.i.i89, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, label %.lr.ph.i.i88.new, !llvm.loop !604

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.1
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, %.lr.ph.i.i88
  %.014.i.i89.epil.init = phi i64 [ 0, %.lr.ph.i.i88 ], [ %i.md, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa ]
  %.01213.i.i90.epil.init = phi i64 [ %i.la, %.lr.ph.i.i88 ], [ %i.mc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod247)
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i89.epil.init
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !8
  %i.mg = add i64 %i.mf, %i.kz                    ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.lg
  br i1 %i.mh, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.epil, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.epil: ; preds = %.epil.preheader
  %i.mi = load ptr, ptr %.sroa.5151.0.copyload, align 8, !tbaa !273
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %.01213.i.i90.epil.init
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !78
  %i.ml = zext i8 %i.mk to i32
  %i.mm = load ptr, ptr %i.lh, align 8, !tbaa !569
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mg
  store i32 %i.ml, ptr %i.mn, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i91.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93.loopexit.unr-lcssa, %bb.q
  %i.mo = add nuw i64 %.0166, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mo, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.q, !llvm.loop !614

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit93, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit87, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit81, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit75, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit69, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIhEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader164, %.preheader162, %.preheader160, %.preheader158, %.preheader156, %.preheader154, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.f
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiEUlS4_E_EEDaNS0_11BinTypeSizeEOS4_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.xgboost::common::Span.121", align 8 ; 5 uses
  %3 = alloca %class.anon.129, align 16           ; 7 uses
  %4 = alloca %"class.xgboost::common::Span.121", align 8 ; 5 uses
  %5 = alloca %class.anon.129, align 16           ; 7 uses
  %6 = alloca %"class.xgboost::common::Span.123", align 8 ; 5 uses
  %7 = alloca %class.anon.128, align 16           ; 7 uses
  %8 = alloca %"class.xgboost::common::Span", align 8 ; 5 uses
  %9 = alloca %class.anon.127, align 16           ; 7 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !526    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !322  ; 2 uses
  store i64 %i.d, ptr %8, align 8, !tbaa !272
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !67
  %i.f = icmp ne ptr %i.b, null
  %i.g = icmp eq i64 %i.d, 0
  %i.h = or i1 %i.f, %i.g
  br i1 %i.h, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !615, !nonnull !33, !align !479
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !616, !nonnull !33, !align !554
  %i.n = load i32, ptr %i.m, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !47
  store <2 x ptr> %i.p, ptr %9, align 16, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.a, ptr %i.q, align 16, !tbaa !617
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %i.r, align 8, !tbaa !558
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !619, !nonnull !33, !align !479
  store ptr %i.u, ptr %i.s, align 16, !tbaa !529
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS4_E_clIhEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.k, i32 noundef %i.n, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %1, align 8, !tbaa !526    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !336  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !322
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  store i64 %i.z, ptr %6, align 8, !tbaa !560
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !562
  %i.ab = icmp ne ptr %i.w, null
  %i.ac = icmp eq i64 %i.z, 0
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_.exit, label %bb.e, !prof !140

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !615, !nonnull !33, !align !479
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !616, !nonnull !33, !align !554
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !47
  store <2 x ptr> %i.al, ptr %7, align 16, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.v, ptr %i.am, align 16, !tbaa !620
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.an, align 8, !tbaa !566
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !619, !nonnull !33, !align !479
  store ptr %i.aq, ptr %i.ao, align 16, !tbaa !529
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS4_E_clItEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.ag, i32 noundef %i.aj, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 8, !tbaa !526   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !336 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !322
  %i.av = lshr i64 %i.au, 2                       ; 2 uses
  store i64 %i.av, ptr %4, align 8, !tbaa !567
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !569
  %i.ax = icmp ne ptr %i.as, null
  %i.ay = icmp eq i64 %i.av, 0
  %i.az = or i1 %i.ax, %i.ay
  br i1 %i.az, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit, label %bb.g, !prof !140

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !615, !nonnull !33, !align !479
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !616, !nonnull !33, !align !554
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !47
  store <2 x ptr> %i.bh, ptr %5, align 16, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ar, ptr %i.bi, align 16, !tbaa !622
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.bj, align 8, !tbaa !573
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !619, !nonnull !33, !align !479
  store ptr %i.bm, ptr %i.bk, align 16, !tbaa !529
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS4_E_clIjEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.bc, i32 noundef %i.bf, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.bn = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bn, ptr noundef nonnull @.str.26, i32 noundef 223)
  %i.bo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.h
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.44, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.bq = load ptr, ptr %1, align 8, !tbaa !526   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !336 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !322
  %i.bu = lshr i64 %i.bt, 2                       ; 2 uses
  store i64 %i.bu, ptr %2, align 8, !tbaa !567
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !569
  %i.bw = icmp ne ptr %i.br, null
  %i.bx = icmp eq i64 %i.bu, 0
  %i.by = or i1 %i.bw, %i.bx
  br i1 %i.by, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit6, label %bb.i, !prof !140

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !615, !nonnull !33, !align !479
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !616, !nonnull !33, !align !554
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !47
  store <2 x ptr> %i.cg, ptr %3, align 16, !tbaa !47
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bq, ptr %i.ch, align 16, !tbaa !622
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ci, align 8, !tbaa !573
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !619, !nonnull !33, !align !479
  store ptr %i.cl, ptr %i.cj, align 16, !tbaa !529
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS4_E_clIjEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.cb, i32 noundef %i.ce, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.l

bb.j:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  resume { ptr, i32 } %i.cm

bb.l:                                             ; preds = %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit6, %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit, %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_.exit, %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_.exit
  ret void

bb.m:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS4_E_clIhEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not183 = icmp eq i64 %0, 0
  br i1 %.not183, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph176, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.048175 = phi i64 [ 0, %.lr.ph176 ], [ %i.aj, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !624, !nonnull !33, !align !479
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8
  %i.j = add i64 %i.i, %.048175                   ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !625, !nonnull !33, !align !479
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  %i.m = mul i64 %i.l, %i.j                       ; 2 uses
  %i.n = add i64 %i.j, 1
  %i.o = mul i64 %i.n, %i.l
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !617
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, %.lr.ph.i
  %.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i ] ; 2 uses
  %.01213.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.ah, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.014.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !626, !nonnull !33, !align !479 ; 2 uses
  %i.w = add i64 %i.u, %i.j                       ; 2 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !272
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, label %bb.d, !prof !140

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i: ; preds = %bb.c
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !627, !nonnull !33, !align !479
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !281
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.01213.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !373
  %i.ad = trunc i16 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !78
  %i.ah = add nuw i64 %.01213.i, 1
  %i.ai = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.l
  br i1 %exitcond.not.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %bb.c, !llvm.loop !628

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, %bb.b
  %i.aj = add nuw i64 %.048175, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.aj, %0
  br i1 %exitcond194.not, label %.loopexit, label %bb.b, !llvm.loop !629

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !630
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !630
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.e
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ak = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ak, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.g

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.al = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.h ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.y unwind label %bb.z

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr150 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr150, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %.pr150, align 8, !tbaa !74 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr150, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !78
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr150, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %.loopexit [
    i32 0, label %.preheader153
    i32 1, label %bb.m
    i32 2, label %bb.r
    i32 3, label %.preheader162
  ]

.preheader162:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not177 = icmp eq i64 %0, 0
  br i1 %.not177, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader162
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.w

.preheader153:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not182 = icmp eq i64 %0, 0
  br i1 %.not182, label %.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader153
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044173 = phi i64 [ 0, %.lr.ph174 ], [ %i.da, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %.sroa.097.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8, !tbaa !529 ; 3 uses
  %i.bb = load i64, ptr %.sroa.097.0.copyload, align 8, !tbaa !8
  %i.bc = add i64 %i.bb, %.044173                 ; 5 uses
  %i.bd = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.be = freeze i64 %i.bd                        ; 6 uses
  %i.bf = mul i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = add i64 %i.bc, 1
  %i.bh = mul i64 %i.bg, %i.be
  %i.bi = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.k
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.498.0.copyload, i64 8 ; 3 uses
  %xtraiter280 = and i64 %i.be, 1
  %i.bl = icmp eq i64 %i.be, 1
  br i1 %i.bl, label %.epil.preheader279, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter283 = and i64 %i.be, -2
  br label %bb.l

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1, %.lr.ph.i.i.new
  %.014.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cn, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.new ], [ %i.cm, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ] ; 3 uses
  %niter284 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter284.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ]
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.014.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8
  %i.bp = add i64 %i.bo, %i.bc                    ; 2 uses
  %i.bq = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !272
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i, label %.loopexit285, !prof !140

.loopexit285:                                     ; preds = %.epil.preheader279, %bb.l, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i: ; preds = %bb.l
  %i.bs = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !281
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %.01213.i.i
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !373
  %i.bv = trunc i16 %i.bu to i8
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bp
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !78
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.014.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8
  %i.cc = add i64 %i.cb, %i.bc                    ; 2 uses
  %i.cd = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !272
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i
  %i.cf = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !281
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %.01213.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !373
  %i.cj = trunc i16 %i.ci to i8
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !78
  %i.cm = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.cn = add i64 %.014.i.i, 2                    ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !628

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %i.cm, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod282 = trunc i64 %i.be to i1
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.co = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.014.i.i.epil.init
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !8
  %i.cr = add i64 %i.cq, %i.bc                    ; 2 uses
  %i.cs = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !272
  %i.ct = icmp ult i64 %i.cr, %i.cs
  br i1 %i.ct, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader279
  %i.cu = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !281
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %.01213.i.i.epil.init
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !373
  %i.cx = trunc i16 %i.cw to i8
  %i.cy = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cr
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.k
  %i.da = add nuw i64 %.044173, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.da, %0
  br i1 %exitcond193.not, label %.loopexit, label %bb.k, !llvm.loop !633

bb.m:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader154, label %.preheader156

.preheader156:                                    ; preds = %bb.m
  br i1 %.not181, label %.loopexit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader156
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.p

.preheader154:                                    ; preds = %bb.m
  br i1 %.not181, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader154
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67
  %.043171 = phi i64 [ 0, %.lr.ph172 ], [ %i.fb, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67 ] ; 2 uses
  %.sroa.0105.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5109.0.copyload = load ptr, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !529 ; 3 uses
  %i.dc = load i64, ptr %.sroa.0105.0.copyload, align 8, !tbaa !8
  %i.dd = add i64 %i.dc, %.043171                 ; 5 uses
  %i.de = load i64, ptr %.sroa.2106.0.copyload, align 8, !tbaa !8
  %i.df = freeze i64 %i.de                        ; 6 uses
  %i.dg = mul i64 %i.df, %i.dd                    ; 3 uses
  %i.dh = add i64 %i.dd, 1
  %i.di = mul i64 %i.dh, %i.df
  %i.dj = icmp ult i64 %i.dg, %i.di
  br i1 %i.dj, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

.lr.ph.i.i62:                                     ; preds = %bb.n
  %.sroa.3107.0.copyload = load ptr, ptr %.sroa.3107.0..sroa_idx, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.3107.0.copyload, i64 96 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload, i64 8 ; 3 uses
  %xtraiter272 = and i64 %i.df, 1
  %i.dm = icmp eq i64 %i.df, 1
  br i1 %i.dm, label %.epil.preheader271, label %.lr.ph.i.i62.new

.lr.ph.i.i62.new:                                 ; preds = %.lr.ph.i.i62
  %unroll_iter275 = and i64 %i.df, -2
  br label %bb.o

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1, %.lr.ph.i.i62.new
  %.014.i.i63 = phi i64 [ 0, %.lr.ph.i.i62.new ], [ %i.eo, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1 ] ; 3 uses
  %.01213.i.i64 = phi i64 [ %i.dg, %.lr.ph.i.i62.new ], [ %i.en, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1 ] ; 3 uses
  %niter276 = phi i64 [ 0, %.lr.ph.i.i62.new ], [ %niter276.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1 ]
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !226
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.014.i.i63
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !8
  %i.dq = add i64 %i.dp, %i.dd                    ; 2 uses
  %i.dr = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !272
  %i.ds = icmp ult i64 %i.dq, %i.dr
  br i1 %i.ds, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65, label %.loopexit277, !prof !140

.loopexit277:                                     ; preds = %.epil.preheader271, %bb.o, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65: ; preds = %bb.o
  %i.dt = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !281
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %.01213.i.i64
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !373
  %i.dw = trunc i16 %i.dv to i8
  %i.dx = load ptr, ptr %i.dl, align 8, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dq
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !78
  %i.dz = load ptr, ptr %i.dk, align 8, !tbaa !226
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.014.i.i63
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !8
  %i.ed = add i64 %i.ec, %i.dd                    ; 2 uses
  %i.ee = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !272
  %i.ef = icmp ult i64 %i.ed, %i.ee
  br i1 %i.ef, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65
  %i.eg = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !281
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %.01213.i.i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !373
  %i.ek = trunc i16 %i.ej to i8
  %i.el = load ptr, ptr %i.dl, align 8, !tbaa !67
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !78
  %i.en = add nuw i64 %.01213.i.i64, 2            ; 2 uses
  %i.eo = add i64 %.014.i.i63, 2                  ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, label %bb.o, !llvm.loop !628

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, label %.epil.preheader271

.epil.preheader271:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %.lr.ph.i.i62
  %.014.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.i62 ], [ %i.eo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %.01213.i.i64.epil.init = phi i64 [ %i.dg, %.lr.ph.i.i62 ], [ %i.en, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %lcmp.mod274 = trunc i64 %i.df to i1
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.ep = load ptr, ptr %i.dk, align 8, !tbaa !226
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.014.i.i63.epil.init
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !8
  %i.es = add i64 %i.er, %i.dd                    ; 2 uses
  %i.et = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !272
  %i.eu = icmp ult i64 %i.es, %i.et
  br i1 %i.eu, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.epil, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.epil: ; preds = %.epil.preheader271
  %i.ev = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !281
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %.01213.i.i64.epil.init
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !373
  %i.ey = trunc i16 %i.ex to i8
  %i.ez = load ptr, ptr %i.dl, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.es
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %bb.n
  %i.fb = add nuw i64 %.043171, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.fb, %0
  br i1 %exitcond192.not, label %.loopexit, label %bb.n, !llvm.loop !634

bb.p:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73
  %.042169 = phi i64 [ 0, %.lr.ph170 ], [ %i.hb, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73 ] ; 2 uses
  %.sroa.0115.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2116.0.copyload = load ptr, ptr %.sroa.2116.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !529 ; 3 uses
  %i.fc = load i64, ptr %.sroa.0115.0.copyload, align 8, !tbaa !8
  %i.fd = add i64 %i.fc, %.042169                 ; 5 uses
  %i.fe = load i64, ptr %.sroa.2116.0.copyload, align 8, !tbaa !8
  %i.ff = freeze i64 %i.fe                        ; 6 uses
  %i.fg = mul i64 %i.ff, %i.fd                    ; 3 uses
  %i.fh = add i64 %i.fd, 1
  %i.fi = mul i64 %i.fh, %i.ff
  %i.fj = icmp ult i64 %i.fg, %i.fi
  br i1 %i.fj, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

.lr.ph.i.i68:                                     ; preds = %bb.p
  %.sroa.3117.0.copyload = load ptr, ptr %.sroa.3117.0..sroa_idx, align 8, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.3117.0.copyload, i64 96 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.4118.0.copyload, i64 8 ; 3 uses
  %xtraiter264 = and i64 %i.ff, 1
  %i.fm = icmp eq i64 %i.ff, 1
  br i1 %i.fm, label %.epil.preheader263, label %.lr.ph.i.i68.new

.lr.ph.i.i68.new:                                 ; preds = %.lr.ph.i.i68
  %unroll_iter267 = and i64 %i.ff, -2
  br label %bb.q

bb.q:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1, %.lr.ph.i.i68.new
  %.014.i.i69 = phi i64 [ 0, %.lr.ph.i.i68.new ], [ %i.go, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1 ] ; 3 uses
  %.01213.i.i70 = phi i64 [ %i.fg, %.lr.ph.i.i68.new ], [ %i.gn, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1 ] ; 3 uses
  %niter268 = phi i64 [ 0, %.lr.ph.i.i68.new ], [ %niter268.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1 ]
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !226
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.014.i.i69
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !8
  %i.fq = add i64 %i.fp, %i.fd                    ; 2 uses
  %i.fr = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !272
  %i.fs = icmp ult i64 %i.fq, %i.fr
  br i1 %i.fs, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71, label %.loopexit269, !prof !140

.loopexit269:                                     ; preds = %.epil.preheader263, %bb.q, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71: ; preds = %bb.q
  %i.ft = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !281
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.ft, i64 %.01213.i.i70
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !373
  %i.fw = trunc i16 %i.fv to i8
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fq
  store i8 %i.fw, ptr %i.fy, align 1, !tbaa !78
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !226
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.014.i.i69
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !8
  %i.gd = add i64 %i.gc, %i.fd                    ; 2 uses
  %i.ge = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !272
  %i.gf = icmp ult i64 %i.gd, %i.ge
  br i1 %i.gf, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71
  %i.gg = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !281
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %.01213.i.i70
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !373
  %i.gk = trunc i16 %i.gj to i8
  %i.gl = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd
  store i8 %i.gk, ptr %i.gm, align 1, !tbaa !78
  %i.gn = add nuw i64 %.01213.i.i70, 2            ; 2 uses
  %i.go = add i64 %.014.i.i69, 2                  ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, label %bb.q, !llvm.loop !628

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, label %.epil.preheader263

.epil.preheader263:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.014.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.go, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %.01213.i.i70.epil.init = phi i64 [ %i.fg, %.lr.ph.i.i68 ], [ %i.gn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %lcmp.mod266 = trunc i64 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !226
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.014.i.i69.epil.init
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !8
  %i.gs = add i64 %i.gr, %i.fd                    ; 2 uses
  %i.gt = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !272
  %i.gu = icmp ult i64 %i.gs, %i.gt
  br i1 %i.gu, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.epil, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.epil: ; preds = %.epil.preheader263
  %i.gv = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !281
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %.01213.i.i70.epil.init
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !373
  %i.gy = trunc i16 %i.gx to i8
  %i.gz = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gs
  store i8 %i.gy, ptr %i.ha, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %bb.p
  %i.hb = add nuw i64 %.042169, 1                 ; 2 uses
  %exitcond191.not = icmp eq i64 %i.hb, %0
  br i1 %exitcond191.not, label %.loopexit, label %bb.p, !llvm.loop !635

bb.r:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.hc = icmp eq i64 %3, 0
  %.not179 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.hc, label %.preheader158, label %.preheader160

.preheader160:                                    ; preds = %bb.r
  br i1 %.not179, label %.loopexit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader160
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.u

.preheader158:                                    ; preds = %bb.r
  br i1 %.not179, label %.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader158
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79
  %.041167 = phi i64 [ 0, %.lr.ph168 ], [ %i.jc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79 ] ; 2 uses
  %.sroa.0125.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2126.0.copyload = load ptr, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5129.0.copyload = load ptr, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !529 ; 3 uses
  %i.hd = load i64, ptr %.sroa.0125.0.copyload, align 8, !tbaa !8
  %i.he = add i64 %i.hd, %.041167                 ; 5 uses
  %i.hf = load i64, ptr %.sroa.2126.0.copyload, align 8, !tbaa !8
  %i.hg = freeze i64 %i.hf                        ; 6 uses
  %i.hh = mul i64 %i.hg, %i.he                    ; 3 uses
  %i.hi = add i64 %i.he, 1
  %i.hj = mul i64 %i.hi, %i.hg
  %i.hk = icmp ult i64 %i.hh, %i.hj
  br i1 %i.hk, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

.lr.ph.i.i74:                                     ; preds = %bb.s
  %.sroa.3127.0.copyload = load ptr, ptr %.sroa.3127.0..sroa_idx, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.3127.0.copyload, i64 96 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.4128.0.copyload, i64 8 ; 3 uses
  %xtraiter256 = and i64 %i.hg, 1
  %i.hn = icmp eq i64 %i.hg, 1
  br i1 %i.hn, label %.epil.preheader255, label %.lr.ph.i.i74.new

.lr.ph.i.i74.new:                                 ; preds = %.lr.ph.i.i74
  %unroll_iter259 = and i64 %i.hg, -2
  br label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1, %.lr.ph.i.i74.new
  %.014.i.i75 = phi i64 [ 0, %.lr.ph.i.i74.new ], [ %i.ip, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1 ] ; 3 uses
  %.01213.i.i76 = phi i64 [ %i.hh, %.lr.ph.i.i74.new ], [ %i.io, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1 ] ; 3 uses
  %niter260 = phi i64 [ 0, %.lr.ph.i.i74.new ], [ %niter260.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1 ]
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !226
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.014.i.i75
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !8
  %i.hr = add i64 %i.hq, %i.he                    ; 2 uses
  %i.hs = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !272
  %i.ht = icmp ult i64 %i.hr, %i.hs
  br i1 %i.ht, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77, label %.loopexit261, !prof !140

.loopexit261:                                     ; preds = %.epil.preheader255, %bb.t, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77: ; preds = %bb.t
  %i.hu = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !281
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %.01213.i.i76
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !373
  %i.hx = trunc i16 %i.hw to i8
  %i.hy = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hr
  store i8 %i.hx, ptr %i.hz, align 1, !tbaa !78
  %i.ia = load ptr, ptr %i.hl, align 8, !tbaa !226
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.014.i.i75
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8
  %i.ie = add i64 %i.id, %i.he                    ; 2 uses
  %i.if = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !272
  %i.ig = icmp ult i64 %i.ie, %i.if
  br i1 %i.ig, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77
  %i.ih = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !281
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %.01213.i.i76
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !373
  %i.il = trunc i16 %i.ik to i8
  %i.im = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  store i8 %i.il, ptr %i.in, align 1, !tbaa !78
  %i.io = add nuw i64 %.01213.i.i76, 2            ; 2 uses
  %i.ip = add i64 %.014.i.i75, 2                  ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, label %bb.t, !llvm.loop !628

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, label %.epil.preheader255

.epil.preheader255:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %.lr.ph.i.i74
  %.014.i.i75.epil.init = phi i64 [ 0, %.lr.ph.i.i74 ], [ %i.ip, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %.01213.i.i76.epil.init = phi i64 [ %i.hh, %.lr.ph.i.i74 ], [ %i.io, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %lcmp.mod258 = trunc i64 %i.hg to i1
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.iq = load ptr, ptr %i.hl, align 8, !tbaa !226
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.014.i.i75.epil.init
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !8
  %i.it = add i64 %i.is, %i.he                    ; 2 uses
  %i.iu = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !272
  %i.iv = icmp ult i64 %i.it, %i.iu
  br i1 %i.iv, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.epil, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.epil: ; preds = %.epil.preheader255
  %i.iw = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !281
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %.01213.i.i76.epil.init
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !373
  %i.iz = trunc i16 %i.iy to i8
  %i.ja = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.it
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %bb.s
  %i.jc = add nuw i64 %.041167, 1                 ; 2 uses
  %exitcond190.not = icmp eq i64 %i.jc, %0
  br i1 %exitcond190.not, label %.loopexit, label %bb.s, !llvm.loop !636

bb.u:                                             ; preds = %.lr.ph166, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85
  %.040165 = phi i64 [ 0, %.lr.ph166 ], [ %i.lc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85 ] ; 2 uses
  %.sroa.0135.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2136.0.copyload = load ptr, ptr %.sroa.2136.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4138.0.copyload = load ptr, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5139.0.copyload = load ptr, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !529 ; 3 uses
  %i.jd = load i64, ptr %.sroa.0135.0.copyload, align 8, !tbaa !8
  %i.je = add i64 %i.jd, %.040165                 ; 5 uses
  %i.jf = load i64, ptr %.sroa.2136.0.copyload, align 8, !tbaa !8
  %i.jg = freeze i64 %i.jf                        ; 6 uses
  %i.jh = mul i64 %i.jg, %i.je                    ; 3 uses
  %i.ji = add i64 %i.je, 1
  %i.jj = mul i64 %i.ji, %i.jg
  %i.jk = icmp ult i64 %i.jh, %i.jj
  br i1 %i.jk, label %.lr.ph.i.i80, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

.lr.ph.i.i80:                                     ; preds = %bb.u
  %.sroa.3137.0.copyload = load ptr, ptr %.sroa.3137.0..sroa_idx, align 8, !tbaa !10
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.3137.0.copyload, i64 96 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.4138.0.copyload, i64 8 ; 3 uses
  %xtraiter248 = and i64 %i.jg, 1
  %i.jn = icmp eq i64 %i.jg, 1
  br i1 %i.jn, label %.epil.preheader247, label %.lr.ph.i.i80.new

.lr.ph.i.i80.new:                                 ; preds = %.lr.ph.i.i80
  %unroll_iter251 = and i64 %i.jg, -2
  br label %bb.v

bb.v:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1, %.lr.ph.i.i80.new
  %.014.i.i81 = phi i64 [ 0, %.lr.ph.i.i80.new ], [ %i.kp, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1 ] ; 3 uses
  %.01213.i.i82 = phi i64 [ %i.jh, %.lr.ph.i.i80.new ], [ %i.ko, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1 ] ; 3 uses
  %niter252 = phi i64 [ 0, %.lr.ph.i.i80.new ], [ %niter252.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1 ]
  %i.jo = load ptr, ptr %i.jl, align 8, !tbaa !226
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.014.i.i81
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !8
  %i.jr = add i64 %i.jq, %i.je                    ; 2 uses
  %i.js = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !272
  %i.jt = icmp ult i64 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83, label %.loopexit253, !prof !140

.loopexit253:                                     ; preds = %.epil.preheader247, %bb.v, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83: ; preds = %bb.v
  %i.ju = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !281
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %.01213.i.i82
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !373
  %i.jx = trunc i16 %i.jw to i8
  %i.jy = load ptr, ptr %i.jm, align 8, !tbaa !67
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jr
  store i8 %i.jx, ptr %i.jz, align 1, !tbaa !78
  %i.ka = load ptr, ptr %i.jl, align 8, !tbaa !226
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.014.i.i81
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !8
  %i.ke = add i64 %i.kd, %i.je                    ; 2 uses
  %i.kf = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !272
  %i.kg = icmp ult i64 %i.ke, %i.kf
  br i1 %i.kg, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83
  %i.kh = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !281
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.kh, i64 %.01213.i.i82
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !373
  %i.kl = trunc i16 %i.kk to i8
  %i.km = load ptr, ptr %i.jm, align 8, !tbaa !67
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ke
  store i8 %i.kl, ptr %i.kn, align 1, !tbaa !78
  %i.ko = add nuw i64 %.01213.i.i82, 2            ; 2 uses
  %i.kp = add i64 %.014.i.i81, 2                  ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, label %bb.v, !llvm.loop !628

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %.lr.ph.i.i80
  %.014.i.i81.epil.init = phi i64 [ 0, %.lr.ph.i.i80 ], [ %i.kp, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %.01213.i.i82.epil.init = phi i64 [ %i.jh, %.lr.ph.i.i80 ], [ %i.ko, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %lcmp.mod250 = trunc i64 %i.jg to i1
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.kq = load ptr, ptr %i.jl, align 8, !tbaa !226
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.014.i.i81.epil.init
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !8
  %i.kt = add i64 %i.ks, %i.je                    ; 2 uses
  %i.ku = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !272
  %i.kv = icmp ult i64 %i.kt, %i.ku
  br i1 %i.kv, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.epil, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.epil: ; preds = %.epil.preheader247
  %i.kw = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !281
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %.01213.i.i82.epil.init
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !373
  %i.kz = trunc i16 %i.ky to i8
  %i.la = load ptr, ptr %i.jm, align 8, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kt
  store i8 %i.kz, ptr %i.lb, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %bb.u
  %i.lc = add nuw i64 %.040165, 1                 ; 2 uses
  %exitcond189.not = icmp eq i64 %i.lc, %0
  br i1 %exitcond189.not, label %.loopexit, label %bb.u, !llvm.loop !637

bb.w:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91 ] ; 2 uses
  %.sroa.0145.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2146.0.copyload = load ptr, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5149.0.copyload = load ptr, ptr %.sroa.5149.0..sroa_idx, align 8, !tbaa !529 ; 3 uses
  %i.ld = load i64, ptr %.sroa.0145.0.copyload, align 8, !tbaa !8
  %i.le = add i64 %i.ld, %.0164                   ; 5 uses
  %i.lf = load i64, ptr %.sroa.2146.0.copyload, align 8, !tbaa !8
  %i.lg = freeze i64 %i.lf                        ; 6 uses
  %i.lh = mul i64 %i.lg, %i.le                    ; 3 uses
  %i.li = add i64 %i.le, 1
  %i.lj = mul i64 %i.li, %i.lg
  %i.lk = icmp ult i64 %i.lh, %i.lj
  br i1 %i.lk, label %.lr.ph.i.i86, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

.lr.ph.i.i86:                                     ; preds = %bb.w
  %.sroa.3147.0.copyload = load ptr, ptr %.sroa.3147.0..sroa_idx, align 8, !tbaa !10
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.3147.0.copyload, i64 96 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 8 ; 3 uses
  %xtraiter = and i64 %i.lg, 1
  %i.ln = icmp eq i64 %i.lg, 1
  br i1 %i.ln, label %.epil.preheader, label %.lr.ph.i.i86.new

.lr.ph.i.i86.new:                                 ; preds = %.lr.ph.i.i86
  %unroll_iter = and i64 %i.lg, -2
  br label %bb.x

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1, %.lr.ph.i.i86.new
  %.014.i.i87 = phi i64 [ 0, %.lr.ph.i.i86.new ], [ %i.mp, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1 ] ; 3 uses
  %.01213.i.i88 = phi i64 [ %i.lh, %.lr.ph.i.i86.new ], [ %i.mo, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i86.new ], [ %niter.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1 ]
  %i.lo = load ptr, ptr %i.ll, align 8, !tbaa !226
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.014.i.i87
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !8
  %i.lr = add i64 %i.lq, %i.le                    ; 2 uses
  %i.ls = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !272
  %i.lt = icmp ult i64 %i.lr, %i.ls
  br i1 %i.lt, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89, label %.loopexit245, !prof !140

.loopexit245:                                     ; preds = %.epil.preheader, %bb.x, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89: ; preds = %bb.x
  %i.lu = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !281
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %.01213.i.i88
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !373
  %i.lx = trunc i16 %i.lw to i8
  %i.ly = load ptr, ptr %i.lm, align 8, !tbaa !67
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lr
  store i8 %i.lx, ptr %i.lz, align 1, !tbaa !78
  %i.ma = load ptr, ptr %i.ll, align 8, !tbaa !226
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.014.i.i87
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !8
  %i.me = add i64 %i.md, %i.le                    ; 2 uses
  %i.mf = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !272
  %i.mg = icmp ult i64 %i.me, %i.mf
  br i1 %i.mg, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1, label %.loopexit245, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89
  %i.mh = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !281
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.mh, i64 %.01213.i.i88
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !373
  %i.ml = trunc i16 %i.mk to i8
  %i.mm = load ptr, ptr %i.lm, align 8, !tbaa !67
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.me
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !78
  %i.mo = add nuw i64 %.01213.i.i88, 2            ; 2 uses
  %i.mp = add i64 %.014.i.i87, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, label %bb.x, !llvm.loop !628

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i86
  %.014.i.i87.epil.init = phi i64 [ 0, %.lr.ph.i.i86 ], [ %i.mp, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01213.i.i88.epil.init = phi i64 [ %i.lh, %.lr.ph.i.i86 ], [ %i.mo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %lcmp.mod244 = trunc i64 %i.lg to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.mq = load ptr, ptr %i.ll, align 8, !tbaa !226
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %.014.i.i87.epil.init
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !8
  %i.mt = add i64 %i.ms, %i.le                    ; 2 uses
  %i.mu = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !272
  %i.mv = icmp ult i64 %i.mt, %i.mu
  br i1 %i.mv, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.epil, label %.loopexit245, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.epil: ; preds = %.epil.preheader
  %i.mw = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !281
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mw, i64 %.01213.i.i88.epil.init
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !373
  %i.mz = trunc i16 %i.my to i8
  %i.na = load ptr, ptr %i.lm, align 8, !tbaa !67
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.mt
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %bb.w
  %i.nc = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %0
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !638

.loopexit:                                        ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader153, %.preheader154, %.preheader156, %.preheader158, %.preheader160, %.preheader162, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %.preheader
  ret void

bb.y:                                             ; preds = %bb.g, %bb.h
  %.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.av, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %bb.h
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS4_E_clItEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not183 = icmp eq i64 %0, 0
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !639, !nonnull !33, !align !479
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !640, !nonnull !33, !align !479
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = freeze i64 %i.h                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !33, !align !479 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %xtraiter288 = and i64 %i.i, 1
  %i.q = icmp eq i64 %i.i, 1
  %unroll_iter291 = and i64 %i.i, -2
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  %lcmp.mod290 = trunc i64 %i.i to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph176, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.048175 = phi i64 [ 0, %.lr.ph176 ], [ %i.bc, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.r = add i64 %i.e, %.048175                   ; 5 uses
  %i.s = mul i64 %i.i, %i.r                       ; 3 uses
  %i.t = add i64 %i.r, 1
  %i.u = mul i64 %i.t, %i.i
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !226  ; 3 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !560  ; 3 uses
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !33, !align !479 ; 2 uses
  br i1 %i.q, label %.epil.preheader287, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1
  %.014.i = phi i64 [ %i.as, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i64 [ %i.ar, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %niter292 = phi i64 [ %niter292.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = add i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i, label %.loopexit293, !prof !140

.loopexit293:                                     ; preds = %.epil.preheader287, %.lr.ph.i.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.i.new
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !281 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.01213.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !373
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !562 ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ab
  store i16 %i.af, ptr %i.ah, align 2, !tbaa !373
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8
  %i.al = add i64 %i.ak, %i.r                     ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.x
  br i1 %i.am, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.01213.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !373
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.al
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !373
  %i.ar = add nuw i64 %.01213.i, 2                ; 2 uses
  %i.as = add i64 %.014.i, 2                      ; 2 uses
  %niter292.next.1 = add i64 %niter292, 2         ; 2 uses
  %niter292.ncmp.1 = icmp eq i64 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !641

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1
  br i1 %lcmp.mod289.not, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %.epil.preheader287

.epil.preheader287:                               ; preds = %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.as, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ %i.s, %.lr.ph.i ], [ %i.ar, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod290)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i.epil.init
  %i.au = load i64, ptr %i.at, align 8, !tbaa !8
  %i.av = add i64 %i.au, %i.r                     ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.x
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil: ; preds = %.epil.preheader287
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !281
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %.01213.i.epil.init
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !373
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !562
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.av
  store i16 %i.az, ptr %i.bb, align 2, !tbaa !373
  br label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %bb.b
  %i.bc = add nuw i64 %.048175, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.bc, %0
  br i1 %exitcond195.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !642

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !643
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !643
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bd, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.be = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !77
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bi, i64 noundef %i.bk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.e ], [ %i.bo, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr150 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr150, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %.pr150, align 8, !tbaa !74 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pr150, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !78
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr150, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader152
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %.preheader162
  ]

.preheader162:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not177 = icmp eq i64 %0, 0
  br i1 %.not177, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader162
  %.sroa.0145.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2146.0.copyload = load ptr, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5149.0.copyload = load ptr, ptr %.sroa.5149.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.bu = load i64, ptr %.sroa.0145.0.copyload, align 8, !tbaa !8
  %i.bv = load i64, ptr %.sroa.2146.0.copyload, align 8, !tbaa !8
  %i.bw = freeze i64 %i.bv                        ; 6 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter = and i64 %i.bw, 1
  %i.bx = icmp eq i64 %i.bw, 1
  %unroll_iter = and i64 %i.bw, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod245 = trunc i64 %i.bw to i1
  br label %bb.q

.preheader152:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not182 = icmp eq i64 %0, 0
  br i1 %.not182, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader152
  %.sroa.097.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.by = load i64, ptr %.sroa.097.0.copyload, align 8, !tbaa !8
  %i.bz = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.ca = freeze i64 %i.bz                        ; 6 uses
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter280 = and i64 %i.ca, 1
  %i.cb = icmp eq i64 %i.ca, 1
  %unroll_iter283 = and i64 %i.ca, -2
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod282 = trunc i64 %i.ca to i1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044173 = phi i64 [ 0, %.lr.ph174 ], [ %i.do, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %i.cc = add i64 %i.by, %.044173                 ; 5 uses
  %i.cd = mul i64 %i.ca, %i.cc                    ; 3 uses
  %i.ce = add i64 %i.cc, 1
  %i.cf = mul i64 %i.ce, %i.ca
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.j
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !226 ; 3 uses
  %i.cj = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.498.0.copyload, i64 8 ; 2 uses
  br i1 %i.cb, label %.epil.preheader279, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1
  %.014.i.i = phi i64 [ %i.de, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.dd, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ %i.cd, %.lr.ph.i.i ] ; 3 uses
  %niter284 = phi i64 [ %niter284.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.014.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !8
  %i.cn = add i64 %i.cm, %i.cc                    ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i, label %.loopexit285, !prof !140

.loopexit285:                                     ; preds = %.epil.preheader279, %.lr.ph.i.i.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i: ; preds = %.lr.ph.i.i.new
  %i.cp = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.01213.i.i
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !373
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !562 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cn
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !373
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.014.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !8
  %i.cx = add i64 %i.cw, %i.cc                    ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cj
  br i1 %i.cy, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.01213.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !373
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cx
  store i16 %i.db, ptr %i.dc, align 2, !tbaa !373
  %i.dd = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.de = add i64 %.014.i.i, 2                    ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !641

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1
  br i1 %lcmp.mod281.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.de, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %i.dd, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.014.i.i.epil.init
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !8
  %i.dh = add i64 %i.dg, %i.cc                    ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.cj
  br i1 %i.di, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader279
  %i.dj = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !281
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %.01213.i.i.epil.init
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !373
  %i.dm = load ptr, ptr %i.ck, align 8, !tbaa !562
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dh
  store i16 %i.dl, ptr %i.dn, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.j
  %i.do = add nuw i64 %.044173, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.do, %0
  br i1 %exitcond194.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.j, !llvm.loop !646

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.dp = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.dp, label %.preheader154, label %.preheader156

.preheader156:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader156
  %.sroa.0115.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2116.0.copyload = load ptr, ptr %.sroa.2116.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.dq = load i64, ptr %.sroa.0115.0.copyload, align 8, !tbaa !8
  %i.dr = load i64, ptr %.sroa.2116.0.copyload, align 8, !tbaa !8
  %i.ds = freeze i64 %i.dr                        ; 6 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter264 = and i64 %i.ds, 1
  %i.dt = icmp eq i64 %i.ds, 1
  %unroll_iter267 = and i64 %i.ds, -2
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod266 = trunc i64 %i.ds to i1
  br label %bb.m

.preheader154:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader154
  %.sroa.0105.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5109.0.copyload = load ptr, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.du = load i64, ptr %.sroa.0105.0.copyload, align 8, !tbaa !8
  %i.dv = load i64, ptr %.sroa.2106.0.copyload, align 8, !tbaa !8
  %i.dw = freeze i64 %i.dv                        ; 6 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter272 = and i64 %i.dw, 1
  %i.dx = icmp eq i64 %i.dw, 1
  %unroll_iter275 = and i64 %i.dw, -2
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  %lcmp.mod274 = trunc i64 %i.dw to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67
  %.043171 = phi i64 [ 0, %.lr.ph172 ], [ %i.fk, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67 ] ; 2 uses
  %i.dy = add i64 %i.du, %.043171                 ; 5 uses
  %i.dz = mul i64 %i.dw, %i.dy                    ; 3 uses
  %i.ea = add i64 %i.dy, 1
  %i.eb = mul i64 %i.ea, %i.dw
  %i.ec = icmp ult i64 %i.dz, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

.lr.ph.i.i62:                                     ; preds = %bb.l
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3107.0.copyload = load ptr, ptr %.sroa.3107.0..sroa_idx, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.3107.0.copyload, i64 96
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !226 ; 3 uses
  %i.ef = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload, i64 8 ; 2 uses
  br i1 %i.dx, label %.epil.preheader271, label %.lr.ph.i.i62.new

.lr.ph.i.i62.new:                                 ; preds = %.lr.ph.i.i62, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1
  %.014.i.i63 = phi i64 [ %i.fa, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ] ; 3 uses
  %.01213.i.i64 = phi i64 [ %i.ez, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1 ], [ %i.dz, %.lr.ph.i.i62 ] ; 3 uses
  %niter276 = phi i64 [ %niter276.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.014.i.i63
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !8
  %i.ej = add i64 %i.ei, %i.dy                    ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ef
  br i1 %i.ek, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65, label %.loopexit277, !prof !140

.loopexit277:                                     ; preds = %.epil.preheader271, %.lr.ph.i.i62.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65: ; preds = %.lr.ph.i.i62.new
  %i.el = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %.01213.i.i64
  %i.en = load i16, ptr %i.em, align 2, !tbaa !373
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !562 ; 2 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.ej
  store i16 %i.en, ptr %i.ep, align 2, !tbaa !373
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.014.i.i63
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !8
  %i.et = add i64 %i.es, %i.dy                    ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.ef
  br i1 %i.eu, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %.01213.i.i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !373
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.et
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !373
  %i.ez = add nuw i64 %.01213.i.i64, 2            ; 2 uses
  %i.fa = add i64 %.014.i.i63, 2                  ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, label %.lr.ph.i.i62.new, !llvm.loop !641

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1
  br i1 %lcmp.mod273.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, label %.epil.preheader271

.epil.preheader271:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %.lr.ph.i.i62
  %.014.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.i62 ], [ %i.fa, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %.01213.i.i64.epil.init = phi i64 [ %i.dz, %.lr.ph.i.i62 ], [ %i.ez, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.014.i.i63.epil.init
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !8
  %i.fd = add i64 %i.fc, %i.dy                    ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.ef
  br i1 %i.fe, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.epil, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.epil: ; preds = %.epil.preheader271
  %i.ff = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !281
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ff, i64 %.01213.i.i64.epil.init
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !373
  %i.fi = load ptr, ptr %i.eg, align 8, !tbaa !562
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.fd
  store i16 %i.fh, ptr %i.fj, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %bb.l
  %i.fk = add nuw i64 %.043171, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.fk, %0
  br i1 %exitcond193.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.l, !llvm.loop !647

bb.m:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73
  %.042169 = phi i64 [ 0, %.lr.ph170 ], [ %i.gx, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73 ] ; 2 uses
  %i.fl = add i64 %i.dq, %.042169                 ; 5 uses
  %i.fm = mul i64 %i.ds, %i.fl                    ; 3 uses
  %i.fn = add i64 %i.fl, 1
  %i.fo = mul i64 %i.fn, %i.ds
  %i.fp = icmp ult i64 %i.fm, %i.fo
  br i1 %i.fp, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

.lr.ph.i.i68:                                     ; preds = %bb.m
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3117.0.copyload = load ptr, ptr %.sroa.3117.0..sroa_idx, align 8, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.3117.0.copyload, i64 96
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !226 ; 3 uses
  %i.fs = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.4118.0.copyload, i64 8 ; 2 uses
  br i1 %i.dt, label %.epil.preheader263, label %.lr.ph.i.i68.new

.lr.ph.i.i68.new:                                 ; preds = %.lr.ph.i.i68, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1
  %.014.i.i69 = phi i64 [ %i.gn, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ] ; 3 uses
  %.01213.i.i70 = phi i64 [ %i.gm, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1 ], [ %i.fm, %.lr.ph.i.i68 ] ; 3 uses
  %niter268 = phi i64 [ %niter268.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.014.i.i69
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !8
  %i.fw = add i64 %i.fv, %i.fl                    ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fs
  br i1 %i.fx, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71, label %.loopexit269, !prof !140

.loopexit269:                                     ; preds = %.epil.preheader263, %.lr.ph.i.i68.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71: ; preds = %.lr.ph.i.i68.new
  %i.fy = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %.01213.i.i70
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !373
  %i.gb = load ptr, ptr %i.ft, align 8, !tbaa !562 ; 2 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.fw
  store i16 %i.ga, ptr %i.gc, align 2, !tbaa !373
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.014.i.i69
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !8
  %i.gg = add i64 %i.gf, %i.fl                    ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fs
  br i1 %i.gh, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %.01213.i.i70
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !373
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.gg
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !373
  %i.gm = add nuw i64 %.01213.i.i70, 2            ; 2 uses
  %i.gn = add i64 %.014.i.i69, 2                  ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, label %.lr.ph.i.i68.new, !llvm.loop !641

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1
  br i1 %lcmp.mod265.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, label %.epil.preheader263

.epil.preheader263:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.014.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.gn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %.01213.i.i70.epil.init = phi i64 [ %i.fm, %.lr.ph.i.i68 ], [ %i.gm, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.014.i.i69.epil.init
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8
  %i.gq = add i64 %i.gp, %i.fl                    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.fs
  br i1 %i.gr, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.epil, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.epil: ; preds = %.epil.preheader263
  %i.gs = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !281
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %.01213.i.i70.epil.init
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !373
  %i.gv = load ptr, ptr %i.ft, align 8, !tbaa !562
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.gq
  store i16 %i.gu, ptr %i.gw, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %bb.m
  %i.gx = add nuw i64 %.042169, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.gx, %0
  br i1 %exitcond192.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !648

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.gy = icmp eq i64 %3, 0
  %.not179 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.gy, label %.preheader158, label %.preheader160

.preheader160:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader160
  %.sroa.0135.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2136.0.copyload = load ptr, ptr %.sroa.2136.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5139.0.copyload = load ptr, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.gz = load i64, ptr %.sroa.0135.0.copyload, align 8, !tbaa !8
  %i.ha = load i64, ptr %.sroa.2136.0.copyload, align 8, !tbaa !8
  %i.hb = freeze i64 %i.ha                        ; 6 uses
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter248 = and i64 %i.hb, 1
  %i.hc = icmp eq i64 %i.hb, 1
  %unroll_iter251 = and i64 %i.hb, -2
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = trunc i64 %i.hb to i1
  br label %bb.p

.preheader158:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader158
  %.sroa.0125.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2126.0.copyload = load ptr, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5129.0.copyload = load ptr, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.hd = load i64, ptr %.sroa.0125.0.copyload, align 8, !tbaa !8
  %i.he = load i64, ptr %.sroa.2126.0.copyload, align 8, !tbaa !8
  %i.hf = freeze i64 %i.he                        ; 6 uses
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter256 = and i64 %i.hf, 1
  %i.hg = icmp eq i64 %i.hf, 1
  %unroll_iter259 = and i64 %i.hf, -2
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  %lcmp.mod258 = trunc i64 %i.hf to i1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79
  %.041167 = phi i64 [ 0, %.lr.ph168 ], [ %i.it, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79 ] ; 2 uses
  %i.hh = add i64 %i.hd, %.041167                 ; 5 uses
  %i.hi = mul i64 %i.hf, %i.hh                    ; 3 uses
  %i.hj = add i64 %i.hh, 1
  %i.hk = mul i64 %i.hj, %i.hf
  %i.hl = icmp ult i64 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

.lr.ph.i.i74:                                     ; preds = %bb.o
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3127.0.copyload = load ptr, ptr %.sroa.3127.0..sroa_idx, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.3127.0.copyload, i64 96
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !226 ; 3 uses
  %i.ho = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.4128.0.copyload, i64 8 ; 2 uses
  br i1 %i.hg, label %.epil.preheader255, label %.lr.ph.i.i74.new

.lr.ph.i.i74.new:                                 ; preds = %.lr.ph.i.i74, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1
  %.014.i.i75 = phi i64 [ %i.ij, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ] ; 3 uses
  %.01213.i.i76 = phi i64 [ %i.ii, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1 ], [ %i.hi, %.lr.ph.i.i74 ] ; 3 uses
  %niter260 = phi i64 [ %niter260.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i.i75
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !8
  %i.hs = add i64 %i.hr, %i.hh                    ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.ho
  br i1 %i.ht, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77, label %.loopexit261, !prof !140

.loopexit261:                                     ; preds = %.epil.preheader255, %.lr.ph.i.i74.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77: ; preds = %.lr.ph.i.i74.new
  %i.hu = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %.01213.i.i76
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !373
  %i.hx = load ptr, ptr %i.hp, align 8, !tbaa !562 ; 2 uses
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %i.hs
  store i16 %i.hw, ptr %i.hy, align 2, !tbaa !373
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i.i75
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !8
  %i.ic = add i64 %i.ib, %i.hh                    ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ho
  br i1 %i.id, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %.01213.i.i76
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !373
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %i.ic
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !373
  %i.ii = add nuw i64 %.01213.i.i76, 2            ; 2 uses
  %i.ij = add i64 %.014.i.i75, 2                  ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, label %.lr.ph.i.i74.new, !llvm.loop !641

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1
  br i1 %lcmp.mod257.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, label %.epil.preheader255

.epil.preheader255:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %.lr.ph.i.i74
  %.014.i.i75.epil.init = phi i64 [ 0, %.lr.ph.i.i74 ], [ %i.ij, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %.01213.i.i76.epil.init = phi i64 [ %i.hi, %.lr.ph.i.i74 ], [ %i.ii, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i.i75.epil.init
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !8
  %i.im = add i64 %i.il, %i.hh                    ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ho
  br i1 %i.in, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.epil, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.epil: ; preds = %.epil.preheader255
  %i.io = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !281
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.io, i64 %.01213.i.i76.epil.init
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !373
  %i.ir = load ptr, ptr %i.hp, align 8, !tbaa !562
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.im
  store i16 %i.iq, ptr %i.is, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %bb.o
  %i.it = add nuw i64 %.041167, 1                 ; 2 uses
  %exitcond191.not = icmp eq i64 %i.it, %0
  br i1 %exitcond191.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.o, !llvm.loop !649

bb.p:                                             ; preds = %.lr.ph166, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85
  %.040165 = phi i64 [ 0, %.lr.ph166 ], [ %i.kg, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85 ] ; 2 uses
  %i.iu = add i64 %i.gz, %.040165                 ; 5 uses
  %i.iv = mul i64 %i.hb, %i.iu                    ; 3 uses
  %i.iw = add i64 %i.iu, 1
  %i.ix = mul i64 %i.iw, %i.hb
  %i.iy = icmp ult i64 %i.iv, %i.ix
  br i1 %i.iy, label %.lr.ph.i.i80, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

.lr.ph.i.i80:                                     ; preds = %bb.p
  %.sroa.4138.0.copyload = load ptr, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3137.0.copyload = load ptr, ptr %.sroa.3137.0..sroa_idx, align 8, !tbaa !10
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.3137.0.copyload, i64 96
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !226 ; 3 uses
  %i.jb = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.4138.0.copyload, i64 8 ; 2 uses
  br i1 %i.hc, label %.epil.preheader247, label %.lr.ph.i.i80.new

.lr.ph.i.i80.new:                                 ; preds = %.lr.ph.i.i80, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1
  %.014.i.i81 = phi i64 [ %i.jw, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ] ; 3 uses
  %.01213.i.i82 = phi i64 [ %i.jv, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1 ], [ %i.iv, %.lr.ph.i.i80 ] ; 3 uses
  %niter252 = phi i64 [ %niter252.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.014.i.i81
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !8
  %i.jf = add i64 %i.je, %i.iu                    ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.jb
  br i1 %i.jg, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83, label %.loopexit253, !prof !140

.loopexit253:                                     ; preds = %.epil.preheader247, %.lr.ph.i.i80.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83: ; preds = %.lr.ph.i.i80.new
  %i.jh = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %.01213.i.i82
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !373
  %i.jk = load ptr, ptr %i.jc, align 8, !tbaa !562 ; 2 uses
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jf
  store i16 %i.jj, ptr %i.jl, align 2, !tbaa !373
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.014.i.i81
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !8
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jb
  br i1 %i.jq, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %.01213.i.i82
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !373
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jp
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !373
  %i.jv = add nuw i64 %.01213.i.i82, 2            ; 2 uses
  %i.jw = add i64 %.014.i.i81, 2                  ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, label %.lr.ph.i.i80.new, !llvm.loop !641

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %.lr.ph.i.i80
  %.014.i.i81.epil.init = phi i64 [ 0, %.lr.ph.i.i80 ], [ %i.jw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %.01213.i.i82.epil.init = phi i64 [ %i.iv, %.lr.ph.i.i80 ], [ %i.jv, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.014.i.i81.epil.init
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !8
  %i.jz = add i64 %i.jy, %i.iu                    ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jb
  br i1 %i.ka, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.epil, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.epil: ; preds = %.epil.preheader247
  %i.kb = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !281
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.kb, i64 %.01213.i.i82.epil.init
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !373
  %i.ke = load ptr, ptr %i.jc, align 8, !tbaa !562
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ke, i64 %i.jz
  store i16 %i.kd, ptr %i.kf, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %bb.p
  %i.kg = add nuw i64 %.040165, 1                 ; 2 uses
  %exitcond190.not = icmp eq i64 %i.kg, %0
  br i1 %exitcond190.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.p, !llvm.loop !650

bb.q:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.lt, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91 ] ; 2 uses
  %i.kh = add i64 %i.bu, %.0164                   ; 5 uses
  %i.ki = mul i64 %i.bw, %i.kh                    ; 3 uses
  %i.kj = add i64 %i.kh, 1
  %i.kk = mul i64 %i.kj, %i.bw
  %i.kl = icmp ult i64 %i.ki, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i86, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

.lr.ph.i.i86:                                     ; preds = %bb.q
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3147.0.copyload = load ptr, ptr %.sroa.3147.0..sroa_idx, align 8, !tbaa !10
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.3147.0.copyload, i64 96
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !226 ; 3 uses
  %i.ko = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 8 ; 2 uses
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.i86.new

.lr.ph.i.i86.new:                                 ; preds = %.lr.ph.i.i86, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1
  %.014.i.i87 = phi i64 [ %i.lj, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ] ; 3 uses
  %.01213.i.i88 = phi i64 [ %i.li, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1 ], [ %i.ki, %.lr.ph.i.i86 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.014.i.i87
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !8
  %i.ks = add i64 %i.kr, %i.kh                    ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.ko
  br i1 %i.kt, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89, label %.loopexit, !prof !140

.loopexit:                                        ; preds = %.epil.preheader, %.lr.ph.i.i86.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89: ; preds = %.lr.ph.i.i86.new
  %i.ku = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %.01213.i.i88
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !373
  %i.kx = load ptr, ptr %i.kp, align 8, !tbaa !562 ; 2 uses
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.ks
  store i16 %i.kw, ptr %i.ky, align 2, !tbaa !373
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.014.i.i87
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !8
  %i.lc = add i64 %i.lb, %i.kh                    ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.ko
  br i1 %i.ld, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ku, i64 %.01213.i.i88
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 2
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !373
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.kx, i64 %i.lc
  store i16 %i.lg, ptr %i.lh, align 2, !tbaa !373
  %i.li = add nuw i64 %.01213.i.i88, 2            ; 2 uses
  %i.lj = add i64 %.014.i.i87, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, label %.lr.ph.i.i86.new, !llvm.loop !641

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i86
  %.014.i.i87.epil.init = phi i64 [ 0, %.lr.ph.i.i86 ], [ %i.lj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01213.i.i88.epil.init = phi i64 [ %i.ki, %.lr.ph.i.i86 ], [ %i.li, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.014.i.i87.epil.init
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !8
  %i.lm = add i64 %i.ll, %i.kh                    ; 2 uses
  %i.ln = icmp ult i64 %i.lm, %i.ko
  br i1 %i.ln, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.epil, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.epil: ; preds = %.epil.preheader
  %i.lo = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !281
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %.01213.i.i88.epil.init
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !373
  %i.lr = load ptr, ptr %i.kp, align 8, !tbaa !562
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %i.lm
  store i16 %i.lq, ptr %i.ls, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %bb.q
  %i.lt = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.lt, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.q, !llvm.loop !651

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader162, %.preheader160, %.preheader158, %.preheader156, %.preheader154, %.preheader152, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.f
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS4_E_clIjEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not183 = icmp eq i64 %0, 0
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !652, !nonnull !33, !align !479
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !653, !nonnull !33, !align !479
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = freeze i64 %i.h                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !33, !align !479 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %xtraiter288 = and i64 %i.i, 1
  %i.q = icmp eq i64 %i.i, 1
  %unroll_iter291 = and i64 %i.i, -2
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  %lcmp.mod290 = trunc i64 %i.i to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph176, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.048175 = phi i64 [ 0, %.lr.ph176 ], [ %i.bf, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.r = add i64 %i.e, %.048175                   ; 5 uses
  %i.s = mul i64 %i.i, %i.r                       ; 3 uses
  %i.t = add i64 %i.r, 1
  %i.u = mul i64 %i.t, %i.i
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !226  ; 3 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !567  ; 3 uses
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !33, !align !479 ; 2 uses
  br i1 %i.q, label %.epil.preheader287, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1
  %.014.i = phi i64 [ %i.au, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i64 [ %i.at, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %niter292 = phi i64 [ %niter292.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = add i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i, label %.loopexit293, !prof !140

.loopexit293:                                     ; preds = %.epil.preheader287, %.lr.ph.i.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.i.new
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !281 ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.01213.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !373
  %i.ag = zext i16 %i.af to i32
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !569 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ab
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !137
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8
  %i.am = add i64 %i.al, %i.r                     ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.x
  br i1 %i.an, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.01213.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !373
  %i.ar = zext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.am
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !137
  %i.at = add nuw i64 %.01213.i, 2                ; 2 uses
  %i.au = add i64 %.014.i, 2                      ; 2 uses
  %niter292.next.1 = add i64 %niter292, 2         ; 2 uses
  %niter292.ncmp.1 = icmp eq i64 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !654

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1
  br i1 %lcmp.mod289.not, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %.epil.preheader287

.epil.preheader287:                               ; preds = %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.au, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ %i.s, %.lr.ph.i ], [ %i.at, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod290)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i.epil.init
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ax = add i64 %i.aw, %i.r                     ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.x
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil: ; preds = %.epil.preheader287
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !281
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %.01213.i.epil.init
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !373
  %i.bc = zext i16 %i.bb to i32
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !569
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !137
  br label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %bb.b
  %i.bf = add nuw i64 %.048175, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.bf, %0
  br i1 %exitcond195.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !655

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !656
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !656
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bg, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !77
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.e ], [ %i.br, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr150 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr150, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %.pr150, align 8, !tbaa !74 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr150, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !78
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr150, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader152
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %.preheader162
  ]

.preheader162:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not177 = icmp eq i64 %0, 0
  br i1 %.not177, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader162
  %.sroa.0145.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2146.0.copyload = load ptr, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5149.0.copyload = load ptr, ptr %.sroa.5149.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.bx = load i64, ptr %.sroa.0145.0.copyload, align 8, !tbaa !8
  %i.by = load i64, ptr %.sroa.2146.0.copyload, align 8, !tbaa !8
  %i.bz = freeze i64 %i.by                        ; 6 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i64 %i.bz, 1
  %unroll_iter = and i64 %i.bz, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod245 = trunc i64 %i.bz to i1
  br label %bb.q

.preheader152:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not182 = icmp eq i64 %0, 0
  br i1 %.not182, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader152
  %.sroa.097.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.cb = load i64, ptr %.sroa.097.0.copyload, align 8, !tbaa !8
  %i.cc = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.cd = freeze i64 %i.cc                        ; 6 uses
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter280 = and i64 %i.cd, 1
  %i.ce = icmp eq i64 %i.cd, 1
  %unroll_iter283 = and i64 %i.cd, -2
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod282 = trunc i64 %i.cd to i1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044173 = phi i64 [ 0, %.lr.ph174 ], [ %i.du, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %i.cf = add i64 %i.cb, %.044173                 ; 5 uses
  %i.cg = mul i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = add i64 %i.cf, 1
  %i.ci = mul i64 %i.ch, %i.cd
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.j
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !226 ; 3 uses
  %i.cm = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.498.0.copyload, i64 8 ; 2 uses
  br i1 %i.ce, label %.epil.preheader279, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1
  %.014.i.i = phi i64 [ %i.dj, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.di, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ %i.cg, %.lr.ph.i.i ] ; 3 uses
  %niter284 = phi i64 [ %niter284.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8
  %i.cq = add i64 %i.cp, %i.cf                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cm
  br i1 %i.cr, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i, label %.loopexit285, !prof !140

.loopexit285:                                     ; preds = %.epil.preheader279, %.lr.ph.i.i.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i: ; preds = %.lr.ph.i.i.new
  %i.cs = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.01213.i.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !373
  %i.cv = zext i16 %i.cu to i32
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !569 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cq
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !137
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !8
  %i.db = add i64 %i.da, %i.cf                    ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.cm
  br i1 %i.dc, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %.01213.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.df = load i16, ptr %i.de, align 2, !tbaa !373
  %i.dg = zext i16 %i.df to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.db
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !137
  %i.di = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.dj = add i64 %.014.i.i, 2                    ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !654

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1
  br i1 %lcmp.mod281.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %i.di, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i.epil.init
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !8
  %i.dm = add i64 %i.dl, %i.cf                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.cm
  br i1 %i.dn, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader279
  %i.do = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !281
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %.01213.i.i.epil.init
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !373
  %i.dr = zext i16 %i.dq to i32
  %i.ds = load ptr, ptr %i.cn, align 8, !tbaa !569
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dm
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.j
  %i.du = add nuw i64 %.044173, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.du, %0
  br i1 %exitcond194.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.j, !llvm.loop !659

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.dv = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.dv, label %.preheader154, label %.preheader156

.preheader156:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader156
  %.sroa.0115.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2116.0.copyload = load ptr, ptr %.sroa.2116.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0115.0.copyload, align 8, !tbaa !8
  %i.dx = load i64, ptr %.sroa.2116.0.copyload, align 8, !tbaa !8
  %i.dy = freeze i64 %i.dx                        ; 6 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter264 = and i64 %i.dy, 1
  %i.dz = icmp eq i64 %i.dy, 1
  %unroll_iter267 = and i64 %i.dy, -2
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod266 = trunc i64 %i.dy to i1
  br label %bb.m

.preheader154:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader154
  %.sroa.0105.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5109.0.copyload = load ptr, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.ea = load i64, ptr %.sroa.0105.0.copyload, align 8, !tbaa !8
  %i.eb = load i64, ptr %.sroa.2106.0.copyload, align 8, !tbaa !8
  %i.ec = freeze i64 %i.eb                        ; 6 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter272 = and i64 %i.ec, 1
  %i.ed = icmp eq i64 %i.ec, 1
  %unroll_iter275 = and i64 %i.ec, -2
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  %lcmp.mod274 = trunc i64 %i.ec to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67
  %.043171 = phi i64 [ 0, %.lr.ph172 ], [ %i.ft, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67 ] ; 2 uses
  %i.ee = add i64 %i.ea, %.043171                 ; 5 uses
  %i.ef = mul i64 %i.ec, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ee, 1
  %i.eh = mul i64 %i.eg, %i.ec
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

.lr.ph.i.i62:                                     ; preds = %bb.l
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3107.0.copyload = load ptr, ptr %.sroa.3107.0..sroa_idx, align 8, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.3107.0.copyload, i64 96
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !226 ; 3 uses
  %i.el = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload, i64 8 ; 2 uses
  br i1 %i.ed, label %.epil.preheader271, label %.lr.ph.i.i62.new

.lr.ph.i.i62.new:                                 ; preds = %.lr.ph.i.i62, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1
  %.014.i.i63 = phi i64 [ %i.fi, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ] ; 3 uses
  %.01213.i.i64 = phi i64 [ %i.fh, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1 ], [ %i.ef, %.lr.ph.i.i62 ] ; 3 uses
  %niter276 = phi i64 [ %niter276.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i63
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !8
  %i.ep = add i64 %i.eo, %i.ee                    ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.el
  br i1 %i.eq, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65, label %.loopexit277, !prof !140

.loopexit277:                                     ; preds = %.epil.preheader271, %.lr.ph.i.i62.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65: ; preds = %.lr.ph.i.i62.new
  %i.er = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %.01213.i.i64
  %i.et = load i16, ptr %i.es, align 2, !tbaa !373
  %i.eu = zext i16 %i.et to i32
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !569 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ep
  store i32 %i.eu, ptr %i.ew, align 4, !tbaa !137
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i63
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !8
  %i.fa = add i64 %i.ez, %i.ee                    ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.el
  br i1 %i.fb, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %.01213.i.i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !373
  %i.ff = zext i16 %i.fe to i32
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fa
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !137
  %i.fh = add nuw i64 %.01213.i.i64, 2            ; 2 uses
  %i.fi = add i64 %.014.i.i63, 2                  ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, label %.lr.ph.i.i62.new, !llvm.loop !654

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1
  br i1 %lcmp.mod273.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, label %.epil.preheader271

.epil.preheader271:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %.lr.ph.i.i62
  %.014.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.i62 ], [ %i.fi, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %.01213.i.i64.epil.init = phi i64 [ %i.ef, %.lr.ph.i.i62 ], [ %i.fh, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i63.epil.init
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !8
  %i.fl = add i64 %i.fk, %i.ee                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.el
  br i1 %i.fm, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.epil, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.epil: ; preds = %.epil.preheader271
  %i.fn = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !281
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fn, i64 %.01213.i.i64.epil.init
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !373
  %i.fq = zext i16 %i.fp to i32
  %i.fr = load ptr, ptr %i.em, align 8, !tbaa !569
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fl
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %bb.l
  %i.ft = add nuw i64 %.043171, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.ft, %0
  br i1 %exitcond193.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.l, !llvm.loop !660

bb.m:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73
  %.042169 = phi i64 [ 0, %.lr.ph170 ], [ %i.hj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73 ] ; 2 uses
  %i.fu = add i64 %i.dw, %.042169                 ; 5 uses
  %i.fv = mul i64 %i.dy, %i.fu                    ; 3 uses
  %i.fw = add i64 %i.fu, 1
  %i.fx = mul i64 %i.fw, %i.dy
  %i.fy = icmp ult i64 %i.fv, %i.fx
  br i1 %i.fy, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

.lr.ph.i.i68:                                     ; preds = %bb.m
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3117.0.copyload = load ptr, ptr %.sroa.3117.0..sroa_idx, align 8, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.3117.0.copyload, i64 96
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !226 ; 3 uses
  %i.gb = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4118.0.copyload, i64 8 ; 2 uses
  br i1 %i.dz, label %.epil.preheader263, label %.lr.ph.i.i68.new

.lr.ph.i.i68.new:                                 ; preds = %.lr.ph.i.i68, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1
  %.014.i.i69 = phi i64 [ %i.gy, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ] ; 3 uses
  %.01213.i.i70 = phi i64 [ %i.gx, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1 ], [ %i.fv, %.lr.ph.i.i68 ] ; 3 uses
  %niter268 = phi i64 [ %niter268.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i69
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !8
  %i.gf = add i64 %i.ge, %i.fu                    ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.gb
  br i1 %i.gg, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71, label %.loopexit269, !prof !140

.loopexit269:                                     ; preds = %.epil.preheader263, %.lr.ph.i.i68.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71: ; preds = %.lr.ph.i.i68.new
  %i.gh = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %.01213.i.i70
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !373
  %i.gk = zext i16 %i.gj to i32
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !569 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gf
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !137
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i69
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8
  %i.gq = add i64 %i.gp, %i.fu                    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gb
  br i1 %i.gr, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %.01213.i.i70
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !373
  %i.gv = zext i16 %i.gu to i32
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gq
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !137
  %i.gx = add nuw i64 %.01213.i.i70, 2            ; 2 uses
  %i.gy = add i64 %.014.i.i69, 2                  ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, label %.lr.ph.i.i68.new, !llvm.loop !654

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1
  br i1 %lcmp.mod265.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, label %.epil.preheader263

.epil.preheader263:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.014.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.gy, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %.01213.i.i70.epil.init = phi i64 [ %i.fv, %.lr.ph.i.i68 ], [ %i.gx, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i69.epil.init
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !8
  %i.hb = add i64 %i.ha, %i.fu                    ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gb
  br i1 %i.hc, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.epil, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.epil: ; preds = %.epil.preheader263
  %i.hd = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !281
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %.01213.i.i70.epil.init
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !373
  %i.hg = zext i16 %i.hf to i32
  %i.hh = load ptr, ptr %i.gc, align 8, !tbaa !569
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.hb
  store i32 %i.hg, ptr %i.hi, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %bb.m
  %i.hj = add nuw i64 %.042169, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.hj, %0
  br i1 %exitcond192.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !661

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.hk = icmp eq i64 %3, 0
  %.not179 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.hk, label %.preheader158, label %.preheader160

.preheader160:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader160
  %.sroa.0135.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2136.0.copyload = load ptr, ptr %.sroa.2136.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5139.0.copyload = load ptr, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.hl = load i64, ptr %.sroa.0135.0.copyload, align 8, !tbaa !8
  %i.hm = load i64, ptr %.sroa.2136.0.copyload, align 8, !tbaa !8
  %i.hn = freeze i64 %i.hm                        ; 6 uses
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter248 = and i64 %i.hn, 1
  %i.ho = icmp eq i64 %i.hn, 1
  %unroll_iter251 = and i64 %i.hn, -2
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = trunc i64 %i.hn to i1
  br label %bb.p

.preheader158:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader158
  %.sroa.0125.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2126.0.copyload = load ptr, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5129.0.copyload = load ptr, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !529 ; 2 uses
  %i.hp = load i64, ptr %.sroa.0125.0.copyload, align 8, !tbaa !8
  %i.hq = load i64, ptr %.sroa.2126.0.copyload, align 8, !tbaa !8
  %i.hr = freeze i64 %i.hq                        ; 6 uses
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter256 = and i64 %i.hr, 1
  %i.hs = icmp eq i64 %i.hr, 1
  %unroll_iter259 = and i64 %i.hr, -2
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  %lcmp.mod258 = trunc i64 %i.hr to i1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79
  %.041167 = phi i64 [ 0, %.lr.ph168 ], [ %i.ji, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79 ] ; 2 uses
  %i.ht = add i64 %i.hp, %.041167                 ; 5 uses
  %i.hu = mul i64 %i.hr, %i.ht                    ; 3 uses
  %i.hv = add i64 %i.ht, 1
  %i.hw = mul i64 %i.hv, %i.hr
  %i.hx = icmp ult i64 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

.lr.ph.i.i74:                                     ; preds = %bb.o
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3127.0.copyload = load ptr, ptr %.sroa.3127.0..sroa_idx, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.3127.0.copyload, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !226 ; 3 uses
  %i.ia = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.4128.0.copyload, i64 8 ; 2 uses
  br i1 %i.hs, label %.epil.preheader255, label %.lr.ph.i.i74.new

.lr.ph.i.i74.new:                                 ; preds = %.lr.ph.i.i74, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1
  %.014.i.i75 = phi i64 [ %i.ix, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ] ; 3 uses
  %.01213.i.i76 = phi i64 [ %i.iw, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1 ], [ %i.hu, %.lr.ph.i.i74 ] ; 3 uses
  %niter260 = phi i64 [ %niter260.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i75
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8
  %i.ie = add i64 %i.id, %i.ht                    ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.ia
  br i1 %i.if, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77, label %.loopexit261, !prof !140

.loopexit261:                                     ; preds = %.epil.preheader255, %.lr.ph.i.i74.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77: ; preds = %.lr.ph.i.i74.new
  %i.ig = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %.01213.i.i76
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !373
  %i.ij = zext i16 %i.ii to i32
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !569 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ie
  store i32 %i.ij, ptr %i.il, align 4, !tbaa !137
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i75
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !8
  %i.ip = add i64 %i.io, %i.ht                    ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.ia
  br i1 %i.iq, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ig, i64 %.01213.i.i76
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  %i.it = load i16, ptr %i.is, align 2, !tbaa !373
  %i.iu = zext i16 %i.it to i32
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ip
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !137
  %i.iw = add nuw i64 %.01213.i.i76, 2            ; 2 uses
  %i.ix = add i64 %.014.i.i75, 2                  ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, label %.lr.ph.i.i74.new, !llvm.loop !654

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1
  br i1 %lcmp.mod257.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, label %.epil.preheader255

.epil.preheader255:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %.lr.ph.i.i74
  %.014.i.i75.epil.init = phi i64 [ 0, %.lr.ph.i.i74 ], [ %i.ix, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %.01213.i.i76.epil.init = phi i64 [ %i.hu, %.lr.ph.i.i74 ], [ %i.iw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i75.epil.init
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !8
  %i.ja = add i64 %i.iz, %i.ht                    ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.ia
  br i1 %i.jb, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.epil, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.epil: ; preds = %.epil.preheader255
  %i.jc = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !281
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.jc, i64 %.01213.i.i76.epil.init
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !373
  %i.jf = zext i16 %i.je to i32
  %i.jg = load ptr, ptr %i.ib, align 8, !tbaa !569
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.ja
  store i32 %i.jf, ptr %i.jh, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %bb.o
  %i.ji = add nuw i64 %.041167, 1                 ; 2 uses
  %exitcond191.not = icmp eq i64 %i.ji, %0
  br i1 %exitcond191.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.o, !llvm.loop !662

bb.p:                                             ; preds = %.lr.ph166, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85
  %.040165 = phi i64 [ 0, %.lr.ph166 ], [ %i.ky, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85 ] ; 2 uses
  %i.jj = add i64 %i.hl, %.040165                 ; 5 uses
  %i.jk = mul i64 %i.hn, %i.jj                    ; 3 uses
  %i.jl = add i64 %i.jj, 1
  %i.jm = mul i64 %i.jl, %i.hn
  %i.jn = icmp ult i64 %i.jk, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i80, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

.lr.ph.i.i80:                                     ; preds = %bb.p
  %.sroa.4138.0.copyload = load ptr, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3137.0.copyload = load ptr, ptr %.sroa.3137.0..sroa_idx, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.3137.0.copyload, i64 96
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !226 ; 3 uses
  %i.jq = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.4138.0.copyload, i64 8 ; 2 uses
  br i1 %i.ho, label %.epil.preheader247, label %.lr.ph.i.i80.new

.lr.ph.i.i80.new:                                 ; preds = %.lr.ph.i.i80, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1
  %.014.i.i81 = phi i64 [ %i.kn, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ] ; 3 uses
  %.01213.i.i82 = phi i64 [ %i.km, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1 ], [ %i.jk, %.lr.ph.i.i80 ] ; 3 uses
  %niter252 = phi i64 [ %niter252.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i81
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !8
  %i.ju = add i64 %i.jt, %i.jj                    ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jq
  br i1 %i.jv, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83, label %.loopexit253, !prof !140

.loopexit253:                                     ; preds = %.epil.preheader247, %.lr.ph.i.i80.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83: ; preds = %.lr.ph.i.i80.new
  %i.jw = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %.01213.i.i82
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !373
  %i.jz = zext i16 %i.jy to i32
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !569 ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.ju
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !137
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i81
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !8
  %i.kf = add i64 %i.ke, %i.jj                    ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.jq
  br i1 %i.kg, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.jw, i64 %.01213.i.i82
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !373
  %i.kk = zext i16 %i.kj to i32
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kf
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !137
  %i.km = add nuw i64 %.01213.i.i82, 2            ; 2 uses
  %i.kn = add i64 %.014.i.i81, 2                  ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, label %.lr.ph.i.i80.new, !llvm.loop !654

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %.lr.ph.i.i80
  %.014.i.i81.epil.init = phi i64 [ 0, %.lr.ph.i.i80 ], [ %i.kn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %.01213.i.i82.epil.init = phi i64 [ %i.jk, %.lr.ph.i.i80 ], [ %i.km, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i81.epil.init
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !8
  %i.kq = add i64 %i.kp, %i.jj                    ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.jq
  br i1 %i.kr, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.epil, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.epil: ; preds = %.epil.preheader247
  %i.ks = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !281
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %.01213.i.i82.epil.init
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !373
  %i.kv = zext i16 %i.ku to i32
  %i.kw = load ptr, ptr %i.jr, align 8, !tbaa !569
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.kq
  store i32 %i.kv, ptr %i.kx, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %bb.p
  %i.ky = add nuw i64 %.040165, 1                 ; 2 uses
  %exitcond190.not = icmp eq i64 %i.ky, %0
  br i1 %exitcond190.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.p, !llvm.loop !663

bb.q:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.mo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91 ] ; 2 uses
  %i.kz = add i64 %i.bx, %.0164                   ; 5 uses
  %i.la = mul i64 %i.bz, %i.kz                    ; 3 uses
  %i.lb = add i64 %i.kz, 1
  %i.lc = mul i64 %i.lb, %i.bz
  %i.ld = icmp ult i64 %i.la, %i.lc
  br i1 %i.ld, label %.lr.ph.i.i86, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

.lr.ph.i.i86:                                     ; preds = %bb.q
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3147.0.copyload = load ptr, ptr %.sroa.3147.0..sroa_idx, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.3147.0.copyload, i64 96
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !226 ; 3 uses
  %i.lg = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 8 ; 2 uses
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.i.i86.new

.lr.ph.i.i86.new:                                 ; preds = %.lr.ph.i.i86, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1
  %.014.i.i87 = phi i64 [ %i.md, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ] ; 3 uses
  %.01213.i.i88 = phi i64 [ %i.mc, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1 ], [ %i.la, %.lr.ph.i.i86 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i87
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !8
  %i.lk = add i64 %i.lj, %i.kz                    ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lg
  br i1 %i.ll, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89, label %.loopexit, !prof !140

.loopexit:                                        ; preds = %.epil.preheader, %.lr.ph.i.i86.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89: ; preds = %.lr.ph.i.i86.new
  %i.lm = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !281 ; 2 uses
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %.01213.i.i88
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !373
  %i.lp = zext i16 %i.lo to i32
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !569 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lk
  store i32 %i.lp, ptr %i.lr, align 4, !tbaa !137
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i87
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !8
  %i.lv = add i64 %i.lu, %i.kz                    ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %i.lg
  br i1 %i.lw, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lm, i64 %.01213.i.i88
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 2
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !373
  %i.ma = zext i16 %i.lz to i32
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.lv
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !137
  %i.mc = add nuw i64 %.01213.i.i88, 2            ; 2 uses
  %i.md = add i64 %.014.i.i87, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, label %.lr.ph.i.i86.new, !llvm.loop !654

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i86
  %.014.i.i87.epil.init = phi i64 [ 0, %.lr.ph.i.i86 ], [ %i.md, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01213.i.i88.epil.init = phi i64 [ %i.la, %.lr.ph.i.i86 ], [ %i.mc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i87.epil.init
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !8
  %i.mg = add i64 %i.mf, %i.kz                    ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.lg
  br i1 %i.mh, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.epil, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.epil: ; preds = %.epil.preheader
  %i.mi = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !281
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %.01213.i.i88.epil.init
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !373
  %i.ml = zext i16 %i.mk to i32
  %i.mm = load ptr, ptr %i.lh, align 8, !tbaa !569
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mg
  store i32 %i.ml, ptr %i.mn, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %bb.q
  %i.mo = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mo, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.q, !llvm.loop !664

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingItEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader162, %.preheader160, %.preheader158, %.preheader156, %.preheader154, %.preheader152, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.f
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiEUlS4_E_EEDaNS0_11BinTypeSizeEOS4_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.xgboost::common::Span.121", align 8 ; 5 uses
  %3 = alloca %class.anon.133, align 16           ; 7 uses
  %4 = alloca %"class.xgboost::common::Span.121", align 8 ; 5 uses
  %5 = alloca %class.anon.133, align 16           ; 7 uses
  %6 = alloca %"class.xgboost::common::Span.123", align 8 ; 5 uses
  %7 = alloca %class.anon.132, align 16           ; 7 uses
  %8 = alloca %"class.xgboost::common::Span", align 8 ; 5 uses
  %9 = alloca %class.anon.131, align 16           ; 7 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !530    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !322  ; 2 uses
  store i64 %i.d, ptr %8, align 8, !tbaa !272
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !67
  %i.f = icmp ne ptr %i.b, null
  %i.g = icmp eq i64 %i.d, 0
  %i.h = or i1 %i.f, %i.g
  br i1 %i.h, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_.exit, label %bb.c, !prof !140

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !665, !nonnull !33, !align !479
  %i.k = load i64, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !666, !nonnull !33, !align !554
  %i.n = load i32, ptr %i.m, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !47
  store <2 x ptr> %i.p, ptr %9, align 16, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.a, ptr %i.q, align 16, !tbaa !667
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %8, ptr %i.r, align 8, !tbaa !558
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !669, !nonnull !33, !align !479
  store ptr %i.u, ptr %i.s, align 16, !tbaa !69
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS4_E_clIhEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.k, i32 noundef %i.n, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %1, align 8, !tbaa !530    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !336  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !322
  %i.z = lshr i64 %i.y, 1                         ; 2 uses
  store i64 %i.z, ptr %6, align 8, !tbaa !560
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !562
  %i.ab = icmp ne ptr %i.w, null
  %i.ac = icmp eq i64 %i.z, 0
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_.exit, label %bb.e, !prof !140

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !665, !nonnull !33, !align !479
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !666, !nonnull !33, !align !554
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !47
  store <2 x ptr> %i.al, ptr %7, align 16, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.v, ptr %i.am, align 16, !tbaa !670
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.an, align 8, !tbaa !566
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !669, !nonnull !33, !align !479
  store ptr %i.aq, ptr %i.ao, align 16, !tbaa !69
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS4_E_clItEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.ag, i32 noundef %i.aj, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.ar = load ptr, ptr %1, align 8, !tbaa !530   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !336 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !322
  %i.av = lshr i64 %i.au, 2                       ; 2 uses
  store i64 %i.av, ptr %4, align 8, !tbaa !567
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !569
  %i.ax = icmp ne ptr %i.as, null
  %i.ay = icmp eq i64 %i.av, 0
  %i.az = or i1 %i.ax, %i.ay
  br i1 %i.az, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit, label %bb.g, !prof !140

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !665, !nonnull !33, !align !479
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !666, !nonnull !33, !align !554
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !47
  store <2 x ptr> %i.bh, ptr %5, align 16, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ar, ptr %i.bi, align 16, !tbaa !672
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.bj, align 8, !tbaa !573
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !669, !nonnull !33, !align !479
  store ptr %i.bm, ptr %i.bk, align 16, !tbaa !69
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS4_E_clIjEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.bc, i32 noundef %i.bf, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.bn = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bn, ptr noundef nonnull @.str.26, i32 noundef 223)
  %i.bo = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.h
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.44, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.bq = load ptr, ptr %1, align 8, !tbaa !530   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !336 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !322
  %i.bu = lshr i64 %i.bt, 2                       ; 2 uses
  store i64 %i.bu, ptr %2, align 8, !tbaa !567
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !569
  %i.bw = icmp ne ptr %i.br, null
  %i.bx = icmp eq i64 %i.bu, 0
  %i.by = or i1 %i.bw, %i.bx
  br i1 %i.by, label %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit6, label %bb.i, !prof !140

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZSt9terminatev() #30
  unreachable

_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit6: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !665, !nonnull !33, !align !479
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !666, !nonnull !33, !align !554
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !47
  store <2 x ptr> %i.cg, ptr %3, align 16, !tbaa !47
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bq, ptr %i.ch, align 16, !tbaa !672
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ci, align 8, !tbaa !573
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !669, !nonnull !33, !align !479
  store ptr %i.cl, ptr %i.cj, align 16, !tbaa !69
  call void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS4_E_clIjEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %i.cb, i32 noundef %i.ce, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.l

bb.j:                                             ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.h
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  resume { ptr, i32 } %i.cm

bb.l:                                             ; preds = %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit6, %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_.exit, %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_.exit, %_ZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_.exit
  ret void

bb.m:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS4_E_clIhEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %.not183 = icmp eq i64 %0, 0
  br i1 %.not183, label %.loopexit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph176, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.048175 = phi i64 [ 0, %.lr.ph176 ], [ %i.aj, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !674, !nonnull !33, !align !479
  %i.i = load i64, ptr %i.h, align 8, !tbaa !8
  %i.j = add i64 %i.i, %.048175                   ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !675, !nonnull !33, !align !479
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8    ; 3 uses
  %i.m = mul i64 %i.l, %i.j                       ; 2 uses
  %i.n = add i64 %i.j, 1
  %i.o = mul i64 %i.n, %i.l
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !667
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  br label %bb.c

bb.c:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, %.lr.ph.i
  %.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ai, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i ] ; 2 uses
  %.01213.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.ah, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !226
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.014.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !676, !nonnull !33, !align !479 ; 2 uses
  %i.w = add i64 %i.u, %i.j                       ; 2 uses
  %i.x = load i64, ptr %i.v, align 8, !tbaa !272
  %i.y = icmp ult i64 %i.w, %i.x
  br i1 %i.y, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, label %bb.d, !prof !140

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i: ; preds = %bb.c
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !677, !nonnull !33, !align !479
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.01213.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !137
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 %i.ad, ptr %i.ag, align 1, !tbaa !78
  %i.ah = add nuw i64 %.01213.i, 1
  %i.ai = add i64 %.014.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.l
  br i1 %exitcond.not.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %bb.c, !llvm.loop !678

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i, %bb.b
  %i.aj = add nuw i64 %.048175, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.aj, %0
  br i1 %exitcond194.not, label %.loopexit, label %bb.b, !llvm.loop !679

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !680
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !680
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.e
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ak = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ak, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.g

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.al = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.h ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.y unwind label %bb.z

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr150 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr150, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %.pr150, align 8, !tbaa !74 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr150, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !78
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr150, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %.loopexit [
    i32 0, label %.preheader153
    i32 1, label %bb.m
    i32 2, label %bb.r
    i32 3, label %.preheader162
  ]

.preheader162:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not177 = icmp eq i64 %0, 0
  br i1 %.not177, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader162
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.w

.preheader153:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not182 = icmp eq i64 %0, 0
  br i1 %.not182, label %.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader153
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044173 = phi i64 [ 0, %.lr.ph174 ], [ %i.da, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %.sroa.097.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8, !tbaa !69 ; 3 uses
  %i.bb = load i64, ptr %.sroa.097.0.copyload, align 8, !tbaa !8
  %i.bc = add i64 %i.bb, %.044173                 ; 5 uses
  %i.bd = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.be = freeze i64 %i.bd                        ; 6 uses
  %i.bf = mul i64 %i.be, %i.bc                    ; 3 uses
  %i.bg = add i64 %i.bc, 1
  %i.bh = mul i64 %i.bg, %i.be
  %i.bi = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.k
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.498.0.copyload, i64 8 ; 3 uses
  %xtraiter280 = and i64 %i.be, 1
  %i.bl = icmp eq i64 %i.be, 1
  br i1 %i.bl, label %.epil.preheader279, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter283 = and i64 %i.be, -2
  br label %bb.l

bb.l:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1, %.lr.ph.i.i.new
  %.014.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cn, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.new ], [ %i.cm, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ] ; 3 uses
  %niter284 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter284.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1 ]
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.014.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8
  %i.bp = add i64 %i.bo, %i.bc                    ; 2 uses
  %i.bq = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !272
  %i.br = icmp ult i64 %i.bp, %i.bq
  br i1 %i.br, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i, label %.loopexit285, !prof !140

.loopexit285:                                     ; preds = %.epil.preheader279, %bb.l, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i: ; preds = %bb.l
  %i.bs = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !68
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.01213.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !137
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bp
  store i8 %i.bv, ptr %i.bx, align 1, !tbaa !78
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.014.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8
  %i.cc = add i64 %i.cb, %i.bc                    ; 2 uses
  %i.cd = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !272
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i
  %i.cf = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !68
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.01213.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !137
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cc
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !78
  %i.cm = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.cn = add i64 %.014.i.i, 2                    ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !678

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.1
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %i.cm, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %lcmp.mod282 = trunc i64 %i.be to i1
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.co = load ptr, ptr %i.bj, align 8, !tbaa !226
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.014.i.i.epil.init
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !8
  %i.cr = add i64 %i.cq, %i.bc                    ; 2 uses
  %i.cs = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !272
  %i.ct = icmp ult i64 %i.cr, %i.cs
  br i1 %i.ct, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader279
  %i.cu = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !68
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.01213.i.i.epil.init
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !137
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = load ptr, ptr %i.bk, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cr
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.k
  %i.da = add nuw i64 %.044173, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.da, %0
  br i1 %exitcond193.not, label %.loopexit, label %bb.k, !llvm.loop !683

bb.m:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.db = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.db, label %.preheader154, label %.preheader156

.preheader156:                                    ; preds = %bb.m
  br i1 %.not181, label %.loopexit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader156
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.p

.preheader154:                                    ; preds = %bb.m
  br i1 %.not181, label %.loopexit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader154
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67
  %.043171 = phi i64 [ 0, %.lr.ph172 ], [ %i.fb, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67 ] ; 2 uses
  %.sroa.0105.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5109.0.copyload = load ptr, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !69 ; 3 uses
  %i.dc = load i64, ptr %.sroa.0105.0.copyload, align 8, !tbaa !8
  %i.dd = add i64 %i.dc, %.043171                 ; 5 uses
  %i.de = load i64, ptr %.sroa.2106.0.copyload, align 8, !tbaa !8
  %i.df = freeze i64 %i.de                        ; 6 uses
  %i.dg = mul i64 %i.df, %i.dd                    ; 3 uses
  %i.dh = add i64 %i.dd, 1
  %i.di = mul i64 %i.dh, %i.df
  %i.dj = icmp ult i64 %i.dg, %i.di
  br i1 %i.dj, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

.lr.ph.i.i62:                                     ; preds = %bb.n
  %.sroa.3107.0.copyload = load ptr, ptr %.sroa.3107.0..sroa_idx, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.3107.0.copyload, i64 96 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload, i64 8 ; 3 uses
  %xtraiter272 = and i64 %i.df, 1
  %i.dm = icmp eq i64 %i.df, 1
  br i1 %i.dm, label %.epil.preheader271, label %.lr.ph.i.i62.new

.lr.ph.i.i62.new:                                 ; preds = %.lr.ph.i.i62
  %unroll_iter275 = and i64 %i.df, -2
  br label %bb.o

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1, %.lr.ph.i.i62.new
  %.014.i.i63 = phi i64 [ 0, %.lr.ph.i.i62.new ], [ %i.eo, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1 ] ; 3 uses
  %.01213.i.i64 = phi i64 [ %i.dg, %.lr.ph.i.i62.new ], [ %i.en, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1 ] ; 3 uses
  %niter276 = phi i64 [ 0, %.lr.ph.i.i62.new ], [ %niter276.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1 ]
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !226
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.014.i.i63
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !8
  %i.dq = add i64 %i.dp, %i.dd                    ; 2 uses
  %i.dr = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !272
  %i.ds = icmp ult i64 %i.dq, %i.dr
  br i1 %i.ds, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65, label %.loopexit277, !prof !140

.loopexit277:                                     ; preds = %.epil.preheader271, %bb.o, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65: ; preds = %bb.o
  %i.dt = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !68
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.01213.i.i64
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !137
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = load ptr, ptr %i.dl, align 8, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dq
  store i8 %i.dw, ptr %i.dy, align 1, !tbaa !78
  %i.dz = load ptr, ptr %i.dk, align 8, !tbaa !226
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.014.i.i63
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !8
  %i.ed = add i64 %i.ec, %i.dd                    ; 2 uses
  %i.ee = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !272
  %i.ef = icmp ult i64 %i.ed, %i.ee
  br i1 %i.ef, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65
  %i.eg = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !68
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.01213.i.i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !137
  %i.ek = trunc i32 %i.ej to i8
  %i.el = load ptr, ptr %i.dl, align 8, !tbaa !67
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !78
  %i.en = add nuw i64 %.01213.i.i64, 2            ; 2 uses
  %i.eo = add i64 %.014.i.i63, 2                  ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, label %bb.o, !llvm.loop !678

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, label %.epil.preheader271

.epil.preheader271:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %.lr.ph.i.i62
  %.014.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.i62 ], [ %i.eo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %.01213.i.i64.epil.init = phi i64 [ %i.dg, %.lr.ph.i.i62 ], [ %i.en, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %lcmp.mod274 = trunc i64 %i.df to i1
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.ep = load ptr, ptr %i.dk, align 8, !tbaa !226
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.014.i.i63.epil.init
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !8
  %i.es = add i64 %i.er, %i.dd                    ; 2 uses
  %i.et = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !272
  %i.eu = icmp ult i64 %i.es, %i.et
  br i1 %i.eu, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.epil, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.epil: ; preds = %.epil.preheader271
  %i.ev = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !68
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.01213.i.i64.epil.init
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !137
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = load ptr, ptr %i.dl, align 8, !tbaa !67
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.es
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i65.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %bb.n
  %i.fb = add nuw i64 %.043171, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.fb, %0
  br i1 %exitcond192.not, label %.loopexit, label %bb.n, !llvm.loop !684

bb.p:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73
  %.042169 = phi i64 [ 0, %.lr.ph170 ], [ %i.hb, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73 ] ; 2 uses
  %.sroa.0115.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2116.0.copyload = load ptr, ptr %.sroa.2116.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !69 ; 3 uses
  %i.fc = load i64, ptr %.sroa.0115.0.copyload, align 8, !tbaa !8
  %i.fd = add i64 %i.fc, %.042169                 ; 5 uses
  %i.fe = load i64, ptr %.sroa.2116.0.copyload, align 8, !tbaa !8
  %i.ff = freeze i64 %i.fe                        ; 6 uses
  %i.fg = mul i64 %i.ff, %i.fd                    ; 3 uses
  %i.fh = add i64 %i.fd, 1
  %i.fi = mul i64 %i.fh, %i.ff
  %i.fj = icmp ult i64 %i.fg, %i.fi
  br i1 %i.fj, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

.lr.ph.i.i68:                                     ; preds = %bb.p
  %.sroa.3117.0.copyload = load ptr, ptr %.sroa.3117.0..sroa_idx, align 8, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.3117.0.copyload, i64 96 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.4118.0.copyload, i64 8 ; 3 uses
  %xtraiter264 = and i64 %i.ff, 1
  %i.fm = icmp eq i64 %i.ff, 1
  br i1 %i.fm, label %.epil.preheader263, label %.lr.ph.i.i68.new

.lr.ph.i.i68.new:                                 ; preds = %.lr.ph.i.i68
  %unroll_iter267 = and i64 %i.ff, -2
  br label %bb.q

bb.q:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1, %.lr.ph.i.i68.new
  %.014.i.i69 = phi i64 [ 0, %.lr.ph.i.i68.new ], [ %i.go, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1 ] ; 3 uses
  %.01213.i.i70 = phi i64 [ %i.fg, %.lr.ph.i.i68.new ], [ %i.gn, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1 ] ; 3 uses
  %niter268 = phi i64 [ 0, %.lr.ph.i.i68.new ], [ %niter268.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1 ]
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !226
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.014.i.i69
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !8
  %i.fq = add i64 %i.fp, %i.fd                    ; 2 uses
  %i.fr = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !272
  %i.fs = icmp ult i64 %i.fq, %i.fr
  br i1 %i.fs, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71, label %.loopexit269, !prof !140

.loopexit269:                                     ; preds = %.epil.preheader263, %bb.q, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71: ; preds = %bb.q
  %i.ft = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !68
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %.01213.i.i70
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !137
  %i.fw = trunc i32 %i.fv to i8
  %i.fx = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fq
  store i8 %i.fw, ptr %i.fy, align 1, !tbaa !78
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !226
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.014.i.i69
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !8
  %i.gd = add i64 %i.gc, %i.fd                    ; 2 uses
  %i.ge = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !272
  %i.gf = icmp ult i64 %i.gd, %i.ge
  br i1 %i.gf, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71
  %i.gg = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !68
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.01213.i.i70
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !137
  %i.gk = trunc i32 %i.gj to i8
  %i.gl = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gd
  store i8 %i.gk, ptr %i.gm, align 1, !tbaa !78
  %i.gn = add nuw i64 %.01213.i.i70, 2            ; 2 uses
  %i.go = add i64 %.014.i.i69, 2                  ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, label %bb.q, !llvm.loop !678

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.1
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, label %.epil.preheader263

.epil.preheader263:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.014.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.go, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %.01213.i.i70.epil.init = phi i64 [ %i.fg, %.lr.ph.i.i68 ], [ %i.gn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %lcmp.mod266 = trunc i64 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.gp = load ptr, ptr %i.fk, align 8, !tbaa !226
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %.014.i.i69.epil.init
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !8
  %i.gs = add i64 %i.gr, %i.fd                    ; 2 uses
  %i.gt = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !272
  %i.gu = icmp ult i64 %i.gs, %i.gt
  br i1 %i.gu, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.epil, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.epil: ; preds = %.epil.preheader263
  %i.gv = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !68
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.01213.i.i70.epil.init
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !137
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = load ptr, ptr %i.fl, align 8, !tbaa !67
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gs
  store i8 %i.gy, ptr %i.ha, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i71.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %bb.p
  %i.hb = add nuw i64 %.042169, 1                 ; 2 uses
  %exitcond191.not = icmp eq i64 %i.hb, %0
  br i1 %exitcond191.not, label %.loopexit, label %bb.p, !llvm.loop !685

bb.r:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.hc = icmp eq i64 %3, 0
  %.not179 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.hc, label %.preheader158, label %.preheader160

.preheader160:                                    ; preds = %bb.r
  br i1 %.not179, label %.loopexit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader160
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.u

.preheader158:                                    ; preds = %bb.r
  br i1 %.not179, label %.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader158
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.3127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79
  %.041167 = phi i64 [ 0, %.lr.ph168 ], [ %i.jc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79 ] ; 2 uses
  %.sroa.0125.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2126.0.copyload = load ptr, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5129.0.copyload = load ptr, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !69 ; 3 uses
  %i.hd = load i64, ptr %.sroa.0125.0.copyload, align 8, !tbaa !8
  %i.he = add i64 %i.hd, %.041167                 ; 5 uses
  %i.hf = load i64, ptr %.sroa.2126.0.copyload, align 8, !tbaa !8
  %i.hg = freeze i64 %i.hf                        ; 6 uses
  %i.hh = mul i64 %i.hg, %i.he                    ; 3 uses
  %i.hi = add i64 %i.he, 1
  %i.hj = mul i64 %i.hi, %i.hg
  %i.hk = icmp ult i64 %i.hh, %i.hj
  br i1 %i.hk, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

.lr.ph.i.i74:                                     ; preds = %bb.s
  %.sroa.3127.0.copyload = load ptr, ptr %.sroa.3127.0..sroa_idx, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.3127.0.copyload, i64 96 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.4128.0.copyload, i64 8 ; 3 uses
  %xtraiter256 = and i64 %i.hg, 1
  %i.hn = icmp eq i64 %i.hg, 1
  br i1 %i.hn, label %.epil.preheader255, label %.lr.ph.i.i74.new

.lr.ph.i.i74.new:                                 ; preds = %.lr.ph.i.i74
  %unroll_iter259 = and i64 %i.hg, -2
  br label %bb.t

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1, %.lr.ph.i.i74.new
  %.014.i.i75 = phi i64 [ 0, %.lr.ph.i.i74.new ], [ %i.ip, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1 ] ; 3 uses
  %.01213.i.i76 = phi i64 [ %i.hh, %.lr.ph.i.i74.new ], [ %i.io, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1 ] ; 3 uses
  %niter260 = phi i64 [ 0, %.lr.ph.i.i74.new ], [ %niter260.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1 ]
  %i.ho = load ptr, ptr %i.hl, align 8, !tbaa !226
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.014.i.i75
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !8
  %i.hr = add i64 %i.hq, %i.he                    ; 2 uses
  %i.hs = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !272
  %i.ht = icmp ult i64 %i.hr, %i.hs
  br i1 %i.ht, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77, label %.loopexit261, !prof !140

.loopexit261:                                     ; preds = %.epil.preheader255, %bb.t, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77: ; preds = %bb.t
  %i.hu = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !68
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.01213.i.i76
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !137
  %i.hx = trunc i32 %i.hw to i8
  %i.hy = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hr
  store i8 %i.hx, ptr %i.hz, align 1, !tbaa !78
  %i.ia = load ptr, ptr %i.hl, align 8, !tbaa !226
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %.014.i.i75
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8
  %i.ie = add i64 %i.id, %i.he                    ; 2 uses
  %i.if = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !272
  %i.ig = icmp ult i64 %i.ie, %i.if
  br i1 %i.ig, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77
  %i.ih = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !68
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.01213.i.i76
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !137
  %i.il = trunc i32 %i.ik to i8
  %i.im = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  store i8 %i.il, ptr %i.in, align 1, !tbaa !78
  %i.io = add nuw i64 %.01213.i.i76, 2            ; 2 uses
  %i.ip = add i64 %.014.i.i75, 2                  ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, label %bb.t, !llvm.loop !678

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.1
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, label %.epil.preheader255

.epil.preheader255:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %.lr.ph.i.i74
  %.014.i.i75.epil.init = phi i64 [ 0, %.lr.ph.i.i74 ], [ %i.ip, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %.01213.i.i76.epil.init = phi i64 [ %i.hh, %.lr.ph.i.i74 ], [ %i.io, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %lcmp.mod258 = trunc i64 %i.hg to i1
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.iq = load ptr, ptr %i.hl, align 8, !tbaa !226
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.014.i.i75.epil.init
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !8
  %i.it = add i64 %i.is, %i.he                    ; 2 uses
  %i.iu = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !272
  %i.iv = icmp ult i64 %i.it, %i.iu
  br i1 %i.iv, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.epil, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.epil: ; preds = %.epil.preheader255
  %i.iw = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !68
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.01213.i.i76.epil.init
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !137
  %i.iz = trunc i32 %i.iy to i8
  %i.ja = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.it
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i77.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %bb.s
  %i.jc = add nuw i64 %.041167, 1                 ; 2 uses
  %exitcond190.not = icmp eq i64 %i.jc, %0
  br i1 %exitcond190.not, label %.loopexit, label %bb.s, !llvm.loop !686

bb.u:                                             ; preds = %.lr.ph166, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85
  %.040165 = phi i64 [ 0, %.lr.ph166 ], [ %i.lc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85 ] ; 2 uses
  %.sroa.0135.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2136.0.copyload = load ptr, ptr %.sroa.2136.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4138.0.copyload = load ptr, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5139.0.copyload = load ptr, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !69 ; 3 uses
  %i.jd = load i64, ptr %.sroa.0135.0.copyload, align 8, !tbaa !8
  %i.je = add i64 %i.jd, %.040165                 ; 5 uses
  %i.jf = load i64, ptr %.sroa.2136.0.copyload, align 8, !tbaa !8
  %i.jg = freeze i64 %i.jf                        ; 6 uses
  %i.jh = mul i64 %i.jg, %i.je                    ; 3 uses
  %i.ji = add i64 %i.je, 1
  %i.jj = mul i64 %i.ji, %i.jg
  %i.jk = icmp ult i64 %i.jh, %i.jj
  br i1 %i.jk, label %.lr.ph.i.i80, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

.lr.ph.i.i80:                                     ; preds = %bb.u
  %.sroa.3137.0.copyload = load ptr, ptr %.sroa.3137.0..sroa_idx, align 8, !tbaa !10
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.3137.0.copyload, i64 96 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.4138.0.copyload, i64 8 ; 3 uses
  %xtraiter248 = and i64 %i.jg, 1
  %i.jn = icmp eq i64 %i.jg, 1
  br i1 %i.jn, label %.epil.preheader247, label %.lr.ph.i.i80.new

.lr.ph.i.i80.new:                                 ; preds = %.lr.ph.i.i80
  %unroll_iter251 = and i64 %i.jg, -2
  br label %bb.v

bb.v:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1, %.lr.ph.i.i80.new
  %.014.i.i81 = phi i64 [ 0, %.lr.ph.i.i80.new ], [ %i.kp, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1 ] ; 3 uses
  %.01213.i.i82 = phi i64 [ %i.jh, %.lr.ph.i.i80.new ], [ %i.ko, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1 ] ; 3 uses
  %niter252 = phi i64 [ 0, %.lr.ph.i.i80.new ], [ %niter252.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1 ]
  %i.jo = load ptr, ptr %i.jl, align 8, !tbaa !226
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.014.i.i81
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !8
  %i.jr = add i64 %i.jq, %i.je                    ; 2 uses
  %i.js = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !272
  %i.jt = icmp ult i64 %i.jr, %i.js
  br i1 %i.jt, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83, label %.loopexit253, !prof !140

.loopexit253:                                     ; preds = %.epil.preheader247, %bb.v, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83: ; preds = %bb.v
  %i.ju = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !68
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.01213.i.i82
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !137
  %i.jx = trunc i32 %i.jw to i8
  %i.jy = load ptr, ptr %i.jm, align 8, !tbaa !67
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jr
  store i8 %i.jx, ptr %i.jz, align 1, !tbaa !78
  %i.ka = load ptr, ptr %i.jl, align 8, !tbaa !226
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %.014.i.i81
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !8
  %i.ke = add i64 %i.kd, %i.je                    ; 2 uses
  %i.kf = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !272
  %i.kg = icmp ult i64 %i.ke, %i.kf
  br i1 %i.kg, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83
  %i.kh = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !68
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %.01213.i.i82
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !137
  %i.kl = trunc i32 %i.kk to i8
  %i.km = load ptr, ptr %i.jm, align 8, !tbaa !67
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ke
  store i8 %i.kl, ptr %i.kn, align 1, !tbaa !78
  %i.ko = add nuw i64 %.01213.i.i82, 2            ; 2 uses
  %i.kp = add i64 %.014.i.i81, 2                  ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, label %bb.v, !llvm.loop !678

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.1
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %.lr.ph.i.i80
  %.014.i.i81.epil.init = phi i64 [ 0, %.lr.ph.i.i80 ], [ %i.kp, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %.01213.i.i82.epil.init = phi i64 [ %i.jh, %.lr.ph.i.i80 ], [ %i.ko, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %lcmp.mod250 = trunc i64 %i.jg to i1
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.kq = load ptr, ptr %i.jl, align 8, !tbaa !226
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %.014.i.i81.epil.init
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !8
  %i.kt = add i64 %i.ks, %i.je                    ; 2 uses
  %i.ku = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !272
  %i.kv = icmp ult i64 %i.kt, %i.ku
  br i1 %i.kv, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.epil, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.epil: ; preds = %.epil.preheader247
  %i.kw = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !68
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.01213.i.i82.epil.init
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !137
  %i.kz = trunc i32 %i.ky to i8
  %i.la = load ptr, ptr %i.jm, align 8, !tbaa !67
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kt
  store i8 %i.kz, ptr %i.lb, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i83.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %bb.u
  %i.lc = add nuw i64 %.040165, 1                 ; 2 uses
  %exitcond189.not = icmp eq i64 %i.lc, %0
  br i1 %exitcond189.not, label %.loopexit, label %bb.u, !llvm.loop !687

bb.w:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.nc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91 ] ; 2 uses
  %.sroa.0145.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2146.0.copyload = load ptr, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !47
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !558 ; 4 uses
  %.sroa.5149.0.copyload = load ptr, ptr %.sroa.5149.0..sroa_idx, align 8, !tbaa !69 ; 3 uses
  %i.ld = load i64, ptr %.sroa.0145.0.copyload, align 8, !tbaa !8
  %i.le = add i64 %i.ld, %.0164                   ; 5 uses
  %i.lf = load i64, ptr %.sroa.2146.0.copyload, align 8, !tbaa !8
  %i.lg = freeze i64 %i.lf                        ; 6 uses
  %i.lh = mul i64 %i.lg, %i.le                    ; 3 uses
  %i.li = add i64 %i.le, 1
  %i.lj = mul i64 %i.li, %i.lg
  %i.lk = icmp ult i64 %i.lh, %i.lj
  br i1 %i.lk, label %.lr.ph.i.i86, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

.lr.ph.i.i86:                                     ; preds = %bb.w
  %.sroa.3147.0.copyload = load ptr, ptr %.sroa.3147.0..sroa_idx, align 8, !tbaa !10
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.3147.0.copyload, i64 96 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 8 ; 3 uses
  %xtraiter = and i64 %i.lg, 1
  %i.ln = icmp eq i64 %i.lg, 1
  br i1 %i.ln, label %.epil.preheader, label %.lr.ph.i.i86.new

.lr.ph.i.i86.new:                                 ; preds = %.lr.ph.i.i86
  %unroll_iter = and i64 %i.lg, -2
  br label %bb.x

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1, %.lr.ph.i.i86.new
  %.014.i.i87 = phi i64 [ 0, %.lr.ph.i.i86.new ], [ %i.mp, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1 ] ; 3 uses
  %.01213.i.i88 = phi i64 [ %i.lh, %.lr.ph.i.i86.new ], [ %i.mo, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i86.new ], [ %niter.next.1, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1 ]
  %i.lo = load ptr, ptr %i.ll, align 8, !tbaa !226
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %.014.i.i87
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !8
  %i.lr = add i64 %i.lq, %i.le                    ; 2 uses
  %i.ls = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !272
  %i.lt = icmp ult i64 %i.lr, %i.ls
  br i1 %i.lt, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89, label %.loopexit245, !prof !140

.loopexit245:                                     ; preds = %.epil.preheader, %bb.x, %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89: ; preds = %bb.x
  %i.lu = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !68
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %.01213.i.i88
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !137
  %i.lx = trunc i32 %i.lw to i8
  %i.ly = load ptr, ptr %i.lm, align 8, !tbaa !67
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lr
  store i8 %i.lx, ptr %i.lz, align 1, !tbaa !78
  %i.ma = load ptr, ptr %i.ll, align 8, !tbaa !226
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %.014.i.i87
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !8
  %i.me = add i64 %i.md, %i.le                    ; 2 uses
  %i.mf = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !272
  %i.mg = icmp ult i64 %i.me, %i.mf
  br i1 %i.mg, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1, label %.loopexit245, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89
  %i.mh = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !68
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.01213.i.i88
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !137
  %i.ml = trunc i32 %i.mk to i8
  %i.mm = load ptr, ptr %i.lm, align 8, !tbaa !67
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.me
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !78
  %i.mo = add nuw i64 %.01213.i.i88, 2            ; 2 uses
  %i.mp = add i64 %.014.i.i87, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, label %bb.x, !llvm.loop !678

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i86
  %.014.i.i87.epil.init = phi i64 [ 0, %.lr.ph.i.i86 ], [ %i.mp, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01213.i.i88.epil.init = phi i64 [ %i.lh, %.lr.ph.i.i86 ], [ %i.mo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %lcmp.mod244 = trunc i64 %i.lg to i1
  call void @llvm.assume(i1 %lcmp.mod244)
  %i.mq = load ptr, ptr %i.ll, align 8, !tbaa !226
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %.014.i.i87.epil.init
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !8
  %i.mt = add i64 %i.ms, %i.le                    ; 2 uses
  %i.mu = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !272
  %i.mv = icmp ult i64 %i.mt, %i.mu
  br i1 %i.mv, label %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.epil, label %.loopexit245, !prof !140

_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.epil: ; preds = %.epil.preheader
  %i.mw = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !68
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %.01213.i.i88.epil.init
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !137
  %i.mz = trunc i32 %i.my to i8
  %i.na = load ptr, ptr %i.lm, align 8, !tbaa !67
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.mt
  store i8 %i.mz, ptr %i.nb, align 1, !tbaa !78
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91: ; preds = %_ZNK7xgboost6common4SpanIhLm18446744073709551615EEixEm.exit.i.i89.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %bb.w
  %i.nc = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.nc, %0
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !688

.loopexit:                                        ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIhEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIhEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader153, %.preheader154, %.preheader156, %.preheader158, %.preheader160, %.preheader162, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %.preheader
  ret void

bb.y:                                             ; preds = %bb.g, %bb.h
  %.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.av, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %bb.h
  %i.nd = landingpad { ptr, i32 }
          catch ptr null
  %i.ne = extractvalue { ptr, i32 } %i.nd, 0
  call void @__clang_call_terminate(ptr %i.ne) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS4_E_clItEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not183 = icmp eq i64 %0, 0
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !689, !nonnull !33, !align !479
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !690, !nonnull !33, !align !479
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = freeze i64 %i.h                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !33, !align !479 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %xtraiter288 = and i64 %i.i, 1
  %i.q = icmp eq i64 %i.i, 1
  %unroll_iter291 = and i64 %i.i, -2
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  %lcmp.mod290 = trunc i64 %i.i to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph176, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.048175 = phi i64 [ 0, %.lr.ph176 ], [ %i.bf, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.r = add i64 %i.e, %.048175                   ; 5 uses
  %i.s = mul i64 %i.i, %i.r                       ; 3 uses
  %i.t = add i64 %i.r, 1
  %i.u = mul i64 %i.t, %i.i
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !226  ; 3 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !560  ; 3 uses
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !33, !align !479 ; 2 uses
  br i1 %i.q, label %.epil.preheader287, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1
  %.014.i = phi i64 [ %i.au, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i64 [ %i.at, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %niter292 = phi i64 [ %niter292.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = add i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i, label %.loopexit293, !prof !140

.loopexit293:                                     ; preds = %.epil.preheader287, %.lr.ph.i.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.i.new
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.01213.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !137
  %i.ag = trunc i32 %i.af to i16
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !562 ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ab
  store i16 %i.ag, ptr %i.ai, align 2, !tbaa !373
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8
  %i.am = add i64 %i.al, %i.r                     ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.x
  br i1 %i.an, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.01213.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !137
  %i.ar = trunc i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.am
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !373
  %i.at = add nuw i64 %.01213.i, 2                ; 2 uses
  %i.au = add i64 %.014.i, 2                      ; 2 uses
  %niter292.next.1 = add i64 %niter292, 2         ; 2 uses
  %niter292.ncmp.1 = icmp eq i64 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !691

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.1
  br i1 %lcmp.mod289.not, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %.epil.preheader287

.epil.preheader287:                               ; preds = %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.au, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ %i.s, %.lr.ph.i ], [ %i.at, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod290)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i.epil.init
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ax = add i64 %i.aw, %i.r                     ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.x
  br i1 %i.ay, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil: ; preds = %.epil.preheader287
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.01213.i.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !137
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !562
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.ax
  store i16 %i.bc, ptr %i.be, align 2, !tbaa !373
  br label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.epil, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %bb.b
  %i.bf = add nuw i64 %.048175, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.bf, %0
  br i1 %exitcond195.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !692

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !693
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !693
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bg, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.bh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bk = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !77
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bl, i64 noundef %i.bn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.e ], [ %i.br, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr150 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr150, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %.pr150, align 8, !tbaa !74 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pr150, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !78
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr150, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader152
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %.preheader162
  ]

.preheader162:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not177 = icmp eq i64 %0, 0
  br i1 %.not177, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader162
  %.sroa.0145.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2146.0.copyload = load ptr, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5149.0.copyload = load ptr, ptr %.sroa.5149.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.bx = load i64, ptr %.sroa.0145.0.copyload, align 8, !tbaa !8
  %i.by = load i64, ptr %.sroa.2146.0.copyload, align 8, !tbaa !8
  %i.bz = freeze i64 %i.by                        ; 6 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter = and i64 %i.bz, 1
  %i.ca = icmp eq i64 %i.bz, 1
  %unroll_iter = and i64 %i.bz, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod245 = trunc i64 %i.bz to i1
  br label %bb.q

.preheader152:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not182 = icmp eq i64 %0, 0
  br i1 %.not182, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader152
  %.sroa.097.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.cb = load i64, ptr %.sroa.097.0.copyload, align 8, !tbaa !8
  %i.cc = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.cd = freeze i64 %i.cc                        ; 6 uses
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter280 = and i64 %i.cd, 1
  %i.ce = icmp eq i64 %i.cd, 1
  %unroll_iter283 = and i64 %i.cd, -2
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod282 = trunc i64 %i.cd to i1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044173 = phi i64 [ 0, %.lr.ph174 ], [ %i.du, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %i.cf = add i64 %i.cb, %.044173                 ; 5 uses
  %i.cg = mul i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = add i64 %i.cf, 1
  %i.ci = mul i64 %i.ch, %i.cd
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.j
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !226 ; 3 uses
  %i.cm = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.498.0.copyload, i64 8 ; 2 uses
  br i1 %i.ce, label %.epil.preheader279, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1
  %.014.i.i = phi i64 [ %i.dj, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.di, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ %i.cg, %.lr.ph.i.i ] ; 3 uses
  %niter284 = phi i64 [ %niter284.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8
  %i.cq = add i64 %i.cp, %i.cf                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cm
  br i1 %i.cr, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i, label %.loopexit285, !prof !140

.loopexit285:                                     ; preds = %.epil.preheader279, %.lr.ph.i.i.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i: ; preds = %.lr.ph.i.i.new
  %i.cs = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.01213.i.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !137
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !562 ; 2 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.cq
  store i16 %i.cv, ptr %i.cx, align 2, !tbaa !373
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !8
  %i.db = add i64 %i.da, %i.cf                    ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.cm
  br i1 %i.dc, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.01213.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !137
  %i.dg = trunc i32 %i.df to i16
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %i.db
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !373
  %i.di = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.dj = add i64 %.014.i.i, 2                    ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !691

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.1
  br i1 %lcmp.mod281.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %i.di, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.014.i.i.epil.init
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !8
  %i.dm = add i64 %i.dl, %i.cf                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.cm
  br i1 %i.dn, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader279
  %i.do = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !68
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.01213.i.i.epil.init
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !137
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = load ptr, ptr %i.cn, align 8, !tbaa !562
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ds, i64 %i.dm
  store i16 %i.dr, ptr %i.dt, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.j
  %i.du = add nuw i64 %.044173, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.du, %0
  br i1 %exitcond194.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.j, !llvm.loop !696

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.dv = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.dv, label %.preheader154, label %.preheader156

.preheader156:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader156
  %.sroa.0115.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2116.0.copyload = load ptr, ptr %.sroa.2116.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.dw = load i64, ptr %.sroa.0115.0.copyload, align 8, !tbaa !8
  %i.dx = load i64, ptr %.sroa.2116.0.copyload, align 8, !tbaa !8
  %i.dy = freeze i64 %i.dx                        ; 6 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter264 = and i64 %i.dy, 1
  %i.dz = icmp eq i64 %i.dy, 1
  %unroll_iter267 = and i64 %i.dy, -2
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod266 = trunc i64 %i.dy to i1
  br label %bb.m

.preheader154:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader154
  %.sroa.0105.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5109.0.copyload = load ptr, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.ea = load i64, ptr %.sroa.0105.0.copyload, align 8, !tbaa !8
  %i.eb = load i64, ptr %.sroa.2106.0.copyload, align 8, !tbaa !8
  %i.ec = freeze i64 %i.eb                        ; 6 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter272 = and i64 %i.ec, 1
  %i.ed = icmp eq i64 %i.ec, 1
  %unroll_iter275 = and i64 %i.ec, -2
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  %lcmp.mod274 = trunc i64 %i.ec to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67
  %.043171 = phi i64 [ 0, %.lr.ph172 ], [ %i.ft, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67 ] ; 2 uses
  %i.ee = add i64 %i.ea, %.043171                 ; 5 uses
  %i.ef = mul i64 %i.ec, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ee, 1
  %i.eh = mul i64 %i.eg, %i.ec
  %i.ei = icmp ult i64 %i.ef, %i.eh
  br i1 %i.ei, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

.lr.ph.i.i62:                                     ; preds = %bb.l
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3107.0.copyload = load ptr, ptr %.sroa.3107.0..sroa_idx, align 8, !tbaa !10
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.3107.0.copyload, i64 96
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !226 ; 3 uses
  %i.el = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload, i64 8 ; 2 uses
  br i1 %i.ed, label %.epil.preheader271, label %.lr.ph.i.i62.new

.lr.ph.i.i62.new:                                 ; preds = %.lr.ph.i.i62, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1
  %.014.i.i63 = phi i64 [ %i.fi, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ] ; 3 uses
  %.01213.i.i64 = phi i64 [ %i.fh, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1 ], [ %i.ef, %.lr.ph.i.i62 ] ; 3 uses
  %niter276 = phi i64 [ %niter276.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i63
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !8
  %i.ep = add i64 %i.eo, %i.ee                    ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.el
  br i1 %i.eq, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65, label %.loopexit277, !prof !140

.loopexit277:                                     ; preds = %.epil.preheader271, %.lr.ph.i.i62.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65: ; preds = %.lr.ph.i.i62.new
  %i.er = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.01213.i.i64
  %i.et = load i32, ptr %i.es, align 4, !tbaa !137
  %i.eu = trunc i32 %i.et to i16
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !562 ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.ep
  store i16 %i.eu, ptr %i.ew, align 2, !tbaa !373
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i63
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !8
  %i.fa = add i64 %i.ez, %i.ee                    ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.el
  br i1 %i.fb, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.01213.i.i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !137
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.fa
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !373
  %i.fh = add nuw i64 %.01213.i.i64, 2            ; 2 uses
  %i.fi = add i64 %.014.i.i63, 2                  ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, label %.lr.ph.i.i62.new, !llvm.loop !691

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.1
  br i1 %lcmp.mod273.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, label %.epil.preheader271

.epil.preheader271:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %.lr.ph.i.i62
  %.014.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.i62 ], [ %i.fi, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %.01213.i.i64.epil.init = phi i64 [ %i.ef, %.lr.ph.i.i62 ], [ %i.fh, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.014.i.i63.epil.init
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !8
  %i.fl = add i64 %i.fk, %i.ee                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.el
  br i1 %i.fm, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.epil, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.epil: ; preds = %.epil.preheader271
  %i.fn = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !68
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.01213.i.i64.epil.init
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !137
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = load ptr, ptr %i.em, align 8, !tbaa !562
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fr, i64 %i.fl
  store i16 %i.fq, ptr %i.fs, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i65.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %bb.l
  %i.ft = add nuw i64 %.043171, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.ft, %0
  br i1 %exitcond193.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.l, !llvm.loop !697

bb.m:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73
  %.042169 = phi i64 [ 0, %.lr.ph170 ], [ %i.hj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73 ] ; 2 uses
  %i.fu = add i64 %i.dw, %.042169                 ; 5 uses
  %i.fv = mul i64 %i.dy, %i.fu                    ; 3 uses
  %i.fw = add i64 %i.fu, 1
  %i.fx = mul i64 %i.fw, %i.dy
  %i.fy = icmp ult i64 %i.fv, %i.fx
  br i1 %i.fy, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

.lr.ph.i.i68:                                     ; preds = %bb.m
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3117.0.copyload = load ptr, ptr %.sroa.3117.0..sroa_idx, align 8, !tbaa !10
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.3117.0.copyload, i64 96
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !226 ; 3 uses
  %i.gb = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4118.0.copyload, i64 8 ; 2 uses
  br i1 %i.dz, label %.epil.preheader263, label %.lr.ph.i.i68.new

.lr.ph.i.i68.new:                                 ; preds = %.lr.ph.i.i68, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1
  %.014.i.i69 = phi i64 [ %i.gy, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ] ; 3 uses
  %.01213.i.i70 = phi i64 [ %i.gx, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1 ], [ %i.fv, %.lr.ph.i.i68 ] ; 3 uses
  %niter268 = phi i64 [ %niter268.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i69
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !8
  %i.gf = add i64 %i.ge, %i.fu                    ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.gb
  br i1 %i.gg, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71, label %.loopexit269, !prof !140

.loopexit269:                                     ; preds = %.epil.preheader263, %.lr.ph.i.i68.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71: ; preds = %.lr.ph.i.i68.new
  %i.gh = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.01213.i.i70
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !137
  %i.gk = trunc i32 %i.gj to i16
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !562 ; 2 uses
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gf
  store i16 %i.gk, ptr %i.gm, align 2, !tbaa !373
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i69
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8
  %i.gq = add i64 %i.gp, %i.fu                    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gb
  br i1 %i.gr, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.01213.i.i70
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !137
  %i.gv = trunc i32 %i.gu to i16
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gl, i64 %i.gq
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !373
  %i.gx = add nuw i64 %.01213.i.i70, 2            ; 2 uses
  %i.gy = add i64 %.014.i.i69, 2                  ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, label %.lr.ph.i.i68.new, !llvm.loop !691

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.1
  br i1 %lcmp.mod265.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, label %.epil.preheader263

.epil.preheader263:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.014.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.gy, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %.01213.i.i70.epil.init = phi i64 [ %i.fv, %.lr.ph.i.i68 ], [ %i.gx, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.014.i.i69.epil.init
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !8
  %i.hb = add i64 %i.ha, %i.fu                    ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gb
  br i1 %i.hc, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.epil, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.epil: ; preds = %.epil.preheader263
  %i.hd = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !68
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.01213.i.i70.epil.init
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !137
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = load ptr, ptr %i.gc, align 8, !tbaa !562
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.hb
  store i16 %i.hg, ptr %i.hi, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i71.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %bb.m
  %i.hj = add nuw i64 %.042169, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.hj, %0
  br i1 %exitcond192.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !698

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.hk = icmp eq i64 %3, 0
  %.not179 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.hk, label %.preheader158, label %.preheader160

.preheader160:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader160
  %.sroa.0135.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2136.0.copyload = load ptr, ptr %.sroa.2136.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5139.0.copyload = load ptr, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.hl = load i64, ptr %.sroa.0135.0.copyload, align 8, !tbaa !8
  %i.hm = load i64, ptr %.sroa.2136.0.copyload, align 8, !tbaa !8
  %i.hn = freeze i64 %i.hm                        ; 6 uses
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter248 = and i64 %i.hn, 1
  %i.ho = icmp eq i64 %i.hn, 1
  %unroll_iter251 = and i64 %i.hn, -2
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = trunc i64 %i.hn to i1
  br label %bb.p

.preheader158:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader158
  %.sroa.0125.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2126.0.copyload = load ptr, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5129.0.copyload = load ptr, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.hp = load i64, ptr %.sroa.0125.0.copyload, align 8, !tbaa !8
  %i.hq = load i64, ptr %.sroa.2126.0.copyload, align 8, !tbaa !8
  %i.hr = freeze i64 %i.hq                        ; 6 uses
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter256 = and i64 %i.hr, 1
  %i.hs = icmp eq i64 %i.hr, 1
  %unroll_iter259 = and i64 %i.hr, -2
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  %lcmp.mod258 = trunc i64 %i.hr to i1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79
  %.041167 = phi i64 [ 0, %.lr.ph168 ], [ %i.ji, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79 ] ; 2 uses
  %i.ht = add i64 %i.hp, %.041167                 ; 5 uses
  %i.hu = mul i64 %i.hr, %i.ht                    ; 3 uses
  %i.hv = add i64 %i.ht, 1
  %i.hw = mul i64 %i.hv, %i.hr
  %i.hx = icmp ult i64 %i.hu, %i.hw
  br i1 %i.hx, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

.lr.ph.i.i74:                                     ; preds = %bb.o
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3127.0.copyload = load ptr, ptr %.sroa.3127.0..sroa_idx, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.3127.0.copyload, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !226 ; 3 uses
  %i.ia = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.4128.0.copyload, i64 8 ; 2 uses
  br i1 %i.hs, label %.epil.preheader255, label %.lr.ph.i.i74.new

.lr.ph.i.i74.new:                                 ; preds = %.lr.ph.i.i74, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1
  %.014.i.i75 = phi i64 [ %i.ix, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ] ; 3 uses
  %.01213.i.i76 = phi i64 [ %i.iw, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1 ], [ %i.hu, %.lr.ph.i.i74 ] ; 3 uses
  %niter260 = phi i64 [ %niter260.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ]
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i75
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !8
  %i.ie = add i64 %i.id, %i.ht                    ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.ia
  br i1 %i.if, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77, label %.loopexit261, !prof !140

.loopexit261:                                     ; preds = %.epil.preheader255, %.lr.ph.i.i74.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77: ; preds = %.lr.ph.i.i74.new
  %i.ig = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %.01213.i.i76
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !137
  %i.ij = trunc i32 %i.ii to i16
  %i.ik = load ptr, ptr %i.ib, align 8, !tbaa !562 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ie
  store i16 %i.ij, ptr %i.il, align 2, !tbaa !373
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i75
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load i64, ptr %i.in, align 8, !tbaa !8
  %i.ip = add i64 %i.io, %i.ht                    ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.ia
  br i1 %i.iq, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %.01213.i.i76
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !137
  %i.iu = trunc i32 %i.it to i16
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.ip
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !373
  %i.iw = add nuw i64 %.01213.i.i76, 2            ; 2 uses
  %i.ix = add i64 %.014.i.i75, 2                  ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, label %.lr.ph.i.i74.new, !llvm.loop !691

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.1
  br i1 %lcmp.mod257.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, label %.epil.preheader255

.epil.preheader255:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %.lr.ph.i.i74
  %.014.i.i75.epil.init = phi i64 [ 0, %.lr.ph.i.i74 ], [ %i.ix, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %.01213.i.i76.epil.init = phi i64 [ %i.hu, %.lr.ph.i.i74 ], [ %i.iw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.014.i.i75.epil.init
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !8
  %i.ja = add i64 %i.iz, %i.ht                    ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.ia
  br i1 %i.jb, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.epil, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.epil: ; preds = %.epil.preheader255
  %i.jc = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !68
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.01213.i.i76.epil.init
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !137
  %i.jf = trunc i32 %i.je to i16
  %i.jg = load ptr, ptr %i.ib, align 8, !tbaa !562
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.jg, i64 %i.ja
  store i16 %i.jf, ptr %i.jh, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i77.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %bb.o
  %i.ji = add nuw i64 %.041167, 1                 ; 2 uses
  %exitcond191.not = icmp eq i64 %i.ji, %0
  br i1 %exitcond191.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.o, !llvm.loop !699

bb.p:                                             ; preds = %.lr.ph166, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85
  %.040165 = phi i64 [ 0, %.lr.ph166 ], [ %i.ky, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85 ] ; 2 uses
  %i.jj = add i64 %i.hl, %.040165                 ; 5 uses
  %i.jk = mul i64 %i.hn, %i.jj                    ; 3 uses
  %i.jl = add i64 %i.jj, 1
  %i.jm = mul i64 %i.jl, %i.hn
  %i.jn = icmp ult i64 %i.jk, %i.jm
  br i1 %i.jn, label %.lr.ph.i.i80, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

.lr.ph.i.i80:                                     ; preds = %bb.p
  %.sroa.4138.0.copyload = load ptr, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3137.0.copyload = load ptr, ptr %.sroa.3137.0..sroa_idx, align 8, !tbaa !10
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.3137.0.copyload, i64 96
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !226 ; 3 uses
  %i.jq = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.4138.0.copyload, i64 8 ; 2 uses
  br i1 %i.ho, label %.epil.preheader247, label %.lr.ph.i.i80.new

.lr.ph.i.i80.new:                                 ; preds = %.lr.ph.i.i80, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1
  %.014.i.i81 = phi i64 [ %i.kn, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ] ; 3 uses
  %.01213.i.i82 = phi i64 [ %i.km, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1 ], [ %i.jk, %.lr.ph.i.i80 ] ; 3 uses
  %niter252 = phi i64 [ %niter252.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i81
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !8
  %i.ju = add i64 %i.jt, %i.jj                    ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jq
  br i1 %i.jv, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83, label %.loopexit253, !prof !140

.loopexit253:                                     ; preds = %.epil.preheader247, %.lr.ph.i.i80.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83: ; preds = %.lr.ph.i.i80.new
  %i.jw = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.01213.i.i82
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !137
  %i.jz = trunc i32 %i.jy to i16
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !562 ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.ju
  store i16 %i.jz, ptr %i.kb, align 2, !tbaa !373
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i81
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !8
  %i.kf = add i64 %i.ke, %i.jj                    ; 2 uses
  %i.kg = icmp ult i64 %i.kf, %i.jq
  br i1 %i.kg, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.01213.i.i82
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !137
  %i.kk = trunc i32 %i.kj to i16
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ka, i64 %i.kf
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !373
  %i.km = add nuw i64 %.01213.i.i82, 2            ; 2 uses
  %i.kn = add i64 %.014.i.i81, 2                  ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, label %.lr.ph.i.i80.new, !llvm.loop !691

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.1
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %.lr.ph.i.i80
  %.014.i.i81.epil.init = phi i64 [ 0, %.lr.ph.i.i80 ], [ %i.kn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %.01213.i.i82.epil.init = phi i64 [ %i.jk, %.lr.ph.i.i80 ], [ %i.km, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.014.i.i81.epil.init
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !8
  %i.kq = add i64 %i.kp, %i.jj                    ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.jq
  br i1 %i.kr, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.epil, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.epil: ; preds = %.epil.preheader247
  %i.ks = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !68
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.01213.i.i82.epil.init
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !137
  %i.kv = trunc i32 %i.ku to i16
  %i.kw = load ptr, ptr %i.jr, align 8, !tbaa !562
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.kw, i64 %i.kq
  store i16 %i.kv, ptr %i.kx, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i83.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %bb.p
  %i.ky = add nuw i64 %.040165, 1                 ; 2 uses
  %exitcond190.not = icmp eq i64 %i.ky, %0
  br i1 %exitcond190.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.p, !llvm.loop !700

bb.q:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.mo, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91 ] ; 2 uses
  %i.kz = add i64 %i.bx, %.0164                   ; 5 uses
  %i.la = mul i64 %i.bz, %i.kz                    ; 3 uses
  %i.lb = add i64 %i.kz, 1
  %i.lc = mul i64 %i.lb, %i.bz
  %i.ld = icmp ult i64 %i.la, %i.lc
  br i1 %i.ld, label %.lr.ph.i.i86, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

.lr.ph.i.i86:                                     ; preds = %bb.q
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !566 ; 2 uses
  %.sroa.3147.0.copyload = load ptr, ptr %.sroa.3147.0..sroa_idx, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.3147.0.copyload, i64 96
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !226 ; 3 uses
  %i.lg = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !560 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 8 ; 2 uses
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.i.i86.new

.lr.ph.i.i86.new:                                 ; preds = %.lr.ph.i.i86, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1
  %.014.i.i87 = phi i64 [ %i.md, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ] ; 3 uses
  %.01213.i.i88 = phi i64 [ %i.mc, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1 ], [ %i.la, %.lr.ph.i.i86 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ]
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i87
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !8
  %i.lk = add i64 %i.lj, %i.kz                    ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lg
  br i1 %i.ll, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89, label %.loopexit, !prof !140

.loopexit:                                        ; preds = %.epil.preheader, %.lr.ph.i.i86.new, %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89: ; preds = %.lr.ph.i.i86.new
  %i.lm = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %.01213.i.i88
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !137
  %i.lp = trunc i32 %i.lo to i16
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !562 ; 2 uses
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lk
  store i16 %i.lp, ptr %i.lr, align 2, !tbaa !373
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i87
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !8
  %i.lv = add i64 %i.lu, %i.kz                    ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %i.lg
  br i1 %i.lw, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %.01213.i.i88
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !137
  %i.ma = trunc i32 %i.lz to i16
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lv
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !373
  %i.mc = add nuw i64 %.01213.i.i88, 2            ; 2 uses
  %i.md = add i64 %.014.i.i87, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, label %.lr.ph.i.i86.new, !llvm.loop !691

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.1
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i86
  %.014.i.i87.epil.init = phi i64 [ 0, %.lr.ph.i.i86 ], [ %i.md, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01213.i.i88.epil.init = phi i64 [ %i.la, %.lr.ph.i.i86 ], [ %i.mc, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.014.i.i87.epil.init
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !8
  %i.mg = add i64 %i.mf, %i.kz                    ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.lg
  br i1 %i.mh, label %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.epil, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.epil: ; preds = %.epil.preheader
  %i.mi = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !68
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.01213.i.i88.epil.init
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !137
  %i.ml = trunc i32 %i.mk to i16
  %i.mm = load ptr, ptr %i.lh, align 8, !tbaa !562
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mm, i64 %i.mg
  store i16 %i.ml, ptr %i.mn, align 2, !tbaa !373
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91: ; preds = %_ZNK7xgboost6common4SpanItLm18446744073709551615EEixEm.exit.i.i89.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %bb.q
  %i.mo = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.mo, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.q, !llvm.loop !701

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clItEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clItEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader162, %.preheader160, %.preheader158, %.preheader156, %.preheader154, %.preheader152, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.f
  %i.mp = landingpad { ptr, i32 }
          catch ptr null
  %i.mq = extractvalue { ptr, i32 } %i.mp, 0
  call void @__clang_call_terminate(ptr %i.mq) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZZNS0_12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS4_E_clIjEEDaS4_EUlS4_E_EEvS4_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.48", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not183 = icmp eq i64 %0, 0
  br i1 %.not183, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph176

.lr.ph176:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !702, !nonnull !33, !align !479
  %i.e = load i64, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !703, !nonnull !33, !align !479
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8
  %i.i = freeze i64 %i.h                          ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !33, !align !479 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %xtraiter288 = and i64 %i.i, 1
  %i.q = icmp eq i64 %i.i, 1
  %unroll_iter291 = and i64 %i.i, -2
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  %lcmp.mod290 = trunc i64 %i.i to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph176, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit
  %.048175 = phi i64 [ 0, %.lr.ph176 ], [ %i.bc, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit ] ; 2 uses
  %i.r = add i64 %i.e, %.048175                   ; 5 uses
  %i.s = mul i64 %i.i, %i.r                       ; 3 uses
  %i.t = add i64 %i.r, 1
  %i.u = mul i64 %i.t, %i.i
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !226  ; 3 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !567  ; 3 uses
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !33, !align !479 ; 2 uses
  br i1 %i.q, label %.epil.preheader287, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1
  %.014.i = phi i64 [ %i.as, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ] ; 3 uses
  %.01213.i = phi i64 [ %i.ar, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %niter292 = phi i64 [ %niter292.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1 ], [ 0, %.lr.ph.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = add i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i, label %.loopexit293, !prof !140

.loopexit293:                                     ; preds = %.epil.preheader287, %.lr.ph.i.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i: ; preds = %.lr.ph.i.new
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.01213.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !137
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !569 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ab
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !137
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8
  %i.al = add i64 %i.ak, %i.r                     ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.x
  br i1 %i.am, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.01213.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !137
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.al
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !137
  %i.ar = add nuw i64 %.01213.i, 2                ; 2 uses
  %i.as = add i64 %.014.i, 2                      ; 2 uses
  %niter292.next.1 = add i64 %niter292, 2         ; 2 uses
  %niter292.ncmp.1 = icmp eq i64 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !704

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.1
  br i1 %lcmp.mod289.not, label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, label %.epil.preheader287

.epil.preheader287:                               ; preds = %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.014.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.as, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  %.01213.i.epil.init = phi i64 [ %i.s, %.lr.ph.i ], [ %i.ar, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod290)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.014.i.epil.init
  %i.au = load i64, ptr %i.at, align 8, !tbaa !8
  %i.av = add i64 %i.au, %i.r                     ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.x
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil, label %.loopexit293, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil: ; preds = %.epil.preheader287
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.01213.i.epil.init
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !137
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !569
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.av
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !137
  br label %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit

_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.epil, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit.loopexit.unr-lcssa, %bb.b
  %i.bc = add nuw i64 %.048175, 1                 ; 2 uses
  %exitcond195.not = icmp eq i64 %i.bc, %0
  br i1 %exitcond195.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !705

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !137, !noalias !706
  store i32 1, ptr %i.b, align 4, !tbaa !137, !noalias !706
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.48") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bd, ptr noundef nonnull @.str.36, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.be = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bh = load ptr, ptr %5, align 8, !tbaa !236   ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !77
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bi, i64 noundef %i.bk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.e ], [ %i.bo, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %.pr150 = load ptr, ptr %5, align 8, !tbaa !236 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr150, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %.pr150, align 8, !tbaa !74 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pr150, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !78
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr150, i64 noundef 32) #31
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.h, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader152
    i32 1, label %bb.k
    i32 2, label %bb.n
    i32 3, label %.preheader162
  ]

.preheader162:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not177 = icmp eq i64 %0, 0
  br i1 %.not177, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader162
  %.sroa.0145.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2146.0.copyload = load ptr, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5149.0.copyload = load ptr, ptr %.sroa.5149.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.bu = load i64, ptr %.sroa.0145.0.copyload, align 8, !tbaa !8
  %i.bv = load i64, ptr %.sroa.2146.0.copyload, align 8, !tbaa !8
  %i.bw = freeze i64 %i.bv                        ; 6 uses
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter = and i64 %i.bw, 1
  %i.bx = icmp eq i64 %i.bw, 1
  %unroll_iter = and i64 %i.bw, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod245 = trunc i64 %i.bw to i1
  br label %bb.q

.preheader152:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not182 = icmp eq i64 %0, 0
  br i1 %.not182, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader152
  %.sroa.097.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.by = load i64, ptr %.sroa.097.0.copyload, align 8, !tbaa !8
  %i.bz = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !8
  %i.ca = freeze i64 %i.bz                        ; 6 uses
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter280 = and i64 %i.ca, 1
  %i.cb = icmp eq i64 %i.ca, 1
  %unroll_iter283 = and i64 %i.ca, -2
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod282 = trunc i64 %i.ca to i1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph174, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit
  %.044173 = phi i64 [ 0, %.lr.ph174 ], [ %i.do, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit ] ; 2 uses
  %i.cc = add i64 %i.by, %.044173                 ; 5 uses
  %i.cd = mul i64 %i.ca, %i.cc                    ; 3 uses
  %i.ce = add i64 %i.cc, 1
  %i.cf = mul i64 %i.ce, %i.ca
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

.lr.ph.i.i:                                       ; preds = %bb.j
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !226 ; 3 uses
  %i.cj = load i64, ptr %.sroa.498.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.498.0.copyload, i64 8 ; 2 uses
  br i1 %i.cb, label %.epil.preheader279, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1
  %.014.i.i = phi i64 [ %i.de, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.01213.i.i = phi i64 [ %i.dd, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ %i.cd, %.lr.ph.i.i ] ; 3 uses
  %niter284 = phi i64 [ %niter284.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1 ], [ 0, %.lr.ph.i.i ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.014.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !8
  %i.cn = add i64 %i.cm, %i.cc                    ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i, label %.loopexit285, !prof !140

.loopexit285:                                     ; preds = %.epil.preheader279, %.lr.ph.i.i.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i: ; preds = %.lr.ph.i.i.new
  %i.cp = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.01213.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !137
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !569 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cn
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !137
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.014.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !8
  %i.cx = add i64 %i.cw, %i.cc                    ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cj
  br i1 %i.cy, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.01213.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !137
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cx
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !137
  %i.dd = add nuw i64 %.01213.i.i, 2              ; 2 uses
  %i.de = add i64 %.014.i.i, 2                    ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.new, !llvm.loop !704

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.1
  br i1 %lcmp.mod281.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, label %.epil.preheader279

.epil.preheader279:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.de, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  %.01213.i.i.epil.init = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %i.dd, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.014.i.i.epil.init
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !8
  %i.dh = add i64 %i.dg, %i.cc                    ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.cj
  br i1 %i.di, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil, label %.loopexit285, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil: ; preds = %.epil.preheader279
  %i.dj = load ptr, ptr %.sroa.599.0.copyload, align 8, !tbaa !68
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.01213.i.i.epil.init
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !137
  %i.dm = load ptr, ptr %i.ck, align 8, !tbaa !569
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dh
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit.loopexit.unr-lcssa, %bb.j
  %i.do = add nuw i64 %.044173, 1                 ; 2 uses
  %exitcond194.not = icmp eq i64 %i.do, %0
  br i1 %exitcond194.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.j, !llvm.loop !709

bb.k:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.dp = icmp eq i64 %3, 0
  %.not181 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.dp, label %.preheader154, label %.preheader156

.preheader156:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.preheader156
  %.sroa.0115.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2116.0.copyload = load ptr, ptr %.sroa.2116.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5119.0.copyload = load ptr, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.dq = load i64, ptr %.sroa.0115.0.copyload, align 8, !tbaa !8
  %i.dr = load i64, ptr %.sroa.2116.0.copyload, align 8, !tbaa !8
  %i.ds = freeze i64 %i.dr                        ; 6 uses
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter264 = and i64 %i.ds, 1
  %i.dt = icmp eq i64 %i.ds, 1
  %unroll_iter267 = and i64 %i.ds, -2
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod266 = trunc i64 %i.ds to i1
  br label %bb.m

.preheader154:                                    ; preds = %bb.k
  br i1 %.not181, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph172

.lr.ph172:                                        ; preds = %.preheader154
  %.sroa.0105.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2106.0.copyload = load ptr, ptr %.sroa.2106.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5109.0.copyload = load ptr, ptr %.sroa.5109.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.du = load i64, ptr %.sroa.0105.0.copyload, align 8, !tbaa !8
  %i.dv = load i64, ptr %.sroa.2106.0.copyload, align 8, !tbaa !8
  %i.dw = freeze i64 %i.dv                        ; 6 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter272 = and i64 %i.dw, 1
  %i.dx = icmp eq i64 %i.dw, 1
  %unroll_iter275 = and i64 %i.dw, -2
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  %lcmp.mod274 = trunc i64 %i.dw to i1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67
  %.043171 = phi i64 [ 0, %.lr.ph172 ], [ %i.fk, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67 ] ; 2 uses
  %i.dy = add i64 %i.du, %.043171                 ; 5 uses
  %i.dz = mul i64 %i.dw, %i.dy                    ; 3 uses
  %i.ea = add i64 %i.dy, 1
  %i.eb = mul i64 %i.ea, %i.dw
  %i.ec = icmp ult i64 %i.dz, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i62, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

.lr.ph.i.i62:                                     ; preds = %bb.l
  %.sroa.4108.0.copyload = load ptr, ptr %.sroa.4108.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3107.0.copyload = load ptr, ptr %.sroa.3107.0..sroa_idx, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.3107.0.copyload, i64 96
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !226 ; 3 uses
  %i.ef = load i64, ptr %.sroa.4108.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload, i64 8 ; 2 uses
  br i1 %i.dx, label %.epil.preheader271, label %.lr.ph.i.i62.new

.lr.ph.i.i62.new:                                 ; preds = %.lr.ph.i.i62, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1
  %.014.i.i63 = phi i64 [ %i.fa, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ] ; 3 uses
  %.01213.i.i64 = phi i64 [ %i.ez, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1 ], [ %i.dz, %.lr.ph.i.i62 ] ; 3 uses
  %niter276 = phi i64 [ %niter276.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1 ], [ 0, %.lr.ph.i.i62 ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.014.i.i63
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !8
  %i.ej = add i64 %i.ei, %i.dy                    ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ef
  br i1 %i.ek, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65, label %.loopexit277, !prof !140

.loopexit277:                                     ; preds = %.epil.preheader271, %.lr.ph.i.i62.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65: ; preds = %.lr.ph.i.i62.new
  %i.el = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.01213.i.i64
  %i.en = load i32, ptr %i.em, align 4, !tbaa !137
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !569 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ej
  store i32 %i.en, ptr %i.ep, align 4, !tbaa !137
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.014.i.i63
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !8
  %i.et = add i64 %i.es, %i.dy                    ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.ef
  br i1 %i.eu, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %.01213.i.i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !137
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.et
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !137
  %i.ez = add nuw i64 %.01213.i.i64, 2            ; 2 uses
  %i.fa = add i64 %.014.i.i63, 2                  ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, label %.lr.ph.i.i62.new, !llvm.loop !704

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.1
  br i1 %lcmp.mod273.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, label %.epil.preheader271

.epil.preheader271:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %.lr.ph.i.i62
  %.014.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.i62 ], [ %i.fa, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  %.01213.i.i64.epil.init = phi i64 [ %i.dz, %.lr.ph.i.i62 ], [ %i.ez, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %.014.i.i63.epil.init
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !8
  %i.fd = add i64 %i.fc, %i.dy                    ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.ef
  br i1 %i.fe, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.epil, label %.loopexit277, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.epil: ; preds = %.epil.preheader271
  %i.ff = load ptr, ptr %.sroa.5109.0.copyload, align 8, !tbaa !68
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.01213.i.i64.epil.init
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !137
  %i.fi = load ptr, ptr %i.eg, align 8, !tbaa !569
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fd
  store i32 %i.fh, ptr %i.fj, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i65.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67.loopexit.unr-lcssa, %bb.l
  %i.fk = add nuw i64 %.043171, 1                 ; 2 uses
  %exitcond193.not = icmp eq i64 %i.fk, %0
  br i1 %exitcond193.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.l, !llvm.loop !710

bb.m:                                             ; preds = %.lr.ph170, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73
  %.042169 = phi i64 [ 0, %.lr.ph170 ], [ %i.gx, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73 ] ; 2 uses
  %i.fl = add i64 %i.dq, %.042169                 ; 5 uses
  %i.fm = mul i64 %i.ds, %i.fl                    ; 3 uses
  %i.fn = add i64 %i.fl, 1
  %i.fo = mul i64 %i.fn, %i.ds
  %i.fp = icmp ult i64 %i.fm, %i.fo
  br i1 %i.fp, label %.lr.ph.i.i68, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

.lr.ph.i.i68:                                     ; preds = %bb.m
  %.sroa.4118.0.copyload = load ptr, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3117.0.copyload = load ptr, ptr %.sroa.3117.0..sroa_idx, align 8, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.3117.0.copyload, i64 96
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !226 ; 3 uses
  %i.fs = load i64, ptr %.sroa.4118.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.4118.0.copyload, i64 8 ; 2 uses
  br i1 %i.dt, label %.epil.preheader263, label %.lr.ph.i.i68.new

.lr.ph.i.i68.new:                                 ; preds = %.lr.ph.i.i68, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1
  %.014.i.i69 = phi i64 [ %i.gn, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ] ; 3 uses
  %.01213.i.i70 = phi i64 [ %i.gm, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1 ], [ %i.fm, %.lr.ph.i.i68 ] ; 3 uses
  %niter268 = phi i64 [ %niter268.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1 ], [ 0, %.lr.ph.i.i68 ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.014.i.i69
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !8
  %i.fw = add i64 %i.fv, %i.fl                    ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fs
  br i1 %i.fx, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71, label %.loopexit269, !prof !140

.loopexit269:                                     ; preds = %.epil.preheader263, %.lr.ph.i.i68.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71: ; preds = %.lr.ph.i.i68.new
  %i.fy = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.01213.i.i70
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !137
  %i.gb = load ptr, ptr %i.ft, align 8, !tbaa !569 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.fw
  store i32 %i.ga, ptr %i.gc, align 4, !tbaa !137
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.014.i.i69
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !8
  %i.gg = add i64 %i.gf, %i.fl                    ; 2 uses
  %i.gh = icmp ult i64 %i.gg, %i.fs
  br i1 %i.gh, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.01213.i.i70
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !137
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gg
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !137
  %i.gm = add nuw i64 %.01213.i.i70, 2            ; 2 uses
  %i.gn = add i64 %.014.i.i69, 2                  ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, label %.lr.ph.i.i68.new, !llvm.loop !704

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.1
  br i1 %lcmp.mod265.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, label %.epil.preheader263

.epil.preheader263:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %.lr.ph.i.i68
  %.014.i.i69.epil.init = phi i64 [ 0, %.lr.ph.i.i68 ], [ %i.gn, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  %.01213.i.i70.epil.init = phi i64 [ %i.fm, %.lr.ph.i.i68 ], [ %i.gm, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod266)
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.014.i.i69.epil.init
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !8
  %i.gq = add i64 %i.gp, %i.fl                    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.fs
  br i1 %i.gr, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.epil, label %.loopexit269, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.epil: ; preds = %.epil.preheader263
  %i.gs = load ptr, ptr %.sroa.5119.0.copyload, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.01213.i.i70.epil.init
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !137
  %i.gv = load ptr, ptr %i.ft, align 8, !tbaa !569
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gq
  store i32 %i.gu, ptr %i.gw, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i71.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73.loopexit.unr-lcssa, %bb.m
  %i.gx = add nuw i64 %.042169, 1                 ; 2 uses
  %exitcond192.not = icmp eq i64 %i.gx, %0
  br i1 %exitcond192.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.m, !llvm.loop !711

bb.n:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.gy = icmp eq i64 %3, 0
  %.not179 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.gy, label %.preheader158, label %.preheader160

.preheader160:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph166

.lr.ph166:                                        ; preds = %.preheader160
  %.sroa.0135.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2136.0.copyload = load ptr, ptr %.sroa.2136.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5139.0.copyload = load ptr, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.gz = load i64, ptr %.sroa.0135.0.copyload, align 8, !tbaa !8
  %i.ha = load i64, ptr %.sroa.2136.0.copyload, align 8, !tbaa !8
  %i.hb = freeze i64 %i.ha                        ; 6 uses
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter248 = and i64 %i.hb, 1
  %i.hc = icmp eq i64 %i.hb, 1
  %unroll_iter251 = and i64 %i.hb, -2
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod250 = trunc i64 %i.hb to i1
  br label %bb.p

.preheader158:                                    ; preds = %bb.n
  br i1 %.not179, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader158
  %.sroa.0125.0.copyload = load ptr, ptr %4, align 8, !tbaa !47
  %.sroa.2126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2126.0.copyload = load ptr, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !47
  %.sroa.5129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.5129.0.copyload = load ptr, ptr %.sroa.5129.0..sroa_idx, align 8, !tbaa !69 ; 2 uses
  %i.hd = load i64, ptr %.sroa.0125.0.copyload, align 8, !tbaa !8
  %i.he = load i64, ptr %.sroa.2126.0.copyload, align 8, !tbaa !8
  %i.hf = freeze i64 %i.he                        ; 6 uses
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %xtraiter256 = and i64 %i.hf, 1
  %i.hg = icmp eq i64 %i.hf, 1
  %unroll_iter259 = and i64 %i.hf, -2
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  %lcmp.mod258 = trunc i64 %i.hf to i1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph168, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79
  %.041167 = phi i64 [ 0, %.lr.ph168 ], [ %i.it, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79 ] ; 2 uses
  %i.hh = add i64 %i.hd, %.041167                 ; 5 uses
  %i.hi = mul i64 %i.hf, %i.hh                    ; 3 uses
  %i.hj = add i64 %i.hh, 1
  %i.hk = mul i64 %i.hj, %i.hf
  %i.hl = icmp ult i64 %i.hi, %i.hk
  br i1 %i.hl, label %.lr.ph.i.i74, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

.lr.ph.i.i74:                                     ; preds = %bb.o
  %.sroa.4128.0.copyload = load ptr, ptr %.sroa.4128.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3127.0.copyload = load ptr, ptr %.sroa.3127.0..sroa_idx, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.3127.0.copyload, i64 96
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !226 ; 3 uses
  %i.ho = load i64, ptr %.sroa.4128.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.4128.0.copyload, i64 8 ; 2 uses
  br i1 %i.hg, label %.epil.preheader255, label %.lr.ph.i.i74.new

.lr.ph.i.i74.new:                                 ; preds = %.lr.ph.i.i74, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1
  %.014.i.i75 = phi i64 [ %i.ij, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ] ; 3 uses
  %.01213.i.i76 = phi i64 [ %i.ii, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1 ], [ %i.hi, %.lr.ph.i.i74 ] ; 3 uses
  %niter260 = phi i64 [ %niter260.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1 ], [ 0, %.lr.ph.i.i74 ]
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i.i75
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !8
  %i.hs = add i64 %i.hr, %i.hh                    ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.ho
  br i1 %i.ht, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77, label %.loopexit261, !prof !140

.loopexit261:                                     ; preds = %.epil.preheader255, %.lr.ph.i.i74.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77: ; preds = %.lr.ph.i.i74.new
  %i.hu = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.01213.i.i76
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !137
  %i.hx = load ptr, ptr %i.hp, align 8, !tbaa !569 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hs
  store i32 %i.hw, ptr %i.hy, align 4, !tbaa !137
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i.i75
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !8
  %i.ic = add i64 %i.ib, %i.hh                    ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ho
  br i1 %i.id, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.01213.i.i76
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !137
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ic
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !137
  %i.ii = add nuw i64 %.01213.i.i76, 2            ; 2 uses
  %i.ij = add i64 %.014.i.i75, 2                  ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, label %.lr.ph.i.i74.new, !llvm.loop !704

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.1
  br i1 %lcmp.mod257.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, label %.epil.preheader255

.epil.preheader255:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %.lr.ph.i.i74
  %.014.i.i75.epil.init = phi i64 [ 0, %.lr.ph.i.i74 ], [ %i.ij, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  %.01213.i.i76.epil.init = phi i64 [ %i.hi, %.lr.ph.i.i74 ], [ %i.ii, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.014.i.i75.epil.init
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !8
  %i.im = add i64 %i.il, %i.hh                    ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.ho
  br i1 %i.in, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.epil, label %.loopexit261, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.epil: ; preds = %.epil.preheader255
  %i.io = load ptr, ptr %.sroa.5129.0.copyload, align 8, !tbaa !68
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.01213.i.i76.epil.init
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !137
  %i.ir = load ptr, ptr %i.hp, align 8, !tbaa !569
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.im
  store i32 %i.iq, ptr %i.is, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i77.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79.loopexit.unr-lcssa, %bb.o
  %i.it = add nuw i64 %.041167, 1                 ; 2 uses
  %exitcond191.not = icmp eq i64 %i.it, %0
  br i1 %exitcond191.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.o, !llvm.loop !712

bb.p:                                             ; preds = %.lr.ph166, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85
  %.040165 = phi i64 [ 0, %.lr.ph166 ], [ %i.kg, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85 ] ; 2 uses
  %i.iu = add i64 %i.gz, %.040165                 ; 5 uses
  %i.iv = mul i64 %i.hb, %i.iu                    ; 3 uses
  %i.iw = add i64 %i.iu, 1
  %i.ix = mul i64 %i.iw, %i.hb
  %i.iy = icmp ult i64 %i.iv, %i.ix
  br i1 %i.iy, label %.lr.ph.i.i80, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

.lr.ph.i.i80:                                     ; preds = %bb.p
  %.sroa.4138.0.copyload = load ptr, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3137.0.copyload = load ptr, ptr %.sroa.3137.0..sroa_idx, align 8, !tbaa !10
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.3137.0.copyload, i64 96
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !226 ; 3 uses
  %i.jb = load i64, ptr %.sroa.4138.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.4138.0.copyload, i64 8 ; 2 uses
  br i1 %i.hc, label %.epil.preheader247, label %.lr.ph.i.i80.new

.lr.ph.i.i80.new:                                 ; preds = %.lr.ph.i.i80, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1
  %.014.i.i81 = phi i64 [ %i.jw, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ] ; 3 uses
  %.01213.i.i82 = phi i64 [ %i.jv, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1 ], [ %i.iv, %.lr.ph.i.i80 ] ; 3 uses
  %niter252 = phi i64 [ %niter252.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1 ], [ 0, %.lr.ph.i.i80 ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.014.i.i81
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !8
  %i.jf = add i64 %i.je, %i.iu                    ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.jb
  br i1 %i.jg, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83, label %.loopexit253, !prof !140

.loopexit253:                                     ; preds = %.epil.preheader247, %.lr.ph.i.i80.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83: ; preds = %.lr.ph.i.i80.new
  %i.jh = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.01213.i.i82
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !137
  %i.jk = load ptr, ptr %i.jc, align 8, !tbaa !569 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jf
  store i32 %i.jj, ptr %i.jl, align 4, !tbaa !137
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.014.i.i81
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !8
  %i.jp = add i64 %i.jo, %i.iu                    ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.jb
  br i1 %i.jq, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.01213.i.i82
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !137
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jp
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !137
  %i.jv = add nuw i64 %.01213.i.i82, 2            ; 2 uses
  %i.jw = add i64 %.014.i.i81, 2                  ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, label %.lr.ph.i.i80.new, !llvm.loop !704

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.1
  br i1 %lcmp.mod249.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %.lr.ph.i.i80
  %.014.i.i81.epil.init = phi i64 [ 0, %.lr.ph.i.i80 ], [ %i.jw, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  %.01213.i.i82.epil.init = phi i64 [ %i.iv, %.lr.ph.i.i80 ], [ %i.jv, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.014.i.i81.epil.init
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !8
  %i.jz = add i64 %i.jy, %i.iu                    ; 2 uses
  %i.ka = icmp ult i64 %i.jz, %i.jb
  br i1 %i.ka, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.epil, label %.loopexit253, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.epil: ; preds = %.epil.preheader247
  %i.kb = load ptr, ptr %.sroa.5139.0.copyload, align 8, !tbaa !68
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %.01213.i.i82.epil.init
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !137
  %i.ke = load ptr, ptr %i.jc, align 8, !tbaa !569
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.jz
  store i32 %i.kd, ptr %i.kf, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i83.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85.loopexit.unr-lcssa, %bb.p
  %i.kg = add nuw i64 %.040165, 1                 ; 2 uses
  %exitcond190.not = icmp eq i64 %i.kg, %0
  br i1 %exitcond190.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.p, !llvm.loop !713

bb.q:                                             ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91
  %.0164 = phi i64 [ 0, %.lr.ph ], [ %i.lt, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91 ] ; 2 uses
  %i.kh = add i64 %i.bu, %.0164                   ; 5 uses
  %i.ki = mul i64 %i.bw, %i.kh                    ; 3 uses
  %i.kj = add i64 %i.kh, 1
  %i.kk = mul i64 %i.kj, %i.bw
  %i.kl = icmp ult i64 %i.ki, %i.kk
  br i1 %i.kl, label %.lr.ph.i.i86, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

.lr.ph.i.i86:                                     ; preds = %bb.q
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !573 ; 2 uses
  %.sroa.3147.0.copyload = load ptr, ptr %.sroa.3147.0..sroa_idx, align 8, !tbaa !10
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.3147.0.copyload, i64 96
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !226 ; 3 uses
  %i.ko = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !567 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 8 ; 2 uses
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.i86.new

.lr.ph.i.i86.new:                                 ; preds = %.lr.ph.i.i86, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1
  %.014.i.i87 = phi i64 [ %i.lj, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ] ; 3 uses
  %.01213.i.i88 = phi i64 [ %i.li, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1 ], [ %i.ki, %.lr.ph.i.i86 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1 ], [ 0, %.lr.ph.i.i86 ]
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.014.i.i87
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !8
  %i.ks = add i64 %i.kr, %i.kh                    ; 2 uses
  %i.kt = icmp ult i64 %i.ks, %i.ko
  br i1 %i.kt, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89, label %.loopexit, !prof !140

.loopexit:                                        ; preds = %.epil.preheader, %.lr.ph.i.i86.new, %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89
  call void @_ZSt9terminatev() #30
  unreachable

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89: ; preds = %.lr.ph.i.i86.new
  %i.ku = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !68 ; 2 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %.01213.i.i88
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !137
  %i.kx = load ptr, ptr %i.kp, align 8, !tbaa !569 ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.ks
  store i32 %i.kw, ptr %i.ky, align 4, !tbaa !137
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.014.i.i87
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !8
  %i.lc = add i64 %i.lb, %i.kh                    ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.ko
  br i1 %i.ld, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %.01213.i.i88
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !137
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.lc
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !137
  %i.li = add nuw i64 %.01213.i.i88, 2            ; 2 uses
  %i.lj = add i64 %.014.i.i87, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, label %.lr.ph.i.i86.new, !llvm.loop !704

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.1
  br i1 %lcmp.mod.not, label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %.lr.ph.i.i86
  %.014.i.i87.epil.init = phi i64 [ 0, %.lr.ph.i.i86 ], [ %i.lj, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  %.01213.i.i88.epil.init = phi i64 [ %i.ki, %.lr.ph.i.i86 ], [ %i.li, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %.014.i.i87.epil.init
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !8
  %i.lm = add i64 %i.ll, %i.kh                    ; 2 uses
  %i.ln = icmp ult i64 %i.lm, %i.ko
  br i1 %i.ln, label %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.epil, label %.loopexit, !prof !140

_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.epil: ; preds = %.epil.preheader
  %i.lo = load ptr, ptr %.sroa.5149.0.copyload, align 8, !tbaa !68
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.01213.i.i88.epil.init
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !137
  %i.lr = load ptr, ptr %i.kp, align 8, !tbaa !569
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lm
  store i32 %i.lq, ptr %i.ls, align 4, !tbaa !137
  br label %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91

_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91: ; preds = %_ZNK7xgboost6common4SpanIjLm18446744073709551615EEixEm.exit.i.i89.epil, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91.loopexit.unr-lcssa, %bb.q
  %i.lt = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.lt, %0
  br i1 %exitcond.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.q, !llvm.loop !714

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit91, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit85, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit79, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit73, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit67, %_ZN4dmlc12OMPException3RunIZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS6_E_clIjEEDaS6_EUlS6_E_JmEEEvS6_DpT0_.exit, %_ZZZN7xgboost6common12ColumnMatrix17SetIndexNoMissingIjEEvmPKT_mmiENKUlS3_E_clIjEEDaS3_ENKUlS3_E_clImEEDaS3_.exit, %.preheader162, %.preheader160, %.preheader158, %.preheader156, %.preheader154, %.preheader152, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.f
  %i.lu = landingpad { ptr, i32 }
          catch ptr null
  %i.lv = extractvalue { ptr, i32 } %i.lu, 0
  call void @__clang_call_terminate(ptr %i.lv) #30
  unreachable
}

declare noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common15DispatchBinTypeIZNS0_12ColumnMatrix20SetIndexMixedColumnsINS_4data22SparsePageAdapterBatchEEEvmRKT_RKNS_16GHistIndexMatrixEfEUlS6_E_EEDaNS0_11BinTypeSizeEOS6_(i8 noundef zeroext %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  switch i8 %0, label %bb.q [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 4, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZZN7xgboost6common12ColumnMatrix20SetIndexMixedColumnsINS_4data22SparsePageAdapterBatchEEEvmRKT_RKNS_16GHistIndexMatrixEfENKUlS5_E_clIhEEDaS5_(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 0)
  br label %_ZZN7xgboost6common12ColumnMatrix20SetIndexMixedColumnsINS_4data22SparsePageAdapterBatchEEEvmRKT_RKNS_16GHistIndexMatrixEfENKUlS5_E_clItEEDaS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !534    ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !715, !nonnull !33, !align !479 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !96   ; 2 uses
  %spec.select.i.i.i = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.e, i64 1)
  %.not.i = icmp ult i64 %i.e, 2
  br i1 %.not.i, label %_ZZN7xgboost6common12ColumnMatrix20SetIndexMixedColumnsINS_4data22SparsePageAdapterBatchEEEvmRKT_RKNS_16GHistIndexMatrixEfENKUlS5_E_clItEEDaS5_.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !716, !noalias !717
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !720, !noalias !717 ; 2 uses
  %i.j = icmp ne ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !33, !align !554
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph21.i
  %.01319.i = phi i64 [ 0, %.lr.ph21.i ], [ %i.ac, %._crit_edge.i ] ; 3 uses
  %.01418.i = phi i64 [ 0, %.lr.ph21.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01319.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8, !noalias !717 ; 2 uses
  %i.x = load i64, ptr %i.u, align 8, !tbaa !8, !noalias !717 ; 3 uses
  %i.y = icmp eq i64 %i.w, %i.x                   ; 2 uses
  %i.z = or i1 %i.j, %i.y
  br i1 %i.z, label %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit.i, label %bb.e, !prof !140

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #30, !noalias !717
  unreachable

_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit.i: ; preds = %bb.d
  %i.aa = sub i64 %i.w, %i.x
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.x
  br i1 %i.y, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit.i
  %.1.lcssa.i = phi i64 [ %.01418.i, %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit.i ], [ %.2.i, %bb.i ]
  %i.ac = add nuw i64 %.01319.i, 1                ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %spec.select.i.i.i
  br i1 %i.ad, label %bb.d, label %_ZZN7xgboost6common12ColumnMatrix20SetIndexMixedColumnsINS_4data22SparsePageAdapterBatchEEEvmRKT_RKNS_16GHistIndexMatrixEfENKUlS5_E_clItEEDaS5_.exit, !llvm.loop !722

.lr.ph.i:                                         ; preds = %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit.i, %bb.i
  %.017.i = phi i64 [ %i.cc, %bb.i ], [ 0, %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit.i ] ; 2 uses
  %.116.i = phi i64 [ %.2.i, %bb.i ], [ %.01418.i, %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.017.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !723, !noalias !725
  %i.ag = zext i32 %i.af to i64                   ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !728, !noalias !725 ; 2 uses
  %i.aj = fcmp ord float %i.ai, 0.000000e+00
  %i.ak = load float, ptr %i.l, align 4
  %i.al = fcmp une float %i.ai, %i.ak
  %i.am = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %i.am, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !729, !nonnull !33, !align !479
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.116.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !137
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !730, !nonnull !33, !align !479
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !8
  %i.at = add i64 %i.as, %.01319.i                ; 3 uses
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !362
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ag
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !363
  %i.ax = icmp eq i8 %i.aw, 0
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !226
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ag
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !8  ; 3 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !369
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ag
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !137
  %i.bf = sub i32 %i.aq, %i.be
  %i.bg = trunc i32 %i.bf to i16                  ; 2 uses
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.at
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !373
  %i.bi = add i64 %i.ba, %i.at                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 5
  %i.bk = and i64 %i.bi, 31
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !731
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj ; 2 uses
  %i.bn = lshr exact i64 2147483648, %i.bk
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = xor i32 %i.bo, -1
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !137
  %i.br = and i32 %i.bq, %i.bp
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !137
  br label %_ZN7xgboost6common12ColumnMatrix12SetBinSparseItjmEEvT0_T1_jPT_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !226
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.ag ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !8  ; 2 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bu
  store i16 %i.bg, ptr %i.bv, align 2, !tbaa !373
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !226
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.ba
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.bu
  store i64 %i.at, ptr %i.by, align 8, !tbaa !8
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !8
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.bt, align 8, !tbaa !8
  br label %_ZN7xgboost6common12ColumnMatrix12SetBinSparseItjmEEvT0_T1_jPT_.exit.i

_ZN7xgboost6common12ColumnMatrix12SetBinSparseItjmEEvT0_T1_jPT_.exit.i: ; preds = %bb.h, %bb.g
  %i.cb = add i64 %.116.i, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN7xgboost6common12ColumnMatrix12SetBinSparseItjmEEvT0_T1_jPT_.exit.i, %.lr.ph.i
  %.2.i = phi i64 [ %i.cb, %_ZN7xgboost6common12ColumnMatrix12SetBinSparseItjmEEvT0_T1_jPT_.exit.i ], [ %.116.i, %.lr.ph.i ] ; 2 uses
  %i.cc = add nuw i64 %.017.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %i.aa
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !732

bb.j:                                             ; preds = %bb.a
  %i.cd = load ptr, ptr %1, align 8, !tbaa !534   ; 7 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !336
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !715, !nonnull !33, !align !479 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !96 ; 2 uses
  %spec.select.i.i.i6 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.ch, i64 1)
  %.not.i7 = icmp ult i64 %i.ch, 2
  br i1 %.not.i7, label %_ZZN7xgboost6common12ColumnMatrix20SetIndexMixedColumnsINS_4data22SparsePageAdapterBatchEEEvmRKT_RKNS_16GHistIndexMatrixEfENKUlS5_E_clItEEDaS5_.exit, label %.lr.ph21.i8

end_hunk_0
