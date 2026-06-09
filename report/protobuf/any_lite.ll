inline.NumInlined: 122
inline.NumDeleted: 58
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }

@_ZN6google8protobuf8internal16kAnyFullTypeNameE = local_unnamed_addr constant [20 x i8] c"google.protobuf.Any\00", align 16
@_ZN6google8protobuf8internal24kTypeGoogleApisComPrefixE = local_unnamed_addr constant [21 x i8] c"type.googleapis.com/\00", align 16
@_ZN6google8protobuf8internal24kTypeGoogleProdComPrefixE = local_unnamed_addr constant [21 x i8] c"type.googleprod.com/\00", align 16
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %4, i64 %3
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7
  %i.e = icmp eq i8 %i.d, 47
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i64 %3, ptr %5, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  store i64 %1, ptr %6, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i9, align 8, !tbaa !10
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  store i64 %3, ptr %7, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  store i64 1, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  store i64 %1, ptr %9, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !10
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal16EndsWithTypeNameESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, %2
  br i1 %i.a, label %bb.b, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %2, -1
  %i.c = getelementptr i8, ptr %1, i64 %0
  %i.d = getelementptr i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.h = sub nuw i64 %0, %2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.i, ptr %3, i64 %2)
  %i.j = icmp eq i32 %bcmp.i.i, 0
  br label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ true, %bb.c ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal20InternalPackFromLiteERKNS0_11MessageLiteESt17basic_string_viewIcSt11char_traitsIcEES8_PNSt7__cxx1112basic_stringIcS7_SaIcEEESD_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 %3, ptr %4, ptr nofree noundef captures(address) %5, ptr noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7, !noalias !13
  %i.e = icmp eq i8 %i.d, 47
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7, !noalias !13
  store i64 %1, ptr %7, align 8, !tbaa !8, !noalias !13
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !10, !noalias !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7, !noalias !13
  store i64 %3, ptr %8, align 8, !tbaa !8, !noalias !13
  %.sroa.2.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i9.i, align 8, !tbaa !10, !noalias !13
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #7, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7, !noalias !13
  br label %_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7, !noalias !13
  store i64 %1, ptr %9, align 8, !tbaa !8, !noalias !13
  %.sroa.2.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i10.i, align 8, !tbaa !10, !noalias !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7, !noalias !13
  store i64 1, ptr %10, align 8, !noalias !13
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str, ptr %i.f, align 8, !noalias !13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7, !noalias !13
  store i64 %3, ptr %11, align 8, !tbaa !8, !noalias !13
  %.sroa.2.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i11.i, align 8, !tbaa !10, !noalias !13
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7, !noalias !13
  br label %_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_.exit

_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_.exit: ; preds = %bb.c, %bb.d
  %i.g = load ptr, ptr %5, align 8, !tbaa !16     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %12, align 8, !tbaa !16    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_.exit
  br i1 %i.l, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_.exit
  br i1 %i.l, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %12, %5
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  switch i64 %i.n, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %i.j, align 1, !tbaa !7
  store i8 %i.p, ptr %i.g, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.q = load i64, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !19
  %i.s = load ptr, ptr %5, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !7
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %5, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !7
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !7
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.x = load i64, ptr %i.h, align 8, !tbaa !7
  store ptr %i.j, ptr %5, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !tbaa !7
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %12, align 8, !tbaa !16
  store i64 %i.x, ptr %i.k, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %12, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ab = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %bb.i ], [ %i.k, %bb.j ], [ %i.j, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !19
  store i8 0, ptr %i.ab, align 1, !tbaa !7
  %i.ad = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !7
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  %i.ai = call noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %6)
  ret i1 %i.ai
}

declare noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal20InternalUnpackToLiteESt17basic_string_viewIcSt11char_traitsIcEES5_RKNSt7__cxx1112basic_stringIcS4_SaIcEEEPNS0_11MessageLiteE(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, %0
  br i1 %i.a, label %bb.b, label %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %0, -1
  %i.c = getelementptr i8, ptr %3, i64 %2
  %i.d = getelementptr i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread11, label %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit

_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit: ; preds = %bb.c
  %i.h = sub nuw i64 %2, %0
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.i, ptr readonly %1, i64 %0)
  %i.j = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.j, label %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread11, label %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread

_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread11: ; preds = %bb.c, %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf11MessageLite15ParseFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.m, ptr %i.k)
  br label %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread

_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit, %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread11
  %.0 = phi i1 [ %i.n, %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit.thread11 ], [ false, %_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14InternalIsLiteESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %2, %0
  br i1 %i.a, label %bb.b, label %_ZN6google8protobuf8internal16EndsWithTypeNameESt17basic_string_viewIcSt11char_traitsIcEES5_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %0, -1
  %i.c = getelementptr i8, ptr %3, i64 %2
  %i.d = getelementptr i8, ptr %i.c, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %_ZN6google8protobuf8internal16EndsWithTypeNameESt17basic_string_viewIcSt11char_traitsIcEES5_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %0, 0
  br i1 %i.g, label %_ZN6google8protobuf8internal16EndsWithTypeNameESt17basic_string_viewIcSt11char_traitsIcEES5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.h = sub nuw i64 %2, %0
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %bcmp.i.i.i = tail call i32 @bcmp(ptr readonly %i.i, ptr readonly %1, i64 %0)
  %i.j = icmp eq i32 %bcmp.i.i.i, 0
  br label %_ZN6google8protobuf8internal16EndsWithTypeNameESt17basic_string_viewIcSt11char_traitsIcEES5_.exit

_ZN6google8protobuf8internal16EndsWithTypeNameESt17basic_string_viewIcSt11char_traitsIcEES5_.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ true, %bb.c ]
  ret i1 %i.k
}

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite15ParseFromStringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal15ParseAnyTypeUrlESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_(i64 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.not.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i.i = icmp eq i64 %i.c, 0
  br i1 %.not13.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread, label %.preheader.preheader, !llvm.loop !21

.preheader.preheader:                             ; preds = %bb.a, %.preheader
  %.1.i.i81 = phi i64 [ %i.c, %.preheader ], [ %0, %bb.a ] ; 8 uses
  %i.c = add i64 %.1.i.i81, -1                    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !7
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit, label %.preheader, !llvm.loop !21

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit: ; preds = %.preheader.preheader
  %i.g = icmp eq i64 %.1.i.i81, %0
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 %.1.i.i81, ptr %i.b, align 8, !tbaa !8
  %i.i = icmp ugt i64 %.1.i.i81, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !16
  %i.k = load i64, ptr %i.b, align 8, !tbaa !8
  store i64 %i.k, ptr %i.h, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.l = phi ptr [ %i.j, %.noexc.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %cond = icmp eq i64 %.1.i.i81, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %1, align 1, !tbaa !7
  store i8 %i.m, ptr %i.l, align 1, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %.1.i.i81, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = load ptr, ptr %4, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.r = load ptr, ptr %2, align 8, !tbaa !16     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %4, align 8, !tbaa !16     ; 6 uses
  %i.v = icmp eq ptr %i.u, %i.h                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.v, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.v, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = load i64, ptr %i.o, align 8, !tbaa !19   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i = icmp eq ptr %4, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  switch i64 %i.w, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %i.u, align 1, !tbaa !7
  store i8 %i.y, ptr %i.r, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.z = load i64, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !19
  %i.ab = load ptr, ptr %2, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !7
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.u, ptr %2, align 8, !tbaa !16
  %i.ae = load <2 x i64>, ptr %i.o, align 8, !tbaa !7
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !7
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.s, align 8, !tbaa !7
  store ptr %i.u, ptr %2, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load <2 x i64>, ptr %i.o, align 8, !tbaa !7
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !7
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %4, align 8, !tbaa !16
  store i64 %i.af, ptr %i.h, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %4, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ai = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.r, %bb.k ], [ %i.h, %bb.l ], [ %i.u, %bb.g ]
  store i64 0, ptr %i.o, align 8, !tbaa !19
  store i8 0, ptr %i.ai, align 1, !tbaa !7
  %i.aj = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.h
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.h, align 8, !tbaa !7
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.an = sub nuw i64 %0, %.1.i.i81               ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i.i81 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %i.an, ptr %i.a, align 8, !tbaa !8
  %i.aq = icmp ugt i64 %i.an, 15
  br i1 %i.aq, label %.noexc.i.i.i24, label %._crit_edge.i.i.i.i23

.noexc.i.i.i24:                                   ; preds = %bb.m
  %i.ar = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ar, ptr %5, align 8, !tbaa !16
  %i.as = load i64, ptr %i.a, align 8, !tbaa !8
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !7
  br label %._crit_edge.i.i.i.i23

._crit_edge.i.i.i.i23:                            ; preds = %.noexc.i.i.i24, %bb.m
  %i.at = phi ptr [ %i.ar, %.noexc.i.i.i24 ], [ %i.ap, %bb.m ] ; 2 uses
  switch i64 %i.an, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i23
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !7
  store i8 %i.au, ptr %i.at, align 1, !tbaa !7
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.ao, i64 %i.an, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i23
  %i.av = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !19
  %i.ax = load ptr, ptr %5, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.az = load ptr, ptr %3, align 8, !tbaa !16    ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  %i.bc = load ptr, ptr %5, align 8, !tbaa !16    ; 6 uses
  %i.bd = icmp eq ptr %i.bc, %i.ap                ; 2 uses
  br i1 %i.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34: ; preds = %bb.p
  br i1 %i.bd, label %bb.q, label %.thread.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i28: ; preds = %bb.p
  br i1 %i.bd, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i29

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !19 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %.not21.i31 = icmp eq ptr %5, %3
  br i1 %.not21.i31, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36, label %bb.r, !prof !20

bb.r:                                             ; preds = %bb.q
  switch i64 %i.be, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !7
  store i8 %i.bg, ptr %i.az, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32: ; preds = %bb.t, %bb.s, %bb.r
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !19
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !7
  %.pre.i33 = load ptr, ptr %5, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

.thread.i35:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i34
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bc, ptr %3, align 8, !tbaa !16
  %i.bm = load <2 x i64>, ptr %i.aw, align 8, !tbaa !7
  store <2 x i64> %i.bm, ptr %i.bl, align 8, !tbaa !7
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i28
  %i.bn = load i64, ptr %i.ba, align 8, !tbaa !7
  store ptr %i.bc, ptr %3, align 8, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load <2 x i64>, ptr %i.aw, align 8, !tbaa !7
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !7
  %.not.i30 = icmp eq ptr %i.az, null
  br i1 %.not.i30, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i29
  store ptr %i.az, ptr %5, align 8, !tbaa !16
  store i64 %i.bn, ptr %i.ap, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i29, %.thread.i35
  store ptr %i.ap, ptr %5, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32, %bb.u, %bb.v
  %i.bq = phi ptr [ %.pre.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i32 ], [ %i.az, %bb.u ], [ %i.ap, %bb.v ], [ %i.bc, %bb.q ]
  store i64 0, ptr %i.aw, align 8, !tbaa !19
  store i8 0, ptr %i.bq, align 1, !tbaa !7
  %i.br = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ap
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36
  %i.bt = load i64, ptr %i.ap, align 8, !tbaa !7
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit.thread: ; preds = %.preheader, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.010 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE12find_last_ofEcm.exit ], [ false, %bb.a ], [ false, %.preheader ]
  ret i1 %.010
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal15ParseAnyTypeUrlESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf8internal15ParseAnyTypeUrlESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_(i64 %0, ptr %1, ptr noundef null, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

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
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_: argument 0"}
!15 = distinct !{!15, !"_ZN6google8protobuf8internal10GetTypeUrlB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES5_"}
!16 = !{!17, !11, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !9, i64 8, !5, i64 16}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!19 = !{!17, !9, i64 8}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!18, !11, i64 0}
end_hunk_0
