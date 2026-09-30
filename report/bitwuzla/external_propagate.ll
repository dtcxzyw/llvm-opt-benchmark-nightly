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
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 324
  %.pre25 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !161
  %i.y = icmp eq i32 %.pre25, 0                   ; 2 uses
  br i1 %.not13, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !160  ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = sext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !162
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.c
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !164
  %.not9.i = icmp eq i32 %i.af, 0
  %spec.select.i = select i1 %.not9.i, i32 %i.ab, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ 0, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %i.ag = icmp slt i32 %1, 0
  %i.ah = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.ag, i32 %i.ah, i32 %.0.i
  %.not15 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not15, label %bb.l, label %.thread35

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !162
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.c
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !164
  %i.am = add nsw i32 %i.al, -1
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.h
  br i1 %i.y, label %.thread, label %.thread35

.thread35:                                        ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !160 ; 2 uses
  %.not.i18 = icmp eq i8 %i.ao, 0
  br i1 %.not.i18, label %_ZN7CaDiCaL8Internal5fixedEi.exit23, label %bb.n

bb.n:                                             ; preds = %.thread35
  %i.ap = sext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.c
  %i.at = load i32, ptr %i.as, align 8, !tbaa !164
  %.not9.i19 = icmp eq i32 %i.at, 0
  %spec.select.i20 = select i1 %.not9.i19, i32 %i.ap, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit23

_ZN7CaDiCaL8Internal5fixedEi.exit23:              ; preds = %.thread35, %bb.n
  %.0.i21 = phi i32 [ 0, %.thread35 ], [ %spec.select.i20, %bb.n ] ; 2 uses
  %i.au = icmp slt i32 %1, 0
  %i.av = sub nsw i32 0, %.0.i21
  %spec.select10.i22 = select i1 %i.au, i32 %i.av, i32 %.0.i21
  %.not17 = icmp eq i32 %spec.select10.i22, 0
  br i1 %.not17, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit23, %bb.l
  %.sink = phi i32 [ %i.am, %bb.l ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit23 ]
  call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.sink)
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.i, %bb.m, %_ZN7CaDiCaL8Internal5fixedEi.exit23
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !160   ; 4 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sext i8 %i.f to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !164
  %.not9.i = icmp eq i32 %i.j, 0
  %spec.select.i = select i1 %.not9.i, i32 %2, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.b ] ; 2 uses
  %i.k = icmp slt i32 %1, 0                       ; 2 uses
  %3 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.k, i32 %3, i32 %.0.i
  %.not = icmp eq i32 %spec.select10.i, 0
  br i1 %.not, label %4, label %bb.d

4:                                                ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 324
  %6 = load i32, ptr %5, align 4, !tbaa !161
  %.not7 = icmp eq i32 %6, 0
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %4
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !159
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %.pre16 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !160
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %4, %_ZN7CaDiCaL8Internal5fixedEi.exit
  %7 = phi i8 [ %.pre16, %bb.c ], [ %i.f, %4 ], [ %i.f, %_ZN7CaDiCaL8Internal5fixedEi.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.d ; 2 uses
  %.not.i10 = icmp eq i8 %7, 0
  br i1 %.not.i10, label %_ZN7CaDiCaL8Internal5fixedEi.exit15, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = sext i8 %7 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !162
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.d
  %i.s = load i32, ptr %i.r, align 8, !tbaa !164
  %.not9.i11 = icmp eq i32 %i.s, 0
  %spec.select.i12 = select i1 %.not9.i11, i32 %i.o, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit15

_ZN7CaDiCaL8Internal5fixedEi.exit15:              ; preds = %bb.d, %bb.e
  %.0.i13 = phi i32 [ 0, %bb.d ], [ %spec.select.i12, %bb.e ] ; 2 uses
  %i.t = sub nsw i32 0, %.0.i13
  %spec.select10.i14 = select i1 %i.k, i32 %i.t, i32 %.0.i13
  %.not8 = icmp eq i32 %spec.select10.i14, 0
  br i1 %.not8, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit15
  %i.u = load i32, ptr %i.n, align 4, !tbaa !14   ; 2 uses
  %.not9 = icmp eq i32 %i.u, -1
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i32 %i.u, -1
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit15, %bb.g
  %.sink = phi i32 [ %i.v, %bb.g ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit15 ]
  store i32 %.sink, ptr %i.n, align 4, !tbaa !14
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
end_hunk_0
