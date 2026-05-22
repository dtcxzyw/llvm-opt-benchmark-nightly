inline.NumInlined: 110
inline.NumDeleted: 57
begin_hunk_0_@_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() ; 2 uses
  %i.g = sub nsw i64 9223372036854775807, %i.f
  %i.h = icmp sgt i64 %i.e, %i.g
  %i.i = add nsw i64 %.sroa.speculated, %i.f
  %.08 = select i1 %i.h, i64 9223372036854775807, i64 %i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ 9223372036854775807, %bb.a ], [ %.08, %bb.c ], [ %spec.store.select, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -9223372036854775808) i64 @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  %i.f = sub nsw i64 %i.b, %i.e
  %.sroa.speculated7 = tail call i64 @llvm.smax.i64(i64 %i.f, i64 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  %i.h = sub nsw i64 %i.b, %i.g
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.h, i64 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi i64 [ 9223372036854775807, %bb.a ], [ %.sroa.speculated7, %bb.c ], [ %.sroa.speculated, %bb.d ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = trunc i64 %i.a to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() ; 2 uses
  %i.g = sub nsw i64 9223372036854775807, %i.f
  %i.h = icmp sgt i64 %i.e, %i.g
  %i.i = add nsw i64 %.sroa.speculated.i, %i.f
  %.08.i = select i1 %i.h, i64 9223372036854775807, i64 %i.i
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit

bb.d:                                             ; preds = %bb.b
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit

_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i64 [ 9223372036854775807, %bb.a ], [ %.08.i, %bb.c ], [ %spec.store.select.i, %bb.d ] ; 2 uses
  %i.j = sdiv i64 %.0.i, 1000000000
  %i.k = srem i64 %.0.i, 1000000000               ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  %.tr.i.i = trunc nsw i64 %i.k to i32
  %i.m = shl i32 %.tr.i.i, 2                      ; 2 uses
  %i.n = add i32 %i.m, -294967296
  %.lobit.i.i.i = ashr i64 %i.k, 61
  %.pn17.i.i.i = add nsw i64 %.lobit.i.i.i, %i.j
  %.pn15.i.i.i = select i1 %i.l, i32 %i.n, i32 %i.m
  %i.o = tail call { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_8DurationE(i64 %.pn17.i.i.i, i32 %.pn15.i.i.i) #9
  ret { i64, i64 } %i.o
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_8DurationE(i64, i32) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20MakeRelativeTimespecEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  %i.f = sub nsw i64 %i.b, %i.e
  %.sroa.speculated7.i = tail call i64 @llvm.smax.i64(i64 %i.f, i64 0)
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  %i.h = sub nsw i64 %i.b, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 0)
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit

_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.1.i = phi i64 [ 9223372036854775807, %bb.a ], [ %.sroa.speculated7.i, %bb.c ], [ %.sroa.speculated.i, %bb.d ] ; 2 uses
  %i.i = udiv i64 %.1.i, 1000000000
  %i.j = urem i64 %.1.i, 1000000000
  %.tr.i.i = trunc nuw nsw i64 %i.j to i32
  %i.k = shl nuw i32 %.tr.i.i, 2
  %i.l = tail call { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_8DurationE(i64 %i.i, i32 %i.k) #9
  ret { i64, i64 } %i.l
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not61 = icmp eq i64 %i.a, -1
  br i1 %.not61, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_8DurationE(i64 9223372036, i32 -875864068) #9
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = and i64 %i.a, 1
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi i64 [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.h = call i32 @clock_gettime(i32 noundef %1, ptr noundef nonnull %3) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 160, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

_ZN4absl12lts_20250512leENS0_8DurationES1_.exit:  ; preds = %bb.f
  %.0 = sub nsw i64 %i.c, %.pn                    ; 2 uses
  %.sroa.039.0.copyload = load i64, ptr %3, align 8, !tbaa !11
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.240.0.copyload = load i64, ptr %.sroa.240.0..sroa_idx, align 8, !tbaa !11
  %i.i = call { i64, i32 } @_ZN4absl12lts_2025051220DurationFromTimespecE8timespec(i64 %.sroa.039.0.copyload, i64 %.sroa.240.0.copyload) #9 ; 2 uses
  %.fca.0.extract35 = extractvalue { i64, i32 } %i.i, 0
  %.fca.1.extract36 = extractvalue { i64, i32 } %i.i, 1
  %i.j = sdiv i64 %.0, 1000000000
  %i.k = srem i64 %.0, 1000000000                 ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  %.tr.i.i = trunc nsw i64 %i.k to i32
  %i.m = shl i32 %.tr.i.i, 2                      ; 2 uses
  %i.n = add i32 %i.m, -294967296
  %.lobit.i.i.i = ashr i64 %i.k, 61
  %.pn17.i.i.i = add nsw i64 %.lobit.i.i.i, %i.j
  %.pn15.i.i.i = select i1 %i.l, i32 %i.n, i32 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fca.0.extract35, ptr %2, align 8
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract36, ptr %.sroa.210.0..sroa_idx.i, align 8
  %i.o = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationpLES1_(ptr noundef nonnull align 4 dereferenceable(12) %2, i64 %.pn17.i.i.i, i32 %.pn15.i.i.i) #8 ; 2 uses
  %.sroa.011.0.copyload.i = load i64, ptr %i.o, align 4 ; 3 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.212.0..sroa_idx.i, align 4, !tbaa !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i.i = icmp eq i64 %.sroa.011.0.copyload.i, 0
  %i.p = icmp slt i64 %.sroa.011.0.copyload.i, 1
  %i.q = icmp eq i32 %.sroa.212.0.copyload.i, 0
  %i.r = select i1 %.not.i.i, i1 %i.q, i1 %i.p    ; 2 uses
  %..sroa.212.0.copyload.i = select i1 %i.r, i32 4, i32 %.sroa.212.0.copyload.i
  %..sroa.011.0.copyload.i = select i1 %i.r, i64 0, i64 %.sroa.011.0.copyload.i
  %4 = call { i64, i64 } @_ZN4absl12lts_2025051210ToTimespecENS0_8DurationE(i64 %..sroa.011.0.copyload.i, i32 %..sroa.212.0.copyload.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit, %bb.b
  %.pn58.pn = phi { i64, i64 } [ %4, %_ZN4absl12lts_20250512leENS0_8DurationES1_.exit ], [ %i.b, %bb.b ]
  ret { i64, i64 } %.pn58.pn
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare { i64, i32 } @_ZN4absl12lts_2025051220DurationFromTimespecE8timespec(i64, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i64 -1, 9223372036855) i64 @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout21InMillisecondsFromNowEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 1
  %i.c = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit

_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit: ; preds = %bb.c, %bb.d
  %.sink6 = phi i64 [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %i.g = sub nsw i64 %i.b, %.sink6                ; 2 uses
  %i.h = icmp sgt i64 %i.g, 9223372036853775807
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit
  %.sroa.speculated7.i = tail call i64 @llvm.smax.i64(i64 %i.g, i64 0)
  %i.i = add nuw nsw i64 %.sroa.speculated7.i, 999999
  %i.j = udiv i64 %i.i, 1000000
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit, %bb.a
  %.2 = phi i64 [ -1, %bb.a ], [ %i.j, %bb.e ], [ -1, %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit ]
  ret i64 %.2
}

; Function Attrs: mustprogress uwtable
define range(i64 -9223372036854775000, -9223372036854775808) i64 @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout17ToChronoTimePointEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = trunc i64 %i.a to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  %i.e = sub nsw i64 %i.b, %i.d                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.f = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv() ; 2 uses
  %i.g = sub nsw i64 9223372036854775807, %i.f
  %i.h = icmp sgt i64 %i.e, %i.g
  %i.i = add nsw i64 %.sroa.speculated.i, %i.f
  %.08.i = select i1 %i.h, i64 9223372036854775807, i64 %i.i
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit

bb.d:                                             ; preds = %bb.b
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit

_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %spec.store.select.i, %bb.d ], [ %.08.i, %bb.c ]
  %.0.i.fr = freeze i64 %.0.i                     ; 2 uses
  %i.j = srem i64 %.0.i.fr, 1000
  %i.k = sub nsw i64 %.0.i.fr, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit
  %.sroa.0.0 = phi i64 [ %i.k, %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout12MakeAbsNanosEv.exit ], [ 9223372036854775807, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define range(i64 0, -9223372036854775808) i64 @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout16ToChronoDurationEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !7      ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %i.a, 1                         ; 2 uses
  %i.c = and i64 %i.a, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
  %i.f = sub nsw i64 %i.b, %i.e
  %.sroa.speculated7.i = tail call i64 @llvm.smax.i64(i64 %i.f, i64 0)
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #8
  %i.h = sub nsw i64 %i.b, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.h, i64 0)
  br label %_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit

_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20InNanosecondsFromNowEv.exit: ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 9223372036854775807, %bb.a ], [ %.sroa.speculated.i, %bb.d ], [ %.sroa.speculated7.i, %bb.c ]
  ret i64 %.sroa.0.0
}

declare noundef i64 @_ZN4absl12lts_2025051212IDivDurationENS0_8DurationES1_PS1_(i64, i32, i64, i32, ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationpLES1_(ptr noundef nonnull align 4 dereferenceable(12), i64, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4absl12lts_2025051224synchronization_internal13KernelTimeoutE", !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!9, !9, i64 0}
end_hunk_0
