Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/time_task?download=true
inline.NumInlined: 478
inline.NumDeleted: 259
begin_hunk_0_@_ZN4lean27has_no_block_profiling_taskEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i64 %i.d, 7
  br i1 %i.e, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.g = load i32, ptr %i.f, align 1
  %i.h = xor i32 %i.g, 1668246626
  %i.i = getelementptr i8, ptr %i.f, i64 3
  %i.j = load i32, ptr %i.i, align 1
  %i.k = xor i32 %i.j, 1684368227
  %i.l = or i32 %i.h, %i.k
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = zext i1 %i.m to i32                      ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.m, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4lean21report_profiling_timeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL17g_cum_times_mutexE, align 8, !tbaa !19 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #22
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN4leanL11g_cum_timesB5cxx11E, align 8, !tbaa !21
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = load double, ptr %i.d, align 8, !tbaa !24
  %i.f = fadd double %1, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  ret void

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  resume { ptr, i32 } %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.8", align 1      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #21 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !30 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, label %bb.b, !llvm.loop !73

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %1, ptr %2, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_NSt6chrono8durationIdSt5ratioILl1ELl1EEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESO_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4lean40exclude_profiling_time_from_current_taskENSt6chrono8durationIdSt5ratioILl1ELl1EEEE(double %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL19g_current_time_taskE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !24
  %i.e = fadd double %0, %i.d
  store double %i.e, ptr %i.c, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZN4lean34display_cumulative_profiling_timesERSo(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::sstream", align 8     ; 22 uses
  %2 = alloca %"struct.lean::display_profiling_time", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = load ptr, ptr @_ZN4leanL11g_cum_timesB5cxx11E, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %1)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.1, i64 noundef 28)
          to label %_ZN4lean7sstreamlsIA29_cEERS0_RKT_.exit unwind label %4 ; 0 uses

_ZN4lean7sstreamlsIA29_cEERS0_RKT_.exit:          ; preds = %bb.b
  %i.f = load ptr, ptr @_ZN4leanL11g_cum_timesB5cxx11E, align 8, !tbaa !21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit14, %_ZN4lean7sstreamlsIA29_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !36, !alias.scope !83
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !16, !alias.scope !83
  store i8 0, ptr %i.k, align 8, !tbaa !37, !alias.scope !83
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41, !noalias !83 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !83 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42, !noalias !83 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZNK4lean7sstream3strB5cxx11Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !17, !alias.scope !83 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %.body.sink.split

bb.e:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %_ZNK4lean7sstream3strB5cxx11Ev.exit unwind label %bb.d

4:                                                ; preds = %bb.b
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.lr.ph:                                           ; preds = %_ZN4lean7sstreamlsIA29_cEERS0_RKT_.exit, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit14
  %.sroa.018.021 = phi ptr [ %i.am, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit14 ], [ %i.h, %_ZN4lean7sstreamlsIA29_cEERS0_RKT_.exit ] ; 4 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit unwind label %bb.f ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit:           ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.021, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.018.021, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.ad, i64 noundef %i.af)
          to label %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit unwind label %bb.f ; 0 uses

_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit: ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit13 unwind label %bb.f ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit13:         ; preds = %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.021, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !43
  store i64 %i.aj, ptr %2, align 8, !tbaa !43
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4leanlsERSoRKNS_22display_profiling_timeE(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN4lean7sstreamlsINS_22display_profiling_timeEEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN4lean7sstreamlsINS_22display_profiling_timeEEERS0_RKT_.exit: ; preds = %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit13
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit14 unwind label %bb.g ; 0 uses

_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit14:         ; preds = %_ZN4lean7sstreamlsINS_22display_profiling_timeEEERS0_RKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.am = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.018.021) #23 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.i
  br i1 %i.an, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_ZN4lean7sstreamlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit, %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZN4lean7sstreamlsINS_22display_profiling_timeEEERS0_RKT_.exit, %_ZN4lean7sstreamlsIA2_cEERS0_RKT_.exit13
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

_ZNK4lean7sstream3strB5cxx11Ev.exit:              ; preds = %bb.e, %bb.c
  %i.aq = load ptr, ptr %3, align 8, !tbaa !17
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !16
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK4lean7sstream3strB5cxx11Ev.exit
  %i.at = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.k
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.av = load i64, ptr %i.k, align 8, !tbaa !37
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ax = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !45
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.az = getelementptr i8, ptr %i.ax, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %1, i64 %i.ba
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !45
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bc, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN4lean7sstreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !37
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZN4lean7sstreamD2Ev.exit

_ZN4lean7sstreamD2Ev.exit:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bc, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bj) #21
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bk) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4lean7sstreamD2Ev.exit
  ret void

bb.i:                                             ; preds = %_ZNK4lean7sstream3strB5cxx11Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.k
  br i1 %i.bn, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.y, %bb.d ], [ %i.bm, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.bl, %bb.i ]
  %i.bo = load i64, ptr %i.k, align 8, !tbaa !37
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bp) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.bl, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %.body, %4
  %.pn10.pn = phi { ptr, i32 } [ %5, %4 ], [ %.pn, %.body ], [ %i.ap, %bb.g ], [ %i.ao, %bb.f ]
  call void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean7sstreamD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !45
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !37
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.n) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @lean_display_cumulative_profiling_times() local_unnamed_addr #2 {
bb.a:
  tail call void @_ZN4lean34display_cumulative_profiling_timesERSo(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean20initialize_time_taskEv() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr %i.a, ptr @_ZN4leanL17g_cum_times_mutexE, align 8, !tbaa !19
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !34
  store ptr %i.b, ptr @_ZN4leanL11g_cum_timesB5cxx11E, align 8, !tbaa !21
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4lean18finalize_time_taskEv() local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL11g_cum_timesB5cxx11E, align 8, !tbaa !21 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_NSt6chrono8durationIdSt5ratioILl1ELl1EEEEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.d)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIdSt5ratioILl1ELl1EEEESt4lessIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, %bb.a
  %i.g = load ptr, ptr @_ZN4leanL17g_cum_times_mutexE, align 8, !tbaa !19 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 40) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN4lean9time_taskC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_7optionsENS_4nameE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef readonly align 8 captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %5 = alloca %"class.lean::optional", align 8    ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.b = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !46

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !17
  store i64 %i.d, ptr %i.a, align 8, !tbaa !37
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !37
  store i8 %i.k, ptr %i.j, align 1, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i8 0, ptr %i.n, align 8, !tbaa !49
  %i.o = invoke noundef zeroext i1 @_ZN4lean12get_profilerERKNS_7optionsE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.x

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  br i1 %i.o, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.p = invoke double @_ZN4lean23get_profiling_thresholdERKNS_7optionsE(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %3, align 8, !tbaa !51     ; 6 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN4lean4nameC2ERKS0_.exit

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i = load i32, ptr %i.q, align 4, !tbaa !53 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.t, label %bb.j, label %bb.k, !prof !54

bb.j:                                             ; preds = %bb.i
  %i.u = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !53
  br label %_ZN4lean4nameC2ERKS0_.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4nameC2ERKS0_.exit, label %bb.l

end_hunk_0
