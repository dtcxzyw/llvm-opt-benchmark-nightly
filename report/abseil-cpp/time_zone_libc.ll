inline.NumInlined: 224
inline.NumDeleted: 118
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20260526::time_internal::cctz::detail::civil_time" = type { %"struct.absl::lts_20260526::time_internal::cctz::detail::fields" }
%"struct.absl::lts_20260526::time_internal::cctz::detail::fields" = type <{ i64, i8, i8, i8, i8, i8, [3 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup" = type { %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time", i32, i8, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"struct.absl::lts_20260526::time_internal::cctz::time_zone::civil_lookup" = type { i32, %"class.std::chrono::time_point", %"class.std::chrono::time_point", %"class.std::chrono::time_point" }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4absl12lts_2026052613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl = comdat any

$_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCD0Ev = comdat any

$_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll = comdat any

$_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa = comdat any

$_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa = comdat any

@.str = private unnamed_addr constant [4 x i8] c"-00\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs = internal global %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time" zeroinitializer, align 8
@_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs = internal global i64 0, align 8
@_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs = internal global %"class.absl::lts_20260526::time_internal::cctz::detail::civil_time" zeroinitializer, align 8
@_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@_ZTVN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE = dso_local constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE, ptr @_ZN4absl12lts_2026052613time_internal4cctz10TimeZoneIfD2Ev, ptr @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCD0Ev, ptr @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC9BreakTimeERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE, ptr @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEE, ptr @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE, ptr @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE, ptr @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC7VersionB5cxx11Ev, ptr @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC11DescriptionB5cxx11Ev] }, align 8
@_ZTIN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE, ptr @_ZTIN4absl12lts_2026052613time_internal4cctz10TimeZoneIfE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE = dso_local constant [56 x i8] c"N4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE\00", align 1
@_ZTIN4absl12lts_2026052613time_internal4cctz10TimeZoneIfE = external constant ptr
@__const._ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month = private unnamed_addr constant [13 x i32] [i32 -1, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16

@_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneLibC4MakeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE, i64 16), ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = icmp eq i64 %i.c, 9
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = xor i64 %i.f, 7883960631527960428
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = xor i64 %i.j, 101
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  %i.p = zext i1 %i.o to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i8 [ 0, %bb.a ], [ %i.p, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.q, ptr %i.r, align 8, !tbaa !18
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC9BreakTimeERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::absolute_lookup") align 8 captures(none) initializes((0, 13), (16, 21), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 1, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.c, align 1, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i8 0, ptr %i.e, align 4, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr @.str, ptr %i.f, align 8, !tbaa !31
  %.sroa.0.0.copyload.i.i1.i = load i64, ptr %2, align 8, !tbaa !32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %.sroa.0.0.copyload.i.i1.i, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !18, !range !33, !noundef !34
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef ptr @gmtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 10 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = icmp slt i64 %.sroa.0.0.copyload.i.i1.i, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef 9223372036854775807, i8 noundef signext 12, i64 noundef 31, i64 noundef 0, i8 noundef signext 23, i8 noundef signext 59, i8 noundef signext 59) #14 ; 2 uses
  %.fca.1.extract.i.i.i22 = extractvalue { i64, i64 } %i.o, 1
  %.sroa.2.8.insert.ext.i23 = and i64 %.fca.1.extract.i.i.i22, 1099511627775
  %.fca.1.insert.i24 = insertvalue { i64, i64 } %i.o, i64 %.sroa.2.8.insert.ext.i23, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pn = phi { i64, i64 } [ %.fca.1.insert.i24, %bb.f ], [ { i64 -9223372036854775808, i64 257 }, %bb.e ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.5.0 = extractvalue { i64, i64 } %.pn, 1
  store i64 %.sroa.0.0, ptr %0, align 8, !tbaa !32
  store i64 %.sroa.5.0, ptr %i.b, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %i.r, 1900
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !37
  %i.v = add nsw i32 %i.u, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !39
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i32, ptr %i.l, align 8, !tbaa !41
  %i.ah = sext i32 %i.ag to i64
  %i.ai = call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %i.s, i64 noundef %i.w, i64 noundef %i.z, i64 noundef %i.ac, i64 noundef %i.af, i64 noundef %i.ah) #14 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.ai, 0
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.ai, 1
  %.sroa.2.0.extract.trunc.i.i = trunc i64 %.fca.1.extract.i to i40
  store i64 %.fca.0.extract.i, ptr %0, align 8, !tbaa !32
  store i40 %.sroa.2.0.extract.trunc.i.i, ptr %i.b, align 8
  %i.aj = getelementptr i8, ptr %i.l, i64 40
  %.val = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.ak = trunc i64 %.val to i32
  store i32 %i.ak, ptr %i.d, align 8, !tbaa !27
  %i.al = load i8, ptr %i.g, align 8, !tbaa !18, !range !33, !noundef !34
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.l, i64 48
  %.val21 = load ptr, ptr %i.an, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ao = phi ptr [ %.val21, %bb.i ], [ @.str.1, %bb.h ]
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !44
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %i.e, align 4, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.absl::lts_20260526::time_internal::cctz::time_zone::civil_lookup") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 11 uses
  %3 = alloca %struct.tm, align 8                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.tm, align 8                 ; 4 uses
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %6 = alloca %struct.tm, align 16                ; 12 uses
  %7 = alloca %struct.tm, align 16                ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !18, !range !33, !noundef !34
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load atomic i8, ptr @_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e, !prof !45

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs) #14
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 1970, i64 257, i64 noundef -9223372036854775808) #14 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  store i64 %i.l, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, align 8
  %i.m = extractvalue { i64, i64 } %i.k, 1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, i64 8), align 8
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = load atomic i8, ptr @_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.h, !prof !45

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs) #14
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 1970, i64 257, i64 noundef 9223372036854775807) #14 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0
  store i64 %i.s, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, align 8
  %i.t = extractvalue { i64, i64 } %i.r, 1
  store i64 %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, i64 8), align 8
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.v = load i64, ptr %2, align 8, !tbaa !46     ; 5 uses
  %i.w = load i64, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, align 8, !tbaa !46 ; 2 uses
  %i.x = icmp slt i64 %i.v, %i.w
  br i1 %i.x, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp eq i64 %i.v, %i.w
  br i1 %i.y, label %bb.j, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !47   ; 2 uses
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.ac = icmp slt i8 %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ad, label %bb.l, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !48  ; 2 uses
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, i64 9), align 1, !tbaa !48 ; 2 uses
  %i.ah = icmp slt i8 %i.af, %i.ag
  br i1 %i.ah, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = icmp eq i8 %i.af, %i.ag
  br i1 %i.ai, label %bb.n, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !49  ; 2 uses
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, i64 10), align 2, !tbaa !49 ; 2 uses
  %i.am = icmp slt i8 %i.ak, %i.al
  br i1 %i.am, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = icmp eq i8 %i.ak, %i.al
  br i1 %i.an, label %bb.p, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !50  ; 2 uses
  %i.aq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, i64 11), align 1, !tbaa !50 ; 2 uses
  %i.ar = icmp slt i8 %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = icmp eq i8 %i.ap, %i.aq
  br i1 %i.as, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77

_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.au = load i8, ptr %i.at, align 4, !tbaa !51
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9min_tp_cs, i64 12), align 4, !tbaa !51
  %i.aw = icmp slt i8 %i.au, %i.av
  br i1 %i.aw, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77

_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77: ; preds = %bb.m, %bb.k, %bb.o, %bb.i, %bb.q, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  %i.ax = load i64, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, align 8, !tbaa !46 ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %i.v
  br i1 %i.ay, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77
  %i.az = icmp eq i64 %i.ax, %i.v
  br i1 %i.az, label %bb.s, label %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79

bb.s:                                             ; preds = %bb.r
  %i.ba = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, i64 8), align 8, !tbaa !47 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !47  ; 2 uses
  %i.bd = icmp slt i8 %i.ba, %i.bc
  br i1 %i.bd, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp eq i8 %i.ba, %i.bc
  br i1 %i.be, label %bb.u, label %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79

bb.u:                                             ; preds = %bb.t
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, i64 9), align 1, !tbaa !48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !48  ; 2 uses
  %i.bi = icmp slt i8 %i.bf, %i.bh
  br i1 %i.bi, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = icmp eq i8 %i.bf, %i.bh
  br i1 %i.bj, label %bb.w, label %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79

bb.w:                                             ; preds = %bb.v
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, i64 10), align 2, !tbaa !49 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !49  ; 2 uses
  %i.bn = icmp slt i8 %i.bk, %i.bm
  br i1 %i.bn, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = icmp eq i8 %i.bk, %i.bm
  br i1 %i.bo, label %bb.y, label %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79

bb.y:                                             ; preds = %bb.x
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, i64 11), align 1, !tbaa !50 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !50  ; 2 uses
  %i.bs = icmp slt i8 %i.bp, %i.br
  br i1 %i.bs, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = icmp eq i8 %i.bp, %i.br
  br i1 %i.bt, label %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, label %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79

_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit: ; preds = %bb.z
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC8MakeTimeERKNS2_6detail10civil_timeINS4_10second_tagEEEE9max_tp_cs, i64 12), align 4, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !51
  %i.bx = icmp slt i8 %i.bu, %i.bw
  br i1 %i.bx, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread, label %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79

_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79: ; preds = %bb.v, %bb.t, %bb.x, %bb.r, %bb.z, %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 5 uses
  %.sroa.22.8.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.2.0.copyload to i8
  %.sroa.43.8.extract.shift.i.i.i.i.i = lshr i64 %.sroa.2.0.copyload, 8
  %.sroa.43.8.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.43.8.extract.shift.i.i.i.i.i to i8
  %i.by = tail call noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %i.v, i8 noundef signext %.sroa.22.8.extract.trunc.i.i.i.i.i, i8 noundef signext %.sroa.43.8.extract.trunc.i.i.i.i.i, i64 noundef 1970, i8 noundef signext 1, i8 noundef signext 1) #14
  %i.bz = shl i64 %.sroa.2.0.copyload, 40
  %i.ca = ashr i64 %i.bz, 56
  %.pn.i.i.i.i = mul i64 %i.by, 24
  %i.cb = add i64 %i.ca, %.pn.i.i.i.i
  %i.cc = shl i64 %.sroa.2.0.copyload, 32
  %i.cd = ashr i64 %i.cc, 56
  %.pn.i.i.i = mul i64 %i.cb, 60
  %i.ce = add i64 %.pn.i.i.i, %i.cd
  %i.cf = shl i64 %.sroa.2.0.copyload, 24
  %i.cg = ashr i64 %i.cf, 56
  %.pn.i.i = mul i64 %i.ce, 60
  %i.ch = add i64 %.pn.i.i, %i.cg
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread

_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread: ; preds = %bb.y, %bb.w, %bb.u, %bb.s, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit, %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79
  %.sroa.020.0 = phi i64 [ %i.ch, %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread79 ], [ -9223372036854775808, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit ], [ 9223372036854775807, %_ZN4absl12lts_2026052613time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit ], [ -9223372036854775808, %bb.p ], [ -9223372036854775808, %bb.h ], [ -9223372036854775808, %bb.j ], [ -9223372036854775808, %bb.l ], [ -9223372036854775808, %bb.n ], [ 9223372036854775807, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread77 ], [ 9223372036854775807, %bb.s ], [ 9223372036854775807, %bb.u ], [ 9223372036854775807, %bb.w ], [ 9223372036854775807, %bb.y ] ; 3 uses
  store i32 0, ptr %0, align 8, !tbaa !52
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.020.0, ptr %i.ci, align 8, !tbaa !32
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.020.0, ptr %i.cj, align 8, !tbaa !32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.020.0, ptr %i.ck, align 8, !tbaa !32
  br label %bb.bp

bb.aa:                                            ; preds = %bb.a
  %i.cl = load i64, ptr %2, align 8, !tbaa !46    ; 4 uses
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cn = icmp samesign ult i64 %i.cl, -2147481748
  br i1 %i.cn, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %0, align 8, !tbaa !52
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.co, align 8, !tbaa !32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775808, ptr %i.cp, align 8, !tbaa !32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %i.cq, align 8, !tbaa !32
  br label %bb.bp

bb.ad:                                            ; preds = %bb.aa
  %i.cr = icmp samesign ugt i64 %i.cl, 2147485547
  br i1 %i.cr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %0, align 8, !tbaa !52
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9223372036854775807, ptr %i.cs, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9223372036854775807, ptr %i.ct, align 8, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 9223372036854775807, ptr %i.cu, align 8, !tbaa !32
  br label %bb.bp

bb.af:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.cv = trunc i64 %i.cl to i32
  %i.cw = add i32 %i.cv, -1900
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !35
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !47
  %i.da = sext i8 %i.cz to i32
  %i.db = add nsw i32 %i.da, -1
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 %i.db, ptr %i.dc, align 16, !tbaa !37
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dk = load <4 x i8>, ptr %i.dd, align 1, !tbaa !57
  %i.dl = sext <4 x i8> %i.dk to <4 x i32>
  %i.dm = shufflevector <4 x i32> %i.dl, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.dm, ptr %6, align 16, !tbaa !58
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i32 0, ptr %i.dn, align 16, !tbaa !44
  %i.do = call i64 @mktime(ptr noundef nonnull %6) #14 ; 2 uses
  store i64 %i.do, ptr %i.c, align 8, !tbaa !32
  %i.dp = icmp eq i64 %i.do, -1
  br i1 %i.dp, label %bb.ag, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.dq = call noundef ptr @localtime_r(ptr noundef nonnull %i.c, ptr noundef nonnull %5) #14 ; 7 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !35
  %i.du = load i32, ptr %i.cx, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.dt, %i.du
  br i1 %.not.i, label %bb.ai, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !37
  %i.dx = load i32, ptr %i.dc, align 16, !tbaa !37
  %.not34.i = icmp eq i32 %i.dw, %i.dx
  br i1 %.not34.i, label %bb.aj, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !38
  %i.ea = load i32, ptr %i.de, align 4, !tbaa !38
  %.not35.i = icmp eq i32 %i.dz, %i.ea
  br i1 %.not35.i, label %bb.ak, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81

bb.ak:                                            ; preds = %bb.aj
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !39
  %i.ed = load i32, ptr %i.dg, align 8, !tbaa !39
  %.not36.i = icmp eq i32 %i.ec, %i.ed
  br i1 %.not36.i, label %bb.al, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81

bb.al:                                            ; preds = %bb.ak
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !40
  %i.eg = load i32, ptr %i.di, align 4, !tbaa !40
  %.not37.i = icmp eq i32 %i.ef, %i.eg
  br i1 %.not37.i, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81: ; preds = %bb.ah, %bb.ag, %bb.al, %bb.ak, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.be

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit: ; preds = %bb.al
  %i.eh = load i32, ptr %i.dq, align 8, !tbaa !41
  %i.ei = load i32, ptr %6, align 16, !tbaa !41
  %.not38.i = icmp eq i32 %i.eh, %i.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %.not38.i, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread, label %bb.be

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread: ; preds = %bb.af, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit
  %i.ej = load i64, ptr %2, align 8, !tbaa !46
  %i.ek = trunc i64 %i.ej to i32
  %i.el = add i32 %i.ek, -1900
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  store i32 %i.el, ptr %i.em, align 4, !tbaa !35
  %i.en = load i8, ptr %i.cy, align 8, !tbaa !47
  %i.eo = sext i8 %i.en to i32
  %i.ep = add nsw i32 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i32 %i.ep, ptr %i.eq, align 16, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.eu = load <4 x i8>, ptr %i.dd, align 1, !tbaa !57
  %i.ev = sext <4 x i8> %i.eu to <4 x i32>
  %i.ew = shufflevector <4 x i32> %i.ev, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.ew, ptr %7, align 16, !tbaa !58
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i32 1, ptr %i.ex, align 16, !tbaa !44
  %i.ey = call i64 @mktime(ptr noundef nonnull %7) #14 ; 2 uses
  store i64 %i.ey, ptr %i.d, align 8, !tbaa !32
  %i.ez = icmp eq i64 %i.ey, -1
  br i1 %i.ez, label %bb.am, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread

bb.am:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.fa = call noundef ptr @localtime_r(ptr noundef nonnull %i.d, ptr noundef nonnull %4) #14 ; 7 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !35
  %i.fe = load i32, ptr %i.em, align 4, !tbaa !35
  %.not.i43 = icmp eq i32 %i.fd, %i.fe
  br i1 %.not.i43, label %bb.ao, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84

bb.ao:                                            ; preds = %bb.an
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !37
  %i.fh = load i32, ptr %i.eq, align 16, !tbaa !37
  %.not34.i46 = icmp eq i32 %i.fg, %i.fh
  br i1 %.not34.i46, label %bb.ap, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !38
  %i.fk = load i32, ptr %i.er, align 4, !tbaa !38
  %.not35.i47 = icmp eq i32 %i.fj, %i.fk
  br i1 %.not35.i47, label %bb.aq, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84

bb.aq:                                            ; preds = %bb.ap
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !39
  %i.fn = load i32, ptr %i.es, align 8, !tbaa !39
  %.not36.i48 = icmp eq i32 %i.fm, %i.fn
  br i1 %.not36.i48, label %bb.ar, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !40
  %i.fq = load i32, ptr %i.et, align 4, !tbaa !40
  %.not37.i49 = icmp eq i32 %i.fp, %i.fq
  br i1 %.not37.i49, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84: ; preds = %bb.an, %bb.am, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.be

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51: ; preds = %bb.ar
  %i.fr = load i32, ptr %i.fa, align 8, !tbaa !41
  %i.fs = load i32, ptr %7, align 16, !tbaa !41
  %.not38.i50 = icmp eq i32 %i.fr, %i.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %.not38.i50, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread, label %bb.be

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread: ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51
  %i.ft = load i32, ptr %i.dn, align 16, !tbaa !44 ; 3 uses
  %i.fu = load i32, ptr %i.ex, align 16, !tbaa !44
  %i.fv = icmp eq i32 %i.ft, %i.fu
  %i.fw = load i64, ptr %i.c, align 8             ; 5 uses
  br i1 %i.fv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread
  %.not40 = icmp eq i32 %i.ft, 0
  %i.fx = load i64, ptr %i.d, align 8
  %i.fy = select i1 %.not40, i64 %i.fw, i64 %i.fx ; 3 uses
  store i32 0, ptr %0, align 8, !tbaa !52
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !32
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fy, ptr %i.ga, align 8, !tbaa !32
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.fy, ptr %i.gb, align 8, !tbaa !32
  br label %bb.bo

bb.at:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.val41 = load i64, ptr %i.gc, align 8, !tbaa !42
  %i.gd = load i64, ptr %i.d, align 8, !tbaa !32  ; 4 uses
  %i.ge = icmp slt i64 %i.fw, %i.gd
  br i1 %i.ge, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i64 %i.gd, ptr %i.c, align 8, !tbaa !32
  store i64 %i.fw, ptr %i.d, align 8, !tbaa !32
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.val = load i64, ptr %i.gf, align 8, !tbaa !42
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.gg = phi i64 [ %i.gd, %bb.au ], [ %i.fw, %bb.at ]
  %i.gh = phi i64 [ %i.fw, %bb.au ], [ %i.gd, %bb.at ]
  %.035 = phi i64 [ %.val, %bb.au ], [ %.val41, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.gh, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i, %bb.av
  %.012.i = phi i64 [ %i.gg, %bb.av ], [ %.214.i, %._crit_edge.i ] ; 10 uses
  %.011.i = phi i64 [ undef, %bb.av ], [ %.1.i53, %._crit_edge.i ] ; 2 uses
  %i.gi = load i64, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.gj = add nsw i64 %i.gi, 1
  %.not.i52 = icmp eq i64 %i.gj, %.012.i
  br i1 %.not.i52, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110find_transElll.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.gk = sub nsw i64 %.012.i, %i.gi
  %i.gl = sdiv i64 %i.gk, 2
  %i.gm = add nsw i64 %i.gl, %i.gi
  store i64 %i.gm, ptr %i.b, align 8, !tbaa !32
  %i.gn = call noundef ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #14 ; 2 uses
  %.not17.not.i = icmp eq ptr %i.gn, null         ; 2 uses
  br i1 %.not17.not.i, label %.preheader.i, label %bb.ay

.preheader.i:                                     ; preds = %bb.ax
  %i.go = load i64, ptr %i.a, align 8, !tbaa !32
  %i.gp = add nsw i64 %i.go, 1                    ; 2 uses
  store i64 %i.gp, ptr %i.a, align 8, !tbaa !32
  %.not1821.i = icmp eq i64 %i.gp, %.012.i
  br i1 %.not1821.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110find_transElll.exit

bb.ay:                                            ; preds = %bb.ax
  %i.gq = getelementptr i8, ptr %i.gn, i64 40
  %.val20.i = load i64, ptr %i.gq, align 8, !tbaa !42
  %i.gr = icmp eq i64 %.val20.i, %.035
  %i.gs = load i64, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  br i1 %i.gr, label %._crit_edge.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %i.gs, ptr %i.a, align 8, !tbaa !32
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.bb
  %i.gt = call noundef ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #14 ; 2 uses
  %.not19.i = icmp eq ptr %i.gt, null
  br i1 %.not19.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i
  %i.gu = getelementptr i8, ptr %i.gt, i64 40
  %.val.i = load i64, ptr %i.gu, align 8, !tbaa !42
  %i.gv = icmp eq i64 %.val.i, %.035
  br i1 %i.gv, label %.._crit_edge.loopexit_crit_edge.i, label %bb.bb

.._crit_edge.loopexit_crit_edge.i:                ; preds = %bb.ba
  %.pre.pre.i = load i64, ptr %i.a, align 8, !tbaa !32
  br label %._crit_edge.i

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !32
  %i.gx = add nsw i64 %i.gw, 1                    ; 2 uses
  store i64 %i.gx, ptr %i.a, align 8, !tbaa !32
  %.not18.i = icmp eq i64 %i.gx, %.012.i
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %bb.bb, %.._crit_edge.loopexit_crit_edge.i, %bb.az, %bb.ay
  %.214.i = phi i64 [ %.012.i, %bb.az ], [ %i.gs, %bb.ay ], [ %.012.i, %.._crit_edge.loopexit_crit_edge.i ], [ %.012.i, %bb.bb ]
  %.1.i53 = phi i64 [ %.011.i, %bb.az ], [ %.011.i, %bb.ay ], [ %.pre.pre.i, %.._crit_edge.loopexit_crit_edge.i ], [ %.012.i, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %.not17.not.i, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110find_transElll.exit, label %bb.aw, !llvm.loop !61

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110find_transElll.exit: ; preds = %bb.aw, %._crit_edge.i, %._crit_edge.thread.i
  %.2.i = phi i64 [ %.012.i, %._crit_edge.thread.i ], [ %.1.i53, %._crit_edge.i ], [ %.012.i, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not39 = icmp eq i32 %i.ft, 0
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not39, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110find_transElll.exit
  %i.hb = load i64, ptr %i.c, align 8, !tbaa !32
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !32
  store i32 1, ptr %0, align 8, !tbaa !52
  store i64 %i.hb, ptr %i.gy, align 8, !tbaa !32
  store i64 %.2.i, ptr %i.gz, align 8, !tbaa !32
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !32
  br label %bb.bo

bb.bd:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_110find_transElll.exit
  %i.hd = load i64, ptr %i.d, align 8, !tbaa !32
  %i.he = load i64, ptr %i.c, align 8, !tbaa !32
  store i32 2, ptr %0, align 8, !tbaa !52
  store i64 %i.hd, ptr %i.gy, align 8, !tbaa !32
  store i64 %.2.i, ptr %i.gz, align 8, !tbaa !32
  store i64 %i.he, ptr %i.ha, align 8, !tbaa !32
  br label %bb.bo

bb.be:                                            ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51.thread84, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit.thread81, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit51, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_19make_timeERKNS2_6detail10civil_timeINS4_10second_tagEEEiPlP2tm.exit
  %i.hf = load i64, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.hg = icmp slt i64 %i.hf, 1970
  br i1 %i.hg, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hh = icmp eq i64 %i.hf, 1970
  br i1 %i.hh, label %bb.bg, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bg:                                            ; preds = %bb.bf
  %i.hi = load i8, ptr %i.cy, align 8, !tbaa !47  ; 2 uses
  %i.hj = icmp slt i8 %i.hi, 1
  br i1 %i.hj, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hk = icmp eq i8 %i.hi, 1
  br i1 %i.hk, label %bb.bi, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bi:                                            ; preds = %bb.bh
  %i.hl = load i8, ptr %i.dd, align 1, !tbaa !48  ; 2 uses
  %i.hm = icmp slt i8 %i.hl, 1
  br i1 %i.hm, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hn = icmp eq i8 %i.hl, 1
  br i1 %i.hn, label %bb.bk, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bk:                                            ; preds = %bb.bj
  %i.ho = load i8, ptr %i.df, align 2, !tbaa !49  ; 2 uses
  %i.hp = icmp slt i8 %i.ho, 0
  br i1 %i.hp, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hq = icmp eq i8 %i.ho, 0
  br i1 %i.hq, label %bb.bm, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

bb.bm:                                            ; preds = %bb.bl
  %i.hr = load i8, ptr %i.dh, align 1, !tbaa !50  ; 2 uses
  %i.hs = icmp slt i8 %i.hr, 0
  br i1 %i.hs, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ht = icmp eq i8 %i.hr, 0
  br i1 %i.ht, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54: ; preds = %bb.bn
  %i.hu = load i8, ptr %i.dj, align 4, !tbaa !51
  %i.hv = icmp slt i8 %i.hu, 0
  br i1 %i.hv, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87

_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87: ; preds = %bb.bj, %bb.bh, %bb.bl, %bb.bf, %bb.bn, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread

_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread: ; preds = %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87
  %.sroa.0.0 = phi i64 [ 9223372036854775807, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread87 ], [ -9223372036854775808, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54 ], [ -9223372036854775808, %bb.be ], [ -9223372036854775808, %bb.bg ], [ -9223372036854775808, %bb.bi ], [ -9223372036854775808, %bb.bk ], [ -9223372036854775808, %bb.bm ] ; 3 uses
  store i32 0, ptr %0, align 8, !tbaa !52
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.hw, align 8, !tbaa !32
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %i.hx, align 8, !tbaa !32
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0, ptr %i.hy, align 8, !tbaa !32
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bc, %bb.bd, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit54.thread, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.ae, %bb.ac, %_ZN4absl12lts_2026052613time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE.exit.thread
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl(i64 %0, i64 %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %sext.i = shl i64 %1, 56
  %i.a = ashr exact i64 %sext.i, 56
  %i.b = shl i64 %1, 48
  %i.c = ashr i64 %i.b, 56
  %i.d = shl i64 %1, 40
  %i.e = ashr i64 %i.d, 56
  %i.f = shl i64 %1, 32
  %i.g = ashr i64 %i.f, 56
  %i.h = sdiv i64 %2, 60
  %i.i = add nsw i64 %i.g, %i.h
  %i.j = shl i64 %1, 24
  %i.k = ashr i64 %i.j, 56
  %i.l = srem i64 %2, 60
  %i.m = add nsw i64 %i.k, %i.l
  %i.n = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %0, i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.i, i64 noundef %i.m) #14 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.n, 1
  %.sroa.2.8.insert.ext = and i64 %.fca.1.extract.i, 1099511627775
  %.fca.1.insert = insertvalue { i64, i64 } %i.n, i64 %.sroa.2.8.insert.ext, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC14NextTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC14PrevTransitionERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEEPNS2_9time_zone16civil_transitionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC7VersionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4absl12lts_2026052613time_internal4cctz12TimeZoneLibC11DescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18, !range !33, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @.str.2, ptr @.str.1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !62
  %i.f = select i1 %i.c, i64 9, i64 3             ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) %i.d, i64 %i.f, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) initializes((0, 9)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i64 %i.b, 9
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 7883960631527960428
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i64
  %i.j = xor i64 %i.i, 101
  %i.k = or i64 %i.f, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  %i.o = zext i1 %i.n to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ %i.o, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.p, ptr %i.q, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2026052613time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2026052613time_internal4cctz10TimeZoneIfD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_secEllllll(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %or.cond = icmp ult i64 %5, 60
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw nsw i64 %5 to i8               ; 3 uses
  %or.cond3 = icmp ult i64 %4, 60
  br i1 %or.cond3, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = trunc nuw nsw i64 %4 to i8               ; 2 uses
  %or.cond5 = icmp ult i64 %3, 24
  br i1 %or.cond5, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.c = trunc nuw nsw i64 %3 to i8
  %i.d = add i64 %2, -1
  %or.cond7 = icmp ult i64 %i.d, 28
  %i.e = add i64 %1, -1
  %i.f = icmp ult i64 %i.e, 12
  %or.cond11 = and i1 %i.f, %or.cond7
  br i1 %or.cond11, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, 12
  br i1 %.not.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = sdiv i64 %1, 12
  %i.h = add nsw i64 %i.g, %0                     ; 2 uses
  %i.i = srem i64 %1, 12                          ; 3 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i64 %i.h, -1
  %i.l = add nsw i64 %i.i, 12
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.016.i = phi i64 [ %i.l, %bb.g ], [ %i.i, %bb.f ], [ 12, %bb.e ]
  %.0.i = phi i64 [ %i.k, %bb.g ], [ %i.h, %bb.f ], [ %0, %bb.e ]
  %i.m = trunc nuw nsw i64 %.016.i to i8
  %i.n = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i, i8 noundef signext %i.m, i64 noundef %2, i64 noundef 0, i8 noundef signext %i.c, i8 noundef signext %i.b, i8 noundef signext %i.a) #14 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i64 } %i.n, 1 ; 5 uses
  %.fca.0.extract22 = extractvalue { i64, i64 } %i.n, 0
  %.sroa.6.sroa.6.0.extract.shift112146 = lshr i64 %.fca.1.extract.i, 8
  %.sroa.6.sroa.7.0.extract.shift118147 = lshr i64 %.fca.1.extract.i, 16
  %.sroa.6.sroa.8.0.extract.shift124148 = lshr i64 %.fca.1.extract.i, 24
  %.sroa.6.sroa.9.0.extract.shift130149 = lshr i64 %.fca.1.extract.i, 32
  br label %bb.q

bb.h:                                             ; preds = %bb.c
  %i.o = sdiv i64 %3, 24
  %i.p = srem i64 %3, 24                          ; 4 uses
  %.not.i.i = icmp eq i64 %1, 12
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = sdiv i64 %1, 12
  %i.r = add nsw i64 %i.q, %0                     ; 2 uses
  %i.s = srem i64 %1, 12                          ; 3 uses
  %i.t = icmp slt i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i64 %i.r, -1
  %i.v = add nsw i64 %i.s, 12
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.016.i.i = phi i64 [ %i.v, %bb.j ], [ %i.s, %bb.i ], [ 12, %bb.h ]
  %.0.i.i = phi i64 [ %i.u, %bb.j ], [ %i.r, %bb.i ], [ %0, %bb.h ]
  %i.w = icmp slt i64 %i.p, 0
  %i.x = add nsw i64 %i.p, 24
  %.015.i = select i1 %i.w, i64 %i.x, i64 %i.p
  %i.y = trunc nuw nsw i64 %.015.i to i8
  %.lobit.i = ashr i64 %i.p, 63
  %.0.i85 = add nsw i64 %.lobit.i, %i.o
  %i.z = trunc nuw nsw i64 %.016.i.i to i8
  %i.aa = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i, i8 noundef signext %i.z, i64 noundef %2, i64 noundef %.0.i85, i8 noundef signext %i.y, i8 noundef signext %i.b, i8 noundef signext %i.a) #14 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i64 } %i.aa, 1 ; 5 uses
  %.fca.0.extract18 = extractvalue { i64, i64 } %i.aa, 0
  %.sroa.6.sroa.6.0.extract.shift110142 = lshr i64 %.fca.1.extract.i.i, 8
  %.sroa.6.sroa.7.0.extract.shift116143 = lshr i64 %.fca.1.extract.i.i, 16
  %.sroa.6.sroa.8.0.extract.shift122144 = lshr i64 %.fca.1.extract.i.i, 24
  %.sroa.6.sroa.9.0.extract.shift128145 = lshr i64 %.fca.1.extract.i.i, 32
  br label %bb.q

bb.k:                                             ; preds = %bb.b
  %i.ab = sdiv i64 %4, 60
  %i.ac = srem i64 %4, 60                         ; 4 uses
  %.not.i.i.i = icmp eq i64 %1, 12
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = sdiv i64 %1, 12
  %i.ae = add nsw i64 %i.ad, %0                   ; 2 uses
  %i.af = srem i64 %1, 12                         ; 3 uses
  %i.ag = icmp slt i64 %i.af, 1
  br i1 %i.ag, label %bb.m, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = add nsw i64 %i.ae, -1
  %i.ai = add nsw i64 %i.af, 12
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit: ; preds = %bb.k, %bb.l, %bb.m
  %.016.i.i.i = phi i64 [ %i.ai, %bb.m ], [ %i.af, %bb.l ], [ 12, %bb.k ]
  %.0.i.i.i = phi i64 [ %i.ah, %bb.m ], [ %i.ae, %bb.l ], [ %0, %bb.k ]
  %i.aj = icmp slt i64 %i.ac, 0
  %i.ak = add nsw i64 %i.ac, 60
  %.017.i = select i1 %i.aj, i64 %i.ak, i64 %i.ac
  %i.al = trunc nuw nsw i64 %.017.i to i8
  %i.am = srem i64 %3, 24
  %.lobit.i87 = ashr i64 %i.ac, 63
  %.0.i88 = add nsw i64 %.lobit.i87, %i.ab        ; 2 uses
  %i.an = srem i64 %.0.i88, 24
  %i.ao = add nsw i64 %i.an, %i.am
  %i.ap = sdiv i64 %3, 24
  %i.aq = sdiv i64 %.0.i88, 24
  %i.ar = add nsw i64 %i.aq, %i.ap
  %.lhs.trunc.i = trunc nsw i64 %i.ao to i8       ; 2 uses
  %i.as = srem i8 %.lhs.trunc.i, 24               ; 4 uses
  %i.at = icmp slt i8 %i.as, 0
  %i.au = add nsw i8 %i.as, 24
  %i.av = select i1 %i.at, i8 %i.au, i8 %i.as
  %i.aw = sdiv i8 %.lhs.trunc.i, 24
  %.sext20.i = sext i8 %i.aw to i64
  %i.ax = add nsw i64 %i.ar, %.sext20.i
  %i.ay = ashr i8 %i.as, 7
  %.lobit.i.i = sext i8 %i.ay to i64
  %.0.i.i89 = add nsw i64 %i.ax, %.lobit.i.i
  %i.az = trunc nuw nsw i64 %.016.i.i.i to i8
  %i.ba = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i.i, i8 noundef signext %i.az, i64 noundef %2, i64 noundef %.0.i.i89, i8 noundef signext %i.av, i8 noundef signext %i.al, i8 noundef signext %i.a) #14 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i64 } %i.ba, 1 ; 5 uses
  %.fca.0.extract14 = extractvalue { i64, i64 } %i.ba, 0
  %.sroa.6.sroa.6.0.extract.shift108138 = lshr i64 %.fca.1.extract.i.i.i, 8
  %.sroa.6.sroa.7.0.extract.shift114139 = lshr i64 %.fca.1.extract.i.i.i, 16
  %.sroa.6.sroa.8.0.extract.shift120140 = lshr i64 %.fca.1.extract.i.i.i, 24
  %.sroa.6.sroa.9.0.extract.shift126141 = lshr i64 %.fca.1.extract.i.i.i, 32
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  %i.bb = sdiv i64 %5, 60
  %i.bc = srem i64 %5, 60                         ; 4 uses
  %i.bd = icmp slt i64 %i.bc, 0
  %i.be = add nsw i64 %i.bc, 60
  %.lobit = ashr i64 %i.bc, 63
  %.078 = add nsw i64 %.lobit, %i.bb              ; 2 uses
  %.0 = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = sdiv i64 %4, 60
  %i.bg = sdiv i64 %.078, 60
  %i.bh = add nsw i64 %i.bg, %i.bf
  %i.bi = srem i64 %4, 60
  %i.bj = srem i64 %.078, 60
  %i.bk = add nsw i64 %i.bj, %i.bi
  %i.bl = trunc nuw nsw i64 %.0 to i8
  %.not.i.i.i91 = icmp eq i64 %1, 12
  br i1 %.not.i.i.i91, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = sdiv i64 %1, 12
  %i.bn = add nsw i64 %i.bm, %0                   ; 2 uses
  %i.bo = srem i64 %1, 12                         ; 3 uses
  %i.bp = icmp slt i64 %i.bo, 1
  br i1 %i.bp, label %bb.p, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104

bb.p:                                             ; preds = %bb.o
  %i.bq = add nsw i64 %i.bn, -1
  %i.br = add nsw i64 %i.bo, 12
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104: ; preds = %bb.n, %bb.o, %bb.p
  %.016.i.i.i92 = phi i64 [ %i.br, %bb.p ], [ %i.bo, %bb.o ], [ 12, %bb.n ]
  %.0.i.i.i93 = phi i64 [ %i.bq, %bb.p ], [ %i.bn, %bb.o ], [ %0, %bb.n ]
  %.lhs.trunc = trunc nsw i64 %i.bk to i8         ; 2 uses
  %i.bs = srem i8 %.lhs.trunc, 60                 ; 4 uses
  %i.bt = icmp slt i8 %i.bs, 0
  %i.bu = add nsw i8 %i.bs, 60
  %i.bv = select i1 %i.bt, i8 %i.bu, i8 %i.bs
  %i.bw = srem i64 %3, 24
  %i.bx = sdiv i8 %.lhs.trunc, 60
  %.sext133 = sext i8 %i.bx to i64
  %i.by = add nsw i64 %i.bh, %.sext133
  %i.bz = ashr i8 %i.bs, 7
  %.lobit.i95 = sext i8 %i.bz to i64
  %.0.i96 = add nsw i64 %i.by, %.lobit.i95        ; 2 uses
  %i.ca = srem i64 %.0.i96, 24
  %i.cb = add nsw i64 %i.ca, %i.bw
  %i.cc = sdiv i64 %3, 24
  %i.cd = sdiv i64 %.0.i96, 24
  %i.ce = add nsw i64 %i.cd, %i.cc
  %.lhs.trunc.i97 = trunc nsw i64 %i.cb to i8     ; 2 uses
  %i.cf = srem i8 %.lhs.trunc.i97, 24             ; 4 uses
  %i.cg = icmp slt i8 %i.cf, 0
  %i.ch = add nsw i8 %i.cf, 24
  %i.ci = select i1 %i.cg, i8 %i.ch, i8 %i.cf
  %i.cj = sdiv i8 %.lhs.trunc.i97, 24
  %.sext20.i98 = sext i8 %i.cj to i64
  %i.ck = add nsw i64 %i.ce, %.sext20.i98
  %i.cl = ashr i8 %i.cf, 7
  %.lobit.i.i99 = sext i8 %i.cl to i64
  %.0.i.i100 = add nsw i64 %i.ck, %.lobit.i.i99
  %i.cm = trunc nuw nsw i64 %.016.i.i.i92 to i8
  %i.cn = tail call { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %.0.i.i.i93, i8 noundef signext %i.cm, i64 noundef %2, i64 noundef %.0.i.i100, i8 noundef signext %i.ci, i8 noundef signext %i.bv, i8 noundef signext %i.bl) #14 ; 2 uses
  %.fca.1.extract.i.i.i101 = extractvalue { i64, i64 } %i.cn, 1 ; 5 uses
  %.fca.0.extract = extractvalue { i64, i64 } %i.cn, 0
  %.sroa.6.sroa.6.0.extract.shift134 = lshr i64 %.fca.1.extract.i.i.i101, 8
  %.sroa.6.sroa.7.0.extract.shift135 = lshr i64 %.fca.1.extract.i.i.i101, 16
  %.sroa.6.sroa.8.0.extract.shift136 = lshr i64 %.fca.1.extract.i.i.i101, 24
  %.sroa.6.sroa.9.0.extract.shift137 = lshr i64 %.fca.1.extract.i.i.i101, 32
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104
  %.sroa.6.sroa.8.0 = phi i64 [ %.sroa.6.sroa.8.0.extract.shift136, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104 ], [ %.sroa.6.sroa.8.0.extract.shift124148, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit ], [ %.sroa.6.sroa.8.0.extract.shift122144, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit ], [ %.sroa.6.sroa.8.0.extract.shift120140, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit ], [ %4, %bb.d ]
  %.sroa.6.sroa.7.0 = phi i64 [ %.sroa.6.sroa.7.0.extract.shift135, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104 ], [ %.sroa.6.sroa.7.0.extract.shift118147, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit ], [ %.sroa.6.sroa.7.0.extract.shift116143, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit ], [ %.sroa.6.sroa.7.0.extract.shift114139, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit ], [ %3, %bb.d ]
  %.sroa.6.sroa.6.0.in = phi i64 [ %.sroa.6.sroa.6.0.extract.shift134, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104 ], [ %.sroa.6.sroa.6.0.extract.shift112146, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit ], [ %.sroa.6.sroa.6.0.extract.shift110142, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit ], [ %.sroa.6.sroa.6.0.extract.shift108138, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit ], [ %2, %bb.d ]
  %.sroa.6.sroa.0.0.in = phi i64 [ %.fca.1.extract.i.i.i101, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104 ], [ %.fca.1.extract.i, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit ], [ %.fca.1.extract.i.i, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit ], [ %.fca.1.extract.i.i.i, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit ], [ %1, %bb.d ]
  %.sroa.6.sroa.9.0 = phi i64 [ %.sroa.6.sroa.9.0.extract.shift137, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104 ], [ %.sroa.6.sroa.9.0.extract.shift130149, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit ], [ %.sroa.6.sroa.9.0.extract.shift128145, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit ], [ %.sroa.6.sroa.9.0.extract.shift126141, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit ], [ %5, %bb.d ]
  %.sroa.0.0 = phi i64 [ %.fca.0.extract, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit104 ], [ %.fca.0.extract22, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_monEllllaaa.exit ], [ %.fca.0.extract18, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl6n_hourElllllaa.exit ], [ %.fca.0.extract14, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_minElllllla.exit ], [ %0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.sroa.6.sroa.9.0.insert.ext = shl nuw i64 %.sroa.6.sroa.9.0, 32
  %.sroa.6.sroa.9.0.insert.shift = and i64 %.sroa.6.sroa.9.0.insert.ext, 1095216660480
  %.sroa.6.sroa.8.0.insert.ext = shl nuw i64 %.sroa.6.sroa.8.0, 24
  %.sroa.6.sroa.8.0.insert.shift = and i64 %.sroa.6.sroa.8.0.insert.ext, 4278190080
  %.sroa.6.sroa.7.0.insert.ext = shl nuw i64 %.sroa.6.sroa.7.0, 16
  %.sroa.6.sroa.7.0.insert.shift = and i64 %.sroa.6.sroa.7.0.insert.ext, 16711680
  %.sroa.6.sroa.6.0.insert.ext = shl nuw i64 %.sroa.6.sroa.6.0.in, 8
  %.sroa.6.sroa.6.0.insert.shift = and i64 %.sroa.6.sroa.6.0.insert.ext, 65280
  %.sroa.6.sroa.0.0.insert.ext = and i64 %.sroa.6.sroa.0.0.in, 255
  %.sroa.6.sroa.8.0.insert.insert = or disjoint i64 %.sroa.6.sroa.7.0.insert.shift, %.sroa.6.sroa.8.0.insert.shift
  %.sroa.6.sroa.7.0.insert.insert = or disjoint i64 %.sroa.6.sroa.8.0.insert.insert, %.sroa.6.sroa.6.0.insert.shift
  %.sroa.6.sroa.6.0.insert.insert = or disjoint i64 %.sroa.6.sroa.7.0.insert.insert, %.sroa.6.sroa.0.0.insert.ext
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.sroa.6.0.insert.insert, %.sroa.6.sroa.9.0.insert.shift
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.sroa.0.0.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, i64 } @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl5n_dayElallaaa(i64 noundef %0, i8 noundef signext %1, i64 noundef %2, i64 noundef %3, i8 noundef signext %4, i8 noundef signext %5, i8 noundef signext %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = srem i64 %0, 400                         ; 2 uses
  %i.b = sdiv i64 %3, 146097
  %i.c = mul nsw i64 %i.b, 400
  %i.d = add nsw i64 %i.c, %i.a                   ; 2 uses
  %i.e = srem i64 %3, 146097                      ; 3 uses
  %i.f = icmp slt i64 %i.e, 0                     ; 2 uses
  %i.g = add nsw i64 %i.d, -400
  %i.h = add nsw i64 %i.e, 146097
  %.081 = select i1 %i.f, i64 %i.g, i64 %i.d
  %.076 = select i1 %i.f, i64 %i.h, i64 %i.e
  %i.i = sdiv i64 %2, 146097
  %i.j = mul nsw i64 %i.i, 400
  %i.k = add nsw i64 %.081, %i.j                  ; 4 uses
  %i.l = srem i64 %2, 146097
  %i.m = add nsw i64 %.076, %i.l                  ; 7 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i64 %i.m, 146097
  br i1 %i.o, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i64 %i.k, 400
  %i.q = add nsw i64 %i.m, -146097
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.r = icmp sgt i64 %i.m, -365
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %i.k, -1                     ; 2 uses
  %i.t = icmp sgt i8 %1, 2
  %i.u = zext i1 %i.t to i64
  %i.v = add nsw i64 %i.s, %i.u                   ; 3 uses
  %i.w = and i64 %i.v, 3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit

bb.f:                                             ; preds = %bb.e
  %i.y = srem i64 %i.v, 100
  %.not.i.i = icmp ne i64 %i.y, 0
  %i.z = srem i64 %i.v, 400
  %i.aa = icmp eq i64 %i.z, 0
  %or.cond.i = or i1 %.not.i.i, %i.aa
  %i.ab = select i1 %or.cond.i, i64 366, i64 365
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi i64 [ 365, %bb.e ], [ %i.ab, %bb.f ]
  %i.ad = add nsw i64 %i.ac, %i.m
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ae = add nsw i64 %i.k, -400
  %i.af = add nsw i64 %i.m, 146097
  br label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit, %bb.g, %bb.b, %bb.c
  %.182 = phi i64 [ %i.p, %bb.c ], [ %i.k, %bb.b ], [ %i.s, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit ], [ %i.ae, %bb.g ] ; 4 uses
  %.072 = phi i64 [ %i.q, %bb.c ], [ %i.m, %bb.b ], [ %i.ad, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit ], [ %i.af, %bb.g ] ; 5 uses
  %i.ag = icmp samesign ugt i64 %.072, 365
  br i1 %i.ag, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp sgt i8 %1, 2
  %i.ai = zext i1 %i.ah to i64                    ; 2 uses
  %i.aj = add nsw i64 %.182, %i.ai
  %i.ak = srem i64 %i.aj, 400                     ; 2 uses
  %i.al = trunc nsw i64 %i.ak to i32              ; 2 uses
  %i.am = icmp slt i64 %i.ak, 0
  %i.an = add nsw i32 %i.al, 400
  %i.ao = select i1 %i.am, i32 %i.an, i32 %i.al   ; 4 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = icmp sgt i32 %i.ao, 300
  %i.ar = or i1 %i.ap, %i.aq
  %i.as = select i1 %i.ar, i64 36525, i64 36524   ; 2 uses
  %.not147 = icmp samesign ugt i64 %.072, %i.as
  br i1 %.not147, label %.lr.ph, label %.preheader128.preheader

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %i.at = phi i64 [ %i.ba, %.lr.ph ], [ %i.as, %bb.i ]
  %.173150 = phi i64 [ %i.au, %.lr.ph ], [ %.072, %bb.i ]
  %.283149 = phi i64 [ %i.av, %.lr.ph ], [ %.182, %bb.i ]
  %.092148 = phi i32 [ %spec.select, %.lr.ph ], [ %i.ao, %bb.i ] ; 2 uses
  %i.au = sub nuw nsw i64 %.173150, %i.at         ; 3 uses
  %i.av = add nsw i64 %.283149, 100               ; 2 uses
  %i.aw = icmp sgt i32 %.092148, 299
  %spec.select.v = select i1 %i.aw, i32 -300, i32 100
  %spec.select = add nsw i32 %spec.select.v, %.092148 ; 4 uses
  %i.ax = icmp eq i32 %spec.select, 0
  %i.ay = icmp sgt i32 %spec.select, 300
  %i.az = or i1 %i.ax, %i.ay
  %i.ba = select i1 %i.az, i64 36525, i64 36524   ; 2 uses
  %.not = icmp samesign ugt i64 %i.au, %i.ba
  br i1 %.not, label %.lr.ph, label %.preheader128.preheader

.preheader128.preheader:                          ; preds = %.lr.ph, %bb.i
  %.395.ph = phi i32 [ %i.ao, %bb.i ], [ %spec.select, %.lr.ph ]
  %.485.ph = phi i64 [ %.182, %bb.i ], [ %i.av, %.lr.ph ]
  %.375.ph = phi i64 [ %.072, %bb.i ], [ %i.au, %.lr.ph ]
  br label %.preheader128

.preheader128:                                    ; preds = %.preheader128.preheader, %bb.k
  %.395 = phi i32 [ %spec.select113, %bb.k ], [ %.395.ph, %.preheader128.preheader ] ; 5 uses
  %.485 = phi i64 [ %i.bj, %bb.k ], [ %.485.ph, %.preheader128.preheader ] ; 2 uses
  %.375 = phi i64 [ %i.bi, %bb.k ], [ %.375.ph, %.preheader128.preheader ] ; 3 uses
  %i.bb = icmp eq i32 %.395, 0
  %i.bc = icmp sgt i32 %.395, 300
  %or.cond.i116 = or i1 %i.bb, %i.bc
  br i1 %or.cond.i116, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl15days_per_4yearsEi.exit, label %bb.j

bb.j:                                             ; preds = %.preheader128
  %i.bd = add nsw i32 %.395, -1
  %i.be = srem i32 %i.bd, 100
  %i.bf = icmp slt i32 %i.be, 96
  %i.bg = select i1 %i.bf, i64 1461, i64 1460
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl15days_per_4yearsEi.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl15days_per_4yearsEi.exit: ; preds = %.preheader128, %bb.j
  %i.bh = phi i64 [ %i.bg, %bb.j ], [ 1461, %.preheader128 ] ; 2 uses
  %.not110 = icmp samesign ugt i64 %.375, %i.bh
  br i1 %.not110, label %bb.k, label %.preheader127

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl15days_per_4yearsEi.exit
  %i.bi = sub nuw nsw i64 %.375, %i.bh
  %i.bj = add nsw i64 %.485, 4
  %i.bk = icmp sgt i32 %.395, 395
  %spec.select113.v = select i1 %i.bk, i32 -396, i32 4
  %spec.select113 = add nsw i32 %spec.select113.v, %.395
  br label %.preheader128

.preheader127:                                    ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl15days_per_4yearsEi.exit, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120
  %.687 = phi i64 [ %i.bu, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120 ], [ %.485, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl15days_per_4yearsEi.exit ] ; 3 uses
  %.5 = phi i64 [ %i.bt, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120 ], [ %.375, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl15days_per_4yearsEi.exit ] ; 3 uses
  %i.bl = add i64 %.687, %i.ai                    ; 3 uses
  %i.bm = and i64 %i.bl, 3
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120

bb.l:                                             ; preds = %.preheader127
  %i.bo = srem i64 %i.bl, 100
  %.not.i.i117 = icmp ne i64 %i.bo, 0
  %i.bp = srem i64 %i.bl, 400
  %i.bq = icmp eq i64 %i.bp, 0
  %or.cond.i118 = or i1 %.not.i.i117, %i.bq
  %i.br = select i1 %or.cond.i118, i64 366, i64 365
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120: ; preds = %.preheader127, %bb.l
  %i.bs = phi i64 [ 365, %.preheader127 ], [ %i.br, %bb.l ] ; 2 uses
  %.not111 = icmp sgt i64 %.5, %i.bs
  %i.bt = sub nsw i64 %.5, %i.bs
  %i.bu = add nsw i64 %.687, 1
  br i1 %.not111, label %.preheader127, label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120, %bb.h
  %.889 = phi i64 [ %.182, %bb.h ], [ %.687, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120 ] ; 2 uses
  %.7 = phi i64 [ %.072, %bb.h ], [ %.5, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl13days_per_yearEla.exit120 ] ; 3 uses
  %i.bv = icmp sgt i64 %.7, 28
  br i1 %i.bv, label %.preheader, label %.thread

.preheader:                                       ; preds = %.loopexit, %bb.o
  %.990 = phi i64 [ %spec.select114, %bb.o ], [ %.889, %.loopexit ] ; 5 uses
  %.8 = phi i64 [ %i.cj, %bb.o ], [ %.7, %.loopexit ] ; 3 uses
  %.0 = phi i8 [ %spec.select115, %bb.o ], [ %1, %.loopexit ] ; 4 uses
  %i.bw = sext i8 %.0 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !58
  %i.bz = icmp eq i8 %.0, 2
  %i.ca = and i64 %.990, 3
  %i.cb = icmp eq i64 %i.ca, 0
  %or.cond.i121 = and i1 %i.cb, %i.bz
  br i1 %or.cond.i121, label %bb.m, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.m:                                             ; preds = %.preheader
  %i.cc = srem i64 %.990, 100
  %.not.i.i122 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i122, label %bb.n, label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = srem i64 %.990, 400
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  br label %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit

_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit: ; preds = %.preheader, %bb.m, %bb.n
  %i.cg = phi i32 [ 0, %.preheader ], [ %i.cf, %bb.n ], [ 1, %bb.m ]
  %i.ch = add nsw i32 %i.cg, %i.by
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %.not112 = icmp sgt i64 %.8, %i.ci
  br i1 %.not112, label %bb.o, label %.thread

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit
  %i.cj = sub nsw i64 %.8, %i.ci
  %i.ck = add i8 %.0, 1                           ; 2 uses
  %i.cl = icmp sgt i8 %i.ck, 12                   ; 2 uses
  %i.cm = zext i1 %i.cl to i64
  %spec.select114 = add nsw i64 %.990, %i.cm
  %spec.select115 = select i1 %i.cl, i8 1, i8 %i.ck
  br label %.preheader

.thread:                                          ; preds = %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit, %.loopexit
  %.12 = phi i64 [ %.889, %.loopexit ], [ %.990, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.10 = phi i64 [ %.7, %.loopexit ], [ %.8, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %.3 = phi i8 [ %1, %.loopexit ], [ %.0, %_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14days_per_monthEla.exit ]
  %i.cn = sub nsw i64 %0, %i.a
  %i.co = add i64 %i.cn, %.12
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.co, 0
  %.sroa.7.8.insert.ext = zext i8 %6 to i64
  %.sroa.7.8.insert.shift = shl nuw nsw i64 %.sroa.7.8.insert.ext, 32
  %.sroa.6.8.insert.ext = zext i8 %5 to i64
  %.sroa.6.8.insert.shift = shl nuw nsw i64 %.sroa.6.8.insert.ext, 24
  %.sroa.6.8.insert.insert = or disjoint i64 %.sroa.7.8.insert.shift, %.sroa.6.8.insert.shift
  %.sroa.5.8.insert.ext = zext i8 %4 to i64
  %.sroa.5.8.insert.shift = shl nuw nsw i64 %.sroa.5.8.insert.ext, 16
  %.sroa.5.8.insert.insert = or disjoint i64 %.sroa.6.8.insert.insert, %.sroa.5.8.insert.shift
  %.sroa.4.8.insert.ext = shl i64 %.10, 8
  %.sroa.4.8.insert.shift = and i64 %.sroa.4.8.insert.ext, 65280
  %.sroa.4.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.5.8.insert.insert
  %.sroa.2.8.insert.ext = zext i8 %.3 to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.insert, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052613time_internal4cctz6detail4impl14day_differenceElaalaa(i64 noundef %0, i8 noundef signext %1, i8 noundef signext %2, i64 noundef %3, i8 noundef signext %4, i8 noundef signext %5) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = srem i64 %0, 400                         ; 2 uses
  %i.b = srem i64 %3, 400                         ; 2 uses
  %i.c = sub nsw i64 %0, %i.a
  %.neg = sub i64 %i.b, %3
  %i.d = add i64 %.neg, %i.c                      ; 5 uses
  %6 = sext i8 %1 to i16
  %i.e = icmp slt i8 %1, 3
  %i.f = sext i1 %i.e to i64
  %i.g = add nsw i64 %i.a, %i.f                   ; 4 uses
  %i.h = add nsw i64 %i.g, 65137
  %i.i = icmp slt i64 %i.g, 0
  %i.j = select i1 %i.i, i64 %i.h, i64 %i.g
  %.lhs.trunc = trunc nuw i64 %i.j to i16
  %i.k = sdiv i16 %.lhs.trunc, 400
  %.sext = sext i16 %i.k to i64                   ; 2 uses
  %.neg.i = mul nsw i64 %.sext, -400
  %i.l = add nsw i64 %.neg.i, %i.g                ; 2 uses
  %7 = icmp sgt i8 %1, 2
  %8 = select i1 %7, i16 -3, i16 9
  %9 = add nsw i16 %8, %6
  %10 = mul nsw i16 %9, 153
  %.lhs.trunc.i = add nsw i16 %10, 2
  %11 = sdiv i16 %.lhs.trunc.i, 5
  %.sext.i = sext i16 %11 to i64
  %i.m = sext i8 %2 to i64
  %.lhs.trunc33 = trunc i64 %i.l to i16           ; 2 uses
  %12 = sdiv i16 %.lhs.trunc33, 4
  %.sext34 = sext i16 %12 to i64
  %.neg17.i35 = sdiv i16 %.lhs.trunc33, -100
  %.neg17.i.sext = sext i16 %.neg17.i35 to i64
  %13 = sext i8 %4 to i16
  %i.n = icmp slt i8 %4, 3
  %i.o = sext i1 %i.n to i64
  %i.p = add nsw i64 %i.b, %i.o                   ; 4 uses
  %i.q = add nsw i64 %i.p, 65137
  %i.r = icmp slt i64 %i.p, 0
  %i.s = select i1 %i.r, i64 %i.q, i64 %i.p
  %.lhs.trunc36 = trunc nuw i64 %i.s to i16
  %i.t = sdiv i16 %.lhs.trunc36, 400
  %.sext37 = sext i16 %i.t to i64                 ; 2 uses
  %.neg.i29 = mul nsw i64 %.sext37, -400
  %i.u = add nsw i64 %.neg.i29, %i.p              ; 2 uses
  %14 = icmp sgt i8 %4, 2
  %15 = select i1 %14, i16 -3, i16 9
  %16 = add nsw i16 %15, %13
  %17 = mul nsw i16 %16, 153
  %.lhs.trunc.i30 = add nsw i16 %17, 2
  %.neg53 = sdiv i16 %.lhs.trunc.i30, -5
  %18 = sext i8 %5 to i64
  %.lhs.trunc38 = trunc i64 %i.u to i16           ; 2 uses
  %.neg54 = sdiv i16 %.lhs.trunc38, -4
  %.neg17.i3240.neg = sdiv i16 %.lhs.trunc38, 100
  %.neg17.i32.sext.neg = sext i16 %.neg17.i3240.neg to i64
  %.sext.i31.neg = sext i16 %.neg53 to i64
  %.sext39.neg = sext i16 %.neg54 to i64
  %reass.add = sub nsw i64 %i.l, %i.u
  %reass.mul = mul nsw i64 %reass.add, 365
  %reass.add51 = sub nsw i64 %.sext, %.sext37
  %reass.mul52 = mul nsw i64 %reass.add51, 146097
  %.neg48 = sub nsw i64 %i.m, %18
  %.neg49 = add nsw i64 %.neg48, %.sext.i
  %19 = add nsw i64 %.neg49, %.sext.i31.neg
  %20 = add nsw i64 %19, %.sext34
  %21 = add nsw i64 %20, %.neg17.i.sext
  %22 = add nsw i64 %21, %reass.mul52
  %i.v = add nsw i64 %22, %reass.mul
  %i.w = add nsw i64 %i.v, %.sext39.neg
  %i.x = add nsw i64 %i.w, %.neg17.i32.sext.neg   ; 5 uses
  %i.y = icmp sgt i64 %i.d, 0
  %i.z = icmp slt i64 %i.x, 0
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = add nsw i64 %i.x, 292194
  %i.ab = add nsw i64 %i.d, -800
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ac = icmp slt i64 %i.d, 0
  %i.ad = icmp sgt i64 %i.x, 0
  %or.cond3 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = add nsw i64 %i.x, -292194
  %i.af = add nsw i64 %i.d, 800
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.025 = phi i64 [ %i.ab, %bb.b ], [ %i.af, %bb.d ], [ %i.d, %bb.c ]
  %.0 = phi i64 [ %i.aa, %bb.b ], [ %i.ae, %bb.d ], [ %i.x, %bb.c ]
  %i.ag = sdiv i64 %.025, 400
  %i.ah = mul nsw i64 %i.ag, 146097
  %i.ai = add nsw i64 %i.ah, %.0
  ret i64 %i.ai
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !16, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !16, i64 8, !7, i64 16}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!12, !14, i64 0}
!18 = !{!19, !21, i64 8}
!19 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE", !20, i64 0, !21, i64 8}
!20 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz10TimeZoneIfE"}
!21 = !{!"bool", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTSN4absl12lts_2026052613time_internal4cctz12TimeZoneLibCE", !15, i64 0}
!24 = !{!25, !7, i64 8}
!25 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz6detail6fieldsE", !16, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12}
!26 = !{!25, !7, i64 9}
!27 = !{!28, !6, i64 16}
!28 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz9time_zone15absolute_lookupE", !29, i64 0, !6, i64 16, !21, i64 20, !14, i64 24}
!29 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz6detail10civil_timeINS3_10second_tagEEE", !25, i64 0}
!30 = !{!28, !21, i64 20}
!31 = !{!28, !14, i64 24}
!32 = !{!16, !16, i64 0}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!36, !6, i64 20}
!36 = !{!"_ZTS2tm", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !16, i64 40, !14, i64 48}
!37 = !{!36, !6, i64 16}
!38 = !{!36, !6, i64 12}
!39 = !{!36, !6, i64 8}
!40 = !{!36, !6, i64 4}
!41 = !{!36, !6, i64 0}
!42 = !{!36, !16, i64 40}
!43 = !{!36, !14, i64 48}
!44 = !{!36, !6, i64 32}
!45 = !{!"branch_weights", i32 1, i32 1048575}
!46 = !{!29, !16, i64 0}
!47 = !{!29, !7, i64 8}
!48 = !{!29, !7, i64 9}
!49 = !{!29, !7, i64 10}
!50 = !{!29, !7, i64 11}
!51 = !{!29, !7, i64 12}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz9time_zone12civil_lookupE", !54, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!54 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz9time_zone12civil_lookup10civil_kindE", !7, i64 0}
!55 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1EEEEEE", !56, i64 0}
!56 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !16, i64 0}
!57 = !{!7, !7, i64 0}
!58 = !{!6, !6, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{!61, !60}
!62 = !{!13, !14, i64 0}
end_hunk_0
