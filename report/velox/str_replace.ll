Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/str_replace?download=true
inline.NumInlined: 247
inline.NumDeleted: 103
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20240116::strings_internal::ViableSubstitution" = type { %"class.std::basic_string_view", %"class.std::basic_string_view", i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20240116::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::initializer_list" = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<absl::lts_20240116::strings_internal::ViableSubstitution, std::allocator<absl::lts_20240116::strings_internal::ViableSubstitution>>::_Vector_impl" }
%"struct.std::_Vector_base<absl::lts_20240116::strings_internal::ViableSubstitution, std::allocator<absl::lts_20240116::strings_internal::ViableSubstitution>>::_Vector_impl" = type { %"struct.std::_Vector_base<absl::lts_20240116::strings_internal::ViableSubstitution, std::allocator<absl::lts_20240116::strings_internal::ViableSubstitution>>::_Vector_impl_data" }
%"struct.std::_Vector_base<absl::lts_20240116::strings_internal::ViableSubstitution, std::allocator<absl::lts_20240116::strings_internal::ViableSubstitution>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_ = comdat any

$_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN4absl12lts_2024011616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011616strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20240116::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20240116::AlphaNum", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph55, %.critedge
  %i.h = phi ptr [ %i.c, %.lr.ph55 ], [ %i.bd, %.critedge ] ; 5 uses
  %.03654 = phi i32 [ 0, %.lr.ph55 ], [ %.1, %.critedge ] ; 2 uses
  %.03753 = phi i64 [ 0, %.lr.ph55 ], [ %.138, %.critedge ] ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -40 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %.not = icmp ult i64 %i.k, %.03753
  br i1 %.not, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not40 = icmp ugt i64 %.03753, %0
  br i1 %.not40, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.l = load i64, ptr %i.j, align 8, !tbaa !16
  %i.m = sub i64 %i.l, %.03753
  %i.n = sub nuw i64 %0, %.03753
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.n, i64 %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.03753
  store i64 %.sroa.speculated.i, ptr %5, align 8, !tbaa !17
  store ptr %i.o, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -24
  %.sroa.05.0.copyload = load i64, ptr %i.p, align 8, !tbaa !17
  %.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %i.h, i64 -16
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !18
  store i64 %.sroa.05.0.copyload, ptr %6, align 8, !tbaa !17
  store ptr %.sroa.26.0.copyload, ptr %.sroa.2.0..sroa_idx.i42, align 8, !tbaa !18
  call void @_ZN4absl12lts_202401169StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %.pre = load i64, ptr %i.j, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.c
  %i.q = phi i64 [ %.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.k, %bb.c ]
  %i.r = load i64, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.s = add i64 %i.r, %i.q
  %i.t = add nsw i32 %.03654, 1
  br label %bb.e

thread-pre-split:                                 ; preds = %bb.b
  %.sroa.0.0.copyload.pr = load i64, ptr %i.i, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pr, %thread-pre-split ], [ %i.r, %bb.d ] ; 5 uses
  %.138 = phi i64 [ %.03753, %thread-pre-split ], [ %i.s, %bb.d ] ; 7 uses
  %.1 = phi i32 [ %.03654, %thread-pre-split ], [ %i.t, %bb.d ] ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %i.h, i64 -32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18 ; 2 uses
  %i.u = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not27.i.i = icmp ugt i64 %.138, %0
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp ult i64 %.138, %0
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = sub nuw i64 %0, %.138                    ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.v, %.sroa.0.0.copyload
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.138
  %i.x = load i8, ptr %.sroa.2.0.copyload, align 1, !tbaa !19
  %i.y = sext i8 %i.x to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ %i.ag, %bb.k ]
  %.02032.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %i.ae, %bb.k ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.z = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.z, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.i
  %i.aa = call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.y, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #11 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.aa, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.aa, ptr nonnull %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload)
  %i.ab = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ac, %i.g
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.f, %i.af                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.ag, %.sroa.0.0.copyload
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i, !llvm.loop !0

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.i, %bb.g, %bb.h, %bb.f
  store i64 -1, ptr %i.j, align 8, !tbaa !16
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !22
  br label %bb.l

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.f, %bb.j
  %.1.i.i = phi i64 [ %.138, %bb.f ], [ %i.ad, %bb.j ] ; 2 uses
  store i64 %.1.i.i, ptr %i.j, align 8, !tbaa !16
  %i.ah = icmp eq i64 %.1.i.i, -1
  %.pre58 = load ptr, ptr %i.a, align 8, !tbaa !22 ; 3 uses
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ai = phi ptr [ %.pre57, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread ], [ %.pre58, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ]
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ak = load ptr, ptr %2, align 8, !tbaa !23
  %i.al = ptrtoint ptr %.pre58 to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 40
  %i.ap = add nsw i64 %i.ao, -1                   ; 2 uses
  %.not4150 = icmp eq i64 %i.ap, 0
  br i1 %.not4150, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.051 = phi i64 [ %i.bc, %bb.n ], [ %i.ap, %bb.m ] ; 3 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ar = getelementptr [40 x i8], ptr %i.aq, i64 %.051 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -40    ; 3 uses
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %.051 ; 4 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp eq i64 %i.av, %i.ax
  %i.ay = icmp ult i64 %i.av, %i.ax
  %i.az = load i64, ptr %i.as, align 8
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = icmp ugt i64 %i.az, %i.ba
  %.0.i = select i1 %.not.i, i1 %i.bb, i1 %i.ay
  br i1 %.0.i, label %bb.n, label %.critedge.loopexit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bc = add i64 %.051, -1                       ; 2 uses
  %.not41 = icmp eq i64 %i.bc, 0
  br i1 %.not41, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !32

.critedge.loopexit:                               ; preds = %.lr.ph, %bb.n
  %.pre59 = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.m, %bb.l
  %i.bd = phi ptr [ %.pre59, %.critedge.loopexit ], [ %.pre58, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !11
  %i.bf = icmp eq ptr %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge, label %bb.b, !llvm.loop !33

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.037.lcssa = phi i64 [ 0, %bb.a ], [ %.138, %.critedge ] ; 3 uses
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %.critedge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.037.lcssa ; 3 uses
  %i.bh = sub i64 %0, %.037.lcssa                 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !27 ; 5 uses
  %i.bk = sub i64 9223372036854775807, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bh
  br i1 %i.bl, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.o:                                             ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %._crit_edge
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bq = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bs = phi i64 [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i43 = icmp ugt i64 %i.bm, %i.bs
  br i1 %.not.i.i43, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %0, %.037.lcssa
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj ; 2 uses
  %cond.i.i = icmp eq i64 %i.bh, 1
  br i1 %cond.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = load i8, ptr %i.bg, align 1, !tbaa !19
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bj, i64 noundef 0, ptr noundef %i.bg, i64 noundef %i.bh)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.p, %bb.r, %bb.s, %bb.t
  store i64 %i.bm, ptr %i.bi, align 8, !tbaa !27
  %i.bv = load ptr, ptr %3, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bm
  store i8 0, ptr %i.bw, align 1, !tbaa !19
  ret i32 %.036.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_202401169StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  call void @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @_ZN4absl12lts_2024011616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !27
  store i8 0, ptr %i.a, align 8, !tbaa !19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN4absl12lts_2024011616strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = load ptr, ptr %4, align 8, !tbaa !23     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !23     ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011613StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef i32 @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2024011613StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.b = load ptr, ptr %1, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  call void @_ZN4absl12lts_2024011616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %i.d, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = load ptr, ptr %2, align 8, !tbaa !11     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 21 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011616strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20240116::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not100 = icmp eq i64 %i.b, 0
  br i1 %.not100, label %._crit_edge, label %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = mul nuw nsw i64 %i.b, 40
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14 ; 7 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !23
  store ptr %i.g, ptr %i.e, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.b ; 4 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !30
  %.pre = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %.idx = shl nuw nsw i64 %.pre, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not69 = icmp eq i64 %.pre, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph72.split

.lr.ph72.split:                                   ; preds = %.lr.ph72, %.critedge
  %i.o = phi ptr [ %i.bt, %.critedge ], [ %i.g, %.lr.ph72 ] ; 16 uses
  %.02070 = phi ptr [ %i.bw, %.critedge ], [ %i.i, %.lr.ph72 ] ; 6 uses
  %i.p = phi ptr [ %i.bv, %.critedge ], [ %i.h, %.lr.ph72 ] ; 9 uses
  %i.q = phi ptr [ %i.bu, %.critedge ], [ %i.g, %.lr.ph72 ] ; 16 uses
  %.sroa.0.0.copyload47 = load i64, ptr %.02070, align 8, !tbaa !17 ; 6 uses
  %.sroa.8.0..020.sroa_idx = getelementptr inbounds nuw i8, ptr %.02070, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..020.sroa_idx, align 8, !tbaa !18 ; 4 uses
  %i.r = add i64 %.sroa.0.0.copyload47, -1
  %or.cond55.not = icmp ult i64 %i.r, %.fr
  br i1 %or.cond55.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph72.split
  %i.s = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !19
  %i.t = sext i8 %i.s to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload47
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.z, %bb.d ]
  %.02032.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.x, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.u = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.u, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.v = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.t, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #11 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.v, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload47)
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.l, %i.y                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.z, %.sroa.0.0.copyload47
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !0

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.aa, %i.m                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.02070, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02070, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !18
  store i64 %.sroa.0.0.copyload47, ptr %i.o, align 8, !tbaa !17
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ae, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.o to i64
  %i.ai = ptrtoint ptr %i.q to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %i.d, align 8
  store ptr %i.q, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #12
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.al = sdiv exact i64 %i.aj, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 230584300921369395)
  %i.ap = select i1 %i.an, i64 230584300921369395, i64 %i.ao ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.aq = mul nuw nsw i64 %i.ap, 40
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #14
          to label %.noexc45 unwind label %.loopexit ; 5 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 5 uses
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.ad, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.02070, i64 24
  %.sroa.2.0.copyload.i.i34 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i33, align 8, !tbaa !18
  store i64 %.sroa.0.0.copyload47, ptr %i.as, align 8, !tbaa !17
  %.sroa.22.0..sroa_idx.i.i.i35 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i35, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.0.0.copyload.i.i32, ptr %i.at, align 8, !tbaa !17
  %.sroa.2.0..sroa_idx.i.i.i36 = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.sroa.2.0.copyload.i.i34, ptr %.sroa.2.0..sroa_idx.i.i.i36, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 %i.ab, ptr %i.au, align 8, !tbaa !16
  %.not10.i.i.i.i37 = icmp eq ptr %i.q, %i.o
  br i1 %.not10.i.i.i.i37, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %.noexc45, %.lr.ph.i.i.i.i38
  %.012.i.i.i.i39 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i38 ], [ %i.ar, %.noexc45 ] ; 2 uses
  %.0911.i.i.i.i40 = phi ptr [ %i.av, %.lr.ph.i.i.i.i38 ], [ %i.q, %.noexc45 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i39, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i40, i64 40, i1 false), !tbaa.struct !24, !alias.scope !43
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i40, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i39, i64 40 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.av, %i.o
  br i1 %.not.i.i.i.i41, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i, label %.lr.ph.i.i.i.i38, !llvm.loop !37

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i: ; preds = %.lr.ph.i.i.i.i38, %.noexc45
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ar, %.noexc45 ], [ %i.aw, %.lr.ph.i.i.i.i38 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.q, null
  br i1 %.not.i35.i, label %.noexc26, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aj) #13
  br label %.noexc26

.noexc26:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34.i
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit: ; preds = %.noexc26, %bb.f
  %i.az = phi ptr [ %i.ax, %.noexc26 ], [ %i.ag, %bb.f ] ; 4 uses
  %i.ba = phi ptr [ %i.ar, %.noexc26 ], [ %i.q, %bb.f ] ; 6 uses
  %i.bb = phi ptr [ %i.ay, %.noexc26 ], [ %i.p, %bb.f ] ; 3 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 40
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %.not2459 = icmp eq i64 %i.bg, 0
  br i1 %.not2459, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %bb.j
  %.060 = phi i64 [ %i.bs, %bb.j ], [ %i.bg, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %i.bh = getelementptr [40 x i8], ptr %i.ba, i64 %.060 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -40    ; 3 uses
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %.060 ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bh, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16 ; 2 uses
  %.not.i27 = icmp eq i64 %i.bl, %i.bn
  %i.bo = icmp ult i64 %i.bl, %i.bn
  %i.bp = load i64, ptr %i.bi, align 8
  %i.bq = load i64, ptr %i.bj, align 8
  %i.br = icmp ugt i64 %i.bp, %i.bq
  %.0.i = select i1 %.not.i27, i1 %i.br, i1 %i.bo
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false), !tbaa.struct !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bs = add i64 %.060, -1                       ; 2 uses
  %.not24 = icmp eq i64 %i.bs, 0
  br i1 %.not24, label %.critedge, label %.lr.ph, !llvm.loop !38

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.d, align 8
  store ptr %i.q, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph72.split
  %i.bt = phi ptr [ %i.az, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.o, %.lr.ph72.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.j ], [ %i.az, %.lr.ph ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bu = phi ptr [ %i.ba, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.q, %.lr.ph72.split ], [ %i.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ba, %bb.j ], [ %i.ba, %.lr.ph ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bv = phi ptr [ %i.bb, %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.p, %.lr.ph72.split ], [ %i.p, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bb, %bb.j ], [ %i.bb, %.lr.ph ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02070, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bw, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph72.split

._crit_edge:                                      ; preds = %.critedge, %bb.b, %.lr.ph72, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i
  %.lcssa66 = phi ptr [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ %i.g, %.lr.ph72 ], [ %i.bu, %.critedge ]
  %.lcssa62 = phi ptr [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ null, %bb.b ], [ %i.h, %.lr.ph72 ], [ %i.bv, %.critedge ]
  store ptr %.lcssa62, ptr %i.d, align 8
  store ptr %.lcssa66, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = ptrtoint ptr %i.o to i64
  %i.by = ptrtoint ptr %i.q to i64
  %i.bz = sub i64 %i.bx, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bz) #13
  br label %_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #14 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !19
  store i8 %i.p, ptr %i.k, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.r = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !28
  store i64 %.0, ptr %i.b, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN4absl12lts_2024011616strings_internal18ViableSubstitutionE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0, !13, i64 8}
!15 = !{!"_ZTSN4absl12lts_2024011616strings_internal18ViableSubstitutionE", !14, i64 0, !14, i64 16, !12, i64 32}
!16 = !{!15, !12, i64 32}
!17 = !{!12, !12, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2024011616strings_internal18ViableSubstitutionESaIS3_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!22 = !{!21, !10, i64 8}
!23 = !{!21, !10, i64 0}
!24 = !{i64 0, i64 8, !17, i64 8, i64 8, !18, i64 16, i64 8, !17, i64 24, i64 8, !18, i64 32, i64 8, !17}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !12, i64 8, !5, i64 16}
!27 = !{!26, !12, i64 8}
!28 = !{!26, !13, i64 0}
!29 = !{!25, !13, i64 0}
!30 = !{!21, !10, i64 16}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !"_ZSt19__relocate_object_aIN4absl12lts_2024011616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_"}
!35 = distinct !{!35, !34, !"_ZSt19__relocate_object_aIN4absl12lts_2024011616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!36 = distinct !{!36, !34, !"_ZSt19__relocate_object_aIN4absl12lts_2024011616strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = !{!"p1 _ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEES3_E", !9, i64 0}
!40 = !{!"_ZTSSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EE", !39, i64 0, !12, i64 8}
!41 = !{!40, !12, i64 8}
!42 = !{!40, !39, i64 0}
end_hunk_1
