Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/regex_yaml?download=true
inline.NumInlined: 130
inline.NumDeleted: 66
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.YAML::RegEx" = type { i32, i8, i8, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<YAML::RegEx, std::allocator<YAML::RegEx>>::_Vector_impl" }
%"struct.std::_Vector_base<YAML::RegEx, std::allocator<YAML::RegEx>>::_Vector_impl" = type { %"struct.std::_Vector_base<YAML::RegEx, std::allocator<YAML::RegEx>>::_Vector_impl_data" }
%"struct.std::_Vector_base<YAML::RegEx, std::allocator<YAML::RegEx>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4YAML5RegExD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIN4YAML5RegExEEvPT_ = comdat any

$_ZNSt6vectorIN4YAML5RegExESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SG_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_ = comdat any

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4YAML5RegExC1ENS_8REGEX_OPE = unnamed_addr alias void (ptr, i32), ptr @_ZN4YAML5RegExC2ENS_8REGEX_OPE
@_ZN4YAML5RegExC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4YAML5RegExC2Ev
@_ZN4YAML5RegExC1Ec = unnamed_addr alias void (ptr, i8), ptr @_ZN4YAML5RegExC2Ec
@_ZN4YAML5RegExC1Ecc = unnamed_addr alias void (ptr, i8, i8), ptr @_ZN4YAML5RegExC2Ecc
@_ZN4YAML5RegExC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8REGEX_OPE = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4YAML5RegExC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8REGEX_OPE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML5RegExC2ENS_8REGEX_OPE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 6), (8, 32)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 4, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML5RegExC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 6), (8, 32)) %0) unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 4, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML5RegExC2Ec(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 6), (8, 32)) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 1, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %1, ptr %i.a, align 4, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML5RegExC2Ecc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 6), (8, 32)) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 align 2 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %1, ptr %i.a, align 4, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %2, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML5RegExC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8REGEX_OPE(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 6), (8, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 %2, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 4, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.d, ptr %i.g)
          to label %_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvEET_SG_RKS2_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #13
  br label %.body

_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvEET_SG_RKS2_.exit: ; preds = %bb.a
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.h
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define void @_ZN4YAMLntERKNS_5RegExE(ptr dead_on_unwind noalias writable sret(%"class.YAML::RegEx") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4YAML5RegExC1ENS_8REGEX_OPE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 5)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.a, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  resume { ptr, i32 } %i.j

_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i2.i, label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i.i3.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef %.0.i.i3.i), !inline_history !31
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !0

_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #13, !inline_history !32
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit

_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAMLorERKNS_5RegExES2_(ptr dead_on_unwind noalias writable sret(%"class.YAML::RegEx") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4YAML5RegExC1ENS_8REGEX_OPE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 6, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge, %.noexc
  %i.j = phi ptr [ %.pre, %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.i, %.noexc ] ; 4 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i5 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8

bb.e:                                             ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8 unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8: ; preds = %.noexc6, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAMLanERKNS_5RegExES2_(ptr dead_on_unwind noalias writable sret(%"class.YAML::RegEx") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4YAML5RegExC1ENS_8REGEX_OPE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 6, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge, %.noexc
  %i.j = phi ptr [ %.pre, %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.i, %.noexc ] ; 4 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i5 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8

bb.e:                                             ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8 unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8: ; preds = %.noexc6, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAMLplERKNS_5RegExES2_(ptr dead_on_unwind noalias writable sret(%"class.YAML::RegEx") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4YAML5RegExC1ENS_8REGEX_OPE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 6, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.f

._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge, %.noexc
  %i.j = phi ptr [ %.pre, %._ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.i, %.noexc ] ; 4 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i5 = icmp eq ptr %i.j, %i.k
  br i1 %.not.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %bb.d
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.o, ptr %i.b, align 8, !tbaa !22
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8

bb.e:                                             ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8 unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  resume { ptr, i32 } %i.p

_ZNSt6vectorIN4YAML5RegExESaIS1_EE9push_backERKS1_.exit8: ; preds = %.noexc6, %bb.e
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i.i.i2 = phi ptr [ %i.e, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef %.0.i.i.i2), !inline_history !33
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.loopexit, label %.lr.ph, !llvm.loop !0

_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i

_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i:       ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #13, !inline_history !34
  br label %_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit

_ZNSt6vectorIN4YAML5RegExESaIS1_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i, %bb.b
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvT_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp ugt i64 %i.c, 288230376151711743
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EE11_M_allocateEm.exit.thread, label %.lr.ph.i.i.i.i.preheader

_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EE11_M_allocateEm.exit.thread: ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw [32 x i8], ptr null, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !23
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPN4YAML5RegExESC_ET0_T_SF_SE_RSaIT1_E.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.g = shl nuw nsw i64 %i.c, 5
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #17 ; 5 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !23
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4YAML5RegExEJRKcEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.m, %_ZSt10_ConstructIN4YAML5RegExEJRKcEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.l, %_ZSt10_ConstructIN4YAML5RegExEJRKcEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.k = load i8, ptr %.sroa.08.013.i.i.i.i, align 1, !tbaa !36
  invoke void @_ZN4YAML5RegExC1Ec(ptr noundef nonnull align 8 dereferenceable(32) %.014.i.i.i.i, i8 noundef signext %i.k)
          to label %_ZSt10_ConstructIN4YAML5RegExEJRKcEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN4YAML5RegExEJRKcEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPN4YAML5RegExESC_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #14 ; 0 uses
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.h, %.014.i.i.i.i
  br i1 %.not.i2.i.i.i.i.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef nonnull %.0.i3.i.i.i.i.i), !inline_history !1
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %.014.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #16
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #15
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPN4YAML5RegExESC_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4YAML5RegExEJRKcEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EE11_M_allocateEm.exit.thread
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EE11_M_allocateEm.exit.thread ], [ %i.m, %_ZSt10_ConstructIN4YAML5RegExEJRKcEEvPT_DpOT0_.exit.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i, ptr %i.u, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4YAML5RegExESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4YAML5RegExESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #16
  unreachable

_ZNKSt6vectorIN4YAML5RegExESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #17 ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 6, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNSt16allocator_traitsISaIN4YAML5RegExEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread, !inline_history !37

_ZNSt16allocator_traitsISaIN4YAML5RegExEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4YAML5RegExESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN4YAML5RegExEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN4YAML5RegExEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 5 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4YAML5RegExEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01215.i.i.i.i.i, i64 6, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c, !inline_history !38

_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !39

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  %i.y = tail call ptr @__cxa_begin_catch(ptr %i.x) #14 ; 0 uses
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %i.o, %.016.i.i.i.i.i
  br i1 %.not.i2.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef nonnull %.0.i3.i.i.i.i.i.i), !inline_history !1
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #16
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #15
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN4YAML5RegExEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN4YAML5RegExEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.v, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 32, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.af, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(32) %.01215.i.i.i.i.i31, i64 6, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30.ptr, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g, !inline_history !38

_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.af = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 32 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 32 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !39

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #14 ; 0 uses
  %.not.i2.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 32
  br i1 %.not.i2.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i33
  %.0.i3.i.i.i.i.i.i34 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef nonnull %.0.i3.i.i.i.i.i.i34), !inline_history !1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i34, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.aj, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i33, !llvm.loop !0

_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #16
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i36
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #15
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not.i2.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i2.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i
  %.0.i3.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef %.0.i3.i), !inline_history !1
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit, label %.lr.ph.i, !llvm.loop !0

_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit:         ; preds = %.lr.ph.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4YAML5RegExES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #13
  br label %_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %0, align 8, !tbaa !21
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !23
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN4YAML5RegExESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #14 ; 0 uses
  br label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.at = extractvalue { ptr, i32 } %i.aa, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #14 ; 0 uses
  tail call void @_ZN4YAML5RegExD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.p) #14
  br label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.av = extractvalue { ptr, i32 } %i.ak, 0
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %i.av) #14 ; 0 uses
  %.not.i2.i45 = icmp eq ptr %i.o, %.ptr
  br i1 %.not.i2.i45, label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.l, %.lr.ph.i46
  %.0.i3.i47 = phi ptr [ %i.ax, %.lr.ph.i46 ], [ %i.o, %bb.l ] ; 3 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef nonnull %.0.i3.i47), !inline_history !1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i3.i47, i64 32
  %.not.i.i48 = icmp eq ptr %.0.i3.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i46, !llvm.loop !0

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #13
  invoke void @__cxa_rethrow() #16
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ay

bb.o:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #15
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775776
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN4YAML5RegExEE8allocateEmPKv.exit.i.i.i, !prof !44

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorIN4YAML5RegExEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4YAML5RegExEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN4YAML5RegExEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !23
  %i.m = load ptr, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not12.i = icmp eq ptr %i.m, %i.n
  br i1 %.not12.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4YAML5RegExESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i
  %.014.i = phi ptr [ %i.r, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 5 uses
  %.sroa.08.013.i = phi ptr [ %i.q, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.014.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.013.i, i64 6, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 8
  invoke void @_ZNSt6vectorIN4YAML5RegExESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !40

_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.n
  br i1 %.not.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4YAML5RegExESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i, !llvm.loop !41

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #14, !inline_history !42 ; 0 uses
  %.not.i2.i.i = icmp eq ptr %i.i, %.014.i
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.0.i3.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZSt8_DestroyIN4YAML5RegExEEvPT_(ptr noundef %.0.i3.i.i), !inline_history !43
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 32 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.v, %.014.i
  br i1 %.not.i.i.i14, label %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i:       ; preds = %.lr.ph.i.i, %bb.d
  invoke void @__cxa_rethrow() #16
          to label %bb.g unwind label %bb.e, !inline_history !42

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f, !inline_history !42

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #15, !inline_history !42
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4YAML5RegExEEvT_S3_.exit.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4YAML5RegExESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.lcssa.i = phi ptr [ %i.i, %bb.c ], [ %i.r, %_ZSt10_ConstructIN4YAML5RegExEJRKS1_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.lcssa.i, ptr %i.j, align 8, !tbaa !22
  ret void

.body:                                            ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #13
  br label %_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4YAML5RegExESaIS1_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.w
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !24}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTSN4YAML8REGEX_OPE", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTSN4YAML5RegExE", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN4YAML5RegExESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIN4YAML5RegExESaIS1_EE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIN4YAML5RegExESaIS1_EE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIN4YAML5RegExESaIS1_EE", !15, i64 0}
!17 = !{!"_ZTSN4YAML5RegExE", !10, i64 0, !6, i64 4, !6, i64 5, !16, i64 8}
!18 = !{!17, !10, i64 0}
!19 = !{!17, !6, i64 4}
!20 = !{!17, !6, i64 5}
!21 = !{!13, !12, i64 0}
!22 = !{!13, !12, i64 8}
!23 = !{!13, !12, i64 16}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 omnipotent char", !11, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"long", !6, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !27, i64 8, !6, i64 16}
!29 = !{!28, !25, i64 0}
!30 = !{!28, !27, i64 8}
!31 = distinct !{null, null, null}
!32 = distinct !{null}
!33 = distinct !{null, ptr @_ZN4YAML5RegExD2Ev, null, null}
!34 = distinct !{null, ptr @_ZN4YAML5RegExD2Ev}
!35 = distinct !{!35, !24}
!36 = !{!6, !6, i64 0}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{!39, !24}
!40 = distinct !{null, null, null, null, null}
!41 = distinct !{!41, !24}
!42 = distinct !{null, null, null}
!43 = distinct !{null, null, null, null, null}
!44 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!45 = !{!12, !12, i64 0}
end_hunk_0
