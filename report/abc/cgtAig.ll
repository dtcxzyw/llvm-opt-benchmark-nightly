Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cgtAig?download=true
inline.NumInlined: 273
inline.NumDeleted: 58
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"CG_miter\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"partition\00", align 1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cgt_ManDetectCandidates_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 312
  %.val = load i32, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %.val24 = load i32, ptr %i.b, align 8, !tbaa !26
  %.not = icmp eq i32 %.val24, %.val
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.val, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %.val26 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.d = trunc i64 %.val26 to i32
  %i.e = and i32 %i.d, 7
  %i.f = add nsw i32 %i.e, -7
  %narrow.i = icmp ult i32 %i.f, -2
  br i1 %narrow.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 8
  %.val27 = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.h = ptrtoint ptr %.val27 to i64
  %i.i = and i64 %i.h, -2
  %i.j = inttoptr i64 %i.i to ptr
  tail call void @Cgt_ManDetectCandidates_rec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.j, i32 noundef %3, ptr noundef %4)
  %i.k = getelementptr i8, ptr %2, i64 16
  %.val28 = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.l = ptrtoint ptr %.val28 to i64
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @Cgt_ManDetectCandidates_rec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.n, i32 noundef %3, ptr noundef %4)
  %.val29.pre = load i64, ptr %i.c, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val29 = phi i64 [ %.val29.pre, %bb.c ], [ %.val26, %bb.b ]
  %5 = lshr i64 %.val29, 32
  %6 = trunc nuw i64 %5 to i32
  %i.o = and i32 %6, 16777215
  %.not22 = icmp sgt i32 %i.o, %3
  br i1 %.not22, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %2, i64 36
  %.val30 = load i32, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.s = sext i32 %.val30 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val31, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !32
  %.not23 = icmp eq i32 %i.u, 0
  br i1 %.not23, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !34   ; 7 uses
  %i.x = load i32, ptr %4, align 8, !tbaa !35
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.g
  %i.z = icmp slt i32 %i.w, 16
  br i1 %i.z, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ab, i64 noundef 128) #12
  br label %Vec_PtrGrow.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ad = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.k, %bb.j
  %i.ae = phi ptr [ %i.ac, %bb.j ], [ %i.ad, %bb.k ]
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !36
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i32 %i.w, 1073741823
  %i.ag = shl nuw nsw i32 %i.w, 1
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.w, %spec.select.i
  br i1 %.not.i10.i, label %bb.m, label %Vec_PtrPush.exit

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.ai, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.ai, i64 noundef %i.ak) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = phi ptr [ %i.al, %bb.n ], [ %i.am, %bb.o ]
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !36
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.p, %Vec_PtrGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.p ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !35
  %.pre = load i32, ptr %i.v, align 4, !tbaa !34
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.g, %bb.l, %Vec_PtrGrow.exit12.sink.split.i
  %i.ao = phi i32 [ %i.w, %bb.g ], [ %i.w, %bb.l ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.v, align 4, !tbaa !34
  %i.as = sext i32 %i.ao to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %2, ptr %i.at, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %Vec_PtrPush.exit, %bb.f, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cgt_ManDetectCandidates(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef initializes((4, 8)) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.b = getelementptr i8, ptr %2, i64 24
  %.val = load i64, ptr %i.b, align 8
  %i.c = trunc i64 %.val to i32
  %i.d = and i32 %i.c, 7
  %i.e = add nsw i32 %i.d, -7
  %narrow.i = icmp ult i32 %i.e, -2
  br i1 %narrow.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Aig_ManIncrementTravId(ptr noundef %0) #14
  tail call void @Cgt_ManDetectCandidates_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @Aig_ManIncrementTravId(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cgt_ManDetectFanout_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %.val29 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = and i64 %.val29, 7
  %.not = icmp eq i64 %i.b, 3
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %.val29, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = and i32 %i.d, 16777215
  %i.f = icmp sgt i32 %i.e, %2
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 312
  %.val = load i32, ptr %i.g, align 8, !tbaa !25  ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.val26 = load i32, ptr %i.h, align 8, !tbaa !26
  %.not33 = icmp eq i32 %.val26, %.val
  br i1 %.not33, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %.val, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34   ; 7 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !35
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.m = icmp slt i32 %i.j, 16
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.o, i64 noundef 128) #12
  br label %Vec_PtrGrow.exit.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #13
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ]
  store ptr %i.r, ptr %i.n, align 8, !tbaa !36
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.s = icmp samesign ult i32 %i.j, 1073741823
  %i.t = shl nuw nsw i32 %i.j, 1
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.j, %spec.select.i
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.v, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.x) #12
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
end_hunk_0
