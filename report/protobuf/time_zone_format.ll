inline.NumInlined: 481
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup" = type { %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time", i32, i8, ptr }
%"class.absl::lts_20250512::time_internal::cctz::detail::civil_time" = type { %"struct.absl::lts_20250512::time_internal::cctz::detail::fields" }
%"struct.absl::lts_20250512::time_internal::cctz::detail::fields" = type <{ i64, i8, i8, i8, i8, i8, [3 x i8] }>
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.absl::lts_20250512::time_internal::cctz::detail::civil_time.0" = type { %"struct.absl::lts_20250512::time_internal::cctz::detail::fields" }
%"class.std::allocator" = type { i8 }
%"class.std::chrono::duration.1" = type { i64 }
%"class.absl::lts_20250512::time_internal::cctz::time_zone" = type { ptr }
%"struct.absl::lts_20250512::time_internal::cctz::time_zone::civil_lookup" = type { i32, %"class.std::chrono::time_point", %"class.std::chrono::time_point", %"class.std::chrono::time_point" }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.std::chrono::duration" = type { i64 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_ = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detailgtINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detailplENS3_10civil_timeINS3_10second_tagEEEl = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail10civil_timeINS3_10second_tagEE3maxEv = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detailltINS3_10second_tagES5_EEbRKNS3_10civil_timeIT_EERKNS6_IT0_EE = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_secEllllll = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail4impl5n_dayElallaaa = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detail4impl14day_differenceElaalaa = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detailmiENS3_10civil_timeINS3_7day_tagEEEl = comdat any

$_ZN4absl12lts_2025051213time_internal4cctz6detailmiENS3_10civil_timeINS3_10second_tagEEEl = comdat any

@.str = private unnamed_addr constant [16 x i8] c"YmdeUuWwHMSzZs%\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16kExp10E = internal unnamed_addr constant [19 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000, i64 10000000000, i64 100000000000, i64 1000000000000, i64 10000000000000, i64 100000000000000, i64 1000000000000000, i64 10000000000000000, i64 100000000000000000, i64 1000000000000000000], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%I%p\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Failed to parse input\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Illegal trailing data in input string\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Out-of-range field\00", align 1
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off = private unnamed_addr constant [13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets = private unnamed_addr constant [13 x i32] [i32 -1, i32 0, i32 3, i32 2, i32 5, i32 0, i32 3, i32 5, i32 1, i32 4, i32 6, i32 2, i32 4], align 16
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_yeardayERKNS3_10civil_timeINS3_10second_tagEEE.k_month_offsets = private unnamed_addr constant [13 x i32] [i32 -1, i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@.str.14 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE = internal constant [11 x i8] c"0123456789\00", align 1
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail4impl14days_per_monthEla.k_days_per_month = private unnamed_addr constant [13 x i32] [i32 -1, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail12prev_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_back = private unnamed_addr constant [14 x i32] [i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@__const._ZN4absl12lts_2025051213time_internal4cctz6detail12next_weekdayENS3_10civil_timeINS3_7day_tagEEENS3_7weekdayE.k_weekdays_forw = private unnamed_addr constant [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup", align 8 ; 17 uses
  %6 = alloca %struct.tm, align 16                ; 21 uses
  %i.k = alloca [21 x i8], align 16               ; 15 uses
  %7 = ptrtoint ptr %i.k to i64
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time.0", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::time_internal::cctz::detail::civil_time.0", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  store i64 0, ptr %i.m, align 8, !tbaa !11
  store i8 0, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !alias.scope !15
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 11
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18, !noalias !15
  %i.w = load <4 x i8>, ptr %i.u, align 1, !tbaa !14, !noalias !15
  %i.x = sext i8 %i.v to i32                      ; 2 uses
  %i.y = sext <4 x i8> %i.w to <4 x i32>
  %i.z = shufflevector <4 x i32> %i.y, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.z, ptr %6, align 16, !tbaa !3, !alias.scope !15
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !21, !noalias !15 ; 4 uses
  %i.ac = sext i8 %i.ab to i32
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.p, align 16, !tbaa !22, !alias.scope !15
  %i.ae = load i64, ptr %5, align 8, !tbaa !24, !noalias !15 ; 6 uses
  %i.af = icmp slt i64 %i.ae, -2147481748
  br i1 %i.af, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp sgt i64 %i.ae, 2147485547
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = add i32 %i.ah, -1900
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i = phi i32 [ -2147483648, %bb.c ], [ %i.ai, %bb.e ], [ 2147483647, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.sink.i, ptr %i.aj, align 4, !tbaa !25, !alias.scope !15
  %i.ak = srem i64 %i.ae, 400                     ; 2 uses
  %i.al = icmp slt i8 %i.ab, 3
  %i.am = select i1 %i.al, i64 2399, i64 2400
  %i.an = add nsw i64 %i.ak, %i.am                ; 3 uses
  %i.ao = lshr i64 %i.an, 2
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.an to i16 ; 2 uses
  %i.ap = udiv i16 %.lhs.trunc.i.i, 100
  %.zext.i.i = zext nneg i16 %i.ap to i64
  %i.aq = udiv i16 %.lhs.trunc.i.i, 400
  %.zext10.i.i = zext nneg i16 %i.aq to i64
  %i.ar = sext i8 %i.ab to i64                    ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3, !noalias !15
  %i.au = add nsw i32 %i.at, %i.x
  %i.av = sext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.ao, %i.an
  %i.ax = sub nuw nsw i64 %i.aw, %.zext.i.i
  %i.ay = add nuw nsw i64 %i.ax, %.zext10.i.i
  %i.az = add nsw i64 %i.ay, %i.av
  %i.ba = srem i64 %i.az, 7
  %i.bb = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 24
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !26, !noalias !15 ; 2 uses
  %i.be = icmp ult i32 %i.bd, 6
  %switch.offset.i.i = add nsw i32 %i.bd, 1
  %.0.i.i = select i1 %i.be, i32 %switch.offset.i.i, i32 0
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 %.0.i.i, ptr %i.bf, align 8, !tbaa !28, !alias.scope !15
  %i.bg = icmp sgt i8 %i.ab, 2
  %i.bh = and i64 %i.ae, 3
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond.i = and i1 %i.bg, %i.bi
  br i1 %or.cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bj = srem i64 %i.ae, 100
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = icmp eq i64 %i.ak, 0
  %i.bl = zext i1 %i.bk to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bm = phi i32 [ 0, %bb.f ], [ %i.bl, %bb.h ], [ 1, %bb.g ]
  %i.bn = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_yeardayERKNS3_10civil_timeINS3_10second_tagEEE.k_month_offsets, i64 %i.ar
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3, !noalias !15
  %i.bp = add nsw i32 %i.x, -1
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = add i32 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !29, !alias.scope !15
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !30, !range !33, !noalias !15, !noundef !34
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.bv, ptr %i.bw, align 16, !tbaa !35, !alias.scope !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 21 ; 18 uses
  %i.by = load ptr, ptr %1, align 8, !tbaa !36    ; 5 uses
  %i.bz = load i64, ptr %i.n, align 8, !tbaa !11  ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz ; 12 uses
  %.not1001 = icmp samesign eq i64 %i.bz, 0
  br i1 %.not1001, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %22 = ptrtoint ptr %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 23 uses
  %i.ce = ptrtoint ptr %i.bx to i64               ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 19 ; 23 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 17 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i438 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 15 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dg = add i64 %i.bz, %22                      ; 2 uses
  %i.dh = sub i64 0, %7
  %scevgep1027 = getelementptr i8, ptr %i.k, i64 %i.dh
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread804
  %.02681003 = phi ptr [ %i.by, %.preheader.lr.ph ], [ %.6274, %.thread804 ] ; 6 uses
  %.02751002 = phi ptr [ %i.by, %.preheader.lr.ph ], [ %.6281, %.thread804 ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.02681003, i64 %i.dg
  %.026810031022 = ptrtoint ptr %.02681003 to i64 ; 2 uses
  %i.di = sub i64 0, %.026810031022
  %scevgep1023 = getelementptr i8, ptr %scevgep, i64 %i.di
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.k
  %.1269993 = phi ptr [ %.02681003, %.preheader ], [ %i.dk, %bb.k ] ; 3 uses
  %i.dj = load i8, ptr %.1269993, align 1, !tbaa !14
  %.not322 = icmp eq i8 %i.dj, 37
  br i1 %.not322, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = getelementptr inbounds nuw i8, ptr %.1269993, i64 1 ; 2 uses
  %.not321 = icmp eq ptr %i.dk, %i.ca
  br i1 %.not321, label %.critedge, label %bb.j, !llvm.loop !37

bb.l:                                             ; preds = %bb.a
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.m:                                             ; preds = %bb.b
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

.critedge:                                        ; preds = %bb.k, %bb.j
  %.1269.lcssa = phi ptr [ %scevgep1023, %bb.k ], [ %.1269993, %bb.j ] ; 8 uses
  %.1269.lcssa1025 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not323 = icmp ne ptr %.1269.lcssa, %.02681003
  %i.dn = icmp eq ptr %.02751002, %.02681003
  %or.cond = select i1 %.not323, i1 %i.dn, i1 false
  br i1 %or.cond, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.n:                                             ; preds = %.critedge
  %i.do = sub i64 %.1269.lcssa1025, %.026810031022 ; 2 uses
  %i.dp = load i64, ptr %i.m, align 8, !tbaa !11
  %i.dq = sub i64 4611686018427387903, %i.dp
  %i.dr = icmp ult i64 %i.dq, %i.do
  br i1 %i.dr, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.n
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.02751002, i64 noundef %i.do)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %.critedge
  %.1276 = phi ptr [ %.02751002, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 5 uses
  %.0249 = phi ptr [ %.02681003, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 2 uses
  %.not324994 = icmp eq ptr %.1269.lcssa, %i.ca
  br i1 %.not324994, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %scevgep1024 = getelementptr i8, ptr %.1269.lcssa, i64 %i.dg
  %i.dt = sub i64 0, %.1269.lcssa1025
  %scevgep1026 = getelementptr i8, ptr %scevgep1024, i64 %i.dt
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.2270995 = phi ptr [ %i.dw, %bb.p ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.du = load i8, ptr %.2270995, align 1, !tbaa !14
  %i.dv = icmp eq i8 %i.du, 37                    ; 3 uses
  br i1 %i.dv, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph
  %i.dw = getelementptr inbounds nuw i8, ptr %.2270995, i64 1 ; 2 uses
  %.not324 = icmp eq ptr %i.dw, %i.ca
  br i1 %.not324, label %.critedge2, label %.lr.ph, !llvm.loop !39

.critedge2:                                       ; preds = %.lr.ph, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %scevgep1026, %bb.p ], [ %.2270995, %.lr.ph ] ; 43 uses
  %.not324.lcssa = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %i.dv, %bb.p ], [ %i.dv, %.lr.ph ] ; 2 uses
  %.not325 = icmp ne ptr %.2270.lcssa, %.0249
  %i.dx = icmp eq ptr %.1276, %.0249
  %or.cond377 = select i1 %.not325, i1 %i.dx, i1 false
  br i1 %or.cond377, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.critedge2
  %i.dy = ptrtoint ptr %.2270.lcssa to i64
  %i.dz = ptrtoint ptr %.1276 to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = lshr i64 %i.ea, 1                       ; 2 uses
  %i.ec = load i64, ptr %i.m, align 8, !tbaa !11
  %i.ed = sub i64 4611686018427387903, %i.ec
  %i.ee = icmp ult i64 %i.ed, %i.eb
  br i1 %i.ee, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc381 unwind label %.loopexit.split-lp876

.noexc381:                                        ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380: ; preds = %bb.q
  %i.ef = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.1276, i64 noundef %i.eb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383 unwind label %.loopexit875 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380
  %i.eg = and i64 %i.ea, -2
  %i.eh = getelementptr inbounds nuw i8, ptr %.1276, i64 %i.eg ; 4 uses
  %.not326 = icmp ne ptr %i.eh, %.2270.lcssa
  %or.cond378 = and i1 %.not324.lcssa, %.not326
  br i1 %or.cond378, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  %i.ej = load i8, ptr %i.eh, align 1, !tbaa !14
  %i.ek = load i64, ptr %i.m, align 8, !tbaa !11  ; 4 uses
  %i.el = add i64 %i.ek, 1                        ; 3 uses
  %i.em = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.l
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.s
  %i.eo = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.eo)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ep = load i64, ptr %i.l, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.eq = phi i64 [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.er = icmp ugt i64 %i.el, %i.eq
  br i1 %i.er, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ek, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc384 unwind label %.loopexit875

.noexc384:                                        ; preds = %bb.t
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc384
  %i.es = phi ptr [ %.pre.i, %.noexc384 ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ek
  store i8 %i.ej, ptr %i.et, align 1, !tbaa !14
  store i64 %i.el, ptr %i.m, align 8, !tbaa !11
  %i.eu = load ptr, ptr %0, align 8, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.el
  store i8 0, ptr %i.ev, align 1, !tbaa !14
  br label %bb.u

.loopexit875:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380, %bb.t
  %lpad.loopexit877 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp876:                            ; preds = %bb.r
  %lpad.loopexit.split-lp878 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383, %.critedge2
  %.3278 = phi ptr [ %.1276, %.critedge2 ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383 ] ; 57 uses
  br i1 %.not324.lcssa, label %.thread804, label %bb.v, !llvm.loop !40

bb.v:                                             ; preds = %bb.u
  %i.ew = ptrtoint ptr %.2270.lcssa to i64
  %i.ex = sub i64 %i.ew, %.1269.lcssa1025
  %i.ey = and i64 %i.ex, 1
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.thread804, label %bb.w, !llvm.loop !40

bb.w:                                             ; preds = %bb.v
  %i.fa = load i8, ptr %.2270.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.fb = sext i8 %i.fa to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.fb, i64 16)
  %.not327 = icmp eq ptr %memchr, null
  br i1 %.not327, label %bb.bl, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not366 = icmp eq ptr %i.fc, %.3278
  br i1 %.not366, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr %i.cb, ptr %8, align 8, !tbaa !7
  store i64 0, ptr %i.cc, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %.3278 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  store i64 %i.ff, ptr %i.j, align 8, !tbaa !41
  %i.fg = icmp ugt i64 %i.ff, 15
  br i1 %i.fg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.fh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc385 unwind label %bb.ad ; 2 uses

.noexc385:                                        ; preds = %.noexc.i
  store ptr %i.fh, ptr %8, align 8, !tbaa !36
  %i.fi = load i64, ptr %i.j, align 8, !tbaa !41
  store i64 %i.fi, ptr %i.cb, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc385, %bb.y
  %i.fj = phi ptr [ %i.fh, %.noexc385 ], [ %i.cb, %bb.y ] ; 2 uses
  switch i64 %i.ff, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.fk = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !14
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %.3278, i64 %i.ff, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.fl = load i64, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  store i64 %i.fl, ptr %i.cc, align 8, !tbaa !11
  %i.fm = load ptr, ptr %8, align 8, !tbaa !36
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 0, ptr %i.fn, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.cb
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.ac
  %i.fq = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pre = load i8, ptr %.2270.lcssa, align 1, !tbaa !14
  br label %bb.af

bb.ad:                                            ; preds = %.noexc.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

bb.ae:                                            ; preds = %bb.ab
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %8, align 8, !tbaa !36    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.cb
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %bb.ae
  %i.fw = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388, %bb.ad
  %.pn367 = phi { ptr, i32 } [ %i.fs, %bb.ad ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388 ], [ %i.ft, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.gv

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x
  %i.fy = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fa, %bb.x ]
  switch i8 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394 [
    i8 89, label %bb.ag
    i8 109, label %bb.an
    i8 100, label %bb.ao
    i8 101, label %bb.ao
    i8 85, label %bb.ap
    i8 117, label %bb.aq
    i8 87, label %bb.at
    i8 119, label %bb.au
    i8 72, label %bb.ax
    i8 77, label %bb.ay
    i8 83, label %bb.az
    i8 122, label %bb.ba
    i8 90, label %bb.bb
    i8 115, label %bb.bc
    i8 37, label %bb.bj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fz = load i64, ptr %5, align 8, !tbaa !24    ; 4 uses
  %i.ga = icmp slt i64 %i.fz, 0                   ; 2 uses
  br i1 %i.ga, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gb = icmp eq i64 %i.fz, -9223372036854775808
  br i1 %i.gb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 56, ptr %i.cd, align 4, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.026.i = phi ptr [ %i.cd, %bb.ai ], [ %i.bx, %bb.ah ]
  %.022.i = phi i32 [ -2, %bb.ai ], [ -1, %bb.ah ]
  %.1.i = phi i64 [ -922337203685477580, %bb.ai ], [ %i.fz, %bb.ah ]
  %i.gc = sub nsw i64 0, %.1.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.127.i = phi ptr [ %.026.i, %bb.aj ], [ %i.bx, %bb.ag ] ; 2 uses
  %.123.i = phi i32 [ %.022.i, %bb.aj ], [ 0, %bb.ag ] ; 2 uses
  %.2.i = phi i64 [ %i.gc, %bb.aj ], [ %i.fz, %bb.ag ]
  %scevgep40.i = getelementptr i8, ptr %.127.i, i64 -2
  %i.gd = add nsw i32 %.123.i, -2
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv42.i = phi i32 [ %indvars.iv.next.i, %bb.al ], [ %i.gd, %bb.ak ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep41.i, %bb.al ], [ %scevgep40.i, %bb.ak ] ; 2 uses
  %.228.i = phi ptr [ %i.gi, %bb.al ], [ %.127.i, %bb.ak ] ; 2 uses
  %.224.i = phi i32 [ %i.ge, %bb.al ], [ %.123.i, %bb.ak ] ; 3 uses
  %.3.i = phi i64 [ %i.gj, %bb.al ], [ %.2.i, %bb.ak ] ; 3 uses
  %i.ge = add i32 %.224.i, -1                     ; 2 uses
  %i.gf = urem i64 %.3.i, 10
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !14
  %i.gi = getelementptr inbounds i8, ptr %.228.i, i64 -1 ; 3 uses
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !14
  %i.gj = udiv i64 %.3.i, 10
  %.not.i = icmp ult i64 %.3.i, 10
  %scevgep41.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv42.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.al, !llvm.loop !42

.preheader.i:                                     ; preds = %bb.al
  %i.gk = icmp sgt i32 %.224.i, 1
  br i1 %i.gk, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.gl = getelementptr i8, ptr %.228.i, i64 -2
  %i.gm = add nsw i32 %.224.i, -2
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = sub nsw i64 0, %i.gn
  %scevgep.i = getelementptr i8, ptr %i.gl, i64 %i.go
  %i.gp = zext nneg i32 %i.ge to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.gp, i1 false), !tbaa !14
  %i.gq = zext i32 %indvars.iv42.i to i64
  %i.gr = sub nsw i64 0, %i.gq
  %scevgep43.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.gr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.preheader.i
  %.329.lcssa.i = phi ptr [ %i.gi, %.preheader.i ], [ %scevgep43.i, %.lr.ph.preheader.i ] ; 2 uses
  br i1 %i.ga, label %bb.am, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

bb.am:                                            ; preds = %._crit_edge.i
  %i.gs = getelementptr inbounds i8, ptr %.329.lcssa.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gs, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit: ; preds = %._crit_edge.i, %bb.am
  %.4.i = phi ptr [ %i.gs, %bb.am ], [ %.329.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.gt = ptrtoint ptr %.4.i to i64
  %i.gu = sub i64 %i.ce, %i.gt                    ; 2 uses
  %i.gv = load i64, ptr %i.m, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  store i8 58, ptr %i.cp, align 1, !tbaa !14
  %i.aau = udiv i32 %spec.select45.i639, 3600
  %i.aav = urem i32 %i.aau, 10
  %i.aaw = zext nneg i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !14
  store i8 %i.aay, ptr %i.cq, align 2, !tbaa !14
  %i.aaz = udiv i32 %spec.select45.i639, 36000
  %.lhs.trunc56.i648 = trunc nuw i32 %i.aaz to i16
  %i.aba = urem i16 %.lhs.trunc56.i648, 10
  %i.abb = zext nneg i16 %i.aba to i64
  %i.abc = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.abb
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !14
  store i8 %i.abd, ptr %i.cr, align 1, !tbaa !14
  store i8 %spec.select.i638, ptr %i.cs, align 4, !tbaa !14
  %i.abe = load i64, ptr %i.m, align 8, !tbaa !11
  %i.abf = add i64 %i.abe, -4611686018427387895
  %i.abg = icmp ult i64 %i.abf, 9
  br i1 %i.abg, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i652: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit651
  %i.abh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cs, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655 unwind label %.loopexit880 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i652
  %i.abi = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread804

bb.dw:                                            ; preds = %bb.dn
  %i.abj = load i8, ptr %i.za, align 1, !tbaa !14
  switch i8 %i.abj, label %.thread804 [
    i8 83, label %bb.dx
    i8 102, label %bb.dx
  ]

bb.dx:                                            ; preds = %bb.dw, %bb.dw
  %i.abk = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not344 = icmp eq ptr %i.abk, %.3278
  br i1 %.not344, label %bb.ef, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr %i.ct, ptr %18, align 8, !tbaa !7
  store i64 0, ptr %i.cu, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.abl = ptrtoint ptr %i.abk to i64
  %i.abm = ptrtoint ptr %.3278 to i64
  %i.abn = sub i64 %i.abl, %i.abm                 ; 4 uses
  store i64 %i.abn, ptr %i.d, align 8, !tbaa !41
  %i.abo = icmp ugt i64 %i.abn, 15
  br i1 %i.abo, label %.noexc.i657, label %._crit_edge.i.i656

.noexc.i657:                                      ; preds = %bb.dy
  %i.abp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc658 unwind label %bb.ed ; 2 uses

.noexc658:                                        ; preds = %.noexc.i657
  store ptr %i.abp, ptr %18, align 8, !tbaa !36
  %i.abq = load i64, ptr %i.d, align 8, !tbaa !41
  store i64 %i.abq, ptr %i.ct, align 8, !tbaa !14
  br label %._crit_edge.i.i656

._crit_edge.i.i656:                               ; preds = %.noexc658, %bb.dy
  %i.abr = phi ptr [ %i.abp, %.noexc658 ], [ %i.ct, %bb.dy ] ; 2 uses
  switch i64 %i.abn, label %bb.ea [
    i64 1, label %bb.dz
    i64 0, label %bb.eb
  ]

bb.dz:                                            ; preds = %._crit_edge.i.i656
  %i.abs = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.abs, ptr %i.abr, align 1, !tbaa !14
  br label %bb.eb

bb.ea:                                            ; preds = %._crit_edge.i.i656
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abr, ptr align 1 %.3278, i64 %i.abn, i1 false)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %._crit_edge.i.i656
  %i.abt = load i64, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  store i64 %i.abt, ptr %i.cu, align 8, !tbaa !11
  %i.abu = load ptr, ptr %18, align 8, !tbaa !36
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.abt
  store i8 0, ptr %i.abv, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ec unwind label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  %i.abw = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.ct
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i660

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i660: ; preds = %bb.ec
  %i.aby = load i64, ptr %i.ct, align 8, !tbaa !14
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i660
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.ef

bb.ed:                                            ; preds = %.noexc.i657
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665

bb.ee:                                            ; preds = %bb.eb
  %i.acb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acc = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.acd = icmp eq ptr %i.acc, %i.ct
  br i1 %i.acd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663: ; preds = %bb.ee
  %i.ace = load i64, ptr %i.ct, align 8, !tbaa !14
  %i.acf = add i64 %i.ace, 1
  call void @_ZdlPvm(ptr noundef %i.acc, i64 noundef %i.acf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663, %bb.ed
  %.pn345 = phi { ptr, i32 } [ %i.aca, %bb.ed ], [ %i.acb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663 ], [ %i.acb, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.gv

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662, %bb.dx
  %i.acg = load i64, ptr %3, align 8, !tbaa !48   ; 4 uses
  %i.ach = icmp slt i64 %i.acg, 0                 ; 2 uses
  br i1 %i.ach, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.aci = icmp eq i64 %i.acg, -9223372036854775808
  br i1 %i.aci, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i8 56, ptr %i.cd, align 4, !tbaa !14
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.026.i685 = phi ptr [ %i.cd, %bb.eh ], [ %i.bx, %bb.eg ]
  %.022.i686 = phi i32 [ 13, %bb.eh ], [ 14, %bb.eg ]
  %.1.i687 = phi i64 [ -922337203685477580, %bb.eh ], [ %i.acg, %bb.eg ]
  %i.acj = sub nsw i64 0, %.1.i687
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ef
  %.127.i666 = phi ptr [ %.026.i685, %bb.ei ], [ %i.bx, %bb.ef ] ; 2 uses
  %.123.i667 = phi i32 [ %.022.i686, %bb.ei ], [ 15, %bb.ef ] ; 2 uses
  %.2.i668 = phi i64 [ %i.acj, %bb.ei ], [ %i.acg, %bb.ef ]
  %scevgep40.i669 = getelementptr i8, ptr %.127.i666, i64 -2
  %i.ack = add nsw i32 %.123.i667, -2
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %bb.ej
  %indvars.iv42.i670 = phi i32 [ %indvars.iv.next.i677, %bb.ek ], [ %i.ack, %bb.ej ] ; 2 uses
  %indvars.iv.i671 = phi ptr [ %scevgep41.i676, %bb.ek ], [ %scevgep40.i669, %bb.ej ] ; 2 uses
  %.228.i672 = phi ptr [ %i.acp, %bb.ek ], [ %.127.i666, %bb.ej ] ; 2 uses
  %.224.i673 = phi i32 [ %i.acl, %bb.ek ], [ %.123.i667, %bb.ej ] ; 3 uses
  %.3.i674 = phi i64 [ %i.acq, %bb.ek ], [ %.2.i668, %bb.ej ] ; 3 uses
  %i.acl = add i32 %.224.i673, -1                 ; 2 uses
  %i.acm = urem i64 %.3.i674, 10
  %i.acn = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.acm
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !14
  %i.acp = getelementptr inbounds i8, ptr %.228.i672, i64 -1 ; 3 uses
  store i8 %i.aco, ptr %i.acp, align 1, !tbaa !14
  %i.acq = udiv i64 %.3.i674, 10
  %.not.i675 = icmp ult i64 %.3.i674, 10
  %scevgep41.i676 = getelementptr i8, ptr %indvars.iv.i671, i64 -1
  %indvars.iv.next.i677 = add i32 %indvars.iv42.i670, -1
  br i1 %.not.i675, label %.preheader.i678, label %bb.ek, !llvm.loop !42

.preheader.i678:                                  ; preds = %bb.ek
  %i.acr = icmp sgt i32 %.224.i673, 1
  br i1 %i.acr, label %.lr.ph.preheader.i682, label %._crit_edge.i679

.lr.ph.preheader.i682:                            ; preds = %.preheader.i678
  %i.acs = getelementptr i8, ptr %.228.i672, i64 -2
  %i.act = add nsw i32 %.224.i673, -2
  %i.acu = zext nneg i32 %i.act to i64
  %i.acv = sub nsw i64 0, %i.acu
  %scevgep.i683 = getelementptr i8, ptr %i.acs, i64 %i.acv
  %i.acw = zext nneg i32 %i.acl to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i683, i8 48, i64 %i.acw, i1 false), !tbaa !14
  %i.acx = zext i32 %indvars.iv42.i670 to i64
  %i.acy = sub nsw i64 0, %i.acx
  %scevgep43.i684 = getelementptr i8, ptr %indvars.iv.i671, i64 %i.acy
  br label %._crit_edge.i679

._crit_edge.i679:                                 ; preds = %.lr.ph.preheader.i682, %.preheader.i678
  %.329.lcssa.i680 = phi ptr [ %i.acp, %.preheader.i678 ], [ %scevgep43.i684, %.lr.ph.preheader.i682 ] ; 2 uses
  br i1 %i.ach, label %bb.el, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688

bb.el:                                            ; preds = %._crit_edge.i679
  %i.acz = getelementptr inbounds i8, ptr %.329.lcssa.i680, i64 -1 ; 2 uses
  store i8 45, ptr %i.acz, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688: ; preds = %._crit_edge.i679, %bb.el
  %.4.i681 = phi ptr [ %i.acz, %bb.el ], [ %.329.lcssa.i680, %._crit_edge.i679 ] ; 8 uses
  %.4.i6811028 = ptrtoint ptr %.4.i681 to i64
  %scevgep1029 = getelementptr i8, ptr %scevgep1027, i64 %.4.i6811028 ; 2 uses
  %.not3471155 = icmp eq ptr %i.bx, %.4.i681
  br i1 %.not3471155, label %.critedge4, label %.lr.ph1158

bb.em:                                            ; preds = %.lr.ph1158
  %.not347 = icmp eq ptr %i.ada, %.4.i681
  br i1 %.not347, label %.critedge4, label %.lr.ph1158, !llvm.loop !50

.lr.ph1158:                                       ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688, %bb.em
  %.01156 = phi ptr [ %i.ada, %bb.em ], [ %i.bx, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688 ] ; 2 uses
  %i.ada = getelementptr inbounds i8, ptr %.01156, i64 -1 ; 3 uses
  %i.adb = load i8, ptr %i.ada, align 1, !tbaa !14
  %i.adc = icmp eq i8 %i.adb, 48
  br i1 %i.adc, label %bb.em, label %..critedge4_crit_edge1160, !llvm.loop !50

.loopexit885:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689
  %lpad.loopexit887 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp886:                            ; preds = %bb.et
  %lpad.loopexit.split-lp888 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

..critedge4_crit_edge1160:                        ; preds = %.lr.ph1158
  br label %.critedge4, !llvm.loop !50

.critedge4:                                       ; preds = %bb.em, %..critedge4_crit_edge1160, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688
  %.not347.lcssa = phi i1 [ true, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688 ], [ false, %..critedge4_crit_edge1160 ], [ true, %bb.em ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep1029, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688 ], [ %.01156, %..critedge4_crit_edge1160 ], [ %scevgep1029, %bb.em ]
  %i.add = load i8, ptr %i.za, align 1, !tbaa !14
  switch i8 %i.add, label %bb.es [
    i8 83, label %bb.en
    i8 102, label %bb.eq
  ]

bb.en:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ade = getelementptr inbounds i8, ptr %.4.i681, i64 -1 ; 2 uses
  store i8 46, ptr %i.ade, align 1, !tbaa !14
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0282 = phi ptr [ %i.ade, %bb.eo ], [ %.4.i681, %bb.en ] ; 2 uses
  %i.adf = load i8, ptr %i.r, align 4, !tbaa !45  ; 2 uses
  %i.adg = srem i8 %i.adf, 10
  %i.adh = sext i8 %i.adg to i64
  %i.adi = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adh
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !14
  %i.adk = getelementptr inbounds i8, ptr %.0282, i64 -1
  store i8 %i.adj, ptr %i.adk, align 1, !tbaa !14
  %i.adl = sdiv i8 %i.adf, 10
  %i.adm = srem i8 %i.adl, 10
  %i.adn = sext i8 %i.adm to i64
  %i.ado = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adn
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !14
  %i.adq = getelementptr inbounds i8, ptr %.0282, i64 -2 ; 2 uses
  store i8 %i.adp, ptr %i.adq, align 1, !tbaa !14
  br label %bb.es

bb.eq:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.adr = getelementptr inbounds i8, ptr %.4.i681, i64 -1 ; 2 uses
  store i8 48, ptr %i.adr, align 1, !tbaa !14
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er, %bb.ep, %.critedge4
  %.1283 = phi ptr [ %.4.i681, %.critedge4 ], [ %i.adq, %bb.ep ], [ %i.adr, %bb.er ], [ %.4.i681, %bb.eq ] ; 2 uses
  %i.ads = ptrtoint ptr %.0.lcssa to i64
  %i.adt = ptrtoint ptr %.1283 to i64
  %i.adu = sub i64 %i.ads, %i.adt                 ; 2 uses
  %i.adv = load i64, ptr %i.m, align 8, !tbaa !11
  %i.adw = sub i64 4611686018427387903, %i.adv
  %i.adx = icmp ult i64 %i.adw, %i.adu
  br i1 %i.adx, label %bb.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689

bb.et:                                            ; preds = %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc690 unwind label %.loopexit.split-lp886

.noexc690:                                        ; preds = %bb.et
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689: ; preds = %bb.es
  %i.ady = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.1283, i64 noundef %i.adu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit692 unwind label %.loopexit885 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit692: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689
  %i.adz = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread804

bb.eu:                                            ; preds = %bb.ct
  %i.aea = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.not334 = icmp eq ptr %i.aea, %i.ca
  br i1 %.not334, label %.thread817, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aeb = load i8, ptr %i.aea, align 1, !tbaa !14
  %i.aec = icmp eq i8 %i.aeb, 89
  br i1 %i.aec, label %bb.ew, label %.thread817

bb.ew:                                            ; preds = %bb.ev
  %i.aed = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not341 = icmp eq ptr %i.aed, %.3278
  br i1 %.not341, label %bb.fe, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.cl, ptr %19, align 8, !tbaa !7
  store i64 0, ptr %i.cm, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.aee = ptrtoint ptr %i.aed to i64
  %i.aef = ptrtoint ptr %.3278 to i64
  %i.aeg = sub i64 %i.aee, %i.aef                 ; 4 uses
  store i64 %i.aeg, ptr %i.c, align 8, !tbaa !41
  %i.aeh = icmp ugt i64 %i.aeg, 15
  br i1 %i.aeh, label %.noexc.i694, label %._crit_edge.i.i693

.noexc.i694:                                      ; preds = %bb.ex
  %i.aei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc695 unwind label %bb.fc ; 2 uses

.noexc695:                                        ; preds = %.noexc.i694
  store ptr %i.aei, ptr %19, align 8, !tbaa !36
  %i.aej = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.aej, ptr %i.cl, align 8, !tbaa !14
  br label %._crit_edge.i.i693

._crit_edge.i.i693:                               ; preds = %.noexc695, %bb.ex
  %i.aek = phi ptr [ %i.aei, %.noexc695 ], [ %i.cl, %bb.ex ] ; 2 uses
  switch i64 %i.aeg, label %bb.ez [
    i64 1, label %bb.ey
    i64 0, label %bb.fa
  ]

bb.ey:                                            ; preds = %._crit_edge.i.i693
  %i.ael = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.ael, ptr %i.aek, align 1, !tbaa !14
  br label %bb.fa

bb.ez:                                            ; preds = %._crit_edge.i.i693
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aek, ptr align 1 %.3278, i64 %i.aeg, i1 false)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %._crit_edge.i.i693
  %i.aem = load i64, ptr %i.c, align 8, !tbaa !41 ; 2 uses
  store i64 %i.aem, ptr %i.cm, align 8, !tbaa !11
  %i.aen = load ptr, ptr %19, align 8, !tbaa !36
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aem
  store i8 0, ptr %i.aeo, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fb unwind label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.aep = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, %i.cl
  br i1 %i.aeq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697: ; preds = %bb.fb
  %i.aer = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.aes = add i64 %i.aer, 1
  call void @_ZdlPvm(ptr noundef %i.aep, i64 noundef %i.aes) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fe

bb.fc:                                            ; preds = %.noexc.i694
  %i.aet = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

bb.fd:                                            ; preds = %bb.fa
  %i.aeu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aev = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.aew = icmp eq ptr %i.aev, %i.cl
  br i1 %i.aew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700: ; preds = %bb.fd
  %i.aex = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.aey = add i64 %i.aex, 1
  call void @_ZdlPvm(ptr noundef %i.aev, i64 noundef %i.aey) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700, %bb.fc
  %.pn342 = phi { ptr, i32 } [ %i.aet, %bb.fc ], [ %i.aeu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700 ], [ %i.aeu, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.gv

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, %bb.ew
  %i.aez = load i64, ptr %5, align 8, !tbaa !24   ; 4 uses
  %i.afa = icmp slt i64 %i.aez, 0                 ; 2 uses
end_hunk_1
