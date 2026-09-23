Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/AsyncList?download=true
inline.NumInlined: 369
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lean_once_cell_t = type { i32, i32 }

@l_IO_AsyncList_waitUntil___redArg___closed__1 = internal global ptr null, align 8
@l_IO_AsyncList_waitUntil___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_IO_AsyncList_waitFind_x3f___redArg___closed__1 = internal global ptr null, align 8
@l_IO_AsyncList_waitFind_x3f___redArg___closed__1_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@l_IO_AsyncList_getFinishedPrefixWithTimeout___redArg___closed__0 = internal global ptr null, align 8
@l_IO_AsyncList_getFinishedPrefixWithTimeout___redArg___closed__0_once = internal global %struct.lean_once_cell_t zeroinitializer, align 4
@_G_runtime_initialized = internal unnamed_addr global i1 false, align 1
@_G_meta_initialized = internal unnamed_addr global i1 false, align 1
@_G_initialized = internal unnamed_addr global i1 false, align 1
@l_IO_AsyncList_instCoeList___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 40, i8 0, i8 0, i8 -11 }, ptr @l_IO_AsyncList_ofList, i16 3, i16 2, [4 x i8] zeroinitializer, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l_IO_AsyncList_waitUntil___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)] }, align 8
@l_IO_AsyncList_waitAll___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_IO_AsyncList_waitAll___redArg___lam__0___boxed, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_IO_AsyncList_waitFind_x3f___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 1 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8
@l_IO_AsyncList_getFinishedPrefix___redArg___closed__1_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr @l_IO_AsyncList_getFinishedPrefix___redArg___closed__0_value] }, align 8
@l_IO_AsyncList_getFinishedPrefix___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [2 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 2, i8 0 }, [2 x ptr] [ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 3 to ptr)] }, align 8
@l_List_mapTR_loop___at___00__private_Lean_Server_AsyncList_0__IO_AsyncList_getFinishedPrefixWithTimeout_go_spec__0___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l_List_mapTR_loop___at___00__private_Lean_Server_AsyncList_0__IO_AsyncList_getFinishedPrefixWithTimeout_go_spec__0___redArg___lam__0, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l___private_Lean_Server_AsyncList_0__IO_AsyncList_getFinishedPrefixWithTimeout_go___redArg___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, ptr, i16, i16, [4 x i8], [0 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 24, i8 0, i8 0, i8 -11 }, ptr @l___private_Lean_Server_AsyncList_0__IO_AsyncList_getFinishedPrefixWithTimeout_go___redArg___lam__0, i16 1, i16 0, [4 x i8] zeroinitializer, [0 x ptr] zeroinitializer }, align 8
@l_IO_AsyncList_getFinishedPrefixWithTimeout___redArg___lam__0___closed__0_value = internal constant { { i32, i8, i8, i8, i8 }, [1 x ptr] } { { i32, i8, i8, i8, i8 } { i32 0, i8 16, i8 0, i8 1, i8 0 }, [1 x ptr] [ptr inttoptr (i64 1 to ptr)] }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_IO_AsyncList_ctorIdx___redArg(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i, label %2 [
    i32 0, label %bb.d
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

2:                                                ; preds = %lean_obj_tag.exit
  br label %bb.d

bb.d:                                             ; preds = %lean_obj_tag.exit, %2, %1
  %.0 = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_IO_AsyncList_ctorIdx___redArg___boxed(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i.i, label %2 [
    i32 0, label %l_IO_AsyncList_ctorIdx___redArg.exit
    i32 1, label %1
  ]

1:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_IO_AsyncList_ctorIdx___redArg.exit

2:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_IO_AsyncList_ctorIdx___redArg.exit

l_IO_AsyncList_ctorIdx___redArg.exit:             ; preds = %lean_obj_tag.exit.i, %1, %2
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %2 ], [ inttoptr (i64 3 to ptr), %1 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  br i1 %.not.i.i, label %3, label %lean_dec.exit

3:                                                ; preds = %l_IO_AsyncList_ctorIdx___redArg.exit
  %4 = load i32, ptr %0, align 4, !tbaa !10       ; 3 uses
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %3
  %i.g = add nsw i32 %4, -1
  store i32 %i.g, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %3
  %.not.i3 = icmp eq i32 %4, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_IO_AsyncList_ctorIdx___redArg.exit
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @l_IO_AsyncList_ctorIdx(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i.i, label %4 [
    i32 0, label %l_IO_AsyncList_ctorIdx___redArg.exit
    i32 1, label %3
  ]

3:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_IO_AsyncList_ctorIdx___redArg.exit

4:                                                ; preds = %lean_obj_tag.exit.i
  br label %l_IO_AsyncList_ctorIdx___redArg.exit

l_IO_AsyncList_ctorIdx___redArg.exit:             ; preds = %lean_obj_tag.exit.i, %3, %4
  %.0.i = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l_IO_AsyncList_ctorIdx___boxed(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i.i, 24
  br label %lean_obj_tag.exit.i.i

lean_obj_tag.exit.i.i:                            ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i.i.i, label %4 [
    i32 0, label %l_IO_AsyncList_ctorIdx.exit
    i32 1, label %3
  ]

3:                                                ; preds = %lean_obj_tag.exit.i.i
  br label %l_IO_AsyncList_ctorIdx.exit

4:                                                ; preds = %lean_obj_tag.exit.i.i
  br label %l_IO_AsyncList_ctorIdx.exit

l_IO_AsyncList_ctorIdx.exit:                      ; preds = %lean_obj_tag.exit.i.i, %3, %4
  %.0.i.i = phi ptr [ inttoptr (i64 5 to ptr), %4 ], [ inttoptr (i64 3 to ptr), %3 ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.i.i ]
  br i1 %.not.i.i.i, label %5, label %lean_dec.exit

5:                                                ; preds = %l_IO_AsyncList_ctorIdx.exit
  %6 = load i32, ptr %2, align 4, !tbaa !10       ; 3 uses
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %5
  %i.g = add nsw i32 %6, -1
  store i32 %i.g, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit

bb.e:                                             ; preds = %5
  %.not.i5 = icmp eq i32 %6, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.e, %bb.d, %l_IO_AsyncList_ctorIdx.exit
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_IO_AsyncList_ctorElim___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i20 = icmp eq i64 %i.b, 0
  br i1 %.not.i20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  switch i32 %.0.i, label %bb.ak [
    i32 0, label %bb.d
    i32 1, label %bb.y
  ]

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i18 = icmp eq i64 %i.j, 0
  br i1 %.not.i18, label %bb.e, label %lean_inc.exit19

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.h, align 4, !tbaa !10 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i, 0
  br i1 %i.k, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw i32 %.val.i.i, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !10
  br label %lean_inc.exit19

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit19

lean_inc.exit19:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.i, label %lean_inc.exit

bb.i:                                             ; preds = %lean_inc.exit19
  %.val.i.i21 = load i32, ptr %i.o, align 4, !tbaa !10 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i21, 0
  br i1 %i.r, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.s = add nuw i32 %.val.i.i21, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !10
  br label %lean_inc.exit

bb.k:                                             ; preds = %bb.i
  %.not.i.i22 = icmp eq i32 %.val.i.i21, 0
  br i1 %.not.i.i22, label %lean_inc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_inc.exit19
  %.val.i24 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.u = icmp eq i32 %.val.i24, 1
  br i1 %i.u, label %.preheader.i.preheader, label %bb.u

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i25 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i25, label %bb.m, label %lean_dec.exit.i

bb.m:                                             ; preds = %.preheader.i.preheader
  %i.y = load i32, ptr %i.v, align 4, !tbaa !10   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !10
  br label %lean_dec.exit.i

bb.o:                                             ; preds = %bb.m
  %.not.i7.i = icmp eq i32 %i.y, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #5
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 4 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i.i25.1 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i25.1, label %bb.q, label %lean_dec.exit.i.1

bb.q:                                             ; preds = %lean_dec.exit.i
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !10 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.t, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %.not.i7.i.1 = icmp eq i32 %i.af, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec.exit.i.1

bb.t:                                             ; preds = %bb.q
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !10
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.t, %bb.s, %bb.r, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %lean_inc.exit
  %i.ai = icmp sgt i32 %.val.i24, 1
  br i1 %i.ai, label %bb.v, label %bb.w, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.aj = add nsw i32 %.val.i24, -1
  store i32 %i.aj, ptr %0, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit

bb.w:                                             ; preds = %bb.u
  %.not.i8.i = icmp eq i32 %.val.i24, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.v, %bb.w, %bb.x
  %i.ak = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.o) #5
  br label %bb.ak

bb.y:                                             ; preds = %lean_obj_tag.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !13 ; 4 uses
  %.val.i.i26 = load i32, ptr %i.am, align 4, !tbaa !10 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i26, 0
  br i1 %i.an, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.ao = add nuw i32 %.val.i.i26, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !10
  br label %lean_inc_ref.exit28

bb.aa:                                            ; preds = %bb.y
  %.not.i.i27 = icmp eq i32 %.val.i.i26, 0
  br i1 %.not.i.i27, label %lean_inc_ref.exit28, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ap = atomicrmw sub ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit28

lean_inc_ref.exit28:                              ; preds = %bb.z, %bb.aa, %bb.ab
  %.val.i29 = load i32, ptr %0, align 8, !tbaa !10 ; 4 uses
  %i.aq = icmp eq i32 %.val.i29, 1
  br i1 %i.aq, label %.preheader.i31.preheader, label %bb.ag

.preheader.i31.preheader:                         ; preds = %lean_inc_ref.exit28
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !13 ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, 1
  %.not.i.i33 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i33, label %bb.ac, label %lean_dec.exit.i34

bb.ac:                                            ; preds = %.preheader.i31.preheader
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !10 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.aw = add nsw i32 %i.au, -1
end_hunk_0
