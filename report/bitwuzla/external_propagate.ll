Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/external_propagate?download=true
inline.NumInlined: 553
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, std::vector<int>>, std::allocator<std::pair<const unsigned long, std::vector<int>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

$_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm = comdat any

$_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev = comdat any

$_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.c = zext nneg i32 %i.b to i64                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !13   ; 6 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 4 uses
  %.not = icmp sgt i64 %i.k, %i.c
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.c, 1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !14
  %.not24 = icmp ugt i64 %i.k, %i.c
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.l, %i.k
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.f, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !13
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp ult i64 %i.l, %i.k
  br i1 %i.n, label %bb.e, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.o, ptr %i.e, align 8, !tbaa !12
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %bb.a
  %i.p = phi ptr [ %.pre, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.g, %bb.a ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.c ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14   ; 2 uses
  %.not12 = icmp eq i32 %i.r, -1
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !159  ; 3 uses
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !160
  %.not13 = icmp eq i8 %i.x, 0
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %.pre25 = load i32, ptr %.phi.trans.insert.a, align 4, !tbaa !161
  %i.y = icmp eq i32 %.pre25, 0                   ; 2 uses
  br i1 %.not13, label %bb.l, label %2

2:                                                ; preds = %bb.h
  br i1 %i.y, label %.thread, label %bb.i

bb.i:                                             ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %4 = load i8, ptr %3, align 1, !tbaa !160       ; 2 uses
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %5 = sext i8 %4 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !162
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.c
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !164
  %.not9.i = icmp eq i32 %i.ac, 0
  %spec.select.i = select i1 %.not9.i, i32 %5, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ 0, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %6 = icmp slt i32 %1, 0
  %7 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %6, i32 %7, i32 %.0.i
  %.not15 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not15, label %bb.k, label %.thread35

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  %10 = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.c
  %11 = load i32, ptr %10, align 8, !tbaa !164
  %i.ad = add nsw i32 %11, -1
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread, label %.thread35

.thread35:                                        ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !160 ; 2 uses
  %.not.i18 = icmp eq i8 %i.af, 0
  br i1 %.not.i18, label %_ZN7CaDiCaL8Internal5fixedEi.exit23, label %bb.m

bb.m:                                             ; preds = %.thread35
  %12 = sext i8 %i.af to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !162
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.c
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !164
  %.not9.i19 = icmp eq i32 %i.aj, 0
  %spec.select.i20 = select i1 %.not9.i19, i32 %12, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit23

_ZN7CaDiCaL8Internal5fixedEi.exit23:              ; preds = %.thread35, %bb.m
  %.0.i21 = phi i32 [ 0, %.thread35 ], [ %spec.select.i20, %bb.m ] ; 2 uses
  %13 = icmp slt i32 %1, 0
  %14 = sub nsw i32 0, %.0.i21
  %spec.select10.i22 = select i1 %13, i32 %14, i32 %.0.i21
  %.not17 = icmp eq i32 %spec.select10.i22, 0
  br i1 %.not17, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit23, %bb.k
  %.sink = phi i32 [ %i.ad, %bb.k ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit23 ]
  call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %2, %bb.l, %_ZN7CaDiCaL8Internal5fixedEi.exit23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal19remove_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.d = zext nneg i32 %i.a to i64                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !160   ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !164
  %.not9.i = icmp eq i32 %i.j, 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ false, %bb.a ], [ %.not9.i, %bb.b ]
  %2 = icmp slt i32 %1, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.l = load i32, ptr %i.k, align 4
  %.not7 = icmp eq i32 %i.l, 0
  %or.cond = select i1 %.0.i, i1 true, i1 %.not7
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !159
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %.pre17 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !160
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.m = phi i8 [ %.pre17, %bb.c ], [ %i.f, %_ZN7CaDiCaL8Internal5fixedEi.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.d ; 2 uses
  %.not.i10 = icmp eq i8 %i.m, 0
  br i1 %.not.i10, label %_ZN7CaDiCaL8Internal5fixedEi.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %3 = sext i8 %i.m to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.d
  %i.t = load i32, ptr %i.s, align 8, !tbaa !164
  %.not9.i11 = icmp eq i32 %i.t, 0
  %spec.select.i12 = select i1 %.not9.i11, i32 %3, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit15

_ZN7CaDiCaL8Internal5fixedEi.exit15:              ; preds = %bb.d, %bb.e
  %.0.i13 = phi i32 [ 0, %bb.d ], [ %spec.select.i12, %bb.e ] ; 2 uses
  %4 = sub nsw i32 0, %.0.i13
  %spec.select10.i14 = select i1 %2, i32 %4, i32 %.0.i13
  %.not8 = icmp eq i32 %spec.select10.i14, 0
  br i1 %.not8, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit15
  %i.u = load i32, ptr %i.p, align 4, !tbaa !14   ; 2 uses
  %.not9 = icmp eq i32 %i.u, -1
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i32 %i.u, -1
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit15, %bb.g
  %.sink = phi i32 [ %i.v, %bb.g ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit15 ]
  store i32 %.sink, ptr %i.p, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7CaDiCaL8Internal8observedEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  %i.g = icmp ne i32 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal19set_tainted_literalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.b = load i32, ptr %i.a, align 4, !tbaa !226
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227, !nonnull !165, !align !228
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %.not1314 = icmp eq i32 %i.e, 0
  br i1 %.not1314, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 996 ; 2 uses
  %.promoted = load i32, ptr %i.l, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.m = phi i32 [ %.promoted, %.lr.ph ], [ %i.ab, %bb.g ] ; 5 uses
  %.sroa.010.015 = phi i32 [ 1, %.lr.ph ], [ %i.ac, %bb.g ] ; 6 uses
  %i.n = sext i32 %.sroa.010.015 to i64
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !160
  %.not7 = icmp eq i8 %i.p, 0
  br i1 %.not7, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.010.015, i1 true)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !166
  %.not8 = icmp eq ptr %i.u, %i.k
  br i1 %.not8, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not9 = icmp eq i32 %i.m, 0
  br i1 %.not9, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.s, align 8, !tbaa !164
  %i.w = tail call noundef i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !164
  %i.aa = icmp slt i32 %i.v, %i.z
  br i1 %i.aa, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  store i32 %.sroa.010.015, ptr %i.l, align 4, !tbaa !229
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.c
  %i.ab = phi i32 [ %i.m, %bb.f ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.sroa.010.015, %.sink.split ]
  %i.ac = add i32 %.sroa.010.015, 1
  %.not13 = icmp eq i32 %.sroa.010.015, %i.e
  br i1 %.not13, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !167, !range !168, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  %.not2 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !168
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not2, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !170
  %.not = icmp eq ptr %i.i, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.l = load i32, ptr %i.k, align 4
  %.not1 = icmp eq i32 %i.l, 0
  %or.cond6 = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !161
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store i64 0, ptr %i.k, align 8, !tbaa !171
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.m = load i8, ptr %i.l, align 2, !tbaa !167, !range !168, !noundef !165
  %i.n = trunc nuw i8 %i.m to i1
  %.not.i = xor i1 %i.n, true
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !168
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.s = load i8, ptr %i.r, align 2, !range !168
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.t
  br i1 %or.cond5.i, label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !172
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 384
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !191  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !193
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(10) %i.x, i64 noundef 0), !inline_history !233
  br label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit

_ZN7CaDiCaL8Internal16notify_backtrackEm.exit:    ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !171 ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.h
  br i1 %i.ad, label %.lr.ph54, label %_ZNSt6vectorIiSaIiEE5clearEv.exit36

.lr.ph54:                                         ; preds = %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph54, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ak = phi ptr [ null, %.lr.ph54 ], [ %i.cs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.al = phi ptr [ null, %.lr.ph54 ], [ %i.ct, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.am = phi ptr [ null, %.lr.ph54 ], [ %i.cu, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.an = phi i64 [ %i.ac, %.lr.ph54 ], [ %i.cv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.02053 = phi i32 [ 0, %.lr.ph54 ], [ %.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.02352 = phi i32 [ 0, %.lr.ph54 ], [ %spec.select, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ao = add nuw i64 %i.an, 1
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !171
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14 ; 4 uses
  %.not28 = icmp eq i32 %i.ar, 0
  br i1 %.not28, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal19renotify_full_trailEv:bb.a
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store i32 %spec.select.i, ptr %i.co, align 4, !tbaa !14
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cn, ptr align 4 %i.bp, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %.noexc33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 3 uses
  %.not.i17.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.cn, ptr %1, align 8, !tbaa !170
  store ptr %i.cq, ptr %i.af, align 8, !tbaa !169
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.cr, ptr %i.aj, align 8, !tbaa !195
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.k
  %i.cs = phi ptr [ %i.cc, %bb.m ], [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bo, %bb.k ] ; 2 uses
  %i.ct = phi ptr [ %i.bp, %bb.m ], [ %i.cn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bp, %bb.k ] ; 3 uses
  %i.cu = phi ptr [ %i.cc, %bb.m ], [ %i.cq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bq, %bb.k ]
  %i.cv = load i64, ptr %i.ab, align 8, !tbaa !171 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.h
  br i1 %i.cw, label %bb.d, label %._crit_edge55

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.t, %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.r, %bb.o
  %lpad.loopexit.split-lp105 = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %1, align 8, !tbaa !170   ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIiSaIiEED2Ev.exit39, label %bb.w

._crit_edge55:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cy = icmp eq ptr %i.cs, %i.ct
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.cy, label %_ZNSt6vectorIiSaIiEE5clearEv.exit36, label %bb.r

bb.r:                                             ; preds = %._crit_edge55
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !172
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 384
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !191 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !193
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr noundef nonnull align 8 dereferenceable(10) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %.pre = load ptr, ptr %1, align 8, !tbaa !170   ; 4 uses
  %.pre68 = load ptr, ptr %i.cz, align 8, !tbaa !169
  %i.dh = icmp eq ptr %.pre68, %.pre
  br i1 %i.dh, label %_ZNSt6vectorIiSaIiEE5clearEv.exit36, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35:      ; preds = %bb.s
  store ptr %.pre, ptr %i.cz, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit36

_ZNSt6vectorIiSaIiEE5clearEv.exit36:              ; preds = %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit, %._crit_edge55, %bb.s, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35
  %i.di = phi ptr [ %.pre, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35 ], [ %.pre, %bb.s ], [ %i.ct, %._crit_edge55 ], [ null, %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit ]
  %.020.lcssa8791 = phi i32 [ %.2, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35 ], [ %.2, %bb.s ], [ %.2, %._crit_edge55 ], [ 0, %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit ] ; 2 uses
  %i.dj = load i32, ptr %i.i, align 4, !tbaa !161
  %i.dk = icmp sgt i32 %i.dj, %.020.lcssa8791
  br i1 %i.dk, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit36
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 7256
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph58, %bb.u
  %.357 = phi i32 [ %.020.lcssa8791, %.lr.ph58 ], [ %i.ds, %bb.u ]
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !172
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 384
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !191 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !193
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(10) %i.do)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.ds = add nuw nsw i32 %.357, 1                ; 2 uses
  %i.dt = load i32, ptr %i.i, align 4, !tbaa !161
  %i.du = icmp sgt i32 %i.dt, %i.ds
  br i1 %i.du, label %bb.t, label %._crit_edge59.loopexit, !llvm.loop !232

._crit_edge59.loopexit:                           ; preds = %bb.u
  %.pre69 = load ptr, ptr %1, align 8, !tbaa !170
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %_ZNSt6vectorIiSaIiEE5clearEv.exit36
  %i.dv = phi ptr [ %.pre69, %._crit_edge59.loopexit ], [ %i.di, %_ZNSt6vectorIiSaIiEE5clearEv.exit36 ] ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge59
  call void @_ZdlPv(ptr noundef nonnull %i.dv) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge59, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit39

_ZNSt6vectorIiSaIiEED2Ev.exit39:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %lpad.loopexit.split-lp105
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal33renotify_trail_after_local_searchEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !167, !range !168, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  %.not1 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !168
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not1, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !170
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal16notify_backtrackEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !167, !range !168, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !168
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !168
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal11is_decisionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !161
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !159  ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !160   ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = sext i8 %i.h to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.f
  %i.l = load i32, ptr %i.k, align 8, !tbaa !164
  %.not9.i = icmp eq i32 %i.l, 0
  %spec.select.i = select i1 %.not9.i, i32 %2, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %spec.select.i, %bb.c ] ; 2 uses
  %3 = icmp slt i32 %1, 0
  %4 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %3, i32 %4, i32 %.0.i
  %.not7 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !160
  %.not8 = icmp eq i8 %i.o, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.f ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !164
  %.not9 = icmp ne i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.not10 = icmp eq ptr %i.u, null
  %or.cond = select i1 %.not9, i1 %.not10, i1 false
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.d
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %_ZN7CaDiCaL8Internal5fixedEi.exit ], [ %or.cond, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal15force_backtrackEm(ptr noundef nonnull align 8 dereferenceable(7288) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !196, !range !168, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.e = load i32, ptr %i.d, align 4, !tbaa !161  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = zext nneg i32 %i.e to i64
  %.not = icmp ult i64 %1, %i.g
  %or.cond = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %1 to i32
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal18external_propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4024 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4016 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 994 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4040 ; 4 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not3393 = icmp eq ptr %i.v, null
  br i1 %.not3393, label %.lr.ph94, label %.critedge

.thread68.loopexit:                               ; preds = %bb.an
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not33 = icmp eq ptr %i.w, null
  br i1 %.not33, label %.lr.ph94, label %.critedge, !llvm.loop !234

.lr.ph94:                                         ; preds = %bb.a, %.thread68.loopexit
  %i.x = load i8, ptr %i.e, align 2, !tbaa !167, !range !168, !noundef !165
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph94
  %i.z = load i8, ptr %i.f, align 8, !tbaa !235, !range !168, !noundef !165
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.g, align 2, !tbaa !236, !range !168, !noundef !165
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !191 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(10) %i.af)
  %i.ak = load <2 x i64>, ptr %i.i, align 8, !tbaa !199
  %i.al = add nsw <2 x i64> %i.ak, splat (i64 1)
  store <2 x i64> %i.al, ptr %i.i, align 8, !tbaa !199
  br label %bb.e

bb.e:                                             ; preds = %bb.ac, %bb.d
  %.027 = phi i32 [ %i.aj, %bb.d ], [ %.128, %bb.ac ] ; 6 uses
  %.not34 = icmp eq i32 %.027, 0
  br i1 %.not34, label %.thread64, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !172
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = tail call i32 @llvm.abs.i32(i32 %.027, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !170
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14 ; 2 uses
  %i.at = icmp slt i32 %.027, 0
  %i.au = sub nsw i32 0, %i.as
  %spec.select = select i1 %i.at, i32 %i.au, i32 %i.as ; 2 uses
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !159
  %i.aw = sext i32 %spec.select to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !160 ; 2 uses
  %.not35 = icmp eq i8 %i.ay, 0
  br i1 %.not35, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.a, align 4, !tbaa !161
  %.not36 = icmp eq i32 %i.az, 0
  br i1 %.not36, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.h, %bb.q
  %.lcssa.sink = phi ptr [ %i.bv, %bb.q ], [ %i.bc, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.ba, %bb.h ]
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa.sink) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.br, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g
  %i.bb = load <2 x ptr>, ptr %i.l, align 8, !tbaa !200
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !170 ; 2 uses
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !195
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.be = load i64, ptr %i.n, align 8, !tbaa !201
  %i.bf = add nsw i64 %i.be, 1
  store i64 %i.bf, ptr %i.n, align 8, !tbaa !201
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.027, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.l, align 8, !tbaa !170 ; 2 uses
  store <2 x ptr> %i.bb, ptr %i.l, align 8, !tbaa !200
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !195
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPv(ptr noundef nonnull %i.bg) #20
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

bb.l:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal22search_assign_externalEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %spec.select)
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit: ; preds = %bb.k, %bb.j, %bb.l
  %i.bh = load i64, ptr %i.s, align 8, !tbaa !237
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.s, align 8, !tbaa !237
  %i.bj = load i8, ptr %i.r, align 4, !tbaa !202, !range !168, !noundef !165
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread64, label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not37 = icmp eq ptr %i.bl, null
  br i1 %.not37, label %bb.n, label %.thread64

bb.n:                                             ; preds = %bb.m
  %i.bm = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  %i.bn = load i8, ptr %i.r, align 4, !tbaa !202, !range !168, !noundef !165
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.thread64, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !198
  %.not38 = icmp eq ptr %i.bp, null
  br i1 %.not38, label %.sink.split, label %.thread64

bb.p:                                             ; preds = %bb.f
  %i.bq = icmp slt i8 %i.ay, 0
  br i1 %i.bq, label %bb.r, label %bb.ab

bb.q:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i53, label %common.resume, label %common.resume.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !161
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !197
  %i.bu = load <2 x ptr>, ptr %i.l, align 8, !tbaa !200
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !170 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL8Internal23external_check_solutionEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.loopexit74

bb.z:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.dv) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit60

_ZNSt6vectorIiSaIiEED2Ev.exit60:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %lpad.loopexit.split-lp116

.loopexit:                                        ; preds = %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt0, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt3
  %i.ec = load i8, ptr %i.p, align 4, !tbaa !202, !range !168, !noundef !165
  %i.ed = trunc nuw i8 %i.ec to i1
  %.pre97 = load ptr, ptr %i.q, align 8, !tbaa !198 ; 4 uses
  br i1 %i.ed, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %.not47 = icmp eq ptr %.pre97, null
  br i1 %.not47, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre97, i64 24
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !14
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.eh = call noundef i32 @llvm.abs.i32(i32 %i.ef, i1 true)
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !162
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !164 ; 2 uses
  %i.em = load i32, ptr %i.k, align 4, !tbaa !161
  %.not48 = icmp eq i32 %i.el, %i.em
  br i1 %.not48, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.el)
  %.pre96 = load ptr, ptr %i.q, align 8, !tbaa !198
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa, %.loopexit
  %i.en = phi ptr [ %.pre97, %bb.ab ], [ %.pre96, %bb.ac ], [ null, %bb.aa ], [ %.pre97, %.loopexit ]
  %.not49 = icmp eq ptr %i.en, null
  br label %.loopexit74

.loopexit74:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.jt1, %bb.ad, %bb.a
  %.338 = phi i1 [ true, %bb.a ], [ %.not49, %bb.ad ], [ true, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt1 ]
  ret i1 %.338
}

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9satisfiedEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External14reset_extendedEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External6extendEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal18connect_propagatorEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !161
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal15notify_decisionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !167, !range !168, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !168
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !168
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(10) %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal12ask_decisionEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !167, !range !168, !noundef !165
  %i.c = trunc nuw i8 %i.b to i1
  %.not16 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !168
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not16, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !168
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond21 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond21, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  store i8 1, ptr %i.l, align 1, !tbaa !196
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !191  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !193
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(10) %i.p) ; 4 uses
  store i8 0, ptr %i.l, align 1, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !206
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !206
  %i.x = load i32, ptr %i.j, align 4, !tbaa !161
  %.not = icmp eq i32 %i.k, %i.x
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 0 uses
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.z = load i32, ptr %i.j, align 4, !tbaa !161
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !169
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !170
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %i.aa
  br i1 %i.aj, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i64 %i.ai, %i.aa
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !169
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !170
  %.not12 = icmp ne ptr %i.an, %i.ao
  %.not13 = icmp eq i32 %i.t, 0
  %or.cond22 = or i1 %.not13, %.not12
  br i1 %or.cond22, label %bb.k, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %.not13.old = icmp eq i32 %i.t, 0
  br i1 %.not13.old, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !172 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 392
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !215
  %i.au = lshr i32 %i.ar, 6
  %.zext = zext nneg i32 %i.au to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.zext
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !199
  %i.az = and i64 %i.ay, %i.ax
  %.not24 = icmp eq i64 %i.az, 0
  br i1 %.not24, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !170
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.as
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14 ; 3 uses
  %i.be = icmp slt i32 %i.t, 0
  %i.bf = sub nsw i32 0, %i.bd
  %spec.select = select i1 %i.be, i32 %i.bf, i32 %i.bd ; 3 uses
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !159 ; 2 uses
  %i.bj = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !160 ; 2 uses
  %.not.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %1 = sext i8 %i.bl to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !162
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bj
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !164
  %.not9.i = icmp eq i32 %i.bp, 0
  %spec.select.i = select i1 %.not9.i, i32 %1, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.h ], [ %spec.select.i, %bb.i ] ; 2 uses
  %2 = icmp slt i32 %spec.select, 0
  %3 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %2, i32 %3, i32 %.0.i
  %.not14 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not14, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.bq = sext i32 %spec.select to i64
  %i.br = getelementptr inbounds i8, ptr %i.bi, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !160
  %.not15 = icmp eq i8 %i.bs, 0
  %spec.select23 = select i1 %.not15, i32 %spec.select, i32 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.c, %bb.f, %bb.g, %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.e ], [ %spec.select23, %bb.j ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal23is_external_forgettableEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.d = load i64, ptr %i.c, align 8, !tbaa !216
  %.not.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !217 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !199
  %i.h = icmp eq i64 %1, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.c, !llvm.loop !258

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.k = load i64, ptr %i.j, align 8, !tbaa !218  ; 2 uses
  %i.l = urem i64 %1, %i.k                        ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !219
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !220  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !217  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !199
  %i.s = icmp eq i64 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i64 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !217 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !199  ; 2 uses
  %i.x = urem i64 %i.w, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.x, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !0

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, !llvm.loop !0

_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %..loopexit_crit_edge21.i.i.i.i
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.c ], [ %i.p, %bb.f ], [ null, %bb.e ], [ %.sroa.06.0.i.i, %bb.d ], [ %i.u, %bb.g ], [ null, %.lr.ph.i.i.i.i ]
  %i.y = icmp ne ptr %.sroa.06.1.i.i, null
  ret i1 %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal33mark_garbage_external_forgettableEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, std::vector<int>>, std::allocator<std::pair<const unsigned long, std::vector<int>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.e = load i64, ptr %i.d, align 8, !tbaa !218  ; 2 uses
  %i.f = urem i64 %1, %i.e                        ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !219
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !220  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !217  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !199
  %i.m = icmp eq i64 %1, %i.l
  br i1 %i.m, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixEOm.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %1, %i.q
  br i1 %i.n, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixEOm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %.020.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ]
  %i.o = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !217 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !199  ; 2 uses
  %i.r = urem i64 %i.q, %i.e
  %.not19.i.i.i.i = icmp eq i64 %i.r, %i.f
  br i1 %.not19.i.i.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !0

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.d
  br label %.loopexit.i.i, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.c, ptr %2, align 8, !tbaa !259
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19 ; 5 uses
  store ptr null, ptr %i.t, align 8, !tbaa !217
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %1, ptr %i.u, align 8, !tbaa !261
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store ptr %i.t, ptr %i.s, align 8, !tbaa !224
  %i.w = invoke ptr @_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 noundef %i.f, i64 noundef %1, ptr noundef nonnull %i.t, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.e

_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixEOm.exit

bb.e:                                             ; preds = %.loopexit.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %i.x

_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEixEOm.exit: ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i
  %.pn.i.i = phi ptr [ %i.w, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.y = load ptr, ptr %.1.i.i, align 8, !tbaa !170
  store i32 0, ptr %i.y, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7CaDiCaL8Internal32check_watched_literal_invariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #7 align 2 {
.loopexit:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 15 uses
end_hunk_2
