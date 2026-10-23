Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_external_propagate?download=true
inline.NumInlined: 551
inline.NumDeleted: 280
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

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

$_ZNSt8__detail9_Map_baseImSt4pairIKmSt6vectorIiSaIiEEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm = comdat any

$_ZNSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
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
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.c, 1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
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
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.e, align 8, !tbaa !12
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.pre = phi ptr [ %.pre.pre, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %bb.a
  %i.p = phi ptr [ %.pre, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.g, %bb.a ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.c ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14   ; 2 uses
  %.not12 = icmp eq i32 %i.r, -1
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !173  ; 3 uses
  %i.v = sext i32 %1 to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !174
  %.not13 = icmp eq i8 %i.x, 0
  %.phi.trans.insert.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.pre25 = load i32, ptr %.phi.trans.insert.a, align 4, !tbaa !175
  %i.y = icmp eq i32 %.pre25, 0                   ; 2 uses
  br i1 %.not13, label %bb.m, label %2

2:                                                ; preds = %bb.i
  br i1 %i.y, label %.thread, label %bb.j

bb.j:                                             ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %4 = load i8, ptr %3, align 1, !tbaa !174       ; 2 uses
  %.not.i = icmp eq i8 %4, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %5 = sext i8 %4 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !176
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.c
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !178
  %.not9.i = icmp eq i32 %i.ac, 0
  %spec.select.i = select i1 %.not9.i, i32 %5, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ 0, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  %6 = icmp slt i32 %1, 0
  %7 = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %6, i32 %7, i32 %.0.i
  %.not15 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not15, label %bb.l, label %.thread35

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 712
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.c
  %11 = load i32, ptr %10, align 8, !tbaa !178
  %i.ad = add nsw i32 %11, -1
  br label %.thread.sink.split

bb.m:                                             ; preds = %bb.i
  br i1 %i.y, label %.thread, label %.thread35

.thread35:                                        ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.c
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !174 ; 2 uses
  %.not.i18 = icmp eq i8 %i.af, 0
  br i1 %.not.i18, label %_ZN7CaDiCaL8Internal5fixedEi.exit23, label %bb.n

bb.n:                                             ; preds = %.thread35
  %12 = sext i8 %i.af to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.c
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !178
  %.not9.i19 = icmp eq i32 %i.aj, 0
  %spec.select.i20 = select i1 %.not9.i19, i32 %12, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit23

_ZN7CaDiCaL8Internal5fixedEi.exit23:              ; preds = %.thread35, %bb.n
  %.0.i21 = phi i32 [ 0, %.thread35 ], [ %spec.select.i20, %bb.n ] ; 2 uses
  %13 = icmp slt i32 %1, 0
  %14 = sub nsw i32 0, %.0.i21
  %spec.select10.i22 = select i1 %13, i32 %14, i32 %.0.i21
  %.not17 = icmp eq i32 %spec.select10.i22, 0
  br i1 %.not17, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit23, %bb.l
  %.sink = phi i32 [ %i.ad, %bb.l ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit23 ]
  call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %.sink) #14
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %2, %bb.m, %_ZN7CaDiCaL8Internal5fixedEi.exit23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal19remove_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.d = zext nneg i32 %i.a to i64                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !174   ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !176
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !178
  %.not9.i = icmp eq i32 %i.j, 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ false, %bb.a ], [ %.not9.i, %bb.b ]
  %2 = icmp slt i32 %1, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.l = load i32, ptr %i.k, align 4
  %.not7 = icmp eq i32 %i.l, 0
  %or.cond = select i1 %.0.i, i1 true, i1 %.not7
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #14
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !173
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %.pre17 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !174
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !176
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.d
  %i.t = load i32, ptr %i.s, align 8, !tbaa !178
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
define noundef zeroext i1 @_ZNK7CaDiCaL8Internal8observedEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
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
define void @_ZN7CaDiCaL8Internal19set_tainted_literalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4028
  %i.b = load i32, ptr %i.a, align 4, !tbaa !236
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237, !nonnull !179, !align !238
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %.not1314 = icmp eq i32 %i.e, 0
  br i1 %.not1314, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %.promoted = load i32, ptr %i.l, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.m = phi i32 [ %.promoted, %.lr.ph ], [ %i.ab, %bb.g ] ; 5 uses
  %.sroa.010.015 = phi i32 [ 1, %.lr.ph ], [ %i.ac, %bb.g ] ; 6 uses
  %i.n = sext i32 %.sroa.010.015 to i64
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !174
  %.not7 = icmp eq i8 %i.p, 0
  br i1 %.not7, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.010.015, i1 true)
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !180
  %.not8 = icmp eq ptr %i.u, %i.k
  br i1 %.not8, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not9 = icmp eq i32 %i.m, 0
  br i1 %.not9, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.s, align 8, !tbaa !178
  %i.w = tail call noundef i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !178
  %i.aa = icmp slt i32 %i.v, %i.z
  br i1 %i.aa, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  store i32 %.sroa.010.015, ptr %i.l, align 4, !tbaa !239
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f, %bb.d, %bb.c
  %i.ab = phi i32 [ %i.m, %bb.f ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %.sroa.010.015, %.sink.split ]
  %i.ac = add i32 %.sroa.010.015, 1
  %.not13 = icmp eq i32 %.sroa.010.015, %i.e
  br i1 %.not13, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.b = load i8, ptr %i.a, align 2, !tbaa !181, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  %.not2 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not2, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !183
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !184
  %.not = icmp eq ptr %i.i, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4028
  %i.l = load i32, ptr %i.k, align 4
  %.not1 = icmp eq i32 %i.l, 0
  %or.cond6 = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !175
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store i64 0, ptr %i.k, align 8, !tbaa !185
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.m = load i8, ptr %i.l, align 2, !tbaa !181, !range !182, !noundef !179
  %i.n = trunc nuw i8 %i.m to i1
  %.not.i = xor i1 %i.n, true
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 8, !range !182
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.s = load i8, ptr %i.r, align 2, !range !182
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.t
  br i1 %or.cond5.i, label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !186
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 424
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !205  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !207
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(10) %i.x, i64 noundef 0) #14, !inline_history !241
  br label %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit

_ZN7CaDiCaL8Internal16notify_backtrackEm.exit:    ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !242
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !243 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4                 ; 2 uses
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = icmp ugt i64 %i.ai, 1
  br i1 %i.ak, label %bb.d, label %.thread

.thread:                                          ; preds = %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit
  %i.al = trunc i64 %i.h to i32
  call void @_ZN7CaDiCaL8Internal37renotify_full_trail_between_trail_posEiiiRSt6vectorIiSaIiEEb(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0, i32 noundef %i.al, i32 poison, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
  br label %._crit_edge

bb.d:                                             ; preds = %_ZN7CaDiCaL8Internal16notify_backtrackEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !246
  call void @_ZN7CaDiCaL8Internal37renotify_full_trail_between_trail_posEiiiRSt6vectorIiSaIiEEb(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0, i32 noundef %i.an, i32 poison, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
  %i.ao = icmp sgt i32 %i.aj, 2
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ap = add nsw i32 %i.aj, -3
  br label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal37renotify_full_trail_between_trail_posEiiiRSt6vectorIiSaIiEEb:bb.a
bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.a
  %i.s = icmp slt i32 %1, %2
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.z = sext i32 %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ %i.z, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !184
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %.not18 = icmp eq i32 %i.ac, 0
  br i1 %.not18, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !14
  %.not22 = icmp eq i32 %i.ah, 0
  br i1 %.not22, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !184
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ae
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14 ; 3 uses
  %i.al = icmp slt i32 %i.ac, 0
  %i.am = sub nsw i32 0, %i.ak
  %spec.select.i = select i1 %i.al, i32 %i.am, i32 %i.ak ; 2 uses
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !186
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  %i.ap = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true) ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !210
  %i.ar = lshr i32 %i.ap, 6
  %.zext = zext nneg i32 %i.ar to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.zext
  %i.at = and i32 %i.ap, 63
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 1, %i.au
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !211
  %i.ax = and i64 %i.av, %i.aw
  %.not23 = icmp eq i64 %i.ax, 0
  br i1 %.not23, label %bb.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !183 ; 4 uses
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !209
  %.not.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %spec.select.i, ptr %i.ay, align 4, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.ba, ptr %i.x, align 8, !tbaa !183
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !184   ; 4 uses
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 5 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775804
  br i1 %i.bf, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bg = ashr exact i64 %i.be, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #17 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i32 %spec.select.i, ptr %i.bn, align 4, !tbaa !14
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bs) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bm, ptr %4, align 8, !tbaa !184
  store ptr %i.bp, ptr %i.x, align 8, !tbaa !183
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bt, ptr %i.y, align 8, !tbaa !209
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.h, %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g, %bb.f
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !248

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183
  %i.bw = load ptr, ptr %4, align 8, !tbaa !184
  %.not17 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not17, label %_ZNSt6vectorIiSaIiEE5clearEv.exit20, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !186
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 424
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !205 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(10) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %.pre27 = load ptr, ptr %4, align 8, !tbaa !184 ; 2 uses
  %.pre28 = load ptr, ptr %i.bu, align 8, !tbaa !183
  %i.ce = icmp eq ptr %.pre28, %.pre27
  br i1 %i.ce, label %_ZNSt6vectorIiSaIiEE5clearEv.exit20, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.pre27, ptr %i.bu, align 8, !tbaa !183
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit20

_ZNSt6vectorIiSaIiEE5clearEv.exit20:              ; preds = %._crit_edge, %bb.o, %bb.p
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal16notify_backtrackEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.b = load i8, ptr %i.a, align 2, !tbaa !181, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = load i8, ptr %i.g, align 2, !range !182
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 noundef %1) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal11is_decisionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4, !tbaa !175
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173  ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !174   ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = sext i8 %i.h to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.f
  %i.l = load i32, ptr %i.k, align 8, !tbaa !178
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
  %i.o = load i8, ptr %i.n, align 1, !tbaa !174
  %.not8 = icmp eq i8 %i.o, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !176
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.f ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !178
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

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal15force_backtrackEm(ptr noundef nonnull align 8 dereferenceable(7296) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i8, ptr %i.a, align 1, !tbaa !212, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = zext nneg i32 %i.e to i64
  %.not = icmp ult i64 %1, %i.g
  %or.cond = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %1 to i32
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.h) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal18external_propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4792 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4824 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4808 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 4 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not3383 = icmp eq ptr %i.v, null
  br i1 %.not3383, label %.lr.ph84, label %.critedge

.lr.ph84:                                         ; preds = %bb.a, %.loopexit
  %i.w = load i8, ptr %i.e, align 2, !tbaa !181, !range !182, !noundef !179
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph84
  %i.y = load i8, ptr %i.f, align 8, !tbaa !251, !range !182, !noundef !179
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %i.g, align 2, !tbaa !252, !range !182, !noundef !179
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 424
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !205 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !207
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(10) %i.ae) #14
  %i.aj = load <2 x i64>, ptr %i.i, align 8, !tbaa !211
  %i.ak = add nsw <2 x i64> %i.aj, splat (i64 1)
  store <2 x i64> %i.ak, ptr %i.i, align 8, !tbaa !211
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.028 = phi i32 [ %i.ai, %bb.d ], [ %.129, %bb.y ] ; 6 uses
  %.not34 = icmp eq i32 %.028, 0
  br i1 %.not34, label %.thread67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = tail call i32 @llvm.abs.i32(i32 %.028, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !184
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14 ; 2 uses
  %i.as = icmp slt i32 %.028, 0
  %i.at = sub nsw i32 0, %i.ar
  %spec.select = select i1 %i.as, i32 %i.at, i32 %i.ar ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.av = sext i32 %spec.select to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !174 ; 2 uses
  %.not35 = icmp eq i8 %i.ax, 0
  br i1 %.not35, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !175
  %.not36 = icmp eq i32 %i.ay, 0
  br i1 %.not36, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.ba = load <2 x ptr>, ptr %i.l, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !216
  %i.bc = add nsw i64 %i.bb, 1
  store i64 %i.bc, ptr %i.n, align 8, !tbaa !216
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %.028, i1 noundef zeroext false)
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !184 ; 3 uses
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !209
  store <2 x ptr> %i.ba, ptr %i.l, align 8, !tbaa !215
  store ptr %i.az, ptr %i.m, align 8, !tbaa !209
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #15
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

bb.j:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal22search_assign_externalEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %spec.select) #14
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit: ; preds = %bb.i, %bb.h, %bb.j
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !253
  %i.bj = add nsw i64 %i.bi, 1
  store i64 %i.bj, ptr %i.s, align 8, !tbaa !253
  %i.bk = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread67, label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not37 = icmp eq ptr %i.bm, null
  br i1 %.not37, label %bb.l, label %.thread67

bb.l:                                             ; preds = %bb.k
  %i.bn = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14 ; 0 uses
  %i.bo = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.thread67, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not38 = icmp eq ptr %i.bq, null
  br i1 %.not38, label %.sink.split, label %.thread67

bb.n:                                             ; preds = %bb.f
  %i.br = icmp slt i8 %i.ax, 0
  br i1 %i.br, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !175
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !213
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.bv = load <2 x ptr>, ptr %i.l, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.bw = load <2 x i64>, ptr %i.k, align 8, !tbaa !211
  %i.bx = add nsw <2 x i64> %i.bw, splat (i64 1)
  store <2 x i64> %i.bx, ptr %i.k, align 8, !tbaa !211
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %.028, i1 noundef zeroext false)
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !184 ; 3 uses
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !209
  store <2 x ptr> %i.bv, ptr %i.l, align 8, !tbaa !215
  store ptr %i.bu, ptr %i.m, align 8, !tbaa !209
  %.not.i.i.i.i.i.i58 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i58, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #15
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60: ; preds = %bb.o, %bb.p
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !213
  %.not39 = icmp eq i64 %i.cd, %i.bt
  br i1 %.not39, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !175
  %.not40 = icmp eq i32 %i.ce, %i.bs
end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL8Internal23external_check_solutionEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %i.ds, label %bb.b, label %.loopexit74

_ZNSt6vectorIiSaIiEED2Ev.exit.jt3:                ; preds = %bb.u, %spec.select.si.unfold.false.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %.loopexit74

_ZNSt6vectorIiSaIiEED2Ev.exit.jt1:                ; preds = %bb.v, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %.loopexit

.loopexit74:                                      ; preds = %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt0, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt3
  %i.fn = load i8, ptr %i.p, align 4, !tbaa !217, !range !182, !noundef !179
  %i.fo = trunc nuw i8 %i.fn to i1
  %.pre67 = load ptr, ptr %i.q, align 8, !tbaa !214 ; 4 uses
  br i1 %i.fo, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.loopexit74
  %.not34 = icmp eq ptr %.pre67, null
  br i1 %.not34, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre67, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !14
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.fs = call noundef i32 @llvm.abs.i32(i32 %i.fq, i1 true)
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.fr, align 8, !tbaa !176
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !178 ; 2 uses
  %i.fx = load i32, ptr %i.k, align 4, !tbaa !175
  %.not35 = icmp eq i32 %i.fw, %i.fx
  br i1 %.not35, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.fw) #14
  %.pre66 = load ptr, ptr %i.q, align 8, !tbaa !214
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w, %.loopexit74
  %i.fy = phi ptr [ %.pre67, %bb.x ], [ %.pre66, %bb.y ], [ null, %bb.w ], [ %.pre67, %.loopexit74 ]
  %.not36 = icmp eq ptr %i.fy, null
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.jt1, %bb.z, %bb.a
  %.328 = phi i1 [ true, %bb.a ], [ %.not36, %bb.z ], [ true, %_ZNSt6vectorIiSaIiEED2Ev.exit.jt1 ]
  ret i1 %.328
}

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9satisfiedEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External14reset_extendedEv(ptr noundef nonnull align 8 dereferenceable(616)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External6extendEv(ptr noundef nonnull align 8 dereferenceable(616)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal18connect_propagatorEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4, !tbaa !175
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal15notify_decisionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.b = load i8, ptr %i.a, align 2, !tbaa !181, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = load i8, ptr %i.g, align 2, !range !182
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(10) %i.m) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7CaDiCaL8Internal12ask_decisionEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.b = load i8, ptr %i.a, align 2, !tbaa !181, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  %.not16 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not16, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = load i8, ptr %i.g, align 2, !range !182
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond21 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond21, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !175
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  store i8 1, ptr %i.l, align 1, !tbaa !212
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !207
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(10) %i.p) #14 ; 4 uses
  store i8 0, ptr %i.l, align 1, !tbaa !212
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4792 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !221
  %i.w = add nsw i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !221
  %i.x = load i32, ptr %i.j, align 4, !tbaa !175
  %.not = icmp eq i32 %i.k, %i.x
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14 ; 0 uses
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %i.z = load i32, ptr %i.j, align 4, !tbaa !175
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !183
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !184
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
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !184
  %.not12 = icmp ne ptr %i.an, %i.ao
  %.not13 = icmp eq i32 %i.t, 0
  %or.cond22 = or i1 %.not13, %.not12
  br i1 %or.cond22, label %bb.k, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.b
  %.not13.old = icmp eq i32 %i.t, 0
  br i1 %.not13.old, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !186 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 432
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !210
  %i.au = lshr i32 %i.ar, 6
  %.zext = zext nneg i32 %i.au to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.zext
  %i.aw = and i64 %i.as, 63
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !211
  %i.az = and i64 %i.ay, %i.ax
  %.not24 = icmp eq i64 %i.az, 0
  br i1 %.not24, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !184
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.as
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !14 ; 3 uses
  %i.be = icmp slt i32 %i.t, 0
  %i.bf = sub nsw i32 0, %i.bd
  %spec.select = select i1 %i.be, i32 %i.bf, i32 %i.bd ; 3 uses
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !173 ; 2 uses
  %i.bj = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !174 ; 2 uses
  %.not.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %1 = sext i8 %i.bl to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !176
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bj
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !178
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
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !174
  %.not15 = icmp eq i8 %i.bs, 0
  %spec.select23 = select i1 %.not15, i32 %spec.select, i32 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.c, %bb.f, %bb.g, %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.e ], [ %spec.select23, %bb.j ], [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal23is_external_forgettableEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.d = load i64, ptr %i.c, align 8, !tbaa !230
  %.not.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !231 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !211
  %i.h = icmp eq i64 %1, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.c, !llvm.loop !273

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.k = load i64, ptr %i.j, align 8, !tbaa !232  ; 2 uses
  %i.l = urem i64 %1, %i.k                        ; 2 uses
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !233
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !234  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !231  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !211
  %i.s = icmp eq i64 %1, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i64 %1, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !231 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE4findERS8_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !211  ; 2 uses
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

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal33mark_garbage_external_forgettableEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %1, ptr %i.a, align 8, !tbaa !211
  %i.e = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmSt6vectorIiSaIiEEESaIS6_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  store i32 0, ptr %i.f, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN7CaDiCaL8Internal32check_watched_literal_invariantsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #7 align 2 {
.loopexit:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not49 = icmp ult i64 %i.h, %2
  br i1 %.not49, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !14     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !283

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre76 = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !14
  store i32 %i.s, ptr %i.d, align 4, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = phi ptr [ %.pre76, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !12
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !283

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !14
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !14
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  %n.vec107 = and i64 %i.ag, 9223372036854775800  ; 3 uses
end_hunk_2
