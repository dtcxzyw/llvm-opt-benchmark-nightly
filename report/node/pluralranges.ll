inline.NumInlined: 62
inline.NumDeleted: 38
begin_hunk_0_@_ZNK6icu_7820StandardPluralRanges4copyER10UErrorCode:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = mul nuw nsw i64 %i.h, 12
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #9 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.c, align 4
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.l) #8
  br label %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit: ; preds = %bb.c, %bb.d
  store ptr %i.j, ptr %0, align 8
  store i32 %i.f, ptr %i.b, align 8
  store i8 1, ptr %i.c, align 4
  %.pre = load i32, ptr %i.e, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %bb.g

bb.f:                                             ; preds = %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit, %bb.a
  %i.m = phi i32 [ %.pre, %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.j, %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit ], [ %i.a, %bb.a ]
  %i.o = load ptr, ptr %1, align 8
  %i.p = sext i32 %i.m to i64
  %i.q = mul nsw i64 %i.p, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.o, i64 %i.q, i1 false)
  store i32 %i.m, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNO6icu_7820StandardPluralRanges9toPointerER10UErrorCode(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::LocalPointer") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #8 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8
  %i.n = load i32, ptr %i.e, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.k, i64 %i.p, i1 false)
  br label %.thread

bb.d:                                             ; preds = %bb.b
  store ptr %i.k, ptr %1, align 8
  store i32 3, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 4
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8
  store i32 %i.s, ptr %i.q, align 8
  store ptr %i.a, ptr %0, align 8
  br label %_ZN6icu_7812LocalPointerINS_20StandardPluralRangesEEC2EPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.t = load i32, ptr %2, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %_ZN6icu_7812LocalPointerINS_20StandardPluralRangesEEC2EPS1_R10UErrorCode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %2, align 4
  br label %_ZN6icu_7812LocalPointerINS_20StandardPluralRangesEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_20StandardPluralRangesEEC2EPS1_R10UErrorCode.exit: ; preds = %.thread, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6icu_7820StandardPluralRanges14addPluralRangeENS_14StandardPlural4FormES2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sext i32 %i.b to i64
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds [12 x i8], ptr %i.d, i64 %i.c ; 3 uses
  store i32 %1, ptr %i.e, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %3, ptr %.sroa.5.0..sroa_idx, align 4
  %i.f = load i32, ptr %i.a, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %1 to i64
  %i.h = mul nuw nsw i64 %i.g, 12
  %i.i = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.h) #9 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.l) #8
  br label %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit: ; preds = %bb.e, %bb.f
  store ptr %i.i, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i8 1, ptr %i.j, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c
  store i32 7, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7815MaybeStackArrayINS_20StandardPluralRanges25StandardPluralRangeTripleELi3EE6resizeEii.exit, %bb.g, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK6icu_7820StandardPluralRanges7resolveENS_14StandardPlural4FormES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %i.e, label %.loopexit, label %bb.c, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %3 = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %2
  %or.cond = select i1 %5, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %i.k = phi i32 [ %i.j, %bb.d ], [ 5, %bb.a ], [ 5, %bb.b ]
  ret i32 %i.k
}

declare ptr @ures_openDirect_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef ptr @_ZNK6icu_786Locale11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare ptr @ures_getStringByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare void @ures_getAllItemsWithFallback_78(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_120PluralRangesDataSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #8
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_120PluralRangesDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::ResourceArray", align 8 ; 6 uses
  %9 = alloca %"class.icu_78::ResourceArray", align 8 ; 9 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceArray") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  %i.g = load i32, ptr %4, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !align !8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = load i32, ptr %i.k, align 8              ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.p = icmp sgt i32 %i.l, 0
  br i1 %i.p, label %bb.d, label %_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode.exit.thread47

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.l to i64
  %i.r = mul nuw nsw i64 %i.q, 12
  %i.s = call noalias ptr @uprv_malloc_78(i64 noundef %i.r) #9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode.exit.thread47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.j, align 8
  call void @uprv_free_78(ptr noundef %i.v) #8
  br label %_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode.exit

_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode.exit.thread47: ; preds = %bb.c, %bb.d
  store i32 7, ptr %4, align 4
  br label %.loopexit

_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode.exit: ; preds = %bb.e, %bb.f
  store ptr %i.s, ptr %i.j, align 8
  store i32 %i.l, ptr %i.m, align 8
  store i8 1, ptr %i.t, align 4
  %.pre = load i32, ptr %4, align 4
  %i.w = icmp slt i32 %.pre, 1
  br i1 %i.w, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b, %_ZN6icu_7820StandardPluralRanges11setCapacityEiR10UErrorCode.exit
  %i.x = call noundef signext i8 @_ZNK6icu_7813ResourceArray8getValueEiRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(21) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %.not3543 = icmp eq i8 %i.x, 0
  br i1 %.not3543, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.m
  %.03344 = phi i32 [ 0, %.lr.ph ], [ %i.br, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceArray") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  %i.ac = load i32, ptr %4, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.y, align 8
  %.not37 = icmp eq i32 %i.ae, 3
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 17, ptr %4, align 4
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.af = call noundef signext i8 @_ZNK6icu_7813ResourceArray8getValueEiRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(21) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %2) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8, !noalias !9
  store i32 0, ptr %i.c, align 4, !noalias !9
  %i.ag = load ptr, ptr %2, align 8, !noalias !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !9
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %4) #8, !noalias !9, !inline_history !12
  store ptr %i.aj, ptr %7, align 8, !noalias !9
  %i.ak = load i32, ptr %i.c, align 4, !noalias !9
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 noundef signext 1, ptr noundef nonnull %7, i32 noundef %i.ak) #8
  %i.al = load ptr, ptr %7, align 8, !noalias !9
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.al) #8, !srcloc !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8, !noalias !9
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.am = call noundef i32 @_ZN6icu_7814StandardPlural15indexFromStringERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.an = load i32, ptr %4, align 4
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ap = call noundef signext i8 @_ZNK6icu_7813ResourceArray8getValueEiRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(21) %9, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8, !noalias !14
  store i32 0, ptr %i.b, align 4, !noalias !14
  %i.aq = load ptr, ptr %2, align 8, !noalias !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !14
  %i.at = call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %4) #8, !noalias !14, !inline_history !12
  store ptr %i.at, ptr %6, align 8, !noalias !14
  %i.au = load i32, ptr %i.b, align 4, !noalias !14
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 noundef signext 1, ptr noundef nonnull %6, i32 noundef %i.au) #8
  %i.av = load ptr, ptr %6, align 8, !noalias !14
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.av) #8, !srcloc !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.aw = call noundef i32 @_ZN6icu_7814StandardPlural15indexFromStringERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %11) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.ax = load i32, ptr %4, align 4
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.az = call noundef signext i8 @_ZNK6icu_7813ResourceArray8getValueEiRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(21) %9, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %2) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8, !noalias !17
  store i32 0, ptr %i.a, align 4, !noalias !17
  %i.ba = load ptr, ptr %2, align 8, !noalias !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !17
  %i.bd = call noundef ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4) #8, !noalias !17, !inline_history !12
  store ptr %i.bd, ptr %5, align 8, !noalias !17
  %i.be = load i32, ptr %i.a, align 4, !noalias !17
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 noundef signext 1, ptr noundef nonnull %5, i32 noundef %i.be) #8
  %i.bf = load ptr, ptr %5, align 8, !noalias !17
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bf) #8, !srcloc !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bg = call noundef i32 @_ZN6icu_7814StandardPlural15indexFromStringERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(4) %4) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %12) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.bh = load i32, ptr %4, align 4
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %bb.m, label %.critedge42

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.i, align 8, !nonnull !7, !align !8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8
end_hunk_0
