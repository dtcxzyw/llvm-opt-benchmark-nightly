Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/in_memory_handler?download=true
inline.NumInlined: 1024
inline.NumDeleted: 445
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4dmlc8DemangleB5cxx11EPKc:bb.a
; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #18

declare ptr @__cxa_demangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc5ErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #7
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef) local_unnamed_addr #11

declare void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective17AlignedByteBuffer7ReplaceEmmPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.19", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = add i64 %2, %1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40, !noalias !128
  %.not.i = icmp ugt i64 %i.b, %i.d
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.19") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pr = load ptr, ptr %4, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.not22 = icmp eq ptr %.pr, null
  br i1 %.not22, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.e = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.36, i32 noundef 44)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.37, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.38, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %4, align 8, !tbaa !131    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  resume { ptr, i32 } %.pn

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %.pr20 = load ptr, ptr %4, align 8, !tbaa !131  ; 4 uses
  %.not.i19 = icmp eq ptr %.pr20, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %.pr20, align 8, !tbaa !41 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pr20, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !46
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr20, i64 noundef 32) #27
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %3, i64 %2, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.j:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI11max_align_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !59     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 576460752303423486
  %i.u = and i64 %i.t, 576460752303423487
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !134
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !139

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !134
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.y, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !134
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.z, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !134
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aa, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false), !tbaa.struct !134
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !141

_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !58
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorI11max_align_tSaIS0_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #25
  unreachable

_ZNKSt6vectorI11max_align_tSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 288230376151711743) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 5
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #28 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorI11max_align_tSaIS0_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 576460752303423486
  %i.an = and i64 %i.am, 576460752303423487
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !134
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 32 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !142

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !134
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ar, ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !134
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.as, ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !134
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.at, ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !134
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !141

_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorI11max_align_tSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorI11max_align_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ag, ptr align 16 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorI11max_align_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit

_ZNSt6vectorI11max_align_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseI11max_align_tSaIS0_EE13_M_deallocateEPS0_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI11max_align_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %2 = load ptr, ptr %i.h, align 8, !tbaa !133
  %3 = ptrtoint ptr %2 to i64
  %i.aw = sub i64 %3, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aw) #27
  br label %_ZNSt12_Vector_baseI11max_align_tSaIS0_EE13_M_deallocateEPS0_m.exit38

_ZNSt12_Vector_baseI11max_align_tSaIS0_EE13_M_deallocateEPS0_m.exit38: ; preds = %_ZNSt6vectorI11max_align_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !59
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %1
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ay, ptr %i.h, align 8, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP11max_align_tmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI11max_align_tSaIS0_EE13_M_deallocateEPS0_m.exit38, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #27
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.39, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !40
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.b)
          to label %_ZNSolsEm.exit unwind label %bb.f ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.40, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5: ; preds = %_ZNSolsEm.exit
  %i.e = load i64, ptr %2, align 8, !tbaa !40
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e)
          to label %_ZNSolsEm.exit6 unwind label %bb.f

_ZNSolsEm.exit6:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZNSolsEm.exit6
  %i.h = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.b unwind label %bb.f       ; 8 uses

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !52, !alias.scope !149
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !45, !alias.scope !149
  store i8 0, ptr %i.i, align 8, !tbaa !46, !alias.scope !149
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111, !noalias !149 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !149 ; 2 uses
  %i.o = icmp ugt ptr %i.l, %i.n
  %.08.i.i.i = select i1 %i.o, ptr %i.l, ptr %i.n ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112, !noalias !149 ; 2 uses
  %i.r = ptrtoint ptr %.08.i.i.i to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef 0, ptr noundef %i.q, i64 noundef %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !41, !alias.scope !149 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.i, align 8, !tbaa !46, !alias.scope !149
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #27
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !131
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !87
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %3, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void

bb.f:                                             ; preds = %_ZNSolsEm.exit6, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit5, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #27
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %.body ], [ %i.ap, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost10collective17AllgatherVFunctorclEPKcmPNS0_17AlignedByteBufferE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i64 %2, ptr %4, align 8, !tbaa !150
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !152
  %i.e = call { ptr, i8 } @_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE7emplaceIJRKiS3_EEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !66   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !153
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !62
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i64 %i.h, %i.k
  br i1 %i.l, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !154  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.not10 = icmp eq ptr %i.n, %i.o
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %_ZN7xgboost10collective17AlignedByteBuffer6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.r = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !155
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.t)
          to label %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit: ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr null, ptr %i.s, align 8, !tbaa !155
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.w, ptr %i.y, align 8, !tbaa !156
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !153
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN7xgboost10collective17AlignedByteBuffer6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.07.011 = phi ptr [ %i.n, %.lr.ph ], [ %i.as, %_ZN7xgboost10collective17AlignedByteBuffer6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 40
  %.sroa.0.0.copyload = load i64, ptr %i.aa, align 8, !tbaa !40 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 48
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !102
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !57  ; 2 uses
  %i.ac = add i64 %i.ab, %.sroa.0.0.copyload      ; 2 uses
  %i.ad = add i64 %i.ac, 31
  %i.ae = lshr i64 %i.ad, 5                       ; 4 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !58  ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5                 ; 3 uses
  %i.al = icmp ugt i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = sub nuw nsw i64 %i.ae, %i.ak
  call void @_ZNSt6vectorI11max_align_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.am)
  br label %_ZN7xgboost10collective17AlignedByteBuffer6ResizeEm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.an = icmp ult i64 %i.ae, %i.ak
  br i1 %i.an, label %bb.g, label %_ZN7xgboost10collective17AlignedByteBuffer6ResizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ao
  br i1 %.not.i.i.i.i, label %_ZN7xgboost10collective17AlignedByteBuffer6ResizeEm.exit.i, label %_ZSt8_DestroyIP11max_align_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP11max_align_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.ao, ptr %i.q, align 8, !tbaa !58
  br label %_ZN7xgboost10collective17AlignedByteBuffer6ResizeEm.exit.i

_ZN7xgboost10collective17AlignedByteBuffer6ResizeEm.exit.i: ; preds = %_ZSt8_DestroyIP11max_align_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %bb.g, %bb.f, %bb.e
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !57
  %i.ap = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ap, label %_ZN7xgboost10collective17AlignedByteBuffer6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost10collective17AlignedByteBuffer6ResizeEm.exit.i
  %i.aq = load ptr, ptr %3, align 8, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload, i1 false)
  br label %_ZN7xgboost10collective17AlignedByteBuffer6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN7xgboost10collective17AlignedByteBuffer6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN7xgboost10collective17AlignedByteBuffer6ResizeEm.exit.i, %bb.h
  %i.as = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.07.011) #29 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.o
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d

bb.i:                                             ; preds = %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE5clearEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE7emplaceIJRKiS3_EEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !120
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = icmp ult i64 %i.g, %i.b                  ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !158

_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !40
  %i.l = icmp ugt i64 %i.k, %i.b
  br i1 %i.l, label %.critedge, label %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE12emplace_hintIJRKiS3_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit, %bb.b
  %.08.lcssa.i.i.i22 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE11lower_boundERS7_.exit ], [ %i.e, %bb.a ]
  %i.m = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %3 = load i32, ptr %1, align 4, !tbaa !120
  %4 = sext i32 %3 to i64
  store i64 %4, ptr %i.n, align 8, !tbaa !159
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !161
  %i.p = invoke { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i22, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.c unwind label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.c:                                             ; preds = %.critedge
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.e
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.n, align 8, !tbaa !40
  %i.v = load i64, ptr %i.t, align 8, !tbaa !40
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.m, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !153
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !153
  br label %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE12emplace_hintIJRKiS3_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %.critedge
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 56) #27
  resume { ptr, i32 } %i.ab

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 56) #27
  br label %_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE12emplace_hintIJRKiS3_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit

_ZNSt3mapImSt17basic_string_viewIcSt11char_traitsIcEESt4lessImESaISt4pairIKmS3_EEE12emplace_hintIJRKiS3_EEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_.exit: ; preds = %bb.b, %bb.f, %.thread.i.i
  %.sroa.020.0 = phi ptr [ %i.q, %bb.f ], [ %i.m, %.thread.i.i ], [ %.19.i.i.i, %bb.b ]
  %.sroa.3.0 = phi i8 [ 1, %bb.f ], [ 1, %.thread.i.i ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.020.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !153
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !40
  %i.i = load i64, ptr %2, align 8, !tbaa !40
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !157 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !40     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !157 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !162

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !154
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #29 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !40
  %.pre82 = load i64, ptr %2, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !40     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !163
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !157 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !157 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !162

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #29 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !157 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmSt17basic_string_viewIcSt11char_traitsIcEEESt10_Select1stIS6_ESt4lessImESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_0
