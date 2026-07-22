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
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %.not = icmp ult i64 %i.k, %.03752
  br i1 %.not, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not40 = icmp ugt i64 %.03752, %0
  br i1 %.not40, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %7 = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = sub i64 %7, %.03752
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
  %i.as = getelementptr i8, ptr %i.ar, i64 -80    ; 3 uses
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
end_hunk_0
