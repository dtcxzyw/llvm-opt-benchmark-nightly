inline.NumInlined: 389
inline.NumDeleted: 145
begin_hunk_0_@_ZN4absl12lts_2025051212ToChronoTimeENS0_4TimeE:bb.a
_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit:  ; preds = %bb.a
  %i.a = icmp slt i64 %0, 0
  br i1 %i.a, label %bb.b, label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread

bb.b:                                             ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit
  %i.b = tail call { i64, i32 } @_ZN4absl12lts_202505125FloorENS0_8DurationES1_(i64 %0, i32 %1, i64 0, i32 4) #14 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.b, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.b, 1
  br label %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread

_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread: ; preds = %bb.b, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit
  %.sroa.038.0 = phi i64 [ %.fca.0.extract, %bb.b ], [ %0, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit ]
  %.sroa.7.0 = phi i32 [ %.fca.1.extract, %bb.b ], [ %1, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit ] ; 4 uses
  %.sroa.038.0.fr = freeze i64 %.sroa.038.0       ; 5 uses
  %i.c = icmp eq i32 %.sroa.7.0, -1
  br i1 %i.c, label %bb.c, label %bb.d

_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread.thread: ; preds = %bb.a
  %i.d = icmp eq i32 %1, -1
  br i1 %i.d, label %_ZN4absl12lts_2025051213time_internal16ToChronoDurationINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_NS0_8DurationE.exit, label %.thread

bb.c:                                             ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread
  %i.e = icmp slt i64 %.sroa.038.0.fr, 0
  %spec.select = select i1 %i.e, i64 -9223372036854775808, i64 9223372036854775807
  br label %_ZN4absl12lts_2025051213time_internal16ToChronoDurationINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_NS0_8DurationE.exit

bb.d:                                             ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread
  %i.f = icmp ult i64 %.sroa.038.0.fr, 8589934592
  br i1 %i.f, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread.thread, %bb.d
  %.sroa.038.05258 = phi i64 [ %.sroa.038.0.fr, %bb.d ], [ 0, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread.thread ]
  %.sroa.7.05457 = phi i32 [ %.sroa.7.0, %bb.d ], [ %1, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread.thread ]
  %i.g = mul nuw nsw i64 %.sroa.038.05258, 1000000000
  %i.h = lshr i32 %.sroa.7.05457, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.g, %i.i
  br label %_ZN4absl12lts_2025051213time_internal16ToChronoDurationINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_NS0_8DurationE.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.038.0.fr, ptr %2, align 8
  %.sroa.212.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.212.0..sroa_idx.i.i.i.i, align 8
  %i.k = call noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64 %.sroa.038.0.fr, i32 %.sroa.7.0, i64 0, i32 4, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN4absl12lts_2025051213time_internal16ToChronoDurationINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_NS0_8DurationE.exit

_ZN4absl12lts_2025051213time_internal16ToChronoDurationINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_NS0_8DurationE.exit: ; preds = %bb.c, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread.thread, %.thread, %bb.e
  %.sroa.0.1.i = phi i64 [ %i.j, %.thread ], [ %i.k, %bb.e ], [ 9223372036854775807, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit.thread.thread ], [ %spec.select, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i32 } @_ZN4absl12lts_202505125FloorENS0_8DurationES1_(i64, i32, i64, i32) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202505128TimeZone2AtENS0_4TimeE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.absl::lts_20250512::TimeZone::CivilInfo") align 8 captures(none) initializes((0, 13), (16, 33), (40, 48)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %2, i32 %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 8 uses
  %i.a = icmp eq i64 %2, 9223372036854775807
  %i.b = icmp eq i32 %3, -1                       ; 2 uses
  %spec.select.i.i = select i1 %i.a, i1 %i.b, i1 false
  br i1 %spec.select.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = tail call { i64, i64 } @_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #13, !noalias !43 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { i64, i64 } %i.f, 1
  %.sroa.2.8.insert.ext.i.i = and i64 %.fca.1.extract.i.i.i.i, 1099511627775
  %i.g = extractvalue { i64, i64 } %i.f, 0
  store i64 %i.g, ptr %0, align 8, !tbaa !24, !alias.scope !43
  store i64 %.sroa.2.8.insert.ext.i.i, ptr %i.c, align 8, !alias.scope !43
  store i64 9223372036854775807, ptr %i.d, align 8, !alias.scope !43
  store i32 -1, ptr %i.e, align 8, !tbaa !3, !alias.scope !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !46, !alias.scope !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.i, align 8, !tbaa !49, !alias.scope !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @.str, ptr %i.j, align 8, !tbaa !50, !alias.scope !43
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %2, -9223372036854775808
  %spec.select.i.i53 = select i1 %i.k, i1 %i.b, i1 false
  br i1 %spec.select.i.i53, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %0, align 8, !tbaa !24, !alias.scope !51
  store i64 257, ptr %i.l, align 8, !alias.scope !51
  store i64 -9223372036854775808, ptr %i.m, align 8, !alias.scope !51
  store i32 -1, ptr %i.n, align 8, !tbaa !3, !alias.scope !51
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !46, !alias.scope !51
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.p, align 8, !tbaa !49, !alias.scope !51
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @.str, ptr %i.q, align 8, !tbaa !50, !alias.scope !51
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %2, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i to i40
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !24
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %i.r, align 8
  store i64 0, ptr %i.s, align 8
  store i32 %3, ptr %i.t, align 8, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.v, ptr %i.w, align 4, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.y = load i8, ptr %i.x, align 4, !tbaa !38, !range !39, !noundef !40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.y, ptr %i.z, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202505128TimeZone2AtENS0_13time_internal4cctz6detail10civil_timeINS2_10second_tagEEE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.absl::lts_20250512::TimeZone::TimeInfo") align 4 captures(none) initializes((4, 40)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %2, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %3 to i40
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNS2_6detail10civil_timeINS4_10second_tagEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = load i32, ptr %5, align 8, !tbaa !54     ; 2 uses
  %i.b = icmp ult i32 %i.a, 3
  br i1 %i.b, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  store i32 %i.a, ptr %0, align 4, !tbaa !59
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = call fastcc { i64, i32 } @_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i32 } %i.e, 0
  %.fca.1.extract9 = extractvalue { i64, i32 } %i.e, 1
  store i64 %.fca.0.extract8, ptr %i.c, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.fca.1.extract9, ptr %.sroa.413.0..sroa_idx, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = call fastcc { i64, i32 } @_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.fca.0.extract2 = extractvalue { i64, i32 } %i.g, 0
  %.fca.1.extract3 = extractvalue { i64, i32 } %i.g, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.fca.0.extract2, ptr %i.h, align 4
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.fca.1.extract3, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = call fastcc { i64, i32 } @_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.j, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 %.fca.0.extract, ptr %i.k, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

declare void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNS2_6detail10civil_timeINS4_10second_tagEEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc { i64, i32 } @_ZN4absl12lts_2025051212_GLOBAL__N_120MakeTimeWithOverflowERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEERKNS0_13time_internal4cctz6detail10civil_timeINSF_10second_tagEEERKNSE_9time_zoneEPb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %4 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 11 uses
  %6 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i64 9223372036854775807, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 -9223372036854775808, ptr %4, align 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !24 ; 2 uses
  %i.a = icmp eq i64 %.sroa.0.0.copyload.i.i, 9223372036854775807
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.b = load i64, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.d = icmp slt i64 %i.b, %i.c
  br i1 %i.d, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.b, %i.c
  br i1 %i.e, label %bb.d, label %.thread4

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !64    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !64    ; 2 uses
  %i.j = icmp slt i8 %i.g, %i.i
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i8 %i.g, %i.i
  br i1 %i.k, label %bb.f, label %.thread4

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !65    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.o = load i8, ptr %i.n, align 1, !tbaa !65    ; 2 uses
  %i.p = icmp slt i8 %i.m, %i.o
  br i1 %i.p, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i8 %i.m, %i.o
  br i1 %i.q, label %bb.h, label %.thread4

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.s = load i8, ptr %i.r, align 2, !tbaa !66    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !66    ; 2 uses
  %i.v = icmp slt i8 %i.s, %i.u
  br i1 %i.v, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i8 %i.s, %i.u
  br i1 %i.w, label %bb.j, label %.thread4

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !67    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !67   ; 2 uses
  %i.ab = icmp slt i8 %i.y, %i.aa
  br i1 %i.ab, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp eq i8 %i.y, %i.aa
  br i1 %i.ac, label %_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, label %.thread4

.thread:                                          ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.w

.thread4:                                         ; preds = %bb.g, %bb.e, %bb.i, %bb.c, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %thread-pre-split

_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !68
  %i.ah = icmp slt i8 %i.ae, %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.ah, label %bb.w, label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, %.thread4
  %.sroa.0.0.copyload.i.i35.pr = load i64, ptr %0, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %bb.a
  %.sroa.0.0.copyload.i.i35 = phi i64 [ %.sroa.0.0.copyload.i.i35.pr, %thread-pre-split ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0.0.copyload.i.i35, -9223372036854775808
  br i1 %i.ai, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.aj = load i64, ptr %1, align 8, !tbaa !63    ; 2 uses
  %i.ak = load i64, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.al = icmp slt i64 %i.aj, %i.ak
  br i1 %i.al, label %.thread7, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = icmp eq i64 %i.aj, %i.ak
  br i1 %i.am, label %bb.o, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !64  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !64  ; 2 uses
  %i.ar = icmp slt i8 %i.ao, %i.aq
  br i1 %i.ar, label %.thread7, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = icmp eq i8 %i.ao, %i.aq
  br i1 %i.as, label %bb.q, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !65  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !65  ; 2 uses
  %i.ax = icmp slt i8 %i.au, %i.aw
  br i1 %i.ax, label %.thread7, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp eq i8 %i.au, %i.aw
  br i1 %i.ay, label %bb.s, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !66  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !66  ; 2 uses
  %i.bd = icmp slt i8 %i.ba, %i.bc
  br i1 %i.bd, label %.thread7, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp eq i8 %i.ba, %i.bc
  br i1 %i.be, label %bb.u, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !67  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !67  ; 2 uses
  %i.bj = icmp slt i8 %i.bg, %i.bi
  br i1 %i.bj, label %.thread7, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = icmp eq i8 %i.bg, %i.bi
  br i1 %i.bk, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6

_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !68
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !68
  %i.bp = icmp slt i8 %i.bm, %i.bo
  br i1 %i.bp, label %.thread7, label %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6

.thread7:                                         ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.w

_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6: ; preds = %bb.r, %bb.p, %bb.t, %bb.n, %bb.v, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.sroa.0.0.copyload.i.i37.pre = load i64, ptr %0, align 8, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6, %.thread7, %.thread, %_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  %.sroa.032.3 = phi i64 [ 9223372036854775807, %.thread ], [ -9223372036854775808, %.thread7 ], [ 9223372036854775807, %_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit ], [ %.sroa.0.0.copyload.i.i37.pre, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6 ], [ %.sroa.0.0.copyload.i.i35, %bb.l ]
  %.sroa.4.3 = phi i32 [ -1, %.thread ], [ -1, %.thread7 ], [ -1, %_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit ], [ 0, %_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread6 ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.032.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.4.3, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_202505128TimeZone14NextTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_transition", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i64 1970, ptr %5, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1970, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.e, align 4, !tbaa !71
  %i.f = call noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone15next_transitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS3_16civil_transitionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5), !inline_history !72 ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2025051212_GLOBAL__N_114FindTransitionERKNS0_13time_internal4cctz9time_zoneEMS4_KFbRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEPNS4_16civil_transitionEENS0_4TimeEPNS0_8TimeZone15CivilTransitionE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %5, align 8, !tbaa !24
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.a, align 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i64 %.sroa.2.0.copyload.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !tbaa !24
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i, ptr %.sroa.424.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i18.i = load i64, ptr %i.c, align 8, !tbaa !24
  %.sroa.2.0.copyload.i20.i = load i64, ptr %i.d, align 8
  %.sroa.2.0.extract.trunc.i.i22.i = trunc i64 %.sroa.2.0.copyload.i20.i to i40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.0.0.copyload.i18.i, ptr %i.g, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i40 %.sroa.2.0.extract.trunc.i.i22.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_114FindTransitionERKNS0_13time_internal4cctz9time_zoneEMS4_KFbRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEPNS4_16civil_transitionEENS0_4TimeEPNS0_8TimeZone15CivilTransitionE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_114FindTransitionERKNS0_13time_internal4cctz9time_zoneEMS4_KFbRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEPNS4_16civil_transitionEENS0_4TimeEPNS0_8TimeZone15CivilTransitionE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i1 %i.f
}

declare noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone15next_transitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS3_16civil_transitionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_202505128TimeZone14PrevTransitionENS0_4TimeEPNS1_15CivilTransitionE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i32 %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::chrono::time_point", align 8 ; 4 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_transition", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %1, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i64 1970, ptr %5, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.a, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.b, align 4, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1970, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 0, ptr %i.e, align 4, !tbaa !71
  %i.f = call noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone15prev_transitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS3_16civil_transitionE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5), !inline_history !72 ; 2 uses
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2025051212_GLOBAL__N_114FindTransitionERKNS0_13time_internal4cctz9time_zoneEMS4_KFbRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEPNS4_16civil_transitionEENS0_4TimeEPNS0_8TimeZone15CivilTransitionE.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %5, align 8, !tbaa !24
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.a, align 8
  %.sroa.2.0.extract.trunc.i.i.i = trunc i64 %.sroa.2.0.copyload.i.i to i40
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !tbaa !24
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i40 %.sroa.2.0.extract.trunc.i.i.i, ptr %.sroa.424.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i18.i = load i64, ptr %i.c, align 8, !tbaa !24
  %.sroa.2.0.copyload.i20.i = load i64, ptr %i.d, align 8
  %.sroa.2.0.extract.trunc.i.i22.i = trunc i64 %.sroa.2.0.copyload.i20.i to i40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.0.0.copyload.i18.i, ptr %i.g, align 8, !tbaa !24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i40 %.sroa.2.0.extract.trunc.i.i22.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_114FindTransitionERKNS0_13time_internal4cctz9time_zoneEMS4_KFbRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEPNS4_16civil_transitionEENS0_4TimeEPNS0_8TimeZone15CivilTransitionE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_114FindTransitionERKNS0_13time_internal4cctz9time_zoneEMS4_KFbRKNSt6chrono10time_pointINS7_3_V212system_clockENS7_8durationIlSt5ratioILl1ELl1EEEEEEPNS4_16civil_transitionEENS0_4TimeEPNS0_8TimeZone15CivilTransitionE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i1 %i.f
}

declare noundef zeroext i1 @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone15prev_transitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS3_16civil_transitionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051215ConvertDateTimeEliiiiiNS0_8TimeZoneE(ptr dead_on_unwind noalias writable sret(%"struct.absl::lts_20250512::TimeConversion") align 4 captures(none) initializes((24, 36)) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", align 8 ; 8 uses
  %9 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup", align 8 ; 7 uses
  %10 = alloca %"class.absl::lts_20250512::TimeZone", align 8 ; 5 uses
  %i.a = inttoptr i64 %7 to ptr
  store ptr %i.a, ptr %10, align 8
  %i.b = icmp sgt i64 %1, 300000000000
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 9223372036854775807, ptr %i.c, align 4, !alias.scope !73
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !3, !alias.scope !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !tbaa.struct !76, !alias.scope !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !alias.scope !73
end_hunk_0
