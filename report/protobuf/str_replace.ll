inline.NumInlined: 160
inline.NumDeleted: 91
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::strings_internal::ViableSubstitution" = type { %"class.std::basic_string_view", %"class.std::basic_string_view", i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::initializer_list" = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<absl::lts_20250512::strings_internal::ViableSubstitution, std::allocator<absl::lts_20250512::strings_internal::ViableSubstitution>>::_Vector_impl" }
%"struct.std::_Vector_base<absl::lts_20250512::strings_internal::ViableSubstitution, std::allocator<absl::lts_20250512::strings_internal::ViableSubstitution>>::_Vector_impl" = type { %"struct.std::_Vector_base<absl::lts_20250512::strings_internal::ViableSubstitution, std::allocator<absl::lts_20250512::strings_internal::ViableSubstitution>>::_Vector_impl_data" }
%"struct.std::_Vector_base<absl::lts_20250512::strings_internal::ViableSubstitution, std::allocator<absl::lts_20250512::strings_internal::ViableSubstitution>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_ = comdat any

$_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE = comdat any

$_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_ = comdat any

@.str.2 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051216strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20250512::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !7
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph54, %.critedge
  %i.h = phi ptr [ %i.c, %.lr.ph54 ], [ %i.bd, %.critedge ] ; 5 uses
  %.03653 = phi i32 [ 0, %.lr.ph54 ], [ %.1, %.critedge ] ; 2 uses
  %.03752 = phi i64 [ 0, %.lr.ph54 ], [ %.138, %.critedge ] ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -40 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 3 uses
  %.not = icmp ult i64 %i.k, %.03752
  br i1 %.not, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not40 = icmp ugt i64 %.03752, %0
  br i1 %.not40, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.l = sub i64 %i.k, %.03752
  %i.m = sub nuw i64 %0, %.03752
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.03752
  store i64 %.sroa.speculated.i, ptr %5, align 8, !tbaa !15
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -24
  %.sroa.05.0.copyload = load i64, ptr %i.o, align 8, !tbaa !15
  %.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %i.h, i64 -16
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !16
  store i64 %.sroa.05.0.copyload, ptr %6, align 8, !tbaa !15
  store ptr %.sroa.26.0.copyload, ptr %.sroa.2.0..sroa_idx.i42, align 8, !tbaa !16
  call void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.pre = load i64, ptr %i.j, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.c
  %i.p = phi i64 [ %.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.k, %bb.c ]
  %i.q = load i64, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.r = add i64 %i.q, %i.p
  %i.s = add nsw i32 %.03653, 1
  br label %bb.e

thread-pre-split:                                 ; preds = %bb.b
  %.sroa.0.0.copyload.pr = load i64, ptr %i.i, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.d
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pr, %thread-pre-split ], [ %i.q, %bb.d ] ; 5 uses
  %.138 = phi i64 [ %.03752, %thread-pre-split ], [ %i.r, %bb.d ] ; 7 uses
  %.1 = phi i32 [ %.03653, %thread-pre-split ], [ %i.s, %bb.d ] ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %i.h, i64 -32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not27.i.i = icmp ugt i64 %.138, %0
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp ult i64 %.138, %0
  br i1 %.not.i.i, label %bb.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = sub nuw i64 %0, %.138                    ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.u, %.sroa.0.0.copyload
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.138
  %i.w = load i8, ptr %.sroa.2.0.copyload, align 1, !tbaa !17
  %i.x = sext i8 %i.w to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.af, %bb.k ]
  %.02132.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.ad, %bb.k ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.y = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.y, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.i
  %i.z = call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef %i.x, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #12 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.z, ptr nonnull %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.ab, %i.g
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.f, %i.ae                     ; 2 uses
  %.not25.i.i = icmp ult i64 %i.af, %.sroa.0.0.copyload
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i, !llvm.loop !18

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.k, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.i, %bb.g, %bb.h, %bb.f
  store i64 -1, ptr %i.j, align 8, !tbaa !10
  %.pre56 = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %bb.l

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.f, %bb.j
  %.1.i.i = phi i64 [ %.138, %bb.f ], [ %i.ac, %bb.j ] ; 2 uses
  store i64 %.1.i.i, ptr %i.j, align 8, !tbaa !10
  %i.ag = icmp eq i64 %.1.i.i, -1
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !20 ; 3 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ah = phi ptr [ %.pre56, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread ], [ %.pre57, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -40 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !20
  br label %.critedge

bb.m:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.aj = load ptr, ptr %2, align 8, !tbaa !22
  %i.ak = ptrtoint ptr %.pre57 to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 40                ; 2 uses
  %i.ao = add nsw i64 %i.an, -1                   ; 2 uses
  %.not4149 = icmp eq i64 %i.ao, 0
  br i1 %.not4149, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %i.ap = phi i64 [ %i.bc, %bb.n ], [ %i.ao, %bb.m ] ; 3 uses
  %.050 = phi i64 [ %i.ap, %bb.n ], [ %i.an, %bb.m ]
  %i.aq = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ar = getelementptr [40 x i8], ptr %i.aq, i64 %.050 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -80    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.ap ; 4 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 -48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10 ; 2 uses
  %.not.i = icmp eq i64 %i.av, %i.ax
  %i.ay = icmp ult i64 %i.av, %i.ax
  %i.az = load i64, ptr %i.as, align 8
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = icmp ugt i64 %i.az, %i.ba
  %.0.i = select i1 %.not.i, i1 %i.bb, i1 %i.ay
  br i1 %.0.i, label %bb.n, label %.critedge.loopexit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bc = add i64 %i.ap, -1                       ; 2 uses
  %.not41 = icmp eq i64 %i.bc, 0
  br i1 %.not41, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !24

.critedge.loopexit:                               ; preds = %.lr.ph, %bb.n
  %.pre58 = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.m, %bb.l
  %i.bd = phi ptr [ %.pre58, %.critedge.loopexit ], [ %.pre57, %bb.m ], [ %i.ai, %bb.l ] ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !7
  %i.bf = icmp eq ptr %i.be, %i.bd
  br i1 %i.bf, label %._crit_edge, label %bb.b, !llvm.loop !25

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.037.lcssa = phi i64 [ 0, %bb.a ], [ %.138, %.critedge ] ; 2 uses
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %.critedge ]
  %i.bg = sub i64 %0, %.037.lcssa                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.bg
  br i1 %i.bk, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.o:                                             ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.037.lcssa
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bl, i64 noundef %i.bg) ; 0 uses
  ret i32 %.036.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr %3, i64 %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  call void @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEENSt7__cxx1112basic_stringIcS6_SaIcEEES7_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !26
  store i8 0, ptr %i.a, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN4absl12lts_2025051216strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %1, ptr %2, ptr noundef nonnull %4, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !17
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = load ptr, ptr %4, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit6: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr %0, i64 %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::initializer_list", align 8 ; 3 uses
  store ptr %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES7_EEEEiRKT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26
  call void @_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, i64 %i.c, ptr %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !26
  store i8 0, ptr %i.h, align 8, !tbaa !17
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !30
  %i.l = load i64, ptr %i.b, align 8, !tbaa !26
  %i.m = invoke noundef i32 @_ZN4absl12lts_2025051216strings_internal18ApplySubstitutionsESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINS1_18ViableSubstitutionESaIS7_EEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %i.l, ptr %i.k, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #12
  %i.n = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.h, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.pr = load ptr, ptr %2, align 8, !tbaa !22
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.r, %bb.e ]
  %i.t = load ptr, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.g
  %i.v = load i64, ptr %i.h, align 8, !tbaa !17
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.x = load ptr, ptr %2, align 8, !tbaa !22     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = phi ptr [ %i.d, %bb.a ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i18 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit19: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051216strings_internal17FindSubstitutionsISt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES8_EEEESt6vectorINS1_18ViableSubstitutionESaISC_EES8_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20250512::strings_internal::ViableSubstitution", align 8 ; 4 uses
  %.fr = freeze i64 %1                            ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !32   ; 5 uses
  %i.c = icmp ugt i64 %i.b, 230584300921369395
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not98 = icmp eq i64 %i.b, 0
  br i1 %.not98, label %._crit_edge, label %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = mul nuw nsw i64 %i.b, 40
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #15 ; 6 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !22
  store ptr %i.g, ptr %i.e, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.b ; 3 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !31
  %i.i = load ptr, ptr %3, align 8, !tbaa !35     ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %.not.i.i = icmp eq i64 %.fr, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.fr
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %2 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph70.split

.lr.ph70.split:                                   ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %.critedge
  %i.o = phi ptr [ %i.bu, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  %.02168 = phi ptr [ %i.bx, %.critedge ], [ %i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 7 uses
  %i.p = phi ptr [ %i.bw, %.critedge ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 9 uses
  %i.q = phi ptr [ %i.bv, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 16 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.02168) ]
  %.sroa.0.0.copyload45 = load i64, ptr %.02168, align 8, !tbaa !15 ; 6 uses
  %.sroa.8.0..021.sroa_idx = getelementptr inbounds nuw i8, ptr %.02168, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..021.sroa_idx, align 8, !tbaa !16 ; 4 uses
  %i.r = add i64 %.sroa.0.0.copyload45, -1
  %or.cond53.not = icmp ult i64 %i.r, %.fr
  br i1 %or.cond53.not, label %.lr.ph.i.i, label %.critedge

.lr.ph.i.i:                                       ; preds = %.lr.ph70.split
  %i.s = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !17
  %i.t = sext i8 %i.s to i32
  %invariant.op = sub i64 1, %.sroa.0.0.copyload45
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.z, %bb.d ]
  %.02132.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.x, %bb.d ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.u = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.u, label %.critedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c
  %i.v = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef %i.t, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #12 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.v, null
  br i1 %.not26.i.i, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.v, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload45)
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.l, %i.y                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.z, %.sroa.0.0.copyload45
  br i1 %.not25.i.i, label %.critedge, label %bb.c, !llvm.loop !18

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.aa, %i.m                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.02168, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ad, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.02168, i64 24
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload45, ptr %i.o, align 8, !tbaa !15
  %.sroa.22.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i7.i, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ae, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i8.i, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !20
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = ptrtoint ptr %i.o to i64
  %i.ai = ptrtoint ptr %i.q to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.p, ptr %i.d, align 8
  store ptr %i.q, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #13
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.al = sdiv exact i64 %i.aj, 40                ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 230584300921369395)
  %i.ap = select i1 %i.an, i64 230584300921369395, i64 %i.ao ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i28)
  %i.aq = mul nuw nsw i64 %i.ap, 40
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #15
          to label %.noexc43 unwind label %.loopexit ; 5 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 5 uses
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.ad, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %.02168, i64 24
  %.sroa.2.0.copyload.i.i34 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i33, align 8, !tbaa !16
  store i64 %.sroa.0.0.copyload45, ptr %i.as, align 8, !tbaa !15
  %.sroa.22.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.22.0..sroa_idx.i28.i, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.sroa.0.0.copyload.i.i32, ptr %i.at, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %.sroa.2.0.copyload.i.i34, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i64 %i.ab, ptr %i.au, align 8, !tbaa !10
  %.not10.i.i.i.i35 = icmp eq ptr %i.q, %i.o
  br i1 %.not10.i.i.i.i35, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %.noexc43, %.lr.ph.i.i.i.i36
  %.012.i.i.i.i37 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i36 ], [ %i.ar, %.noexc43 ] ; 2 uses
  %.0911.i.i.i.i38 = phi ptr [ %i.av, %.lr.ph.i.i.i.i36 ], [ %i.q, %.noexc43 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i37, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i38, i64 40, i1 false), !tbaa.struct !23, !alias.scope !36
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i38, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i37, i64 40 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.av, %i.o
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i, label %.lr.ph.i.i.i.i36, !llvm.loop !40

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i: ; preds = %.lr.ph.i.i.i.i36, %.noexc43
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ar, %.noexc43 ], [ %i.aw, %.lr.ph.i.i.i.i36 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.q, null
  br i1 %.not.i37.i, label %.noexc26, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.aj) #14
  br label %.noexc26

.noexc26:                                         ; preds = %bb.i, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit36.i
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit: ; preds = %.noexc26, %bb.f
  %i.az = phi ptr [ %i.ax, %.noexc26 ], [ %i.ag, %bb.f ] ; 4 uses
  %i.ba = phi ptr [ %i.ar, %.noexc26 ], [ %i.q, %bb.f ] ; 6 uses
  %i.bb = phi ptr [ %i.ay, %.noexc26 ], [ %i.p, %bb.f ] ; 3 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 40                ; 2 uses
  %i.bg = add nsw i64 %i.bf, -1                   ; 2 uses
  %.not2457 = icmp eq i64 %i.bg, 0
  br i1 %.not2457, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %bb.j
  %i.bh = phi i64 [ %i.bt, %bb.j ], [ %i.bg, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ] ; 3 uses
  %.058 = phi i64 [ %i.bh, %bb.j ], [ %i.bf, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ]
  %i.bi = getelementptr [40 x i8], ptr %i.ba, i64 %.058 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -80    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %i.bh ; 4 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 -48
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10 ; 2 uses
  %.not.i27 = icmp eq i64 %i.bm, %i.bo
  %i.bp = icmp ult i64 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bj, align 8
  %i.br = load i64, ptr %i.bk, align 8
  %i.bs = icmp ugt i64 %i.bq, %i.br
  %.0.i = select i1 %.not.i27, i1 %i.bs, i1 %i.bp
  br i1 %.0.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false), !tbaa.struct !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bt = add i64 %i.bh, -1                       ; 2 uses
  %.not24 = icmp eq i64 %i.bt, 0
  br i1 %.not24, label %.critedge, label %.lr.ph, !llvm.loop !41

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.d, align 8
  store ptr %i.q, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.critedge:                                        ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d, %bb.c, %bb.j, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph70.split
  %i.bu = phi ptr [ %i.az, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.o, %.lr.ph70.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.j ], [ %i.az, %.lr.ph ], [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.bv = phi ptr [ %i.ba, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.q, %.lr.ph70.split ], [ %i.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ba, %bb.j ], [ %i.ba, %.lr.ph ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bw = phi ptr [ %i.bb, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.p, %.lr.ph70.split ], [ %i.p, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.bb, %bb.j ], [ %i.bb, %.lr.ph ], [ %i.p, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02168, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph70.split

._crit_edge:                                      ; preds = %.critedge, %bb.b, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i
  %.lcssa64 = phi ptr [ null, %bb.b ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.bv, %.critedge ]
  %.lcssa60 = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ], [ %i.bw, %.critedge ]
  store ptr %.lcssa60, ptr %i.d, align 8
  store ptr %.lcssa64, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = ptrtoint ptr %i.o to i64
  %i.bz = ptrtoint ptr %i.q to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ca) #14
  br label %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EED2Ev.exit: ; preds = %bb.k, %bb.l
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin allocsize(0) }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN4absl12lts_2025051216strings_internal18ViableSubstitutionE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !13, i64 32}
!11 = !{!"_ZTSN4absl12lts_2025051216strings_internal18ViableSubstitutionE", !12, i64 0, !12, i64 16, !13, i64 32}
!12 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !13, i64 0, !14, i64 8}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!21, !8, i64 8}
!21 = !{!"_ZTSNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!22 = !{!21, !8, i64 0}
!23 = !{i64 0, i64 8, !15, i64 8, i64 8, !16, i64 16, i64 8, !15, i64 24, i64 8, !16, i64 32, i64 8, !15}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = !{!27, !13, i64 8}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !13, i64 8, !5, i64 16}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!29 = !{!28, !14, i64 0}
!30 = !{!27, !14, i64 0}
!31 = !{!21, !8, i64 16}
!32 = !{!33, !13, i64 8}
!33 = !{!"_ZTSSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES4_EE", !34, i64 0, !13, i64 8}
!34 = !{!"p1 _ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEES3_E", !9, i64 0}
!35 = !{!33, !34, i64 0}
!36 = !{!37, !39}
!37 = distinct !{!37, !38, !"_ZSt19__relocate_object_aIN4absl12lts_2025051216strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!38 = distinct !{!38, !"_ZSt19__relocate_object_aIN4absl12lts_2025051216strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_"}
!39 = distinct !{!39, !38, !"_ZSt19__relocate_object_aIN4absl12lts_2025051216strings_internal18ViableSubstitutionES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
end_hunk_0
