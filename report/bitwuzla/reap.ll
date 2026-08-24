Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/reap?download=true
inline.NumInlined: 118
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4ReapC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4ReapC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4Reap4initEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(816) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32, ptr %i.b, align 4, !tbaa !8
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit
  %.0.idx9 = phi i64 [ 24, %bb.a ], [ %.0.add, %_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0.idx9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr %.0.ptr, align 8, !tbaa !16 ; 6 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #12 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 8
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #13
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %.0.ptr, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !17
  store ptr %i.l, ptr %i.c, align 8, !tbaa !12
  br label %_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0.ptr, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 5 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.g                       ; 3 uses
  %.not.i = icmp ult i64 %i.p, 4
  br i1 %.not.i, label %_ZSt4copyIPKjPjET0_T_S4_S3_.exit17.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.e, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.not.i16.i = icmp eq ptr %i.n, %i.q
  br i1 %.not.i16.i, label %_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.q, ptr %i.m, align 8, !tbaa !17
  br label %_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit

_ZSt4copyIPKjPjET0_T_S4_S3_.exit17.i:             ; preds = %bb.f
  %gepdiff = sub nuw nsw i64 4, %i.p
  %i.r = icmp eq ptr %i.n, %i.e
  br i1 %i.r, label %bb.h, label %_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E.exit.i

bb.h:                                             ; preds = %_ZSt4copyIPKjPjET0_T_S4_S3_.exit17.i
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.s = load i32, ptr %.sink.i.i, align 4, !tbaa !11
  store i32 %i.s, ptr %i.n, align 4, !tbaa !11
  br label %_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E.exit.i

_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E.exit.i: ; preds = %bb.h, %_ZSt4copyIPKjPjET0_T_S4_S3_.exit17.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %gepdiff
  store ptr %i.t, ptr %i.m, align 8, !tbaa !17
  br label %_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit

_ZNSt6vectorIjSaIjEE13_M_assign_auxIPKjEEvT_S5_St20forward_iterator_tag.exit: ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.g, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %_ZSt22__uninitialized_copy_aIPKjPjjET0_T_S4_S3_RSaIT1_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.0.add = add nuw nsw i64 %.0.idx9, 24          ; 2 uses
  %.not = icmp eq i64 %.0.add, 816
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4Reap7releaseEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(816) initializes((0, 20)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4ReapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(816) initializes((0, 20), (24, 816)) %0) unnamed_addr #2 align 2 {
bb.a:
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %scevgep, i8 0, i64 792, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 32, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4Reap4pushEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(816) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = xor i32 %i.b, %1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 32, %i.d                 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = zext nneg i32 %i.e to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.j, align 4, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store ptr %i.m, ptr %i.i, align 8, !tbaa !17
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775804
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = ashr exact i64 %i.q, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951)
  %i.w = select i1 %i.u, i64 2305843009213693951, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #12 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store i32 %1, ptr %i.z, align 4, !tbaa !11
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !16
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.k, align 8, !tbaa !12
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = icmp ugt i32 %i.ae, %i.e
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  store i32 %i.e, ptr %i.ad, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = icmp ult i32 %i.ah, %i.e
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.e, ptr %i.ag, align 8, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = load i64, ptr %0, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4Reap3popEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(816) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.s, %bb.a
  %i.g = phi i32 [ %i.b, %bb.a ], [ %i.bm, %bb.s ] ; 2 uses
  %.031 = phi i32 [ undef, %bb.a ], [ %.132, %bb.s ]
  %.029 = phi i32 [ %i.b, %bb.a ], [ %.130, %bb.s ] ; 9 uses
  %i.h = zext i32 %.029 to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.h ; 3 uses
end_hunk_0
