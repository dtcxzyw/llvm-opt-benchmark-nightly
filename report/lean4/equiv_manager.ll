Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/equiv_manager?download=true
inline.NumInlined: 322
inline.NumDeleted: 189
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::pair.5" = type <{ %"class.lean::expr", i32, [4 x i8] }>
%"class.lean::expr" = type { %"class.lean::object_ref" }
%"class.lean::object_ref" = type { ptr }
%"struct.std::_Hashtable<lean::expr, std::pair<const lean::expr, unsigned int>, mi_stl_allocator<std::pair<const lean::expr, unsigned int>>, std::__detail::_Select1st, std::equal_to<lean::expr>, lean::expr_hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node" = type { ptr, ptr }

$_ZNSt4pairIN4lean4exprEjED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4lean19unreachable_reachedD0Ev = comdat any

$_ZNK4lean19unreachable_reached4whatEv = comdat any

$_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_jEEEES2_INS7_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_ = comdat any

$_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm = comdat any

$_ZTIN4lean19unreachable_reachedE = comdat any

$_ZTSN4lean19unreachable_reachedE = comdat any

$_ZTIN4lean9exceptionE = comdat any

$_ZTSN4lean9exceptionE = comdat any

$_ZTVN4lean19unreachable_reachedE = comdat any

@.str = private unnamed_addr constant [28 x i8] c"expression equivalence test\00", align 1
@_ZTIN4lean19unreachable_reachedE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4lean19unreachable_reachedE, ptr @_ZTIN4lean9exceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4lean19unreachable_reachedE = linkonce_odr hidden constant [29 x i8] c"N4lean19unreachable_reachedE\00", comdat, align 1
@_ZTIN4lean9exceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4lean9exceptionE, ptr @_ZTIN4lean9throwableE }, comdat, align 8
@_ZTSN4lean9exceptionE = linkonce_odr constant [18 x i8] c"N4lean9exceptionE\00", comdat, align 1
@_ZTIN4lean9throwableE = external constant ptr
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4lean19unreachable_reachedE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4lean19unreachable_reachedE, ptr @_ZN4lean9throwableD2Ev, ptr @_ZN4lean19unreachable_reachedD0Ev, ptr @_ZNK4lean19unreachable_reached4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"'unreachable' code was reached\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4lean13equiv_manager7mk_nodeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(81) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext = and i64 %i.g, 4294967295
  store i64 %.sroa.0.0.insert.ext, ptr %i.b, align 4
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.a, align 8, !tbaa !8
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.g ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.g
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.f ; 2 uses
  %.sroa.0.0.insert.ext3 = and i64 %i.g, 4294967295
  store i64 %.sroa.0.0.insert.ext3, ptr %i.s, align 4
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %1 = load ptr, ptr %i.h, align 8, !tbaa !13
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %3) #20
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !12
  store ptr %i.u, ptr %i.a, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.h, align 8, !tbaa !13
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.w = trunc i64 %i.g to i32
  ret i32 %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN4lean13equiv_manager4findEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07 = phi i32 [ %1, %bb.a ], [ %i.d, %bb.b ]   ; 3 uses
  %i.b = zext i32 %.07 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %.not = icmp eq i32 %i.d, %.07
  br i1 %.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  ret i32 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean13equiv_manager5mergeEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(81) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi i32 [ %1, %bb.a ], [ %i.d, %bb.b ] ; 4 uses
  %i.b = zext i32 %.07.i to i64                   ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %.not.i = icmp eq i32 %i.d, %.07.i
  br i1 %.not.i, label %_ZN4lean13equiv_manager4findEj.exit.preheader, label %bb.b

_ZN4lean13equiv_manager4findEj.exit.preheader:    ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  br label %_ZN4lean13equiv_manager4findEj.exit

_ZN4lean13equiv_manager4findEj.exit:              ; preds = %_ZN4lean13equiv_manager4findEj.exit.preheader, %_ZN4lean13equiv_manager4findEj.exit
  %.07.i20 = phi i32 [ %i.h, %_ZN4lean13equiv_manager4findEj.exit ], [ %2, %_ZN4lean13equiv_manager4findEj.exit.preheader ] ; 4 uses
  %i.f = zext i32 %.07.i20 to i64                 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
  %.not.i21 = icmp eq i32 %i.h, %.07.i20
  br i1 %.not.i21, label %_ZN4lean13equiv_manager4findEj.exit22, label %_ZN4lean13equiv_manager4findEj.exit

_ZN4lean13equiv_manager4findEj.exit22:            ; preds = %_ZN4lean13equiv_manager4findEj.exit
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %.not = icmp eq i32 %.07.i, %.07.i20
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZN4lean13equiv_manager4findEj.exit22
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 2 uses
  %i.n = icmp ult i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.07.i20, ptr %i.e, align 4, !tbaa !14
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ugt i32 %i.k, %i.m
  store i32 %.07.i, ptr %i.i, align 4, !tbaa !14
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i32 %i.k, 1
  store i32 %i.p, ptr %i.j, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %_ZN4lean13equiv_manager4findEj.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4lean13equiv_manager7to_nodeERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.5", align 8      ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !26 ; 4 uses
  %i.e = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.e, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = tail call noundef zeroext i1 @_ZN4lean8is_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.g, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11, label %bb.c, !llvm.loop !27

bb.e:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val.i.i.i.i.i.i = load i32, ptr %i.i, align 4
  %i.j = lshr i32 %.val.i.i.i.i.i.i, 13
  %i.k = and i32 %i.j, 2040
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = and i64 %i.o, 4294967295                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = urem i64 %i.p, %i.r                      ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.x = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.ae, %bb.h ]
  %.015.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %.0.i.i.i.i, %bb.h ]
  %.0.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.ab, %bb.h ] ; 3 uses
  %i.y = icmp eq i64 %i.p, %i.x
  br i1 %i.y, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.aa = tail call noundef zeroext i1 @_ZN4lean8is_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
  br i1 %i.aa, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i, %bb.g
  %i.ab = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !26 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = urem i64 %i.ae, %i.ac
  %.not19.i.i.i.i = icmp eq i64 %i.af, %i.s
  br i1 %.not19.i.i.i.i, label %bb.g, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread, !llvm.loop !37

_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i
  %i.ag = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread, label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11

_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11: ; preds = %bb.d, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit
  %.sroa.06.1.i.i13 = phi ptr [ %i.ag, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit ], [ %.sroa.06.0.i.i, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i13, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !38
  br label %bb.x

_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i, %bb.h, %bb.c, %bb.e, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 3 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 5 uses
  %i.aq = ashr exact i64 %i.ap, 3                 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.al, %i.as
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread
  %.sroa.0.0.insert.ext.i = and i64 %i.aq, 4294967295
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.al, align 4
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.ak, align 8, !tbaa !8
  br label %_ZN4lean13equiv_manager7mk_nodeEv.exit

bb.j:                                             ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread
  %i.av = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.aq
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i5 = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i5)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #19 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.ap ; 2 uses
  %.sroa.0.0.insert.ext3.i = and i64 %i.aq, 4294967295
  store i64 %.sroa.0.0.insert.ext3.i, ptr %i.bc, align 4
  %i.bd = icmp sgt i64 %i.ap, 0
  br i1 %i.bd, label %bb.l, label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.am, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %3 = load ptr, ptr %i.ar, align 8, !tbaa !13
  %4 = ptrtoint ptr %3 to i64
  %5 = sub i64 %4, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %5) #20
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bb, ptr %0, align 8, !tbaa !12
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bf, ptr %i.ar, align 8, !tbaa !13
  br label %_ZN4lean13equiv_manager7mk_nodeEv.exit

_ZN4lean13equiv_manager7mk_nodeEv.exit:           ; preds = %bb.i, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bg = trunc i64 %i.aq to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !29, !noalias !47 ; 5 uses
  store ptr %i.bh, ptr %2, align 8, !tbaa !29, !alias.scope !47
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

bb.n:                                             ; preds = %_ZN4lean13equiv_manager7mk_nodeEv.exit
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !48, !noalias !47 ; 3 uses
  %i.bk = icmp sgt i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bk, label %bb.o, label %bb.p, !prof !50

bb.o:                                             ; preds = %bb.n
  %i.bl = add nuw i32 %.val.i.i.i.i.i.i.i.i, 1
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !48, !noalias !47
  br label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = atomicrmw sub ptr %i.bh, i32 1 monotonic, align 4, !noalias !47 ; 0 uses
  br label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit: ; preds = %_ZN4lean13equiv_manager7mk_nodeEv.exit, %bb.o, %bb.p, %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bg, ptr %i.bn, align 8, !tbaa !51, !alias.scope !47
  %i.bo = invoke { ptr, i8 } @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_jEEEES2_INS7_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit unwind label %bb.w ; 0 uses

_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit: ; preds = %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit
  %i.bp = load ptr, ptr %2, align 8, !tbaa !29    ; 4 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %.not.i.i.i.i6 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i6, label %bb.r, label %_ZNSt4pairIN4lean4exprEjED2Ev.exit

bb.r:                                             ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !48 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.s, label %bb.t, !prof !50

bb.s:                                             ; preds = %bb.r
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !48
  br label %_ZNSt4pairIN4lean4exprEjED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i1.i.i.i, label %_ZNSt4pairIN4lean4exprEjED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bp)
          to label %_ZNSt4pairIN4lean4exprEjED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #22
  unreachable

_ZNSt4pairIN4lean4exprEjED2Ev.exit:               ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.x

bb.w:                                             ; preds = %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4lean4exprEjED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.bx

bb.x:                                             ; preds = %_ZNSt4pairIN4lean4exprEjED2Ev.exit, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11
  %.0 = phi i32 [ %i.aj, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11 ], [ %i.bg, %_ZNSt4pairIN4lean4exprEjED2Ev.exit ]
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN4lean4exprEjED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4lean10object_refD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !48   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !48
  br label %_ZN4lean10object_refD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.a)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !29     ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !29     ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i8, ptr %i.d, align 8, !tbaa !53, !range !60, !noundef !61
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr i8, ptr %i.a, i64 4
  %.val.i.i = load i32, ptr %i.g, align 4         ; 2 uses
  br i1 %i.f, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %.val.i.i, 13
  %i.i = and i32 %i.h, 2040
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i59 = load i32, ptr %i.o, align 4
  %i.p = lshr i32 %.val.i.i59, 13
  %i.q = and i32 %i.p, 2040
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = trunc i64 %i.u to i32
  %.not = icmp eq i32 %i.n, %i.v
  br i1 %.not, label %._crit_edge, label %_ZN4leaneqERKNS_3natES2_.exit

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.w = icmp ult i32 %.val.i.i, 16777216
  br i1 %i.w, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._crit_edge
  %i.x = getelementptr i8, ptr %i.b, i64 4
  %.val.i.i.i.i60 = load i32, ptr %i.x, align 4
  %i.y = icmp ult i32 %.val.i.i.i.i60, 16777216
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !29  ; 3 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = and i64 %i.ad, 1
  %i.ag = and i64 %i.af, %i.ae
  %or.cond.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %or.cond.not.i.i, label %.critedge.i.i.i, label %bb.f, !prof !62

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq ptr %i.ab, %i.ac
  br label %_ZN4leaneqERKNS_3natES2_.exit

.critedge.i.i.i:                                  ; preds = %bb.e
  %i.ai = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.ab, ptr noundef %i.ac)
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.g:                                             ; preds = %bb.d, %._crit_edge
end_hunk_0
