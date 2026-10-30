Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundials_hashmap?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -9997, 1) i32 @SUNHashMap_New(i64 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %0, 1
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 2 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !10
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 8 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = shl i64 %0, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !15
  %.not17.i = icmp eq ptr %i.e, null
  br i1 %.not17.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #17
  br label %bb.f

.lr.ph:                                           ; preds = %bb.d
  store i64 0, ptr %i.c, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %i.h, align 8, !tbaa !18
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.c
  tail call void @free(ptr noundef %i.b) #17
  br label %.thread

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %i.i = phi ptr [ %i.e, %.lr.ph ], [ %i.r, %bb.k ] ; 3 uses
  %i.j = phi i64 [ %0, %.lr.ph ], [ %i.s, %bb.k ] ; 5 uses
  %.pre.i = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.k ] ; 3 uses
  %.036 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.k ]
  %i.k = icmp eq i64 %.pre.i, %i.j
  br i1 %i.k, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.l = uitofp nneg i64 %i.j to x86_fp80
  %i.m = fmul nnan x86_fp80 %i.l, 1.500000e+00
  %i.n = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.m)
  %i.o = fptosi x86_fp80 %i.n to i64              ; 4 uses
  %.not.i.i.i = icmp slt i64 %i.j, %i.o
  br i1 %.not.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = shl i64 %i.o, 3
  %i.q = tail call ptr @realloc(ptr noundef %i.i, i64 noundef %i.p) #18 ; 3 uses
  %.not11.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not11.i.i.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.q, ptr %i.f, align 8, !tbaa !15
  store i64 %i.o, ptr %i.g, align 8, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j
  %i.r = phi ptr [ %i.q, %bb.j ], [ %i.i, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %i.s = phi i64 [ %i.o, %bb.j ], [ %i.j, %bb.h ], [ %i.j, %bb.g ]
  %i.t = add nuw nsw i64 %.pre.i, 1               ; 2 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.pre.i
  store ptr null, ptr %i.u, align 8, !tbaa !20
  %i.v = add nuw nsw i64 %.036, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %0
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %2, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.c, ptr %i.w, align 8, !tbaa !23
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.f, %._crit_edge, %bb.a
  %.4 = phi i32 [ -9997, %bb.a ], [ 0, %._crit_edge ], [ -9988, %bb.f ], [ -9988, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @SUNHashMap_Capacity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val = load i64, ptr %i.c, align 8, !tbaa !17
  ret i64 %.val
}

; Function Attrs: nounwind uwtable
define i32 @SUNHashMap_Destroy(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SUNStlVector_SUNHashMapKeyValue_Destroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 7 uses
  %.not25.i = icmp eq ptr %i.d, null
  br i1 %.not25.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.val32.i = load i64, ptr %i.d, align 8, !tbaa !16
  %.not2733.i = icmp sgt i64 %.val32.i, 0
  br i1 %.not2733.i, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre36.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.g = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.k, %bb.d ]
  %.01934.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ] ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01934.i
  %i.j = tail call i32 %i.h(ptr noundef %i.i) #17, !inline_history !30 ; 2 uses
  %.not26.i = icmp eq i32 %i.j, 0
  br i1 %.not26.i, label %bb.d, label %SUNStlVector_SUNHashMapKeyValue_Destroy.exit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01934.i
  store ptr null, ptr %i.l, align 8, !tbaa !20
  %i.m = add nuw nsw i64 %.01934.i, 1             ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !16
  %.not27.i = icmp slt i64 %i.m, %.val.i
  br i1 %.not27.i, label %bb.c, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %.preheader.._crit_edge_crit_edge.i
  %i.n = phi ptr [ %.pre36.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.k, %bb.d ]
  tail call void @free(ptr noundef %i.n) #17
  tail call void @free(ptr noundef nonnull %i.d) #17
  store ptr null, ptr %i.c, align 8, !tbaa !31
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge.i
  %i.o = phi ptr [ %i.b, %bb.b ], [ %.pre, %._crit_edge.i ]
  tail call void @free(ptr noundef %i.o) #17
  store ptr null, ptr %0, align 8, !tbaa !10
  br label %SUNStlVector_SUNHashMapKeyValue_Destroy.exit

SUNStlVector_SUNHashMapKeyValue_Destroy.exit:     ; preds = %bb.c, %bb.e, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %i.j, %bb.c ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i64 @SUNHashMap_Iterate(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %.val27 = load i64, ptr %i.d, align 8, !tbaa !16
  %i.e = icmp slt i64 %1, %.val27
  br i1 %i.e, label %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, label %._crit_edge

SUNStlVector_SUNHashMapKeyValue_At.exit.preheader: ; preds = %.preheader
  %i.f = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.f)
  br label %SUNStlVector_SUNHashMapKeyValue_At.exit

bb.b:                                             ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit
  %i.g = add nuw nsw i64 %.01728, 1               ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %.val = load i64, ptr %i.h, align 8, !tbaa !16
  %i.i = icmp slt i64 %i.g, %.val
  br i1 %i.i, label %SUNStlVector_SUNHashMapKeyValue_At.exit, label %._crit_edge

SUNStlVector_SUNHashMapKeyValue_At.exit:          ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.d, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ]
  %.01728 = phi i64 [ %i.g, %bb.b ], [ %1, %SUNStlVector_SUNHashMapKeyValue_At.exit.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01728
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = tail call i64 %2(i64 noundef %.01728, ptr noundef %i.n, ptr noundef %3) #17 ; 2 uses
  %i.p = icmp eq i64 %i.o, -99
  br i1 %i.p, label %bb.b, label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.q = phi ptr [ %i.d, %.preheader ], [ %i.h, %bb.b ]
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val.i = load i64, ptr %i.r, align 8, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %SUNStlVector_SUNHashMapKeyValue_At.exit, %bb.a, %._crit_edge
  %.3 = phi i64 [ -99, %bb.a ], [ %.val.i, %._crit_edge ], [ %i.o, %SUNStlVector_SUNHashMapKeyValue_At.exit ]
  ret i64 %.3
}

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @SUNHashMap_Insert(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %SUNStlVector_SUNHashMapKeyValue_Set.exit, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %tailrecurse, %.lr.ph137
  %.val = load ptr, ptr %i.d, align 8, !tbaa !23  ; 9 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i64, ptr %i.e, align 8, !tbaa !17 ; 7 uses
  %i.f = add nsw i64 %.val.val, -1                ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %sunHashMapIdxFromKey.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !24      ; 2 uses
  %.not5.i.i = icmp eq i8 %i.h, 0
  br i1 %.not5.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi i8 [ %i.n, %.lr.ph.i.i ], [ %i.h, %bb.c ]
  %.07.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 1099511628211, %bb.c ]
  %.036.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %1, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 1 ; 2 uses
  %i.k = sext i8 %i.i to i64
  %i.l = xor i64 %.07.i.i, %i.k
  %i.m = mul i64 %i.l, -3750763034362895579       ; 2 uses
  %i.n = load i8, ptr %i.j, align 1, !tbaa !24    ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %fnv1a_hash.exit.i, label %.lr.ph.i.i

fnv1a_hash.exit.i:                                ; preds = %.lr.ph.i.i, %bb.c
  %.0.lcssa.i.i = phi i64 [ 1099511628211, %bb.c ], [ %i.m, %.lr.ph.i.i ]
  %i.o = urem i64 %.0.lcssa.i.i, %i.f
  br label %sunHashMapIdxFromKey.exit

sunHashMapIdxFromKey.exit:                        ; preds = %bb.b, %fnv1a_hash.exit.i
  %i.p = phi i64 [ %i.o, %fnv1a_hash.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.q = load i64, ptr %.val, align 8, !tbaa !16  ; 4 uses
  %i.r = icmp slt i64 %i.p, %i.q
  %i.s = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.s)
  tail call void @llvm.assume(i1 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.v, label %bb.d

bb.d:                                             ; preds = %sunHashMapIdxFromKey.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.x) #19
end_hunk_0
