inline.NumInlined: 289
inline.NumDeleted: 175
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEb:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %.noexc.i unwind label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet10LogToSinksERKNS0_8LogEntryENS0_4SpanIPNS0_7LogSinkEEEbEUlvE_ED2Ev.exit22.i

.noexc.i:                                         ; preds = %.lr.ph.i17.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i18.i, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE:bb.a
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !37 ; 7 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !37 ; 6 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 9 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.x = add nsw i64 %.052.i.i.i, -1
  %i.y = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.y, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !38

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE:bb.a
  br i1 %i.al, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4absl12lts_202505127LogSinkESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 24), align 8, !tbaa !40
  %.not.i = icmp eq ptr %i.e, %i.am
  br i1 %.not.i, label %bb.k, label %bb.j

end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE:bb.a
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !32
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !36
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 24), align 8, !tbaa !40
  br label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE9push_backERKS3_.exit

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.l
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet10AddLogSinkEPNS0_7LogSinkE:bb.a

bb.r:                                             ; preds = %_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr @.str, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 3, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 215, ptr %i.c, align 4, !tbaa !3
  call void @_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA38_S4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(38) @.str.1)
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051212log_internal13RemoveLogSinkEPNS0_7LogSinkE:bb.a

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !37 ; 5 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !37 ; 7 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051212log_internal13RemoveLogSinkEPNS0_7LogSinkE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.ab = add nsw i64 %.052.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ac, label %bb.f, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !38

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.j
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051212log_internal13RemoveLogSinkEPNS0_7LogSinkE:bb.a
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.j, %i.at                     ; 3 uses
  %i.av = icmp sgt i64 %i.au, 8
  br i1 %i.av, label %bb.p, label %bb.q, !prof !43

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ar, ptr nonnull align 8 %i.as, i64 %i.au, i1 false)
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051212log_internal13RemoveLogSinkEPNS0_7LogSinkE:bb.a

bb.t:                                             ; preds = %_ZN4absl12lts_2025051215WriterMutexLockD2Ev.exit5.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr @.str, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 3, ptr %i.b, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 227, ptr %i.c, align 4, !tbaa !3
  call void @_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA34_S4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(34) @.str.4)
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051212log_internal13FlushLogSinksEv:bb.a

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit
  tail call void @_ZNK4absl12lts_202505125Mutex16AssertReaderHeldEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !37 ; 2 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !37 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet13FlushLogSinksEv.exit, label %.lr.ph.i.i

end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051212log_internal13FlushLogSinksEv:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j), !inline_history !44
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116GlobalLogSinkSet13FlushLogSinksEv.exit, label %.lr.ph.i.i
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051212log_internal13FlushLogSinksEv:bb.a
bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEv.exit
  tail call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks)
  store i8 1, ptr %i.e, align 1, !tbaa !7
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 8), align 8, !tbaa !37 ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 16), align 8, !tbaa !37 ; 2 uses
  %.not4.i4.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i4.i, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet13FlushLogSinksEvEUlvE_ED2Ev.exit.i, label %.lr.ph.i5.i

end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051212log_internal13FlushLogSinksEv:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc.i unwind label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZNS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSet13FlushLogSinksEvEUlvE_ED2Ev.exit10.i

.noexc.i:                                         ; preds = %.lr.ph.i5.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i6.i, i64 8 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051212NoDestructorINS0_12log_internal12_GLOBAL__N_116GlobalLogSinkSetEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS5_EEE5valueEiE4typeELi0EEEDpOS9_:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_202505127LogSinkESaIS3_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_111GlobalSinksEvE12global_sinks, i64 24), align 8, !tbaa !40
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryE:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load atomic i32, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEE23warn_if_not_initialized acquire, align 4
  %.not.i = icmp eq i32 %i.f, 221
  br i1 %.not.i, label %_ZN4absl12lts_202505129call_onceIZNS0_12log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEEUlvE_JEEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIZNS0_12log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEEUlvE_JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEE23warn_if_not_initialized)
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryE:bb.a

_ZN4absl12lts_202505129call_onceIZNS0_12log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEEUlvE_JEEEvRNS0_9once_flagEOT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505129call_onceIZNS0_12log_internal12_GLOBAL__N_113StderrLogSink4SendERKNS0_8LogEntryEEUlvE_JEEEvRNS0_9once_flagEOT_DpOT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = load i32, ptr %i.a, align 8, !tbaa !23
  tail call void @_ZN4absl12lts_2025051212log_internal13WriteToStderrESt17basic_string_viewIcSt11char_traitsIcEENS0_11LogSeverityE(i64 %i.h, ptr %i.k, i32 noundef %i.l)
  br label %bb.g
end_hunk_16
begin_hunk_17_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA38_S4_EEEvDpOT_:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load atomic ptr, ptr %0 acquire, align 8
  %i.c = load i32, ptr %1, align 4, !tbaa !42
  %i.d = load ptr, ptr %2, align 8, !tbaa !41
  %i.e = load i32, ptr %3, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !47
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.g, ptr %i.a, align 8, !tbaa !48
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !46
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.j, ptr %i.f, align 8, !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
end_hunk_17
begin_hunk_18_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA38_S4_EEEvDpOT_:bb.a
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %4, align 1, !tbaa !49
  store i8 %i.l, ptr %i.k, align 1, !tbaa !49
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
end_hunk_18
begin_hunk_19_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA38_S4_EEEvDpOT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !45
  %i.o = load ptr, ptr %5, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  invoke void %i.b(i32 noundef %i.c, ptr noundef %i.d, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.f, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_19
begin_hunk_20_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA38_S4_EEEvDpOT_:bb.a
bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.x = load i64, ptr %i.f, align 8, !tbaa !49
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
end_hunk_20
begin_hunk_21_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA34_S4_EEEvDpOT_:bb.a
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load atomic ptr, ptr %0 acquire, align 8
  %i.c = load i32, ptr %1, align 4, !tbaa !42
  %i.d = load ptr, ptr %2, align 8, !tbaa !41
  %i.e = load i32, ptr %3, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !47
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.g, ptr %i.a, align 8, !tbaa !48
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !46
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.j, ptr %i.f, align 8, !tbaa !49
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
end_hunk_21
begin_hunk_22_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA34_S4_EEEvDpOT_:bb.a
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %4, align 1, !tbaa !49
  store i8 %i.l, ptr %i.k, align 1, !tbaa !49
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
end_hunk_22
begin_hunk_23_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA34_S4_EEEvDpOT_:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !45
  %i.o = load ptr, ptr %5, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  invoke void %i.b(i32 noundef %i.c, ptr noundef %i.d, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.f
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.f, align 8, !tbaa !49
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_23
begin_hunk_24_@_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvNS0_11LogSeverityEPKciRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclIJS3_RKS5_iRA34_S4_EEEvDpOT_:bb.a
bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.x = load i64, ptr %i.f, align 8, !tbaa !49
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
end_hunk_24
begin_hunk_25_@llvm.umin.i64
!34 = !{!"p2 _ZTSN4absl12lts_202505127LogSinkE", !35, i64 0}
!35 = !{!"any p2 pointer", !14, i64 0}
!36 = !{!33, !34, i64 8}
!37 = !{!34, !34, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!33, !34, i64 16}
!41 = !{!20, !20, i64 0}
!42 = !{!26, !26, i64 0}
!43 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!44 = distinct !{null, null}
!45 = !{!30, !21, i64 8}
!46 = !{!30, !20, i64 0}
!47 = !{!31, !20, i64 0}
!48 = !{!21, !21, i64 0}
!49 = !{!5, !5, i64 0}
end_hunk_25
