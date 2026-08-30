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
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.x) #20
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !12
  store ptr %i.u, ptr %i.a, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.h, align 8, !tbaa !13
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = trunc i64 %i.g to i32
  ret i32 %i.z
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
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !13
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bh) #20
  br label %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bb, ptr %0, align 8, !tbaa !12
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bi, ptr %i.ar, align 8, !tbaa !13
  br label %_ZN4lean13equiv_manager7mk_nodeEv.exit

_ZN4lean13equiv_manager7mk_nodeEv.exit:           ; preds = %bb.i, %_ZNSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bj = trunc i64 %i.aq to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !29, !noalias !47 ; 5 uses
  store ptr %i.bk, ptr %2, align 8, !tbaa !29, !alias.scope !47
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

bb.n:                                             ; preds = %_ZN4lean13equiv_manager7mk_nodeEv.exit
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.bk, align 4, !tbaa !48, !noalias !47 ; 3 uses
  %i.bn = icmp sgt i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bn, label %bb.o, label %bb.p, !prof !50

bb.o:                                             ; preds = %bb.n
  %i.bo = add nuw i32 %.val.i.i.i.i.i.i.i.i, 1
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !48, !noalias !47
  br label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = atomicrmw sub ptr %i.bk, i32 1 monotonic, align 4, !noalias !47 ; 0 uses
  br label %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit

_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit: ; preds = %_ZN4lean13equiv_manager7mk_nodeEv.exit, %bb.o, %bb.p, %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bj, ptr %i.bq, align 8, !tbaa !51, !alias.scope !47
  %i.br = invoke { ptr, i8 } @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_jEEEES2_INS7_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit unwind label %bb.w ; 0 uses

_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit: ; preds = %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit
  %i.bs = load ptr, ptr %2, align 8, !tbaa !29    ; 4 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, 1
  %.not.i.i.i.i6 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i6, label %bb.r, label %_ZNSt4pairIN4lean4exprEjED2Ev.exit

bb.r:                                             ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !48 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !50

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !48
  br label %_ZNSt4pairIN4lean4exprEjED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i1.i.i.i, label %_ZNSt4pairIN4lean4exprEjED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bs)
          to label %_ZNSt4pairIN4lean4exprEjED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #22
  unreachable

_ZNSt4pairIN4lean4exprEjED2Ev.exit:               ; preds = %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE6insertIS6_IS1_jEEENSt9enable_ifIXsr16is_constructibleIS8_OT_EE5valueES6_INSt8__detail14_Node_iteratorIS8_Lb0ELb1EEEbEE4typeESF_.exit, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.x

bb.w:                                             ; preds = %_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4lean4exprEjED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.ca

bb.x:                                             ; preds = %_ZNSt4pairIN4lean4exprEjED2Ev.exit, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11
  %.0 = phi i32 [ %i.aj, %_ZNSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE4findERS7_.exit.thread11 ], [ %i.bj, %_ZNSt4pairIN4lean4exprEjED2Ev.exit ]
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
  %i.aj = tail call noundef i32 @_ZN4lean13equiv_manager7to_nodeERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.07.i = phi i32 [ %i.aj, %bb.g ], [ %i.an, %bb.h ] ; 4 uses
  %i.al = zext i32 %.07.i to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !14 ; 2 uses
  %.not.i = icmp eq i32 %i.an, %.07.i
  br i1 %.not.i, label %_ZN4lean13equiv_manager4findEj.exit, label %bb.h

_ZN4lean13equiv_manager4findEj.exit:              ; preds = %bb.h
  %i.ao = tail call noundef i32 @_ZN4lean13equiv_manager7to_nodeERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ap = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4lean13equiv_manager4findEj.exit
  %.07.i61 = phi i32 [ %i.ao, %_ZN4lean13equiv_manager4findEj.exit ], [ %i.as, %bb.i ] ; 4 uses
  %i.aq = zext i32 %.07.i61 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %.not.i62 = icmp eq i32 %i.as, %.07.i61
  br i1 %.not.i62, label %_ZN4lean13equiv_manager4findEj.exit63, label %bb.i

_ZN4lean13equiv_manager4findEj.exit63:            ; preds = %bb.i
  %i.at = icmp eq i32 %.07.i, %.07.i61
  br i1 %i.at, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4lean13equiv_manager4findEj.exit63
  %i.au = load ptr, ptr %1, align 8, !tbaa !29
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val.i.i.i = load i32, ptr %i.av, align 4
  %i.aw = load ptr, ptr %2, align 8, !tbaa !29
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val.i.i.i64 = load i32, ptr %i.ax, align 4
  %.not57.unshifted = xor i32 %.val.i.i.i64, %.val.i.i.i
  %.not57 = icmp ult i32 %.not57.unshifted, 16777216
  br i1 %.not57, label %bb.k, label %_ZN4leaneqERKNS_3natES2_.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4lean12check_systemEPKcb(ptr noundef nonnull @.str, i1 noundef zeroext false)
  %i.ay = load ptr, ptr %1, align 8, !tbaa !29    ; 11 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.val.i.i.i65 = load i32, ptr %i.az, align 4
  %i.ba = lshr i32 %.val.i.i.i65, 24
  %trunc = trunc nuw i32 %i.ba to i8
  switch i8 %trunc, label %_ZN4leaneqERKNS_3natES2_.exit [
    i8 0, label %bb.l
    i8 4, label %bb.m
    i8 2, label %.split80
    i8 1, label %.split79
    i8 5, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.o
    i8 3, label %.split76
    i8 9, label %.split75
    i8 10, label %.split74
    i8 11, label %bb.p
    i8 8, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.be, align 8, !tbaa !66
  store i8 0, ptr %i.bd, align 8, !tbaa !68
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean19unreachable_reachedE, i64 16), ptr %i.bb, align 8, !tbaa !69
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN4lean19unreachable_reachedE, ptr nonnull @_ZN4lean9throwableD2Ev) #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bg = load ptr, ptr %2, align 8, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !29
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !29
  %i.bk = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bi, ptr noundef %i.bj)
  %.not83 = icmp eq i8 %i.bk, 0
  br i1 %.not83, label %_ZN4leaneqERKNS_3natES2_.exit, label %.split78

.split78:                                         ; preds = %bb.m
  %i.bl = load ptr, ptr %1, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %2, align 8, !tbaa !29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !29, !noalias !71
  %.val58 = load ptr, ptr %i.bo, align 8, !tbaa !29, !noalias !74
  %i.bp = tail call fastcc noundef zeroext i1 @"_ZN4lean7compareINS_5levelEZNS_13equiv_manager13is_equiv_coreERKNS_4exprES5_E3$_0EEbRKNS_8list_refIT_EESB_OT0_"(ptr %.val, ptr %.val58)
  br i1 %i.bp, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split80:                                         ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.br = load ptr, ptr %2, align 8, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !29
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !29
  %i.bv = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bt, ptr noundef %i.bu)
  %.not82 = icmp eq i8 %i.bv, 0
  br i1 %.not82, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.t

.split79:                                         ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bx = load ptr, ptr %2, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !29
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !29
  %i.cb = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bz, ptr noundef %i.ca)
  %.not81 = icmp eq i8 %i.cb, 0
  br i1 %.not81, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.t

bb.n:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cd = load ptr, ptr %2, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
  br i1 %i.cf, label %.split77, label %_ZN4leaneqERKNS_3natES2_.exit

.split77:                                         ; preds = %bb.n
  %i.cg = load ptr, ptr %1, align 8, !tbaa !29
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %2, align 8, !tbaa !29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
  br i1 %i.ck, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.o:                                             ; preds = %bb.k, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cm = load ptr, ptr %2, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
  br i1 %i.co, label %.split73, label %_ZN4leaneqERKNS_3natES2_.exit

.split73:                                         ; preds = %bb.o
  %i.cp = load ptr, ptr %1, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %2, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
  br i1 %i.ct, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split76:                                         ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cv = load ptr, ptr %2, align 8, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = tail call noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  br i1 %i.cx, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split75:                                         ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cz = load ptr, ptr %2, align 8, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = tail call noundef zeroext i1 @_ZN4leaneqERKNS_7literalES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %i.da)
  br i1 %i.db, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.split74:                                         ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dd = load ptr, ptr %2, align 8, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.de)
  br i1 %i.df, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.p:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.dh = load ptr, ptr %2, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull align 8 dereferenceable(8) %i.di)
  br i1 %i.dj, label %bb.q, label %_ZN4leaneqERKNS_3natES2_.exit

bb.q:                                             ; preds = %bb.p
  %i.dk = load ptr, ptr %1, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %2, align 8, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !29 ; 3 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !29 ; 3 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = and i64 %i.dq, 1
  %i.dt = and i64 %i.ds, %i.dr
  %or.cond.not.i.i66 = icmp eq i64 %i.dt, 0
  br i1 %or.cond.not.i.i66, label %.critedge.i.i.i68, label %.split, !prof !62

.split:                                           ; preds = %bb.q
  %i.du = icmp eq ptr %i.do, %i.dp
  br i1 %i.du, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

.critedge.i.i.i68:                                ; preds = %bb.q
  %i.dv = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.do, ptr noundef %i.dp)
  br i1 %i.dv, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.r:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dx = load ptr, ptr %2, align 8, !tbaa !29
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
  br i1 %i.dz, label %bb.s, label %_ZN4leaneqERKNS_3natES2_.exit

bb.s:                                             ; preds = %bb.r
  %i.ea = load ptr, ptr %1, align 8, !tbaa !29
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %2, align 8, !tbaa !29
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
  br i1 %i.ee, label %_ZN4leaneqERKNS_3natES2_.exit69, label %_ZN4leaneqERKNS_3natES2_.exit

_ZN4leaneqERKNS_3natES2_.exit69:                  ; preds = %bb.s
  %i.ef = load ptr, ptr %1, align 8, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %2, align 8, !tbaa !29
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = tail call noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef nonnull align 8 dereferenceable(8) %i.ei)
  br i1 %i.ej, label %bb.t, label %_ZN4leaneqERKNS_3natES2_.exit

bb.t:                                             ; preds = %.split80, %.split79, %.split78, %.split77, %.split76, %.split75, %.split74, %.split73, %.split, %.critedge.i.i.i68, %_ZN4leaneqERKNS_3natES2_.exit69
  %i.ek = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.07.i.i = phi i32 [ %.07.i, %bb.t ], [ %i.en, %bb.u ] ; 4 uses
  %i.el = zext i32 %.07.i.i to i64                ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !14 ; 2 uses
  %.not.i.i = icmp eq i32 %i.en, %.07.i.i
  br i1 %.not.i.i, label %_ZN4lean13equiv_manager4findEj.exit.i.preheader, label %bb.u

_ZN4lean13equiv_manager4findEj.exit.i.preheader:  ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  br label %_ZN4lean13equiv_manager4findEj.exit.i

_ZN4lean13equiv_manager4findEj.exit.i:            ; preds = %_ZN4lean13equiv_manager4findEj.exit.i.preheader, %_ZN4lean13equiv_manager4findEj.exit.i
  %.07.i20.i = phi i32 [ %i.er, %_ZN4lean13equiv_manager4findEj.exit.i ], [ %.07.i61, %_ZN4lean13equiv_manager4findEj.exit.i.preheader ] ; 4 uses
  %i.ep = zext i32 %.07.i20.i to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !14 ; 2 uses
  %.not.i21.i = icmp eq i32 %i.er, %.07.i20.i
  br i1 %.not.i21.i, label %_ZN4lean13equiv_manager4findEj.exit22.i, label %_ZN4lean13equiv_manager4findEj.exit.i

_ZN4lean13equiv_manager4findEj.exit22.i:          ; preds = %_ZN4lean13equiv_manager4findEj.exit.i
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ep ; 2 uses
  %.not.i70 = icmp eq i32 %.07.i.i, %.07.i20.i
  br i1 %.not.i70, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4lean13equiv_manager4findEj.exit22.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16 ; 2 uses
  %i.ex = icmp ult i32 %i.eu, %i.ew
  br i1 %i.ex, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %.07.i20.i, ptr %i.eo, align 4, !tbaa !14
  br label %_ZN4leaneqERKNS_3natES2_.exit

bb.x:                                             ; preds = %bb.v
  %i.ey = icmp ugt i32 %i.eu, %i.ew
  store i32 %.07.i.i, ptr %i.es, align 4, !tbaa !14
  br i1 %i.ey, label %_ZN4leaneqERKNS_3natES2_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = add i32 %i.eu, 1
  store i32 %i.ez, ptr %i.et, align 4, !tbaa !16
  br label %_ZN4leaneqERKNS_3natES2_.exit

_ZN4leaneqERKNS_3natES2_.exit:                    ; preds = %bb.m, %bb.r, %bb.s, %bb.p, %bb.o, %bb.n, %bb.k, %bb.y, %bb.x, %bb.w, %_ZN4lean13equiv_manager4findEj.exit22.i, %.split80, %.split79, %.split78, %.split77, %.split76, %.split75, %.split74, %.split73, %.split, %.critedge.i.i.i68, %.critedge.i.i.i, %bb.f, %_ZN4lean13equiv_manager4findEj.exit63, %bb.j, %_ZN4leaneqERKNS_3natES2_.exit69, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.c ], [ true, %bb.a ], [ false, %_ZN4leaneqERKNS_3natES2_.exit69 ], [ false, %bb.j ], [ true, %_ZN4lean13equiv_manager4findEj.exit63 ], [ false, %.split80 ], [ %i.ah, %bb.f ], [ %i.ai, %.critedge.i.i.i ], [ true, %bb.y ], [ false, %.critedge.i.i.i68 ], [ false, %.split ], [ false, %.split73 ], [ false, %.split74 ], [ false, %.split75 ], [ false, %.split76 ], [ false, %.split77 ], [ false, %.split78 ], [ false, %.split79 ], [ true, %_ZN4lean13equiv_manager4findEj.exit22.i ], [ true, %bb.w ], [ true, %bb.x ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.m ]
  ret i1 %.1
}

declare void @_ZN4lean12check_systemEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZN4lean7compareINS_5levelEZNS_13equiv_manager13is_equiv_coreERKNS_4exprES5_E3$_0EEbRKNS_8list_refIT_EESB_OT0_"(ptr %.0.val, ptr %.0.val1) unnamed_addr #0 {
bb.a:
  %.not16 = icmp eq ptr %.0.val, inttoptr (i64 1 to ptr)
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.06.018 = phi ptr [ %i.g, %bb.c ], [ %.0.val1, %bb.a ] ; 3 uses
  %.sroa.010.017 = phi ptr [ %i.e, %bb.c ], [ %.0.val, %bb.a ] ; 2 uses
  %.not14 = icmp eq ptr %.sroa.06.018, inttoptr (i64 1 to ptr)
  br i1 %.not14, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.c = tail call noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.c, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %.not = icmp eq ptr %i.e, inttoptr (i64 1 to ptr)
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.sroa.06.0.lcssa = phi ptr [ %.0.val1, %bb.a ], [ %i.g, %bb.c ]
  %i.h = icmp eq ptr %.sroa.06.0.lcssa, inttoptr (i64 1 to ptr)
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.b, %._crit_edge
  %.0 = phi i1 [ %i.h, %._crit_edge ], [ false, %bb.b ], [ false, %.lr.ph ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4leaneqERKNS_5levelES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4leaneqERKNS_7literalES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4lean13equiv_manager8is_equivERKNS_4exprES3_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %3 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !79, !range !60, !noundef !61 ; 2 uses
  store i8 %i.a, ptr %i.b, align 8, !tbaa !79
  %i.d = invoke noundef zeroext i1 @_ZN4lean13equiv_manager13is_equiv_coreERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.b, align 8, !tbaa !79
  ret i1 %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store i8 %i.c, ptr %i.b, align 8, !tbaa !79
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean13equiv_manager9add_equivERKNS_4exprES3_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4lean13equiv_manager7to_nodeERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = tail call noundef i32 @_ZN4lean13equiv_manager7to_nodeERKNS_4exprE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i.i = phi i32 [ %i.a, %bb.a ], [ %i.f, %bb.b ] ; 4 uses
  %i.d = zext i32 %.07.i.i to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, %.07.i.i
  br i1 %.not.i.i, label %_ZN4lean13equiv_manager4findEj.exit.i.preheader, label %bb.b

_ZN4lean13equiv_manager4findEj.exit.i.preheader:  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  br label %_ZN4lean13equiv_manager4findEj.exit.i

_ZN4lean13equiv_manager4findEj.exit.i:            ; preds = %_ZN4lean13equiv_manager4findEj.exit.i.preheader, %_ZN4lean13equiv_manager4findEj.exit.i
  %.07.i20.i = phi i32 [ %i.j, %_ZN4lean13equiv_manager4findEj.exit.i ], [ %i.b, %_ZN4lean13equiv_manager4findEj.exit.i.preheader ] ; 4 uses
  %i.h = zext i32 %.07.i20.i to i64               ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %.not.i21.i = icmp eq i32 %i.j, %.07.i20.i
  br i1 %.not.i21.i, label %_ZN4lean13equiv_manager4findEj.exit22.i, label %_ZN4lean13equiv_manager4findEj.exit.i

_ZN4lean13equiv_manager4findEj.exit22.i:          ; preds = %_ZN4lean13equiv_manager4findEj.exit.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.h ; 2 uses
  %.not.i = icmp eq i32 %.07.i.i, %.07.i20.i
  br i1 %.not.i, label %_ZN4lean13equiv_manager5mergeEjj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4lean13equiv_manager4findEj.exit22.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = icmp ult i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %.07.i20.i, ptr %i.g, align 4, !tbaa !14
  br label %_ZN4lean13equiv_manager5mergeEjj.exit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp ugt i32 %i.m, %i.o
  store i32 %.07.i.i, ptr %i.k, align 4, !tbaa !14
  br i1 %i.q, label %_ZN4lean13equiv_manager5mergeEjj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.l, align 4, !tbaa !16
  br label %_ZN4lean13equiv_manager5mergeEjj.exit

_ZN4lean13equiv_manager5mergeEjj.exit:            ; preds = %_ZN4lean13equiv_manager4findEj.exit22.i, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @lean_nat_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean19unreachable_reachedD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4lean19unreachable_reached4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret ptr @.str.2
}

declare zeroext i8 @lean_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4lean8is_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_jEEEES2_INS7_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"struct.std::_Hashtable<lean::expr, std::pair<const lean::expr, unsigned int>, mi_stl_allocator<std::pair<const lean::expr, unsigned int>>, std::__detail::_Select1st, std::equal_to<lean::expr>, lean::expr_hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %0, ptr %2, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = tail call noalias noundef ptr @mi_new_n(i64 noundef 1, i64 noundef 32) ; 12 uses
  store ptr null, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !29
  store ptr inttoptr (i64 1 to ptr), ptr %1, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !84
  store i32 %i.h, ptr %i.f, align 8, !tbaa !38
  store ptr %i.c, ptr %i.b, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %.not.not = icmp eq i64 %i.j, 0
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit, %bb.b
  %.sroa.036.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.036.0, %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit ]
  %.sroa.036.0 = load ptr, ptr %.sroa.036.0.in, align 8, !tbaa !26 ; 4 uses
  %i.l = icmp eq ptr %.sroa.036.0, null
  br i1 %i.l, label %.loopexit.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 8
  %i.n = invoke noundef zeroext i1 @_ZN4lean8is_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit unwind label %bb.e

_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit: ; preds = %bb.d
  br i1 %i.n, label %.loopexit48, label %bb.c, !llvm.loop !86

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.loopexit:                               ; preds = %bb.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !29
  %.pre57 = load i64, ptr %i.i, align 8, !tbaa !17
  %i.p = icmp eq i64 %.pre57, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.not = phi i1 [ %i.p, %.loopexit.loopexit ], [ false, %bb.a ]
  %i.q = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val.i.i.i.i = load i32, ptr %i.r, align 4
  %i.s = lshr i32 %.val.i.i.i.i, 13
  %i.t = and i32 %i.s, 2040
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31
  %i.y = and i64 %i.x, 4294967295                 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ab = urem i64 %i.y, %i.aa                    ; 3 uses
  br i1 %.not, label %.critedge27, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %.critedge27, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ag = phi i64 [ %.pre.i.i, %bb.g ], [ %i.an, %bb.i ]
  %.015.i.i = phi ptr [ %i.ae, %bb.g ], [ %.0.i.i, %bb.i ]
  %.0.i.i = phi ptr [ %i.af, %bb.g ], [ %i.ak, %bb.i ] ; 3 uses
  %i.ah = icmp eq i64 %i.y, %i.ag
  br i1 %i.ah, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.aj = invoke noundef zeroext i1 @_ZN4lean8is_equalERKNS_4exprES2_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i
  br i1 %i.aj, label %_ZNKSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i: ; preds = %.noexc, %bb.h
  %i.ak = load ptr, ptr %.0.i.i, align 8, !tbaa !26 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ak, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i
  %i.al = load i64, ptr %i.z, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %i.ao = urem i64 %i.an, %i.al
  %.not19.i.i = icmp eq i64 %i.ao, %i.ab
  br i1 %.not19.i.i, label %bb.h, label %.critedge27, !llvm.loop !37

_ZNKSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %.noexc
  %i.ap = load ptr, ptr %.015.i.i, align 8, !tbaa !26 ; 2 uses
  %.not22 = icmp eq ptr %i.ap, null
  br i1 %.not22, label %.critedge27, label %.loopexit48

bb.j:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.critedge27:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i, %bb.i, %bb.f, %_ZNKSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !87
  store i64 %i.at, ptr %i.a, align 8, !tbaa !31
  %i.au = load i64, ptr %i.z, align 8, !tbaa !32
  %i.av = load i64, ptr %i.i, align 8, !tbaa !17
  %i.aw = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.au, i64 noundef %i.av, i64 noundef 1)
          to label %.noexc30 unwind label %bb.q   ; 2 uses

.noexc30:                                         ; preds = %.critedge27
  %i.ax = extractvalue { i8, i64 } %i.aw, 0
  %i.ay = trunc i8 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc30
  %i.az = extractvalue { i8, i64 } %i.aw, 1
  invoke void @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc31 unwind label %bb.q

.noexc31:                                         ; preds = %bb.k
  %i.ba = load i64, ptr %i.z, align 8, !tbaa !32
  %i.bb = urem i64 %i.y, %i.ba
  br label %bb.l

bb.l:                                             ; preds = %.noexc31, %.noexc30
  %.0.i28 = phi i64 [ %i.bb, %.noexc31 ], [ %i.ab, %.noexc30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.y, ptr %i.bc, align 8, !tbaa !35
  %i.bd = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.0.i28 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !26
  store ptr %i.bg, ptr %i.c, align 8, !tbaa !26
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !34
  store ptr %i.c, ptr %i.bh, align 8, !tbaa !26
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !88 ; 3 uses
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !26
  store ptr %i.c, ptr %i.bi, align 8, !tbaa !88
  %.not11.i.i = icmp eq ptr %i.bj, null
  br i1 %.not11.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !35
  %i.bn = urem i64 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn
  store ptr %i.c, ptr %i.bo, align 8, !tbaa !34
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !34
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.p
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !17
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.i, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.q:                                             ; preds = %bb.k, %.critedge27
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit48:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit, %_ZNKSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %.sroa.040.0.ph = phi ptr [ %i.ap, %_ZNKSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %.sroa.036.0, %_ZNKSt8__detail15_Hashtable_baseIN4lean4exprESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ENS1_9expr_hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit ]
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, 1
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.r, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i

bb.r:                                             ; preds = %.loopexit48
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !48 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.s, label %bb.t, !prof !50

bb.s:                                             ; preds = %bb.r
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !48
  br label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i.i.i.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i1.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.bs)
          to label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  tail call void @__clang_call_terminate(ptr %i.bz) #22
  unreachable

_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i: ; preds = %bb.u, %bb.t, %bb.s, %.loopexit48
  tail call void @mi_free(ptr noundef nonnull %i.c) #21
  br label %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i
  %.sroa.4.047 = phi i8 [ 1, %.thread ], [ 0, %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i ]
  %.sroa.040.046 = phi ptr [ %i.c, %.thread ], [ %.sroa.040.0.ph, %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.040.046, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.047, 1
  ret { ptr, i8 } %.fca.1.insert

bb.w:                                             ; preds = %bb.q, %bb.j, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.aq, %bb.j ], [ %i.br, %bb.q ]
  call void @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 4, !tbaa !48   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !50

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !48
  br label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.d)
          to label %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @mi_free(ptr noundef nonnull %i.b) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEE18_M_deallocate_nodeEPS8_.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noalias ptr @mi_new_n(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @mi_free(ptr noundef) local_unnamed_addr #6

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !89

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !90
  br label %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef ptr @mi_new_n(i64 noundef %1, i64 noundef 8)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.d = shl i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.d, i1 false)
  br label %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc, %bb.b
  %.0.i.i = phi ptr [ %i.b, %bb.b ], [ %i.c, %.noexc ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !88
  %.not29.i = icmp eq ptr %i.f, null
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.g
  %.031.i = phi i64 [ %.1.i, %bb.g ], [ 0, %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.02530.i = phi ptr [ %i.g, %bb.g ], [ %i.f, %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %i.g = load ptr, ptr %.02530.i, align 8, !tbaa !26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02530.i, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !35
  %i.j = urem i64 %i.i, %1                        ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.not27.i = icmp eq ptr %i.l, null
  br i1 %.not27.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !88
  store ptr %i.m, ptr %.02530.i, align 8, !tbaa !26
  store ptr %.02530.i, ptr %i.e, align 8, !tbaa !88
  store ptr %i.e, ptr %i.k, align 8, !tbaa !34
  %i.n = load ptr, ptr %.02530.i, align 8, !tbaa !26
  %.not28.i = icmp eq ptr %i.n, null
  br i1 %.not28.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %.031.i
  store ptr %.02530.i, ptr %i.o, align 8, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !26
  store ptr %i.p, ptr %.02530.i, align 8, !tbaa !26
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !34
  store ptr %.02530.i, ptr %i.q, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1.i = phi i64 [ %.031.i, %bb.f ], [ %i.j, %bb.e ], [ %i.j, %bb.d ]
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !91

._crit_edge.i:                                    ; preds = %bb.g, %_ZNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  tail call void @mi_free(ptr noundef %i.r) #21
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #21 ; 0 uses
  %i.x = load i64, ptr %2, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !87
  invoke void @__cxa_rethrow() #18
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %bb.h, %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !32
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !33
  ret void

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.z

bb.m:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #22
  unreachable

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { noreturn }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSNSt12_Vector_baseIN4lean13equiv_manager4nodeESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 _ZTSN4lean13equiv_manager4nodeE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!9, !10, i64 16}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN4lean13equiv_manager4nodeE", !5, i64 0, !5, i64 4}
!16 = !{!15, !5, i64 4}
!17 = !{!18, !21, i64 24}
!18 = !{!"_ZTSSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE", !19, i64 0, !21, i64 8, !22, i64 16, !21, i64 24, !24, i64 32, !23, i64 48}
!19 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !20, i64 0}
!20 = !{!"any p2 pointer", !11, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !23, i64 0}
!23 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!24 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !25, i64 0, !21, i64 8}
!25 = !{!"float", !6, i64 0}
!26 = !{!22, !23, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !11, i64 0}
!30 = !{!"_ZTSN4lean10object_refE", !11, i64 0}
!31 = !{!21, !21, i64 0}
!32 = !{!18, !21, i64 8}
!33 = !{!18, !19, i64 0}
!34 = !{!23, !23, i64 0}
!35 = !{!36, !21, i64 0}
!36 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !21, i64 0}
!37 = distinct !{!37, !28}
!38 = !{!39, !5, i64 8}
!39 = !{!"_ZTSSt4pairIKN4lean4exprEjE", !40, i64 0, !5, i64 8}
!40 = !{!"_ZTSN4lean4exprE", !30, i64 0}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_: argument 0"}
!43 = distinct !{!43, !"_ZN4lean7mk_pairINS_4exprEjEESt4pairIT_T0_ERKS3_RKS4_"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZSt9make_pairIRKN4lean4exprERKjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_: argument 0"}
!46 = distinct !{!46, !"_ZSt9make_pairIRKN4lean4exprERKjESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_"}
!47 = !{!45, !42}
!48 = !{!49, !5, i64 0}
!49 = !{!"_ZTS11lean_object", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 7}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = !{!52, !5, i64 8}
!52 = !{!"_ZTSSt4pairIN4lean4exprEjE", !40, i64 0, !5, i64 8}
!53 = !{!54, !59, i64 80}
!54 = !{!"_ZTSN4lean13equiv_managerE", !55, i64 0, !58, i64 24, !59, i64 80}
!55 = !{!"_ZTSSt6vectorIN4lean13equiv_manager4nodeESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN4lean13equiv_manager4nodeESaIS2_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN4lean13equiv_manager4nodeESaIS2_EE12_Vector_implE", !9, i64 0}
!58 = !{!"_ZTSSt13unordered_mapIN4lean4exprEjNS0_9expr_hashESt8equal_toIS1_E16mi_stl_allocatorISt4pairIKS1_jEEE", !18, i64 0}
!59 = !{!"bool", !6, i64 0}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!"branch_weights", i32 4001, i32 4000000}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !65, i64 0}
!65 = !{!"p1 omnipotent char", !11, i64 0}
!66 = !{!67, !21, i64 8}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !64, i64 0, !21, i64 8, !6, i64 16}
!68 = !{!6, !6, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !7, i64 0}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNK4lean8list_refINS_5levelEE5beginEv: argument 0"}
!73 = distinct !{!73, !"_ZNK4lean8list_refINS_5levelEE5beginEv"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNK4lean8list_refINS_5levelEE5beginEv: argument 0"}
!76 = distinct !{!76, !"_ZNK4lean8list_refINS_5levelEE5beginEv"}
!77 = !{!11, !11, i64 0}
!78 = distinct !{!78, !28}
!79 = !{!59, !59, i64 0}
!80 = !{!81, !82, i64 0}
!81 = !{!"_ZTSNSt10_HashtableIN4lean4exprESt4pairIKS1_jE16mi_stl_allocatorIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_9expr_hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !82, i64 0, !83, i64 8}
!82 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocI16mi_stl_allocatorINS_10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEEEEE", !11, i64 0}
!83 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKN4lean4exprEjELb1EEE", !11, i64 0}
!84 = !{!5, !5, i64 0}
!85 = !{!81, !83, i64 8}
!86 = distinct !{!86, !28}
!87 = !{!24, !21, i64 8}
!88 = !{!18, !23, i64 16}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = !{!18, !23, i64 48}
!91 = distinct !{!91, !28}
end_hunk_0
