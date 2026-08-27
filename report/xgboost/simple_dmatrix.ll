Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/simple_dmatrix?download=true
inline.NumInlined: 4408
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7xgboost4data13SimpleDMatrix22GetSortedColumnBatchesEPKNS_7ContextE:bb.a
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit: ; preds = %bb.r, %bb.q
  %.pr = load ptr, ptr %i.as, align 8, !tbaa !135 ; 8 uses
  store ptr %.pre33, ptr %0, align 8, !tbaa !368
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pre34, ptr %i.az, align 8, !tbaa !135
  %.not.i.i.i22 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i22, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ba, align 8, !tbaa !137
  %i.be = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !139
  %i.bf = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #18, !inline_history !371
  %i.bi = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #18, !inline_history !371
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit26

bb.u:                                             ; preds = %bb.s
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i23 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24

bb.w:                                             ; preds = %bb.u
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i25 = phi i32 [ %i.bd, %bb.v ], [ %i.bn, %bb.w ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i25, 1
  br i1 %i.bo, label %bb.x, label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit26, !prof !141

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #18
  br label %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit26

_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit26: ; preds = %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit.thread, %_ZN7xgboost13BatchIteratorINS_13SortedCSCPageEED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.y:                                             ; preds = %bb.j, %bb.k, %.body16
  %.pn14 = phi { ptr, i32 } [ %i.ar, %.body16 ], [ %.pn30, %bb.k ], [ %eh.lpad-body, %bb.j ]
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #18 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1) #18, !inline_history !372
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #29
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !137
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !139
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !373
  store ptr %1, ptr %0, align 8, !tbaa !375
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !135  ; 8 uses
  store ptr %i.a, ptr %i.o, align 8, !tbaa !135
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !139
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !376
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !376
  br label %_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !141

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18
  br label %_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

declare void @_ZN7xgboost10SparsePage8SortRowsEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost4data13SimpleDMatrix17GetEllpackBatchesEPKNS_7ContextERKNS_10BatchParamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.xgboost::BatchSet.138") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(5472) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__shared_ptr.21", align 16 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr.143", align 8 ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %8 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::unique_ptr.143", align 8 ; 8 uses
  %11 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %12 = alloca %"struct.xgboost::Context", align 8 ; 7 uses
  %.sroa.6 = alloca [22 x i8], align 2            ; 4 uses
  %13 = alloca %"class.xgboost::BatchIterator.139", align 8 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.161", align 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  tail call void @_ZN7xgboost4data6detail10CheckEmptyERKNS_10BatchParamES4_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !377
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread176, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %3, align 8, !tbaa !136    ; 5 uses
  %.not187 = icmp eq i32 %i.i, 0
  br i1 %.not187, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.k = load i8, ptr %i.j, align 1, !tbaa !378, !range !60, !noundef !61
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread172

bb.d:                                             ; preds = %bb.c
  %.sroa.0113.0.copyload = load i32, ptr %i.f, align 8, !tbaa !136 ; 4 uses
  %.sroa.3114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %.sroa.3114.0.copyload = load double, ptr %.sroa.3114.0..sroa_idx, align 8, !tbaa !379 ; 4 uses
  %.sroa.3124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.3124.0.copyload = load i8, ptr %.sroa.3124.0..sroa_idx, align 8, !tbaa !49
  %.sroa.5126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.5126.0.copyload = load double, ptr %.sroa.5126.0..sroa_idx, align 8, !tbaa !379 ; 4 uses
  %i.m = trunc nuw i8 %.sroa.3124.0.copyload to i1
  br i1 %i.m, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp uno double %.sroa.3114.0.copyload, 0.000000e+00
  %i.o = fcmp uno double %.sroa.5126.0.copyload, 0.000000e+00
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %or.cond.i.i = fcmp uno double %.sroa.3114.0.copyload, %.sroa.5126.0.copyload
  br i1 %or.cond.i.i, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp une double %.sroa.3114.0.copyload, %.sroa.5126.0.copyload
  %i.r = zext i1 %i.q to i32
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = phi i32 [ 1, %bb.e ], [ %i.r, %bb.g ], [ 0, %bb.f ]
  %i.t = icmp ne i32 %.sroa.0113.0.copyload, %i.i
  %i.u = zext i1 %i.t to i32
  %i.v = or i32 %i.s, %i.u
  %.not188 = icmp eq i32 %i.v, 0
  br i1 %.not188, label %.thread, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread: ; preds = %bb.d, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.0113.0.copyload, ptr %i.d, align 4, !tbaa !136, !noalias !380
  store i32 %i.i, ptr %i.e, align 4, !tbaa !136, !noalias !380
  %i.w = icmp eq i32 %.sroa.0113.0.copyload, %i.i
  br i1 %i.w, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.143") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %.pr = load ptr, ptr %5, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not189 = icmp eq ptr %.pr, null
  br i1 %.not189, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.x = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.x, ptr noundef nonnull @.str.1, i32 noundef 100)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.i

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.y = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %.loopexit.split-lp ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.6, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = load ptr, ptr %5, align 8, !tbaa !245   ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.ac, i64 noundef %i.ae)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %.lr.ph.i unwind label %.loopexit.split-lp ; 0 uses

.lr.ph.i:                                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %.noexc39
  %.010.i.idx = phi i64 [ %.010.i.add, %.noexc39 ], [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ] ; 2 uses
  %.010.i.ptr = getelementptr inbounds nuw i8, ptr @.str.73, i64 %.010.i.idx
  %i.ah = load i8, ptr %.010.i.ptr, align 1, !tbaa !40
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext %i.ah)
          to label %.noexc39 unwind label %.loopexit ; 0 uses

.noexc39:                                         ; preds = %.lr.ph.i
  %.010.i.add = add nuw nsw i64 %.010.i.idx, 1    ; 2 uses
  %.not.i38 = icmp eq i64 %.010.i.add, 133
  br i1 %.not.i38, label %_ZN7xgboostlsERSoNS_10StringViewE.exit, label %.lr.ph.i

_ZN7xgboostlsERSoNS_10StringViewE.exit:           ; preds = %.noexc39
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h, %_ZN7xgboostlsERSoNS_10StringViewE.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.by

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %lpad.phi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bx

bb.l:                                             ; preds = %_ZN7xgboostlsERSoNS_10StringViewE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.pr169 = load ptr, ptr %5, align 8, !tbaa !245 ; 4 uses
  %.not.i40 = icmp eq ptr %.pr169, null
  br i1 %.not.i40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %.pr169, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pr169, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.an = load i64, ptr %i.al, align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr169, i64 noundef 32) #30
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.l, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.sroa.0132.0.copyload.pre = load i32, ptr %i.f, align 8, !tbaa !136
  %.sroa.3134.0.copyload.pre = load double, ptr %.sroa.3114.0..sroa_idx, align 8, !tbaa !379
  %.sroa.0142.0.copyload.pre = load i32, ptr %3, align 8, !tbaa !136 ; 2 uses
  %.sroa.5146.0.copyload.pre = load double, ptr %.sroa.5126.0..sroa_idx, align 8, !tbaa !379
  %.not.i41 = icmp eq i32 %.sroa.0142.0.copyload.pre, 0
  br i1 %.not.i41, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread172, label %.thread

.thread:                                          ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit, %bb.n
  %.sroa.0132.0.copyload226 = phi i32 [ %.sroa.0132.0.copyload.pre, %bb.n ], [ %.sroa.0113.0.copyload, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ]
  %.sroa.3134.0.copyload225 = phi double [ %.sroa.3134.0.copyload.pre, %bb.n ], [ %.sroa.3114.0.copyload, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ] ; 3 uses
  %.sroa.0142.0.copyload224 = phi i32 [ %.sroa.0142.0.copyload.pre, %bb.n ], [ %i.i, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ]
  %.sroa.5146.0.copyload223 = phi double [ %.sroa.5146.0.copyload.pre, %bb.n ], [ %.sroa.5126.0.copyload, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ] ; 3 uses
  %.sroa.3144.0.copyload = load i8, ptr %.sroa.3124.0..sroa_idx, align 8, !tbaa !49
  %i.ap = trunc nuw i8 %.sroa.3144.0.copyload to i1
  br i1 %i.ap, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread, label %bb.o, !prof !383

bb.o:                                             ; preds = %.thread
  %i.aq = fcmp uno double %.sroa.3134.0.copyload225, 0.000000e+00
  %i.ar = fcmp uno double %.sroa.5146.0.copyload223, 0.000000e+00
  %i.as = xor i1 %i.aq, %i.ar
  br i1 %i.as, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond.i.i42 = fcmp uno double %.sroa.3134.0.copyload225, %.sroa.5146.0.copyload223
  br i1 %or.cond.i.i42, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = fcmp une double %.sroa.3134.0.copyload225, %.sroa.5146.0.copyload223
  %i.au = zext i1 %i.at to i32
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45: ; preds = %bb.o, %bb.p, %bb.q
  %i.av = phi i32 [ 1, %bb.o ], [ %i.au, %bb.q ], [ 0, %bb.p ]
  %i.aw = icmp ne i32 %.sroa.0132.0.copyload226, %.sroa.0142.0.copyload224
  %i.ax = zext i1 %i.aw to i32
  %i.ay = or i32 %i.av, %i.ax
  %.not190 = icmp eq i32 %i.ay, 0
  br i1 %.not190, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread172, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread, !prof !384

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread: ; preds = %.thread, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.az = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.az, ptr noundef nonnull @.str.1, i32 noundef 102)
  %i.ba = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit47 unwind label %bb.r ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit47: ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.7, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit47
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread172

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit47, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.s unwind label %bb.by

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bx

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread172: ; preds = %bb.n, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51, %bb.c
  %.pr174 = load ptr, ptr %i.g, align 8, !tbaa !377
  %.not191 = icmp eq ptr %.pr174, null
  br i1 %.not191, label %.thread176, label %.thread175

.thread175:                                       ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread172
  %.sroa.0162.0.copyload.pre = load i32, ptr %3, align 8, !tbaa !136 ; 2 uses
  %.sroa.0152.0.copyload = load i32, ptr %i.f, align 8, !tbaa !136
  %.sroa.3154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.3154.0.copyload = load double, ptr %.sroa.3154.0..sroa_idx, align 8, !tbaa !379 ; 3 uses
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5166.0.copyload = load double, ptr %.sroa.5166.0..sroa_idx, align 8, !tbaa !379 ; 3 uses
  %.not.i52 = icmp eq i32 %.sroa.0162.0.copyload.pre, 0
  br i1 %.not.i52, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178, label %bb.t

bb.t:                                             ; preds = %.thread175
  %.sroa.3164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.3164.0.copyload = load i8, ptr %.sroa.3164.0..sroa_idx, align 8, !tbaa !49
  %i.be = trunc nuw i8 %.sroa.3164.0.copyload to i1
  br i1 %i.be, label %.thread176, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = fcmp uno double %.sroa.3154.0.copyload, 0.000000e+00
  %i.bg = fcmp uno double %.sroa.5166.0.copyload, 0.000000e+00
  %i.bh = xor i1 %i.bf, %i.bg
  br i1 %i.bh, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond.i.i53 = fcmp uno double %.sroa.3154.0.copyload, %.sroa.5166.0.copyload
  br i1 %or.cond.i.i53, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = fcmp une double %.sroa.3154.0.copyload, %.sroa.5166.0.copyload
  %i.bj = zext i1 %i.bi to i32
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56: ; preds = %bb.u, %bb.v, %bb.w
  %i.bk = phi i32 [ 1, %bb.u ], [ %i.bj, %bb.w ], [ 0, %bb.v ]
  %i.bl = icmp ne i32 %.sroa.0152.0.copyload, %.sroa.0162.0.copyload.pre
  %i.bm = zext i1 %i.bl to i32
  %i.bn = or i32 %i.bk, %i.bm
  %.not192 = icmp eq i32 %i.bn, 0
  br i1 %.not192, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178, label %.thread176

.thread176:                                       ; preds = %bb.t, %bb.a, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit45.thread172
  %i.bo = call noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 2)
  br i1 %i.bo, label %.noexc.i, label %bb.ac

.noexc.i:                                         ; preds = %.thread176
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bp, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 58, ptr %i.a, align 8, !tbaa !127
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc57 unwind label %bb.y   ; 3 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.bq, ptr %9, align 8, !tbaa !38
  %i.br = load i64, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.bq, ptr noundef nonnull align 1 dereferenceable(58) @.str.1, i64 58, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 106, i32 noundef 2)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %.noexc57
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.8, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %bb.x
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #18
  %i.bv = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bp
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.bx = load i64, ptr %i.bp, align 8, !tbaa !40
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ac

bb.y:                                             ; preds = %.noexc.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.z:                                             ; preds = %.noexc57
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %8) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn22 = phi { ptr, i32 } [ %i.cb, %bb.aa ], [ %i.ca, %bb.z ] ; 2 uses
  %i.cc = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bp
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ab
  %i.ce = load i64, ptr %i.bp, align 8, !tbaa !40
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.y
  %.pn22.pn = phi { ptr, i32 } [ %i.bz, %bb.y ], [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %.pn22, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bx

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.thread176
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.cg = load i32, ptr %3, align 8, !tbaa !385   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !136, !noalias !386
  store i32 2, ptr %i.c, align 4, !tbaa !136, !noalias !386
  %.not.i = icmp slt i32 %i.cg, 2
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit80

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.ac
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.143") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.pr180 = load ptr, ptr %10, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not193 = icmp eq ptr %.pr180, null
  br i1 %.not193, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit80, label %bb.ad

bb.ad:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ch = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc63 unwind label %bb.ae

.noexc63:                                         ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ch, ptr noundef nonnull @.str.1, i32 noundef 112)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit65 unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit65:          ; preds = %.noexc63
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit67 unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit67: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit65
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit67
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.9, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cl = load ptr, ptr %10, align 8, !tbaa !245  ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !42
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.cm, i64 noundef %i.co)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73 unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc63, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit67, %_ZN4dmlc15LogMessageFatalC2EPKci.exit65
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ag unwind label %bb.by

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn25 = phi { ptr, i32 } [ %i.cr, %bb.ae ], [ %i.cs, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bx

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %.pr181 = load ptr, ptr %10, align 8, !tbaa !245 ; 4 uses
  %.not.i76 = icmp eq ptr %.pr181, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit80, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ct = load ptr, ptr %.pr181, align 8, !tbaa !38 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pr181, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77: ; preds = %bb.ai
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !40
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i78

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i78: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77
  call void @_ZdlPvm(ptr noundef nonnull %.pr181, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit80

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit80: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cy, align 8
  %i.cz = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit80
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.dc = load i8, ptr %2, align 8
  store i8 %i.dc, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.df, ptr noundef nonnull align 8 dereferenceable(19) %i.cy, i64 19, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !134
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !134
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !135 ; 4 uses
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !135 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i.i.i, label %_ZN7xgboost7ContextaSERKS0_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not7.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !136
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !136
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dr = atomicrmw volatile add ptr %i.dn, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.dj, align 8, !tbaa !135
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.ak
  %i.ds = phi ptr [ %i.dm, %bb.ak ], [ %i.dm, %bb.am ], [ %.pr.pre.i.i.i.i, %bb.an ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dt, align 8, !tbaa !137
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !139
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #18, !inline_history !140
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #18, !inline_history !140
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i9.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.ar ], [ %i.eg, %bb.as ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eh, label %bb.at, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !141

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ap, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !135
  br label %_ZN7xgboost7ContextaSERKS0_.exit

_ZN7xgboost7ContextaSERKS0_.exit:                 ; preds = %bb.aj, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN7xgboost4data13SimpleDMatrix17GetEllpackBatchesEPKNS_7ContextERKNS_10BatchParamE:bb.a
  br label %_ZNSt12__shared_ptrIN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.bg:                                            ; preds = %bb.be
  %i.gh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i84 = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i.i84, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gi = add nsw i32 %i.fz, -1
  store i32 %i.gi, ptr %i.fw, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85

bb.bi:                                            ; preds = %bb.bg
  %i.gj = atomicrmw volatile add ptr %i.fw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i86 = phi i32 [ %i.fz, %bb.bh ], [ %i.gj, %bb.bi ]
  %i.gk = icmp eq i32 %.0.i.i.i.i.i86, 1
  br i1 %i.gk, label %bb.bj, label %_ZNSt12__shared_ptrIN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, !prof !141

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #18
  br label %_ZNSt12__shared_ptrIN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

_ZNSt12__shared_ptrIN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit: ; preds = %bb.bd, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i85, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %3, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.0..sroa_idx107, i64 22, i1 false), !tbaa.struct !390
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !49
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 361
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !49
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6, i64 22, i1 false), !tbaa.struct !390
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178

bb.bk:                                            ; preds = %bb.bc
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef 8) #30
  br label %bb.bx

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178: ; preds = %bb.b, %.thread175, %_ZNSt12__shared_ptrIN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.gm = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 4 uses
  %i.gn = load ptr, ptr %i.g, align 8, !tbaa !377 ; 3 uses
  store ptr %i.gn, ptr %14, align 8, !tbaa !391
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !135 ; 4 uses
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !135
  %.not.i.i.i87 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i87, label %_ZNSt10shared_ptrIKN7xgboost11EllpackPageEEC2IS1_vEERKS_IT_E.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 3 uses
  %i.gs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i88 = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i.i88, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !136
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !136
  br label %_ZNSt10shared_ptrIKN7xgboost11EllpackPageEEC2IS1_vEERKS_IT_E.exit

bb.bn:                                            ; preds = %bb.bl
  %i.gv = atomicrmw volatile add ptr %i.gr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %14, align 8, !tbaa !391
  %.pre199 = load ptr, ptr %i.go, align 8, !tbaa !135
  br label %_ZNSt10shared_ptrIKN7xgboost11EllpackPageEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN7xgboost11EllpackPageEEC2IS1_vEERKS_IT_E.exit: ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178, %bb.bm, %bb.bn
  %i.gw = phi ptr [ null, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178 ], [ %i.gq, %bb.bm ], [ %.pre199, %bb.bn ]
  %i.gx = phi ptr [ %i.gn, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit56.thread178 ], [ %i.gn, %bb.bm ], [ %.pre, %bb.bn ]
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7xgboost4data23SimpleBatchIteratorImplINS_11EllpackPageEEE, i64 16), ptr %i.gm, align 8, !tbaa !10
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !391
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store ptr null, ptr %i.go, align 8, !tbaa !135
  store ptr %i.gw, ptr %i.gz, align 8, !tbaa !135
  store ptr null, ptr %14, align 8, !tbaa !391
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  invoke void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_11EllpackPageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.gm)
          to label %_ZNSt12__shared_ptrIKN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %.body

.body:                                            ; preds = %_ZNSt10shared_ptrIKN7xgboost11EllpackPageEEC2IS1_vEERKS_IT_E.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_11EllpackPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #18
  call void @_ZNSt12__shared_ptrIKN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.bx

_ZNSt12__shared_ptrIKN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN7xgboost11EllpackPageEEC2IS1_vEERKS_IT_E.exit
  %.pre200 = load ptr, ptr %13, align 8, !tbaa !393 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre201 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i.i.i.i90 = icmp eq ptr %.pre201, null
  br i1 %.not.i.i.i.i90, label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit.thread, label %bb.bo

_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit.thread: ; preds = %_ZNSt12__shared_ptrIKN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %.pre200, ptr %0, align 8, !tbaa !393
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.hc, align 8, !tbaa !135
  br label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit100

bb.bo:                                            ; preds = %_ZNSt12__shared_ptrIKN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre201, i64 8 ; 3 uses
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i91 = icmp eq i8 %i.he, 0
  br i1 %.not.i.i.i.i.i91, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hf = load i32, ptr %i.hd, align 4, !tbaa !136
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.hd, align 4, !tbaa !136
  br label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit

bb.bq:                                            ; preds = %bb.bo
  %i.hh = atomicrmw volatile add ptr %i.hd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit

_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit: ; preds = %bb.bq, %bb.bp
  %.pr185 = load ptr, ptr %i.hb, align 8, !tbaa !135 ; 8 uses
  store ptr %.pre200, ptr %0, align 8, !tbaa !393
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pre201, ptr %i.hi, align 8, !tbaa !135
  %.not.i.i.i96 = icmp eq ptr %.pr185, null
  br i1 %.not.i.i.i96, label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit100, label %bb.br

bb.br:                                            ; preds = %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %.pr185, i64 8 ; 4 uses
  %i.hk = load atomic i64, ptr %i.hj acquire, align 8 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 4294967297
  %i.hm = trunc i64 %i.hk to i32                  ; 2 uses
  br i1 %i.hl, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.hj, align 8, !tbaa !137
  %i.hn = getelementptr inbounds nuw i8, ptr %.pr185, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !139
  %i.ho = load ptr, ptr %.pr185, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %.pr185) #18, !inline_history !396
  %i.hr = load ptr, ptr %.pr185, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %.pr185) #18, !inline_history !396
  br label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit100

bb.bt:                                            ; preds = %bb.br
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i97 = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i97, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98

bb.bv:                                            ; preds = %bb.bt
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i99 = phi i32 [ %i.hm, %bb.bu ], [ %i.hw, %bb.bv ]
  %i.hx = icmp eq i32 %.0.i.i.i.i.i99, 1
  br i1 %i.hx, label %bb.bw, label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit100, !prof !141

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr185) #18
  br label %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit100

_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit100: ; preds = %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit.thread, %_ZN7xgboost13BatchIteratorINS_11EllpackPageEED2Ev.exit, %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i98, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  ret void

bb.bx:                                            ; preds = %.body, %bb.bk, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.s, %bb.k
  %.pn27 = phi { ptr, i32 } [ %i.ha, %.body ], [ %i.gl, %bb.bk ], [ %.pn25, %bb.ag ], [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.bd, %bb.s ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %.pn27

bb.by:                                            ; preds = %bb.af, %bb.r, %bb.j
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4data6detail10CheckEmptyERKNS_10BatchParamES4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !385
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load i32, ptr %1, align 8
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d, !prof !397
  br i1 %or.cond, label %bb.e, label %bb.b, !prof !397

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.e, ptr noundef nonnull @.str.70, i32 noundef 19)
  %i.f = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.71, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.72, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4, %bb.a
  ret void

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !245    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef) local_unnamed_addr #1

declare void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7xgboost7Context8MakeCUDAEs(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::Context") align 8 %0, ptr noundef nonnull align 8 dereferenceable(5084) %1, i16 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.xgboost::Context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = load i8, ptr %1, align 8
  store i8 %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !42   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 %i.i, ptr %i.b, align 8, !tbaa !127
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !38
  %i.l = load i64, ptr %i.b, align 8, !tbaa !127
  store i64 %i.l, ptr %i.f, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !40
  store i8 %i.n, ptr %i.m, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !127  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !42
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.s, ptr noundef nonnull align 8 dereferenceable(19) %i.t, i64 19, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !135  ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.v, align 8, !tbaa !322
  store <2 x ptr> %i.z, ptr %i.u, align 8, !tbaa !322
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !136
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !136
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5004) %i.af, ptr noundef nonnull align 8 dereferenceable(5004) %i.ag, i64 5004, i1 false)
  %.sroa.2.0.insert.ext.i = zext i16 %2 to i32
  %.sroa.2.0.insert.shift.i = shl nuw i32 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, 1
  %i.ah = invoke noundef nonnull align 8 dereferenceable(5084) ptr @_ZN7xgboost7Context9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(5084) %3, i32 %.sroa.0.0.insert.insert.i)
          to label %bb.h unwind label %bb.u       ; 7 uses

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.ah, align 8
  store i8 %i.ai, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !35
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !42 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !127
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i7, label %._crit_edge.i.i.i3

.noexc.i.i7:                                      ; preds = %bb.h
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.u     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i7
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !38
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !127
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !40
  br label %._crit_edge.i.i.i3
end_hunk_1
begin_hunk_2_@_ZNK7xgboost7Context8MakeCUDAEs:bb.a

_ZN7xgboost7ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.u:                                             ; preds = %.noexc.i.i7, %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(5084) dereferenceable(5084) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.cg
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(5084) ptr @_ZN7xgboost7ContextaSEOS0_(ptr noundef nonnull align 8 dereferenceable(5084) %0, ptr noundef nonnull align 8 dereferenceable(5084) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  store i8 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !38   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.i, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !141

bb.c:                                             ; preds = %bb.b
  switch i64 %i.k, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.g, align 1, !tbaa !40
  store i8 %i.m, ptr %i.d, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !42
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !40
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.b, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42
  store i64 %i.t, ptr %i.r, align 8, !tbaa !42
  %i.u = load i64, ptr %i.h, align 8, !tbaa !40
  store i64 %i.u, ptr %i.e, align 8, !tbaa !40
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !40
  store ptr %i.g, ptr %i.b, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.y, align 8, !tbaa !42
  %i.z = load i64, ptr %i.h, align 8, !tbaa !40
  store i64 %i.z, ptr %i.e, align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %i.c, align 8, !tbaa !38
  store i64 %i.v, ptr %i.h, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.aa = phi ptr [ %i.d, %bb.f ], [ %i.h, %bb.g ], [ %i.g, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ab, align 8, !tbaa !42
  store i8 0, ptr %i.aa, align 1, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ac, ptr noundef nonnull align 8 dereferenceable(19) %i.ad, i64 19, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 8 uses
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !322
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN7xgboost11CUDAContextEEaSEOS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.aj, align 8, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !139
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18, !inline_history !398
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18, !inline_history !398
  br label %_ZNSt10shared_ptrIN7xgboost11CUDAContextEEaSEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.am, %bb.k ], [ %i.aw, %bb.l ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.m, label %_ZNSt10shared_ptrIN7xgboost11CUDAContextEEaSEOS2_.exit, !prof !141

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18
  br label %_ZNSt10shared_ptrIN7xgboost11CUDAContextEEaSEOS2_.exit

_ZNSt10shared_ptrIN7xgboost11CUDAContextEEaSEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5004) %i.ay, ptr noundef nonnull align 8 dereferenceable(5004) %i.az, i64 5004, i1 false)
  ret ptr %0
}

declare void @_ZN7xgboost11EllpackPageC1EPKNS_7ContextEPNS_7DMatrixERKNS_10BatchParamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost4data13SimpleDMatrix16GetGradientIndexEPKNS_7ContextERKNS_10BatchParamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.xgboost::BatchSet.164") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(5472) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::unique_ptr.143", align 8 ; 8 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %7 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::unique_ptr.143", align 8 ; 8 uses
  %10 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %11 = alloca %"struct.xgboost::Context", align 8 ; 9 uses
  %.sroa.6 = alloca [22 x i8], align 2            ; 4 uses
  %12 = alloca %"class.std::unique_ptr.143", align 8 ; 8 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %14 = alloca %"class.xgboost::BatchIterator.165", align 8 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.185", align 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 5 uses
  tail call void @_ZN7xgboost4data6detail10CheckEmptyERKNS_10BatchParamES4_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !399
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread236, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %3, align 8, !tbaa !136    ; 5 uses
  %.not252 = icmp eq i32 %i.k, 0
  br i1 %.not252, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79.thread238, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !378, !range !60, !noundef !61
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread232

bb.d:                                             ; preds = %bb.c
  %.sroa.0167.0.copyload = load i32, ptr %i.h, align 8, !tbaa !136 ; 4 uses
  %.sroa.3168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  %.sroa.3168.0.copyload = load double, ptr %.sroa.3168.0..sroa_idx, align 8, !tbaa !379 ; 4 uses
  %.sroa.3178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.3178.0.copyload = load i8, ptr %.sroa.3178.0..sroa_idx, align 8, !tbaa !49
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.5180.0.copyload = load double, ptr %.sroa.5180.0..sroa_idx, align 8, !tbaa !379 ; 4 uses
  %i.o = trunc nuw i8 %.sroa.3178.0.copyload to i1
  br i1 %i.o, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp uno double %.sroa.3168.0.copyload, 0.000000e+00
  %i.q = fcmp uno double %.sroa.5180.0.copyload, 0.000000e+00
  %i.r = xor i1 %i.p, %i.q
  br i1 %i.r, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %or.cond.i.i = fcmp uno double %.sroa.3168.0.copyload, %.sroa.5180.0.copyload
  br i1 %or.cond.i.i, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp une double %.sroa.3168.0.copyload, %.sroa.5180.0.copyload
  %i.t = zext i1 %i.s to i32
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = phi i32 [ 1, %bb.e ], [ %i.t, %bb.g ], [ 0, %bb.f ]
  %i.v = icmp ne i32 %.sroa.0167.0.copyload, %i.k
  %i.w = zext i1 %i.v to i32
  %i.x = or i32 %i.u, %i.w
  %.not253 = icmp eq i32 %i.x, 0
  br i1 %.not253, label %.thread, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread: ; preds = %bb.d, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %.sroa.0167.0.copyload, ptr %i.d, align 4, !tbaa !136, !noalias !400
  store i32 %i.k, ptr %i.e, align 4, !tbaa !136, !noalias !400
  %i.y = icmp eq i32 %.sroa.0167.0.copyload, %i.k
  br i1 %i.y, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit.thread
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.143") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %.pr = load ptr, ptr %4, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not254 = icmp eq ptr %.pr, null
  br i1 %.not254, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.z = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.z, ptr noundef nonnull @.str.1, i32 noundef 137)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.i

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.aa = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %.loopexit.split-lp ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.6, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ad = load ptr, ptr %4, align 8, !tbaa !245   ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !42
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ae, i64 noundef %i.ag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %.lr.ph.i unwind label %.loopexit.split-lp ; 0 uses

.lr.ph.i:                                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %.noexc60
  %.010.i.idx = phi i64 [ %.010.i.add, %.noexc60 ], [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ] ; 2 uses
  %.010.i.ptr = getelementptr inbounds nuw i8, ptr @.str.73, i64 %.010.i.idx
  %i.aj = load i8, ptr %.010.i.ptr, align 1, !tbaa !40
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext %i.aj)
          to label %.noexc60 unwind label %.loopexit ; 0 uses

.noexc60:                                         ; preds = %.lr.ph.i
  %.010.i.add = add nuw nsw i64 %.010.i.idx, 1    ; 2 uses
  %.not.i59 = icmp eq i64 %.010.i.add, 133
  br i1 %.not.i59, label %_ZN7xgboostlsERSoNS_10StringViewE.exit, label %.lr.ph.i

_ZN7xgboostlsERSoNS_10StringViewE.exit:           ; preds = %.noexc60
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h, %_ZN7xgboostlsERSoNS_10StringViewE.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.k unwind label %bb.cx

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %lpad.phi, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

bb.l:                                             ; preds = %_ZN7xgboostlsERSoNS_10StringViewE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pr229 = load ptr, ptr %4, align 8, !tbaa !245 ; 4 uses
  %.not.i61 = icmp eq ptr %.pr229, null
  br i1 %.not.i61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %.pr229, align 8, !tbaa !38 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pr229, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !40
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr229, i64 noundef 32) #30
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, %bb.l, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.sroa.0186.0.copyload.pre = load i32, ptr %i.h, align 8, !tbaa !136
  %.sroa.3188.0.copyload.pre = load double, ptr %.sroa.3168.0..sroa_idx, align 8, !tbaa !379
  %.sroa.0196.0.copyload.pre = load i32, ptr %3, align 8, !tbaa !136 ; 2 uses
  %.sroa.5200.0.copyload.pre = load double, ptr %.sroa.5180.0..sroa_idx, align 8, !tbaa !379
  %.not.i62 = icmp eq i32 %.sroa.0196.0.copyload.pre, 0
  br i1 %.not.i62, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread232, label %.thread

.thread:                                          ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit, %bb.n
  %.sroa.0186.0.copyload293 = phi i32 [ %.sroa.0186.0.copyload.pre, %bb.n ], [ %.sroa.0167.0.copyload, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ]
  %.sroa.3188.0.copyload292 = phi double [ %.sroa.3188.0.copyload.pre, %bb.n ], [ %.sroa.3168.0.copyload, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ] ; 3 uses
  %.sroa.0196.0.copyload291 = phi i32 [ %.sroa.0196.0.copyload.pre, %bb.n ], [ %i.k, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ]
  %.sroa.5200.0.copyload290 = phi double [ %.sroa.5200.0.copyload.pre, %bb.n ], [ %.sroa.5180.0.copyload, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit ] ; 3 uses
  %.sroa.3198.0.copyload = load i8, ptr %.sroa.3178.0..sroa_idx, align 8, !tbaa !49
  %i.ar = trunc nuw i8 %.sroa.3198.0.copyload to i1
  br i1 %i.ar, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread, label %bb.o, !prof !383

bb.o:                                             ; preds = %.thread
  %i.as = fcmp uno double %.sroa.3188.0.copyload292, 0.000000e+00
  %i.at = fcmp uno double %.sroa.5200.0.copyload290, 0.000000e+00
  %i.au = xor i1 %i.as, %i.at
  br i1 %i.au, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66, label %bb.p

bb.p:                                             ; preds = %bb.o
  %or.cond.i.i63 = fcmp uno double %.sroa.3188.0.copyload292, %.sroa.5200.0.copyload290
  br i1 %or.cond.i.i63, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = fcmp une double %.sroa.3188.0.copyload292, %.sroa.5200.0.copyload290
  %i.aw = zext i1 %i.av to i32
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66: ; preds = %bb.o, %bb.p, %bb.q
  %i.ax = phi i32 [ 1, %bb.o ], [ %i.aw, %bb.q ], [ 0, %bb.p ]
  %i.ay = icmp ne i32 %.sroa.0186.0.copyload293, %.sroa.0196.0.copyload291
  %i.az = zext i1 %i.ay to i32
  %i.ba = or i32 %i.ax, %i.az
  %.not255 = icmp eq i32 %i.ba, 0
  br i1 %.not255, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread232, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread, !prof !384

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread: ; preds = %.thread, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bb = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bb, ptr noundef nonnull @.str.1, i32 noundef 139)
  %i.bc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit68 unwind label %bb.r ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit68: ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.7, i64 noundef 54)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit68
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.10, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.r ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread232

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit68, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.s unwind label %bb.cx

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %common.resume

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread232: ; preds = %bb.n, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %bb.c
  %.pr234 = load ptr, ptr %i.i, align 8, !tbaa !399
  %.not256 = icmp eq ptr %.pr234, null
  br i1 %.not256, label %.thread236, label %.thread235

.thread235:                                       ; preds = %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread232
  %.sroa.0216.0.copyload.pre = load i32, ptr %3, align 8, !tbaa !136 ; 2 uses
  %.sroa.0206.0.copyload = load i32, ptr %i.h, align 8, !tbaa !136
  %.sroa.3208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.3208.0.copyload = load double, ptr %.sroa.3208.0..sroa_idx, align 8, !tbaa !379 ; 3 uses
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5220.0.copyload = load double, ptr %.sroa.5220.0..sroa_idx, align 8, !tbaa !379 ; 3 uses
  %.not.i75 = icmp eq i32 %.sroa.0216.0.copyload.pre, 0
  br i1 %.not.i75, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79.thread238, label %bb.t

bb.t:                                             ; preds = %.thread235
  %.sroa.3218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.3218.0.copyload = load i8, ptr %.sroa.3218.0..sroa_idx, align 8, !tbaa !49
  %i.bh = trunc nuw i8 %.sroa.3218.0.copyload to i1
  br i1 %i.bh, label %.thread236, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = fcmp uno double %.sroa.3208.0.copyload, 0.000000e+00
  %i.bj = fcmp uno double %.sroa.5220.0.copyload, 0.000000e+00
  %i.bk = xor i1 %i.bi, %i.bj
  br i1 %i.bk, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79, label %bb.v

bb.v:                                             ; preds = %bb.u
  %or.cond.i.i76 = fcmp uno double %.sroa.3208.0.copyload, %.sroa.5220.0.copyload
  br i1 %or.cond.i.i76, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = fcmp une double %.sroa.3208.0.copyload, %.sroa.5220.0.copyload
  %i.bm = zext i1 %i.bl to i32
  br label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79

_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79: ; preds = %bb.u, %bb.v, %bb.w
  %i.bn = phi i32 [ 1, %bb.u ], [ %i.bm, %bb.w ], [ 0, %bb.v ]
  %i.bo = icmp ne i32 %.sroa.0206.0.copyload, %.sroa.0216.0.copyload.pre
  %i.bp = zext i1 %i.bo to i32
  %i.bq = or i32 %i.bn, %i.bp
  %.not257 = icmp eq i32 %i.bq, 0
  br i1 %.not257, label %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79.thread238, label %.thread236

.thread236:                                       ; preds = %bb.t, %bb.a, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit79, %_ZN7xgboost4data6detail10RegenGHistENS_10BatchParamES2_.exit66.thread232
  %i.br = call noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef 3)
  br i1 %i.br, label %.noexc.i, label %bb.ac

.noexc.i:                                         ; preds = %.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.bs, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 58, ptr %i.a, align 8, !tbaa !127
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %bb.y   ; 3 uses

.noexc80:                                         ; preds = %.noexc.i
  store ptr %i.bt, ptr %8, align 8, !tbaa !38
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !127 ; 3 uses
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.bt, ptr noundef nonnull align 1 dereferenceable(58) @.str.1, i64 58, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  store i8 0, ptr %i.bw, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 143, i32 noundef 3)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %.noexc80
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.11, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82: ; preds = %bb.x
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #18
  %i.by = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bs
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
  %i.ca = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.ac

bb.y:                                             ; preds = %.noexc.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.z:                                             ; preds = %.noexc80
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380) %7) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn38 = phi { ptr, i32 } [ %i.ce, %bb.aa ], [ %i.cd, %bb.z ] ; 2 uses
  %i.cf = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bs
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ab
  %i.ch = load i64, ptr %i.bs, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.y
  %.pn38.pn = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %.pn38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %.pn38, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %common.resume

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.thread236
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.cj = load i32, ptr %3, align 8, !tbaa !385   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !136, !noalias !403
  store i32 2, ptr %i.c, align 4, !tbaa !136, !noalias !403
  %.not.i = icmp slt i32 %i.cj, 2
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit103

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.ac
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.143") align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.pr240 = load ptr, ptr %9, align 8, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not258 = icmp eq ptr %.pr240, null
  br i1 %.not258, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit103, label %bb.ad

bb.ad:                                            ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ck = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc86 unwind label %bb.ae

.noexc86:                                         ; preds = %bb.ad
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ck, ptr noundef nonnull @.str.1, i32 noundef 149)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit88 unwind label %bb.ae

_ZN4dmlc15LogMessageFatalC2EPKci.exit88:          ; preds = %.noexc86
  %i.cl = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit90 unwind label %bb.af ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit90: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit88
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit90
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.9, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92
  %i.co = load ptr, ptr %9, align 8, !tbaa !245   ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !42
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.cp, i64 noundef %i.cr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit96 unwind label %bb.af

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit96: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit96
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ah unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc86, %bb.ad, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit96, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit92, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit90, %_ZN4dmlc15LogMessageFatalC2EPKci.exit88
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ag unwind label %bb.cx

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn41 = phi { ptr, i32 } [ %i.cu, %bb.ae ], [ %i.cv, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %common.resume

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pr241 = load ptr, ptr %9, align 8, !tbaa !245 ; 4 uses
  %.not.i99 = icmp eq ptr %.pr241, null
  br i1 %.not.i99, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = load ptr, ptr %.pr241, align 8, !tbaa !38 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pr241, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100: ; preds = %bb.ai
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !40
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i101

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i101: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %.pr241, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit103

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit103: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !406, !range !60, !noundef !61
  %i.dd = trunc nuw i8 %i.dc to i1                ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.de, align 8
  %i.df = and i32 %.sroa.0.0.copyload.i.i, 65535
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.aw, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit103
  %i.dh = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28 ; 6 uses
  %i.di = load i32, ptr %3, align 8, !tbaa !385
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN7xgboost16GHistIndexMatrixC1EPKNS_7ContextEPNS_7DMatrixEidbNS_6common4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(225) %i.dh, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef %i.di, double noundef %i.dk, i1 noundef zeroext %i.dd, ptr noundef nonnull byval(%"class.xgboost::common::Span") align 8 %i.dl)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.dm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit unwind label %bb.al ; 5 uses

bb.al:                                            ; preds = %bb.ak
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  %i.dp = call ptr @__cxa_begin_catch(ptr %i.do) #18 ; 0 uses
  call void @_ZN7xgboost16GHistIndexMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(225) dereferenceable(225) %i.dh) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 232) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.ao unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.an

common.resume:                                    ; preds = %bb.k, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.ag, %.body, %bb.ci, %.body152, %bb.bj, %bb.av, %bb.ba, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.fb, %bb.ba ], [ %i.dq, %bb.am ], [ %i.jo, %.body ], [ %.pn, %bb.k ], [ %.pn41, %bb.ag ], [ %.pn38.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.bg, %bb.s ], [ %.pn45, %bb.ci ], [ %.pn43, %.body152 ], [ %i.fy, %bb.bj ], [ %i.en, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.an:                                            ; preds = %bb.am
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #27
  unreachable

bb.ao:                                            ; preds = %bb.al
  unreachable

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit: ; preds = %bb.ak
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 1, ptr %i.dt, align 8, !tbaa !137
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 1, ptr %i.du, align 4, !tbaa !139
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dm, align 8, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dh, ptr %i.dv, align 8, !tbaa !407
  store ptr %i.dh, ptr %i.i, align 8, !tbaa !409
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !135 ; 8 uses
  store ptr %i.dm, ptr %i.dw, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.dz = load atomic i64, ptr %i.dy acquire, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 4294967297
  %i.eb = trunc i64 %i.dz to i32                  ; 2 uses
  br i1 %i.ea, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dy, align 8, !tbaa !137
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ec, align 4, !tbaa !139
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !410
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18, !inline_history !410
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ek = add nsw i32 %i.eb, -1
  store i32 %i.ek, ptr %i.dy, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.el = atomicrmw volatile add ptr %i.dy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i = phi i32 [ %i.eb, %bb.as ], [ %i.el, %bb.at ]
  %i.em = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.em, label %bb.au, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, !prof !141

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #18
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.av:                                            ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 232) #30
  br label %common.resume

bb.aw:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit103
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.sroa.0.0.copyload.i.i104 = load i32, ptr %i.eo, align 8
  %i.ep = and i32 %.sroa.0.0.copyload.i.i104, 65535
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.bk, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.es = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28 ; 6 uses
  %i.et = load i32, ptr %3, align 8, !tbaa !385
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN7xgboost16GHistIndexMatrixC1EPKNS_7ContextEPNS_7DMatrixEidbNS_6common4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(225) %i.es, ptr noundef nonnull %i.er, ptr noundef nonnull %1, i32 noundef %i.et, double noundef %i.ev, i1 noundef zeroext %i.dd, ptr noundef nonnull byval(%"class.xgboost::common::Span") align 8 %i.ew)
          to label %bb.ay unwind label %bb.bj

bb.ay:                                            ; preds = %bb.ax
  %i.ex = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit151 unwind label %bb.az ; 5 uses

bb.az:                                            ; preds = %bb.ay
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  %i.fa = call ptr @__cxa_begin_catch(ptr %i.ez) #18 ; 0 uses
  call void @_ZN7xgboost16GHistIndexMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(225) dereferenceable(225) %i.es) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 232) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.bc unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #27
  unreachable

bb.bc:                                            ; preds = %bb.az
  unreachable

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit151: ; preds = %bb.ay
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 1, ptr %i.fe, align 8, !tbaa !137
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 1, ptr %i.ff, align 4, !tbaa !139
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ex, align 8, !tbaa !10
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.es, ptr %i.fg, align 8, !tbaa !407
  store ptr %i.es, ptr %i.i, align 8, !tbaa !409
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !135 ; 8 uses
  store ptr %i.ex, ptr %i.fh, align 8, !tbaa !135
  %.not.i.i.i105 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i105, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit151
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.fj, align 8, !tbaa !137
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !139
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #18, !inline_history !410
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #18, !inline_history !410
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i106 = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i.i106, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i107

bb.bh:                                            ; preds = %bb.bf
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i107

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i107: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i108 = phi i32 [ %i.fm, %bb.bg ], [ %i.fw, %bb.bh ]
  %i.fx = icmp eq i32 %.0.i.i.i.i.i108, 1
  br i1 %i.fx, label %bb.bi, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit, !prof !141

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i107
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #18
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.bj:                                            ; preds = %bb.ax
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 232) #30
  br label %common.resume

bb.bk:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @_ZNK7xgboost7Context7MakeCPUEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::Context") align 8 %11, ptr noundef nonnull align 8 dereferenceable(5084) %2)
  %i.fz = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #28
          to label %bb.bl unwind label %bb.cd     ; 6 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ga = load i32, ptr %3, align 8, !tbaa !385
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !21
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN7xgboost16GHistIndexMatrixC1EPKNS_7ContextEPNS_7DMatrixEidbNS_6common4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(225) %i.fz, ptr noundef nonnull %11, ptr noundef nonnull %1, i32 noundef %i.ga, double noundef %i.gc, i1 noundef zeroext %i.dd, ptr noundef nonnull byval(%"class.xgboost::common::Span") align 8 %i.gd)
          to label %bb.bm unwind label %bb.ce

bb.bm:                                            ; preds = %bb.bl
  %i.ge = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc114 unwind label %bb.bn ; 5 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  %i.gh = call ptr @__cxa_begin_catch(ptr %i.gg) #18 ; 0 uses
  call void @_ZN7xgboost16GHistIndexMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(225) dereferenceable(225) %i.fz) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 232) #30
  invoke void @__cxa_rethrow() #29
          to label %bb.bq unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body152 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #27
  unreachable

bb.bq:                                            ; preds = %bb.bn
  unreachable

.noexc114:                                        ; preds = %bb.bm
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i32 1, ptr %i.gl, align 8, !tbaa !137
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i32 1, ptr %i.gm, align 4, !tbaa !139
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ge, align 8, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store ptr %i.fz, ptr %i.gn, align 8, !tbaa !407
  store ptr %i.fz, ptr %i.i, align 8, !tbaa !409
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !135 ; 8 uses
  store ptr %i.ge, ptr %i.go, align 8, !tbaa !135
  %.not.i.i.i110 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i110, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit115, label %bb.br

bb.br:                                            ; preds = %.noexc114
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.gq, align 8, !tbaa !137
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !139
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !10
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #18, !inline_history !410
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !10
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #18, !inline_history !410
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit115

bb.bt:                                            ; preds = %bb.br
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i111 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i111, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112

bb.bv:                                            ; preds = %bb.bt
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112: ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i.i113 = phi i32 [ %i.gt, %bb.bu ], [ %i.hd, %bb.bv ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i113, 1
  br i1 %i.he, label %bb.bw, label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit115, !prof !141

bb.bw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #18
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit115

_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit115: ; preds = %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i112, %bb.bs, %.noexc114
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !135 ; 8 uses
  %.not.i.i.i116 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i116, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit115
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 4 uses
  %i.hi = load atomic i64, ptr %i.hh acquire, align 8 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 4294967297
  %i.hk = trunc i64 %i.hi to i32                  ; 2 uses
  br i1 %i.hj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.hh, align 8, !tbaa !137
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 0, ptr %i.hl, align 4, !tbaa !139
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #18, !inline_history !144
  %i.hp = load ptr, ptr %i.hg, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #18, !inline_history !144
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.hs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i117 = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i.i117, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ht = add nsw i32 %i.hk, -1
  store i32 %i.ht, ptr %i.hh, align 8, !tbaa !136
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i118

bb.cb:                                            ; preds = %bb.bz
  %i.hu = atomicrmw volatile add ptr %i.hh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i118

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i118: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i.i.i119 = phi i32 [ %i.hk, %bb.ca ], [ %i.hu, %bb.cb ]
  %i.hv = icmp eq i32 %.0.i.i.i.i.i119, 1
  br i1 %i.hv, label %bb.cc, label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !141

bb.cc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i118
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hg) #18
  br label %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i118, %bb.by, %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit115
  %i.hw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !38 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZN7xgboost7ContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !40
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #30
  br label %_ZN7xgboost7ContextD2Ev.exit

_ZN7xgboost7ContextD2Ev.exit:                     ; preds = %_ZNSt12__shared_ptrIN7xgboost11CUDAContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit

bb.cd:                                            ; preds = %bb.bk
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.ce:                                            ; preds = %bb.bl
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 232) #30
  br label %.body152

.body152:                                         ; preds = %bb.cd, %bb.bo, %bb.ce
  %.pn43 = phi { ptr, i32 } [ %i.id, %bb.ce ], [ %i.ic, %bb.cd ], [ %i.gi, %bb.bo ]
  call void @_ZN7xgboost7ContextD2Ev(ptr noundef nonnull align 8 dead_on_return(5084) dereferenceable(5084) %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %common.resume

_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_.exit: ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i107, %bb.be, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit151, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aq, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN7xgboost16GHistIndexMatrixEEET_.exit, %_ZN7xgboost7ContextD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.0..sroa_idx161 = getelementptr inbounds nuw i8, ptr %3, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.0..sroa_idx161, i64 22, i1 false), !tbaa.struct !390
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !49
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 361
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !49
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6, i64 22, i1 false), !tbaa.struct !390
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !411 ; 2 uses
  store ptr %i.if, ptr %i.f, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !411 ; 2 uses
  store ptr %i.ih, ptr %i.g, align 8, !tbaa !54
end_hunk_2
begin_hunk_3_@llvm.umin.i64
!178 = distinct !{!178, !34}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!181 = distinct !{!181, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!184 = distinct !{!184, !"_ZNSt7__cxx119to_stringEi"}
!185 = !{!186, !52, i64 0}
!186 = !{!"_ZTSZN7xgboost4data13SimpleDMatrixC1INS0_15CSRArrayAdapterEEEPT_fiEUlRKS4_E_", !52, i64 0, !25, i64 8, !53, i64 16}
!187 = !{!186, !25, i64 8}
!188 = !{!186, !53, i64 16}
!189 = distinct !{!189, !34}
!190 = !{!191, !24, i64 360}
!191 = !{!"_ZTSN7xgboost4data15CSRArrayAdapterE", !192, i64 0, !194, i64 16, !195, i64 192, !195, i64 248, !195, i64 304, !24, i64 360}
!192 = !{!"_ZTSN7xgboost4data6detail19SingleBatchDataIterINS0_20CSRArrayAdapterBatchEEE", !193, i64 0, !5, i64 8}
!193 = !{!"_ZTSN4dmlc8DataIterIN7xgboost4data20CSRArrayAdapterBatchEEE"}
!194 = !{!"_ZTSN7xgboost4data20CSRArrayAdapterBatchE", !195, i64 0, !195, i64 56, !195, i64 112, !5, i64 168}
!195 = !{!"_ZTSN7xgboost14ArrayInterfaceILi1ELb1EEE", !196, i64 0, !6, i64 16, !6, i64 24, !18, i64 32, !24, i64 40, !26, i64 48, !197, i64 49}
!196 = !{!"_ZTSN7xgboost17BitFieldContainerIhNS_11RBitsPolicyIhEELb0EEE", !37, i64 0, !24, i64 8}
!197 = !{!"_ZTSN7xgboost21ArrayInterfaceHandler4TypeE", !6, i64 0}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!200 = distinct !{!200, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!203 = distinct !{!203, !"_ZNSt7__cxx119to_stringEi"}
!204 = !{!205, !52, i64 0}
!205 = !{!"_ZTSZN7xgboost4data13SimpleDMatrixC1INS0_15CSCArrayAdapterEEEPT_fiEUlRKS4_E_", !52, i64 0, !25, i64 8, !53, i64 16}
!206 = !{!207, !207, i64 0}
!207 = !{!"p1 _ZTSN7xgboost4data15CSCArrayAdapterE", !18, i64 0}
!208 = !{!205, !25, i64 8}
!209 = !{!205, !53, i64 16}
!210 = distinct !{!210, !34}
!211 = !{!212, !24, i64 56}
!212 = !{!"_ZTSN7xgboost4data15CSCArrayAdapterE", !213, i64 0, !195, i64 16, !195, i64 72, !195, i64 128, !24, i64 184, !215, i64 192}
!213 = !{!"_ZTSN7xgboost4data6detail19SingleBatchDataIterINS0_20CSCArrayAdapterBatchEEE", !214, i64 0, !5, i64 8}
!214 = !{!"_ZTSN4dmlc8DataIterIN7xgboost4data20CSCArrayAdapterBatchEEE"}
!215 = !{!"_ZTSN7xgboost4data20CSCArrayAdapterBatchE", !195, i64 0, !195, i64 56, !195, i64 112}
!216 = !{!212, !24, i64 184}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!219 = distinct !{!219, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!222 = distinct !{!222, !"_ZNSt7__cxx119to_stringEi"}
!223 = !{!224, !52, i64 0}
!224 = !{!"_ZTSZN7xgboost4data13SimpleDMatrixC1INS0_11FileAdapterEEEPT_fiEUlRKS4_E_", !52, i64 0, !25, i64 8, !53, i64 16}
!225 = !{!226, !226, i64 0}
!226 = !{!"p1 _ZTSN7xgboost4data11FileAdapterE", !18, i64 0}
!227 = !{!224, !25, i64 8}
!228 = !{!224, !53, i64 16}
!229 = !{!230, !231, i64 0}
!230 = !{!"_ZTSN7xgboost4data16FileAdapterBatchE", !231, i64 0, !24, i64 8}
!231 = !{!"p1 _ZTSN4dmlc8RowBlockIjfEE", !18, i64 0}
!232 = !{!233, !24, i64 0}
!233 = !{!"_ZTSN4dmlc8RowBlockIjfEE", !24, i64 0, !96, i64 8, !25, i64 16, !25, i64 24, !96, i64 32, !84, i64 40, !84, i64 48, !25, i64 56}
!234 = !{!233, !25, i64 16}
!235 = !{!236, !236, i64 0}
!236 = !{!"p1 _ZTSN7xgboost4data16FileAdapterBatchE", !18, i64 0}
!237 = !{!233, !25, i64 24}
!238 = !{!233, !96, i64 32}
!239 = !{!83, !84, i64 8}
!240 = distinct !{!240, !34}
!241 = distinct !{!241, !34}
!242 = !{!84, !84, i64 0}
!243 = !{!244, !236, i64 0}
!244 = !{!"_ZTSZN7xgboost4data13SimpleDMatrixC1INS0_11FileAdapterEEEPT_fiEUlS5_NS_6common4SpanImLm2EEEE_", !236, i64 0}
!245 = !{!89, !89, i64 0}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!248 = distinct !{!248, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!251 = distinct !{!251, !"_ZNSt7__cxx119to_stringEi"}
!252 = !{!253, !52, i64 0}
!253 = !{!"_ZTSZN7xgboost4data13SimpleDMatrixC1INS0_15ColumnarAdapterEEEPT_fiEUlRKS4_E_", !52, i64 0, !25, i64 8, !53, i64 16}
!254 = !{!253, !25, i64 8}
!255 = !{!253, !53, i64 16}
!256 = distinct !{!256, !34}
!257 = !{!258, !259, i64 8}
!258 = !{!"_ZTSNSt12_Vector_baseIN7xgboost14ArrayInterfaceILi1ELb1EEESaIS2_EE17_Vector_impl_dataE", !259, i64 0, !259, i64 8, !259, i64 16}
!259 = !{!"p1 _ZTSN7xgboost14ArrayInterfaceILi1ELb1EEE", !18, i64 0}
!260 = !{!258, !259, i64 0}
!261 = !{i64 0, i64 8, !127, i64 8, i64 8, !262, i64 16, i64 8, !127, i64 24, i64 8, !242, i64 32, i64 4, !136}
!262 = !{!155, !155, i64 0}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZSt11make_sharedIN7xgboost12CatContainerEJN3enc6detail15ColumnsViewImplISt7variantIJNS2_15CatStrArrayViewENS0_6common4SpanIKhLm18446744073709551615EEENS8_IKaLm18446744073709551615EEENS8_IKtLm18446744073709551615EEENS8_IKsLm18446744073709551615EEENS8_IKjLm18446744073709551615EEENS8_IKiLm18446744073709551615EEENS8_IKmLm18446744073709551615EEENS8_IKlLm18446744073709551615EEEEEEEbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueEST_E4typeEEDpOT0_: argument 0"}
!265 = distinct !{!265, !"_ZSt11make_sharedIN7xgboost12CatContainerEJN3enc6detail15ColumnsViewImplISt7variantIJNS2_15CatStrArrayViewENS0_6common4SpanIKhLm18446744073709551615EEENS8_IKaLm18446744073709551615EEENS8_IKtLm18446744073709551615EEENS8_IKsLm18446744073709551615EEENS8_IKjLm18446744073709551615EEENS8_IKiLm18446744073709551615EEENS8_IKmLm18446744073709551615EEENS8_IKlLm18446744073709551615EEEEEEEbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueEST_E4typeEEDpOT0_"}
!266 = !{!98, !99, i64 0}
!267 = !{!99, !99, i64 0}
!268 = distinct !{!268, !34}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZNK7xgboost4data15ColumnarAdapter4CatsEv: argument 0"}
!271 = distinct !{!271, !"_ZNK7xgboost4data15ColumnarAdapter4CatsEv"}
!272 = !{!154, !155, i64 8}
!273 = !{!157, !84, i64 8}
!274 = !{!275, !24, i64 0}
!275 = !{!"_ZTSN7xgboost6common4SpanIKiLm18446744073709551615EEE", !24, i64 0, !84, i64 8}
!276 = !{!275, !84, i64 8}
!277 = !{!278, !5, i64 32}
!278 = !{!"_ZTSN3enc6detail15ColumnsViewImplISt7variantIJNS_15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS6_IKaLm18446744073709551615EEENS6_IKtLm18446744073709551615EEENS6_IKsLm18446744073709551615EEENS6_IKjLm18446744073709551615EEENS6_IKiLm18446744073709551615EEENS6_IKmLm18446744073709551615EEENS6_IKlLm18446744073709551615EEEEEEE", !154, i64 0, !275, i64 16, !5, i64 32}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZSt11make_sharedIN7xgboost12CatContainerEJN3enc6detail15ColumnsViewImplISt7variantIJNS2_15CatStrArrayViewENS0_6common4SpanIKhLm18446744073709551615EEENS8_IKaLm18446744073709551615EEENS8_IKtLm18446744073709551615EEENS8_IKsLm18446744073709551615EEENS8_IKjLm18446744073709551615EEENS8_IKiLm18446744073709551615EEENS8_IKmLm18446744073709551615EEENS8_IKlLm18446744073709551615EEEEEEEbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueEST_E4typeEEDpOT0_: argument 0"}
!281 = distinct !{!281, !"_ZSt11make_sharedIN7xgboost12CatContainerEJN3enc6detail15ColumnsViewImplISt7variantIJNS2_15CatStrArrayViewENS0_6common4SpanIKhLm18446744073709551615EEENS8_IKaLm18446744073709551615EEENS8_IKtLm18446744073709551615EEENS8_IKsLm18446744073709551615EEENS8_IKjLm18446744073709551615EEENS8_IKiLm18446744073709551615EEENS8_IKmLm18446744073709551615EEENS8_IKlLm18446744073709551615EEEEEEEbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueEST_E4typeEEDpOT0_"}
!282 = !{!259, !259, i64 0}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!285 = distinct !{!285, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!288 = distinct !{!288, !"_ZNSt7__cxx119to_stringEi"}
!289 = !{!290, !52, i64 0}
!290 = !{!"_ZTSZN7xgboost4data13SimpleDMatrixC1INS0_15IteratorAdapterIPvFiS4_PFiS4_15XGBoostBatchCSRES4_ES5_EEEEPT_fiEUlRKSA_E_", !52, i64 0, !25, i64 8, !53, i64 16}
!291 = !{!292, !292, i64 0}
!292 = !{!"p1 _ZTSN7xgboost4data15IteratorAdapterIPvFiS2_PFiS2_15XGBoostBatchCSRES2_ES3_EE", !18, i64 0}
!293 = !{!290, !25, i64 8}
!294 = !{!290, !53, i64 16}
!295 = distinct !{!295, !34}
!296 = distinct !{!296, !34}
!297 = !{!298, !24, i64 128}
!298 = !{!"_ZTSN7xgboost4data15IteratorAdapterIPvFiS2_PFiS2_15XGBoostBatchCSRES2_ES3_EE", !299, i64 0, !92, i64 8, !300, i64 32, !300, i64 56, !80, i64 80, !300, i64 104, !24, i64 128, !24, i64 136, !26, i64 144, !18, i64 152, !18, i64 160, !233, i64 168, !304, i64 232}
!299 = !{!"_ZTSN4dmlc8DataIterIN7xgboost4data16FileAdapterBatchEEE"}
!300 = !{!"_ZTSSt6vectorIfSaIfEE", !301, i64 0}
!301 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !302, i64 0}
!302 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !303, i64 0}
!303 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!304 = !{!"_ZTSSt10unique_ptrIN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EE", !305, i64 0}
!305 = !{!"_ZTSSt15__uniq_ptr_dataIN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_ELb1ELb1EE", !306, i64 0}
!306 = !{!"_ZTSSt15__uniq_ptr_implIN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EE", !307, i64 0}
!307 = !{!"_ZTSSt5tupleIJPN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EEE", !308, i64 0}
!308 = !{!"_ZTSSt11_Tuple_implILm0EJPN7xgboost4data16FileAdapterBatchESt14default_deleteIS2_EEE", !309, i64 0}
!309 = !{!"_ZTSSt10_Head_baseILm0EPN7xgboost4data16FileAdapterBatchELb0EE", !236, i64 0}
!310 = !{!311, !236, i64 0}
!311 = !{!"_ZTSZN7xgboost4data13SimpleDMatrixC1INS0_15IteratorAdapterIPvFiS4_PFiS4_15XGBoostBatchCSRES4_ES5_EEEEPT_fiEUlSB_NS_6common4SpanImLm2EEEE_", !236, i64 0}
!312 = distinct !{!312, !313}
!313 = !{!"llvm.loop.unroll.disable"}
!314 = distinct !{!314, !34}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN7xgboost7DMatrix10GetBatchesINS_10SparsePageEEENS_8BatchSetIT_EEv: argument 0"}
!317 = distinct !{!317, !"_ZN7xgboost7DMatrix10GetBatchesINS_10SparsePageEEENS_8BatchSetIT_EEv"}
!318 = distinct !{null}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv: argument 0"}
!321 = distinct !{!321, !"_ZN7xgboost8BatchSetINS_10SparsePageEE5beginEv"}
!322 = !{!18, !18, i64 0}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv: argument 0"}
!325 = distinct !{!325, !"_ZN7xgboost8BatchSetINS_10SparsePageEE3endEv"}
!326 = distinct !{ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!327 = distinct !{ptr @_ZN7xgboost8BatchSetINS_10SparsePageEED2Ev, ptr @_ZN7xgboost13BatchIteratorINS_10SparsePageEED2Ev, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZNK7xgboost10SparsePage7GetViewEv: argument 0"}
!330 = distinct !{!330, !"_ZNK7xgboost10SparsePage7GetViewEv"}
!331 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!332 = !{!130, !131, i64 16}
!333 = distinct !{!333, !34, !334}
!334 = !{!"llvm.loop.peeled.count", i32 1}
!335 = !{!336}
!336 = distinct !{!336, !337, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!337 = distinct !{!337, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!338 = !{!339, !340, i64 0}
!339 = !{!"_ZTSSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EE", !340, i64 0, !19, i64 8}
!340 = !{!"p1 _ZTSN7xgboost17BatchIteratorImplINS_10SparsePageEEE", !18, i64 0}
!341 = !{!75, !26, i64 224}
!342 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7xgboost12CatContainerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!343 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!344 = !{!345, !17, i64 0}
!345 = !{!"_ZTSSt12__shared_ptrIKN7xgboost10SparsePageELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !19, i64 8}
!346 = !{!102, !103, i64 0}
!347 = !{!348, !24, i64 24}
!348 = !{!"_ZTSN7xgboost10SparsePageE", !349, i64 8, !351, i64 16, !24, i64 24}
!349 = !{!"_ZTSN7xgboost16HostDeviceVectorImEE", !350, i64 0}
!350 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplImEE", !18, i64 0}
!351 = !{!"_ZTSN7xgboost16HostDeviceVectorINS_5EntryEEE", !352, i64 0}
!352 = !{!"p1 _ZTSN7xgboost20HostDeviceVectorImplINS_5EntryEEE", !18, i64 0}
!353 = !{ptr @_ZN7xgboost10SparsePageD2Ev}
!354 = !{!355, !103, i64 0}
!355 = !{!"_ZTSSt12__shared_ptrIKN7xgboost7CSCPageELN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0, !19, i64 8}
!356 = !{!357, !358, i64 0}
!357 = !{!"_ZTSSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_7CSCPageEEELN9__gnu_cxx12_Lock_policyE2EE", !358, i64 0, !19, i64 8}
!358 = !{!"p1 _ZTSN7xgboost17BatchIteratorImplINS_7CSCPageEEE", !18, i64 0}
!359 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_7CSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!360 = distinct !{null, null, null}
!361 = !{!362, !103, i64 16}
!362 = !{!"_ZTSSt15_Sp_counted_ptrIPN7xgboost7CSCPageELN9__gnu_cxx12_Lock_policyE2EE", !138, i64 0, !103, i64 16}
!363 = !{!103, !103, i64 0}
!364 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost7CSCPageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!365 = !{!105, !106, i64 0}
!366 = !{!367, !106, i64 0}
!367 = !{!"_ZTSSt12__shared_ptrIKN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EE", !106, i64 0, !19, i64 8}
!368 = !{!369, !370, i64 0}
!369 = !{!"_ZTSSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EE", !370, i64 0, !19, i64 8}
!370 = !{!"p1 _ZTSN7xgboost17BatchIteratorImplINS_13SortedCSCPageEEE", !18, i64 0}
!371 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13SortedCSCPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!372 = distinct !{null, null, null}
!373 = !{!374, !106, i64 16}
!374 = !{!"_ZTSSt15_Sp_counted_ptrIPN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EE", !138, i64 0, !106, i64 16}
!375 = !{!106, !106, i64 0}
!376 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost13SortedCSCPageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!377 = !{!108, !109, i64 0}
!378 = !{!22, !26, i64 25}
!379 = !{!27, !27, i64 0}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_ZN4dmlc11LogCheck_EQB5cxx11Eii: argument 0"}
!382 = distinct !{!382, !"_ZN4dmlc11LogCheck_EQB5cxx11Eii"}
!383 = !{!"branch_weights", i32 1073205, i32 2146410443}
!384 = !{!"branch_weights", !"expected", i32 2146839402, i32 644246}
!385 = !{!22, !5, i64 0}
!386 = !{!387}
!387 = distinct !{!387, !388, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!388 = distinct !{!388, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!389 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!390 = !{i64 6, i64 8, !379, i64 14, i64 1, !49, i64 18, i64 4, !136}
!391 = !{!392, !109, i64 0}
!392 = !{!"_ZTSSt12__shared_ptrIKN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EE", !109, i64 0, !19, i64 8}
!393 = !{!394, !395, i64 0}
!394 = !{!"_ZTSSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_11EllpackPageEEELN9__gnu_cxx12_Lock_policyE2EE", !395, i64 0, !19, i64 8}
!395 = !{!"p1 _ZTSN7xgboost17BatchIteratorImplINS_11EllpackPageEEE", !18, i64 0}
!396 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_11EllpackPageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!397 = !{!"branch_weights", i32 4001, i32 1}
!398 = distinct !{null, null, null, null, null}
!399 = !{!111, !112, i64 0}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN4dmlc11LogCheck_EQB5cxx11Eii: argument 0"}
!402 = distinct !{!402, !"_ZN4dmlc11LogCheck_EQB5cxx11Eii"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii: argument 0"}
!405 = distinct !{!405, !"_ZN4dmlc11LogCheck_GEB5cxx11Eii"}
!406 = !{!22, !26, i64 24}
!407 = !{!408, !112, i64 16}
!408 = !{!"_ZTSSt15_Sp_counted_ptrIPN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE", !138, i64 0, !112, i64 16}
!409 = !{!112, !112, i64 0}
!410 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!411 = !{!23, !25, i64 8}
!412 = !{!413, !112, i64 0}
!413 = !{!"_ZTSSt12__shared_ptrIKN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !19, i64 8}
!414 = !{!415, !416, i64 0}
!415 = !{!"_ZTSSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EE", !416, i64 0, !19, i64 8}
!416 = !{!"p1 _ZTSN7xgboost17BatchIteratorImplINS_16GHistIndexMatrixEEE", !18, i64 0}
!417 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_16GHistIndexMatrixEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZSt11make_sharedIN7xgboost13ExtSparsePageEJRSt10shared_ptrINS0_10SparsePageEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_: argument 0"}
!420 = distinct !{!420, !"_ZSt11make_sharedIN7xgboost13ExtSparsePageEJRSt10shared_ptrINS0_10SparsePageEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES7_E4typeEEDpOT0_"}
!421 = !{!422, !422, i64 0}
!422 = !{!"p1 _ZTSN7xgboost13ExtSparsePageE", !18, i64 0}
!423 = !{!424, !422, i64 0}
!424 = !{!"_ZTSSt12__shared_ptrIKN7xgboost13ExtSparsePageELN9__gnu_cxx12_Lock_policyE2EE", !422, i64 0, !19, i64 8}
!425 = !{!426, !427, i64 0}
!426 = !{!"_ZTSSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13ExtSparsePageEEELN9__gnu_cxx12_Lock_policyE2EE", !427, i64 0, !19, i64 8}
!427 = !{!"p1 _ZTSN7xgboost17BatchIteratorImplINS_13ExtSparsePageEEE", !18, i64 0}
!428 = distinct !{null, ptr @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_13ExtSparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!429 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost13ExtSparsePageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!430 = !{!431}
!431 = distinct !{!431, !432, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!432 = distinct !{!432, !"_ZSt11make_sharedIN7xgboost10SparsePageEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!433 = distinct !{null}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN4dmlc11LogCheck_EQB5cxx11Eii: argument 0"}
!436 = distinct !{!436, !"_ZN4dmlc11LogCheck_EQB5cxx11Eii"}
!437 = distinct !{null}
!438 = distinct !{null}
!439 = distinct !{null}
!440 = distinct !{null}
!441 = distinct !{null}
!442 = distinct !{null, null}
!443 = !{!75, !24, i64 0}
!444 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost16GHistIndexMatrixELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!445 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost11EllpackPageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!446 = distinct !{ptr @_ZNSt12__shared_ptrIN7xgboost10SparsePageELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZSt11make_uniqueIN7xgboost12CatContainerEJN3enc6detail15ColumnsViewImplISt7variantIJNS2_15CatStrArrayViewENS0_6common4SpanIKhLm18446744073709551615EEENS8_IKaLm18446744073709551615EEENS8_IKtLm18446744073709551615EEENS8_IKsLm18446744073709551615EEENS8_IKjLm18446744073709551615EEENS8_IKiLm18446744073709551615EEENS8_IKmLm18446744073709551615EEENS8_IKlLm18446744073709551615EEEEEEEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!449 = distinct !{!449, !"_ZSt11make_uniqueIN7xgboost12CatContainerEJN3enc6detail15ColumnsViewImplISt7variantIJNS2_15CatStrArrayViewENS0_6common4SpanIKhLm18446744073709551615EEENS8_IKaLm18446744073709551615EEENS8_IKtLm18446744073709551615EEENS8_IKsLm18446744073709551615EEENS8_IKjLm18446744073709551615EEENS8_IKiLm18446744073709551615EEENS8_IKmLm18446744073709551615EEENS8_IKlLm18446744073709551615EEEEEEEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZNK7xgboost4data15ColumnarAdapter4CatsEv: argument 0"}
!452 = distinct !{!452, !"_ZNK7xgboost4data15ColumnarAdapter4CatsEv"}
!453 = !{!454, !155, i64 8}
!454 = !{!"_ZTSNSt12_Vector_baseISt7variantIJN3enc15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS5_IKaLm18446744073709551615EEENS5_IKtLm18446744073709551615EEENS5_IKsLm18446744073709551615EEENS5_IKjLm18446744073709551615EEENS5_IKiLm18446744073709551615EEENS5_IKmLm18446744073709551615EEENS5_IKlLm18446744073709551615EEEEESaISM_EE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!455 = !{!454, !155, i64 0}
!456 = !{!457, !457, i64 0}
!457 = !{!"p1 _ZTSN3enc6PolicyIJN7xgboost14EncErrorPolicyEEEE", !18, i64 0}
!458 = !{!459, !6, i64 32}
!459 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN3enc15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS6_IKaLm18446744073709551615EEENS6_IKtLm18446744073709551615EEENS6_IKsLm18446744073709551615EEENS6_IKjLm18446744073709551615EEENS6_IKiLm18446744073709551615EEENS6_IKmLm18446744073709551615EEENS6_IKlLm18446744073709551615EEEEEE", !6, i64 0, !6, i64 32}
!460 = !{!461, !461, i64 0}
!461 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !18, i64 0}
!462 = !{!463, !463, i64 0}
!463 = !{!"p1 _ZTSN3enc6detail15ColumnsViewImplISt7variantIJNS_15CatStrArrayViewEN7xgboost6common4SpanIKhLm18446744073709551615EEENS6_IKaLm18446744073709551615EEENS6_IKtLm18446744073709551615EEENS6_IKsLm18446744073709551615EEENS6_IKjLm18446744073709551615EEENS6_IKiLm18446744073709551615EEENS6_IKmLm18446744073709551615EEENS6_IKlLm18446744073709551615EEEEEEE", !18, i64 0}
!464 = !{!465, !465, i64 0}
!465 = !{!"p1 _ZTSN7xgboost6common4SpanIKiLm18446744073709551615EEE", !18, i64 0}
!466 = distinct !{!466, !34}
!467 = !{!468, !96, i64 0}
!468 = !{!"_ZTSZN3enc6RecodeINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_NS_6detail15ColumnsViewImplISt7variantIJNS_15CatStrArrayViewENS2_6common4SpanIKhLm18446744073709551615EEENSD_IKaLm18446744073709551615EEENSD_IKtLm18446744073709551615EEENSD_IKsLm18446744073709551615EEENSD_IKjLm18446744073709551615EEENSD_IKiLm18446744073709551615EEENSD_IKmLm18446744073709551615EEENSD_IKlLm18446744073709551615EEEEEEESP_SV_NSD_IiLm18446744073709551615EEEEUlvE_", !96, i64 0, !457, i64 8}
!469 = !{!470}
!470 = distinct !{!470, !471, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!471 = distinct !{!471, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!472 = !{!473}
!473 = distinct !{!473, !474, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!474 = distinct !{!474, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!475 = !{!473, !470}
!476 = !{!477, !37, i64 40}
!477 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !478, i64 56}
!478 = !{!"_ZTSSt6locale", !479, i64 0}
!479 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!480 = !{!477, !37, i64 32}
!481 = !{!482, !24, i64 8}
!482 = !{!"_ZTSSi", !24, i64 8}
!483 = !{!484, !37, i64 8}
!484 = !{!"_ZTSSt18bad_variant_access", !485, i64 0, !37, i64 8}
!485 = !{!"_ZTSSt9exception"}
!486 = !{!487, !96, i64 0}
!487 = !{!"_ZTSZN3enc6RecodeINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_NS_6detail15ColumnsViewImplISt7variantIJNS_15CatStrArrayViewENS2_6common4SpanIKhLm18446744073709551615EEENSD_IKaLm18446744073709551615EEENSD_IKtLm18446744073709551615EEENSD_IKsLm18446744073709551615EEENSD_IKjLm18446744073709551615EEENSD_IKiLm18446744073709551615EEENSD_IKmLm18446744073709551615EEENSD_IKlLm18446744073709551615EEEEEEESP_SV_NSD_IiLm18446744073709551615EEEEUlRKSB_E_", !96, i64 0, !461, i64 8, !463, i64 16, !96, i64 24, !465, i64 32, !457, i64 40}
!488 = !{!489, !24, i64 0}
!489 = !{!"_ZTSN7xgboost6common4SpanIKaLm18446744073709551615EEE", !24, i64 0, !37, i64 8}
!490 = !{!489, !37, i64 8}
!491 = !{!487, !463, i64 16}
!492 = !{!487, !96, i64 24}
!493 = !{!487, !465, i64 32}
!494 = !{!487, !461, i64 8}
!495 = !{!487, !457, i64 40}
!496 = !{!497}
!497 = distinct !{!497, !498, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!498 = distinct !{!498, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!499 = !{!500}
!500 = distinct !{!500, !501, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!501 = distinct !{!501, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!502 = !{!500, !497}
!503 = distinct !{!503, !34}
!504 = !{i64 0, i64 8, !127, i64 8, i64 8, !242}
!505 = !{i64 0, i64 8, !127, i64 8, i64 8, !506}
!506 = !{!37, !37, i64 0}
!507 = distinct !{!507, !34}
!508 = distinct !{!508, !34}
!509 = !{!510}
!510 = distinct !{!510, !511, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!511 = distinct !{!511, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!514 = distinct !{!514, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!515 = !{!513, !510}
!516 = !{!517, !518, i64 0}
!517 = !{!"_ZTSZN3enc8cpu_impl12SearchSortedENS_15CatStrArrayViewEN7xgboost6common4SpanIKiLm18446744073709551615EEENS4_IKaLm18446744073709551615EEEEUlT_T0_E_", !518, i64 0, !465, i64 8, !465, i64 16, !518, i64 24}
!518 = !{!"p1 _ZTSN7xgboost6common4SpanIKaLm18446744073709551615EEE", !18, i64 0}
!519 = !{!517, !465, i64 8}
!520 = !{!517, !465, i64 16}
!521 = !{!517, !518, i64 24}
!522 = !{!518, !518, i64 0}
!523 = !{!"branch_weights", i32 127, i32 1}
!524 = !{!"branch_weights", i32 127, i32 255873}
!525 = distinct !{!525, !34}
!526 = !{!527, !96, i64 0}
!527 = !{!"_ZTSZN3enc6RecodeINS_6PolicyIJN7xgboost14EncErrorPolicyEEEEEEvRKT_NS_6detail15ColumnsViewImplISt7variantIJNS_15CatStrArrayViewENS2_6common4SpanIKhLm18446744073709551615EEENSD_IKaLm18446744073709551615EEENSD_IKtLm18446744073709551615EEENSD_IKsLm18446744073709551615EEENSD_IKjLm18446744073709551615EEENSD_IKiLm18446744073709551615EEENSD_IKmLm18446744073709551615EEENSD_IKlLm18446744073709551615EEEEEEESP_SV_NSD_IiLm18446744073709551615EEEEUlOS5_E2_", !96, i64 0, !461, i64 8, !463, i64 16, !96, i64 24, !465, i64 32, !457, i64 40}
!528 = !{!529, !24, i64 0}
!529 = !{!"_ZTSN7xgboost6common4SpanIKhLm18446744073709551615EEE", !24, i64 0, !37, i64 8}
!530 = !{!529, !37, i64 8}
!531 = !{!527, !463, i64 16}
!532 = !{!527, !96, i64 24}
!533 = !{!527, !465, i64 32}
!534 = !{!535, !535, i64 0}
!535 = !{!"p1 _ZTSN7xgboost6common4SpanIKhLm18446744073709551615EEE", !18, i64 0}
!536 = !{!527, !461, i64 8}
!537 = !{!538, !24, i64 16}
!538 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !539, i64 24, !540, i64 28, !540, i64 32, !541, i64 40, !542, i64 48, !6, i64 64, !5, i64 192, !543, i64 200, !478, i64 208}
!539 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!540 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!541 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!542 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !24, i64 8}
!543 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!544 = !{!527, !457, i64 40}
!545 = !{!546}
!546 = distinct !{!546, !547, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!547 = distinct !{!547, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!550 = distinct !{!550, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!551 = !{!549, !546}
!552 = distinct !{!552, !34}
!553 = distinct !{!553, !34}
!554 = !{!555}
!555 = distinct !{!555, !556, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!556 = distinct !{!556, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!557 = !{!558}
!558 = distinct !{!558, !559, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!559 = distinct !{!559, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!560 = !{!558, !555}
!561 = distinct !{!561, !34}
!562 = distinct !{!562, !34}
!563 = !{!564, !24, i64 0}
!564 = !{!"_ZTSN7xgboost6common4SpanIKtLm18446744073709551615EEE", !24, i64 0, !565, i64 8}
!565 = !{!"p1 short", !18, i64 0}
!566 = !{!564, !565, i64 8}
!567 = !{!117, !117, i64 0}
!568 = !{!565, !565, i64 0}
!569 = !{!570, !570, i64 0}
!570 = !{!"p1 _ZTSN7xgboost6common4SpanIKtLm18446744073709551615EEE", !18, i64 0}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!573 = distinct !{!573, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!574 = !{!575}
!575 = distinct !{!575, !576, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!576 = distinct !{!576, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!577 = !{!575, !572}
!578 = distinct !{!578, !34}
!579 = distinct !{!579, !34}
!580 = !{!581, !24, i64 0}
!581 = !{!"_ZTSN7xgboost6common4SpanIKsLm18446744073709551615EEE", !24, i64 0, !565, i64 8}
!582 = !{!581, !565, i64 8}
!583 = !{!584, !584, i64 0}
!584 = !{!"p1 _ZTSN7xgboost6common4SpanIKsLm18446744073709551615EEE", !18, i64 0}
!585 = !{!586}
!586 = distinct !{!586, !587, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!587 = distinct !{!587, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!588 = !{!589}
!589 = distinct !{!589, !590, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!590 = distinct !{!590, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
end_hunk_3
