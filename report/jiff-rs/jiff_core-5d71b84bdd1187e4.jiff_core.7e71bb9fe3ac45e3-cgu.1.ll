Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.1?download=true
inline.NumInlined: 193
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date24from_day_of_year_no_leapB6_:bb.a

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3dayB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i32 %0, 24
  %.sroa.2.0.extract.trunc = trunc nuw i32 %.sroa.2.0.extract.shift to i8
  ret i8 %.sroa.2.0.extract.trunc
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden range(i48 0, -65534) i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date3newB6_(i16 %0, i8 %1, i8 %2) unnamed_addr #0 {
bb.a:
  %i.a = sext i16 %0 to i64
  %i.b = add nsw i64 %i.a, 9999
  %or.cond.i.i = icmp ult i64 %i.b, 19999
  br i1 %or.cond.i.i, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit, label %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_4YearE3newB4_() #18
  %i.c = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 32)
  br label %bb.i

_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit: ; preds = %bb.a
  %i.d = zext i16 %0 to i32                       ; 2 uses
  %i.e = shl nuw i32 %i.d, 16
  %i.f = sext i8 %1 to i64
  %i.g = add nsw i64 %i.f, -13
  %or.cond.i.i30 = icmp ult i64 %i.g, -12
  br i1 %or.cond.i.i30, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_5MonthE3newB4_() #18
  %i.h = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 12)
  br label %bb.i

bb.c:                                             ; preds = %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit
  %i.i = icmp slt i8 %2, 1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i8 %2, 28
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i8 @_RNvMsA_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_3Day5error()
  %i.l = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.k)
  br label %bb.i

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.319.0.insert.ext = zext nneg i8 %2 to i32
  %.sroa.319.0.insert.shift = shl nuw nsw i32 %.sroa.319.0.insert.ext, 24
  %.sroa.218.0.insert.ext = zext i8 %1 to i32
  %.sroa.218.0.insert.shift = shl nuw nsw i32 %.sroa.218.0.insert.ext, 16
  %.sroa.218.0.insert.insert = or disjoint i32 %.sroa.319.0.insert.shift, %.sroa.218.0.insert.shift
  %.sroa.017.0.insert.insert = or disjoint i32 %.sroa.218.0.insert.insert, %i.d
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = tail call i8 @_RNvNtCsaR3IayqLkK5_9jiff_core5civil13days_in_monthB3_(i16 %0, i8 %1) #18
  %i.n = icmp sgt i8 %2, %i.m
  br i1 %i.n, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %.sroa.224.0.insert.ext = zext i8 %1 to i32
  %.sroa.224.0.insert.shift = shl nuw nsw i32 %.sroa.224.0.insert.ext, 8
  %.sroa.224.0.insert.insert = or disjoint i32 %.sroa.224.0.insert.shift, %i.e
  %i.o = tail call i32 @_RNvMs9_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_18SpecialBoundsError16into_range_error(i32 %.sroa.224.0.insert.insert)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.b, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread
  %.sroa.6.0 = phi i32 [ %i.c, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ %i.h, %bb.b ], [ %i.l, %bb.e ], [ %i.o, %bb.h ], [ %.sroa.017.0.insert.insert, %bb.f ]
  %.sroa.0.0 = phi i16 [ 1, %_RNvMs1y_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_4Year6checkc.exit.thread ], [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %bb.h ], [ 0, %bb.f ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i48
  %.sroa.6.0.insert.shift = shl nuw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext nneg i16 %.sroa.0.0 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i16 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date4yearB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %.sroa.01.0.extract.trunc = trunc i32 %0 to i16
  ret i16 %.sroa.01.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i8 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date5monthB6_(i32 %0) unnamed_addr #1 {
bb.a:
  %.sroa.22.0.extract.shift = lshr i32 %0, 16
  %.sroa.22.0.extract.trunc = trunc i32 %.sroa.22.0.extract.shift to i8
  ret i8 %.sroa.22.0.extract.trunc
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time17subsec_nanosecondB6_(i64 %0) unnamed_addr #1 {
bb.a:
  %.sroa.01.0.extract.trunc = trunc i64 %0 to i32
  ret i32 %.sroa.01.0.extract.trunc
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time22with_subsec_nanosecondB6_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 2), (4, 6)) %0, i64 %1, i32 %2) unnamed_addr #0 {
bb.a:
  %or.cond.i.i = icmp ult i32 %2, 1000000000
  br i1 %or.cond.i.i, label %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit, label %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread

_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread: ; preds = %bb.a
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_16SubsecNanosecondE3newB4_() #18
  %i.a = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 21)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %i.a, ptr %i.b, align 2
  br label %bb.b

_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit: ; preds = %bb.a
  %.sroa.44.0.extract.shift = lshr i64 %1, 48
  %.sroa.44.0.extract.trunc = trunc i64 %.sroa.44.0.extract.shift to i8
  %.sroa.33.0.extract.shift = lshr i64 %1, 40
  %.sroa.33.0.extract.trunc = trunc i64 %.sroa.33.0.extract.shift to i8
  %.sroa.22.0.extract.shift = lshr i64 %1, 32
  %.sroa.22.0.extract.trunc = trunc i64 %.sroa.22.0.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.c, align 4
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.22.0.extract.trunc, ptr %.sroa.212.0..sroa_idx, align 4
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.33.0.extract.trunc, ptr %.sroa.313.0..sroa_idx, align 1
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.44.0.extract.trunc, ptr %.sroa.414.0..sroa_idx, align 2
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit, %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread
  %storemerge = phi i16 [ 0, %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit ], [ 1, %_RNvMs1c_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_16SubsecNanosecond6checkc.exit.thread ]
  store i16 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i32 -468608, 464948) i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB2_4Time9to_secondB6_(i64 %0) unnamed_addr #1 {
bb.a:
  %.sroa.22.0.extract.shift.i = lshr i64 %0, 32
  %.sroa.22.0.extract.trunc.i = trunc i64 %.sroa.22.0.extract.shift.i to i8
  %i.a = sext i8 %.sroa.22.0.extract.trunc.i to i32
  %i.b = mul nsw i32 %i.a, 3600
  %.sroa.22.0.extract.shift.i12 = lshr i64 %0, 40
  %.sroa.22.0.extract.trunc.i13 = trunc i64 %.sroa.22.0.extract.shift.i12 to i8
  %i.c = sext i8 %.sroa.22.0.extract.trunc.i13 to i32
  %i.d = mul nsw i32 %i.c, 60
  %.sroa.22.0.extract.shift.i14 = lshr i64 %0, 48
  %.sroa.22.0.extract.trunc.i15 = trunc i64 %.sroa.22.0.extract.shift.i14 to i8
  %i.e = sext i8 %.sroa.22.0.extract.trunc.i15 to i32
  %i.f = add nsw i32 %i.d, %i.e
  %i.g = add nsw i32 %i.f, %i.b
  ret i32 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday23from_sunday_zero_offsetB6_(i8 %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i8 %0, 7
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i8 @_RNvMs1u_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_17WeekdaySundayZero5error()
  %i.c = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.b)
  br label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil7weekdayNtB2_7Weekday23from_sunday_zero_offsetB6_, i64 %i.d
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.sroa.4.0 = phi i32 [ %i.c, %bb.b ], [ %switch.ext, %switch.lookup ]
  ret i32 %.sroa.4.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime10from_partsB6_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) initializes((0, 12)) %0, i32 %1, i64 %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 4
  store i64 %2, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime12to_timestampB6_(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 4 captures(none) %1, i32 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  call void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset12to_timestampB6_(ptr sret([24 x i8]) align 8 %0, i32 %2, ptr nonnull align 4 %i.a) #18
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime22saturating_add_secondsB6_(ptr nofree writeonly sret([12 x i8]) align 4 captures(none) %0, ptr nofree readonly align 4 captures(none) %1, i32 %2) unnamed_addr #0 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 4, !noalias !9 ; 3 uses
  %.sroa.22.0.extract.shift.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.22.0.extract.trunc.i.i.i = trunc i64 %.sroa.22.0.extract.shift.i.i.i to i8
  %i.a = sext i8 %.sroa.22.0.extract.trunc.i.i.i to i32
  %i.b = mul nsw i32 %i.a, 3600
  %.sroa.22.0.extract.shift.i12.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 40
  %.sroa.22.0.extract.trunc.i13.i.i = trunc i64 %.sroa.22.0.extract.shift.i12.i.i to i8
  %i.c = sext i8 %.sroa.22.0.extract.trunc.i13.i.i to i32
  %i.d = mul nsw i32 %i.c, 60
  %.sroa.22.0.extract.shift.i14.i.i = lshr i64 %.sroa.0.0.copyload.i.i, 48
  %.sroa.22.0.extract.trunc.i15.i.i = trunc i64 %.sroa.22.0.extract.shift.i14.i.i to i8
  %i.e = sext i8 %.sroa.22.0.extract.trunc.i15.i.i to i32
  %i.f = add nsw i32 %i.d, %i.e
  %i.g = add nsw i32 %i.f, %i.b
  %i.h = tail call { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_addCsaR3IayqLkK5_9jiff_core(i32 range(i32 -468608, 464948) %i.g, i32 %2) #18, !noalias !10 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i8 @_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond5error(), !noalias !10
  %i.l = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 %i.k), !noalias !10 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { i32, i32 } %i.h, 1        ; 2 uses
  %i.n = tail call i32 @_RNvMs0_NtCs3oUPovFnLWP_4core3numl10div_euclidCsaR3IayqLkK5_9jiff_core(i32 %i.m, i32 86400, ptr nonnull align 8 @38) #18, !noalias !10
  %i.o = tail call i32 @_RNvMs0_NtCs3oUPovFnLWP_4core3numl10rem_euclidCsaR3IayqLkK5_9jiff_core(i32 %i.m, i32 86400, ptr nonnull align 8 @39) #18, !noalias !10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i28.i = load i32, ptr %i.p, align 4, !noalias !9
  %i.q = tail call i48 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil4dateNtB2_4Date11checked_addB6_(i32 %.sroa.0.0.copyload.i28.i, i32 %i.n) #18, !noalias !9 ; 2 uses
  %.sroa.221.0.extract.shift.i = lshr i48 %i.q, 16
  %.sroa.221.0.extract.trunc.i = trunc nuw i48 %.sroa.221.0.extract.shift.i to i32
  %i.r = trunc i48 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = udiv i32 %i.o, 3600
  %i.t = trunc i32 %i.s to i8                     ; 2 uses
  %i.u = urem i32 %i.o, 3600                      ; 2 uses
  %.not9.i.i = icmp eq i32 %i.u, 0
  br i1 %.not9.i.i, label %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc.i.i = trunc nuw nsw i32 %i.u to i16 ; 2 uses
  %i.v = udiv i16 %.lhs.trunc.i.i, 60
  %i.w = zext nneg i16 %i.v to i64
  %i.x = urem i16 %.lhs.trunc.i.i, 60
  %i.y = zext nneg i16 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 48
  %i.aa = shl nuw nsw i64 %i.w, 40
  %i.ab = or disjoint i64 %i.z, %i.aa
  br label %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_.exit.i

_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.2.0.i.i = phi i8 [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ 0, %bb.d ]
  %.sroa.4.0.i.i = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.sroa.0.0.copyload.i29.i = load i64, ptr %1, align 4, !noalias !9 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i29.i to i32
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.01.0.extract.trunc.i.i, 1000000000
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_.exit.i
  tail call void @_RNvMNtCsaR3IayqLkK5_9jiff_core6boundsINtB2_14RawBoundsErrorNtB2_16SubsecNanosecondE3newB4_() #18, !noalias !9
  %i.ac = tail call i32 @_RNvMs3_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_11BoundsError16into_range_error(i8 21), !noalias !9 ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @8, ptr nonnull inttoptr (i64 109 to ptr), ptr nonnull align 8 @10) #19, !noalias !9
  unreachable

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.ad = icmp slt i32 %2, 0
  br i1 %i.ad, label %bb.l, label %bb.k

bb.i:                                             ; preds = %_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond7to_timeB9_.exit.i
  %i.ae = lshr i64 %.sroa.4.0.i.i, 32
  %i.af = trunc i64 %i.ae to i8
  %.sroa.22.0.extract.trunc.i.i = or i8 %.sroa.2.0.i.i, %i.af
  %.sroa.235.i.sroa.2.2.insert.ext = and i64 %.sroa.0.0.copyload.i29.i, 1073741823
  %.sroa.235.i.sroa.2.6.insert.ext = zext i8 %.sroa.22.0.extract.trunc.i.i to i64
  %.sroa.235.i.sroa.2.6.insert.shift = shl nuw nsw i64 %.sroa.235.i.sroa.2.6.insert.ext, 32
  %.sroa.235.i.sroa.2.6.insert.insert = or disjoint i64 %.sroa.235.i.sroa.2.6.insert.shift, %.sroa.235.i.sroa.2.2.insert.ext
  %.sroa.235.i.sroa.2.7.insert.shift = and i64 %.sroa.4.0.i.i, -1099511627776
  %.sroa.235.i.sroa.2.7.insert.insert = or disjoint i64 %.sroa.235.i.sroa.2.6.insert.insert, %.sroa.235.i.sroa.2.7.insert.shift
  store i64 %.sroa.235.i.sroa.2.7.insert.insert, ptr %0, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.221.0.extract.trunc.i, ptr %.sroa.24.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.k, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) @11, i64 12, i1 false)
  br label %bb.j

bb.l:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) @12, i64 12, i1 false)
  br label %bb.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4dateB6_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 4
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime4timeB6_(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #5 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 4
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone14to_offset_info(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1, i64 %2, i32 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = tail call fastcc { i64, ptr } @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone18to_local_time_type(ptr align 8 %1, i64 %2, i32 %3) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0
  %i.d = extractvalue { i64, ptr } %i.b, 1        ; 4 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone14to_offset_info(ptr sret([32 x i8]) align 8 %0, ptr align 8 %i.d, i64 %2, i32 %3)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceINtB5_8SmallStrKj6_EENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr align 8 %1) #18 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 1        ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 4
  %.val.i = load i8, ptr %i.h, align 4
  %i.i = zext i8 %.val.i to i64                   ; 3 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone11designation.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.i, i64 %i.g, ptr nonnull align 8 @14) #19
  unreachable

_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone11designation.exit: ; preds = %bb.c
  %i.k = extractvalue { ptr, i64 } %i.f, 0
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i
  call void @_RNvXsC_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_ENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.l) #18
  %i.m = load i32, ptr %i.d, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.o = load i8, ptr %i.n, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.m, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.o, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone11designation.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif5queryNtB4_8TimeZone15next_transition(ptr sret([48 x i8]) align 8 %0, ptr align 8 %1, i64 %2, i32 %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.3 = alloca [36 x i8], align 4            ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = tail call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.f) #18
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp9as_secondB4_(i64 %2, i32 %3) #18
  store i64 %i.j, ptr %i.e, align 8
  %i.k = tail call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.f) #18 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  switch i64 %i.m, label %.lr.ph.i.i [
    i64 0, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %.lr.ph.i.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.05.0.lcssa.i.i
  %i.o = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_search0BC_(ptr nonnull align 8 %i.b, ptr align 8 %i.n) #18 ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.c

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.05.012.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = lshr i64 %.sroa.01.013.i.i, 1            ; 2 uses
  %i.r = add i64 %i.q, %.sroa.05.012.i.i          ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r
  %i.t = call i8 @_RNCNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_search0BC_(ptr nonnull align 8 %i.b, ptr align 8 %i.s) #18
  %i.u = icmp eq i8 %i.t, 1
  %i.v = select i1 %i.u, i64 %.sroa.05.012.i.i, i64 %i.r, !unpredictable !4 ; 2 uses
  %i.w = sub nuw i64 %.sroa.01.013.i.i, %i.q      ; 2 uses
  %i.x = icmp ugt i64 %i.w, 1
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.y = icmp eq i8 %i.o, -1
  %i.z = zext i1 %i.y to i64
  %i.aa = add i64 %.sroa.05.0.lcssa.i.i, %i.z
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit.thread

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit.thread: ; preds = %bb.c, %bb.b
  %.sroa.4.0.i.i.ph = phi i64 [ %i.m, %bb.b ], [ %i.aa, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @18, ptr nonnull inttoptr (i64 49 to ptr), ptr nonnull align 8 @19) #19
  unreachable

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %.sroa.05.0.lcssa.i.i, i64 1) #18 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = call { i64, i64 } @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtNtB7_3ops9try_trait3Try6branchCsaR3IayqLkK5_9jiff_core(i64 %i.ac, i64 %i.ad) #18 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCsaR3IayqLkK5_9jiff_core2tz10TransitionEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBO_(ptr sret([48 x i8]) align 8 %0) #18
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ah = extractvalue { i64, i64 } %i.ae, 1
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit.thread, %bb.g
  %.sroa.03.0 = phi i64 [ %i.ah, %bb.g ], [ %.sroa.4.0.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif9Timestamp13binary_searchBA_.exit.thread ] ; 3 uses
  %i.ai = icmp eq i64 %.sroa.03.0, 0
  br i1 %i.ai, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.x, %bb.n, %bb.k, %bb.f
  ret void

bb.j:                                             ; preds = %bb.h
  %i.aj = call { ptr, i64 } @_RNvXs1_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_16MaybeStaticSliceNtNtNtB7_2tz4tzif9TimestampENtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5derefB7_(ptr nonnull align 8 %i.f) #18
  %i.ak = extractvalue { ptr, i64 } %i.aj, 1
  %.not = icmp ult i64 %.sroa.03.0, %i.ak
  br i1 %.not, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 2, ptr %i.al, align 4
  br label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.an = call align 8 ptr @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneE6as_refBN_(ptr nonnull align 8 %i.am) #18 ; 2 uses
  %.not17 = icmp eq ptr %i.an, null
  br i1 %.not17, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.o
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsaR3IayqLkK5_9jiff_core2tz4tzif6parserNtB4_14ParsedTimeZone5parse

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvMs0_NtCs3oUPovFnLWP_4core3numl10div_euclidCsaR3IayqLkK5_9jiff_core(i32, i32, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvMs0_NtCs3oUPovFnLWP_4core3numl10rem_euclidCsaR3IayqLkK5_9jiff_core(i32, i32, ptr align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare i8 @_RNvMsy_NtCsaR3IayqLkK5_9jiff_core6boundsNtB5_14CivilDaySecond5error() unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_negCsaR3IayqLkK5_9jiff_core(i32) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare i8 @_RNvMs1i_NtCsaR3IayqLkK5_9jiff_core6boundsNtB6_13UnixEpochDays5error() unnamed_addr #13

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11from_secondB4_(ptr sret([24 x i8]) align 8, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp11to_datetimeB4_(ptr sret([12 x i8]) align 4, ptr align 8, i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMNtCsaR3IayqLkK5_9jiff_core9timestampNtB2_9Timestamp9as_secondB4_(i64, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr, ptr align 8, ptr, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs1OFHugREOcC_9addr2line(ptr, i64, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs_NtNtCs3oUPovFnLWP_4core5slice4iterRShNtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsaR3IayqLkK5_9jiff_core(ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i40 @_RNvXs3_NtCs3oUPovFnLWP_4core7convertRShINtB5_7TryIntoAhj4_E8try_intoCsaR3IayqLkK5_9jiff_core(ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvMs6_NtCs3oUPovFnLWP_4core3numm13from_le_bytesCsaR3IayqLkK5_9jiff_core(i32) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core(i64, ptr, i64, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsO_NtNtCs3oUPovFnLWP_4core3fmt3numaNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsP_NtNtCs3oUPovFnLWP_4core3fmt3numsNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr align 2, ptr align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter11debug_tuple(ptr sret([24 x i8]) align 8, ptr align 8, ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr align 4, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMs3_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs_NtCsaR3IayqLkK5_9jiff_core9timestampNtB4_9TimestampNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaysECsaR3IayqLkK5_9jiff_core(ptr sret([16 x i8]) align 8, ptr align 2) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayaECsaR3IayqLkK5_9jiff_core(ptr sret([16 x i8]) align 8, ptr) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr, i64, i64, i64, ptr align 8) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr sret([16 x i8]) align 8, ptr align 8, ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXsR_NtNtCs3oUPovFnLWP_4core3fmt3numxNtB7_5Debug3fmtCsaR3IayqLkK5_9jiff_core(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXs7_NtCs3oUPovFnLWP_4core3fmtNtB5_9ArgumentsNtB5_5Debug3fmt(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_RNvXs1f_NtNtCs3oUPovFnLWP_4core3cmp5implsxNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaR3IayqLkK5_9jiff_core(i1 zeroext) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i16 @_RNvMs_NtCs3oUPovFnLWP_4core3nums12unsigned_absCsaR3IayqLkK5_9jiff_core(i16) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaytECsaR3IayqLkK5_9jiff_core(ptr sret([16 x i8]) align 8, ptr align 2) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RNvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtB9_4iter6traits8iterator8Iterator3revCsaR3IayqLkK5_9jiff_core(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3rev3RevINtNtNtB8_3ops5range5RangejEENtB2_12IntoIterator9into_iterCsaR3IayqLkK5_9jiff_core(i64, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECsaR3IayqLkK5_9jiff_core(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument9new_debugNtNtNtCsaR3IayqLkK5_9jiff_core5civil4date4DateEB11_(ptr sret([16 x i8]) align 8, ptr align 2) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument9new_debugNtNtNtCsaR3IayqLkK5_9jiff_core5civil4time4TimeEB11_(ptr sret([16 x i8]) align 8, ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_RNvXs19_NtNtCs3oUPovFnLWP_4core3cmp5implsaNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr, ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr align 4, ptr align 4) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i8 @_RNvXs1b_NtNtCs3oUPovFnLWP_4core3cmp5implssNtB8_3Ord3cmpCsaR3IayqLkK5_9jiff_core(ptr align 2, ptr align 2) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr align 8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr align 8, ptr, i64, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { inlinehint }
attributes #19 = { noinline noreturn }
attributes #20 = { cold }
attributes #21 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = distinct !{!5, i1 false, !"_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime19checked_add_secondsB6_"}
!6 = distinct !{!6, !5, !"_RNvMNtNtCsaR3IayqLkK5_9jiff_core5civil8datetimeNtB2_8DateTime19checked_add_secondsB6_: argument 0"}
!7 = distinct !{!7, i1 false, !"_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond15overflowing_addB9_"}
!8 = distinct !{!8, !7, !"_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core5civil4timeNtB5_10TimeSecond15overflowing_addB9_: argument 0"}
!9 = !{!6}
!10 = !{!8, !6}
end_hunk_1
