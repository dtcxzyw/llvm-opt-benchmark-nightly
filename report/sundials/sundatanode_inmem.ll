inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@SUNDataNode_AddChild_InMem:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %SUNStlVector_SUNDataNode_Grow.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sitofp i64 %i.e to x86_fp80
  %i.k = fmul nnan x86_fp80 %i.j, 1.500000e+00
  %i.l = tail call x86_fp80 @llvm.ceil.f80(x86_fp80 %i.k)
  %i.m = fptosi x86_fp80 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.m, %bb.c ], [ 2, %bb.b ]    ; 3 uses
  %.not.i.i.i = icmp sgt i64 %i.n, %i.e
  br i1 %.not.i.i.i, label %bb.e, label %SUNStlVector_SUNDataNode_Grow.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = shl i64 %i.n, 3
  %i.r = tail call ptr @realloc(ptr noundef %i.p, i64 noundef %i.q) #14 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not11.i.i.i, label %SUNStlVector_SUNDataNode_PushBack.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.r, ptr %i.o, align 8, !tbaa !33
  store i64 %i.n, ptr %i.f, align 8, !tbaa !39
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !38
  br label %SUNStlVector_SUNDataNode_Grow.exit.thread.i

SUNStlVector_SUNDataNode_Grow.exit.thread.i:      ; preds = %bb.f, %bb.d, %bb.a
  %i.s = phi i64 [ %.pre.i, %bb.f ], [ %i.e, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = add nsw i64 %i.s, 1
  store i64 %i.v, ptr %i.d, align 8, !tbaa !38
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.s
  store ptr %1, ptr %i.w, align 8, !tbaa !8
  br label %SUNStlVector_SUNDataNode_PushBack.exit

SUNStlVector_SUNDataNode_PushBack.exit:           ; preds = %bb.e, %SUNStlVector_SUNDataNode_Grow.exit.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31
  store ptr %0, ptr %i.y, align 8, !tbaa !58
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -9990, 1) i32 @SUNDataNode_AddNamedChild_InMem(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call i64 @SUNHashMap_Insert(ptr noundef %i.g, ptr noundef %1, ptr noundef %2) #12
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  store ptr %0, ptr %i.i, align 8, !tbaa !58
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -9990, %bb.a ]
  ret i32 %.0
}

declare i64 @SUNHashMap_Insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -9983, 1) i32 @SUNDataNode_GetChild_InMem(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SUNDataNode_HasChildren_InMem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !38 ; 2 uses
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %SUNDataNode_HasChildren_InMem.exit, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %.not12 = icmp eq i64 %i.f, 0
  br i1 %.not12, label %SUNStlVector_SUNDataNode_At.exit.thread, label %SUNDataNode_HasChildren_InMem.exit.SUNDataNode_HasChildren_InMem.exit.thread_crit_edge

SUNDataNode_HasChildren_InMem.exit.SUNDataNode_HasChildren_InMem.exit.thread_crit_edge: ; preds = %SUNDataNode_HasChildren_InMem.exit
  %.pre = load i64, ptr %i.d, align 8, !tbaa !38
  br label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit.thread:        ; preds = %SUNDataNode_HasChildren_InMem.exit.SUNDataNode_HasChildren_InMem.exit.thread_crit_edge, %bb.b
  %i.g = phi i64 [ %.pre, %SUNDataNode_HasChildren_InMem.exit.SUNDataNode_HasChildren_InMem.exit.thread_crit_edge ], [ %.val.i, %bb.b ]
  %i.h = icmp sge i64 %1, %i.g
  %i.i = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.i, %i.h
  br i1 %or.cond.i, label %SUNStlVector_SUNDataNode_At.exit.thread, label %SUNStlVector_SUNDataNode_At.exit

SUNStlVector_SUNDataNode_At.exit:                 ; preds = %SUNDataNode_HasChildren_InMem.exit.thread
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %.not8 = icmp eq ptr %i.k, null
  br i1 %.not8, label %SUNStlVector_SUNDataNode_At.exit.thread, label %bb.c

bb.c:                                             ; preds = %SUNStlVector_SUNDataNode_At.exit
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8
  store ptr %i.m, ptr %2, align 8, !tbaa !8
  br label %SUNStlVector_SUNDataNode_At.exit.thread

SUNStlVector_SUNDataNode_At.exit.thread:          ; preds = %SUNDataNode_HasChildren_InMem.exit.thread, %bb.c, %SUNStlVector_SUNDataNode_At.exit, %SUNDataNode_HasChildren_InMem.exit
  %.1 = phi i32 [ -9983, %SUNDataNode_HasChildren_InMem.exit ], [ 0, %bb.c ], [ -9983, %SUNStlVector_SUNDataNode_At.exit ], [ -9983, %SUNDataNode_HasChildren_InMem.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -9983, 1) i32 @SUNDataNode_GetNamedChild_InMem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 8)) %2) #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SUNDataNode_HasChildren_InMem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !38
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %SUNDataNode_HasChildren_InMem.exit, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %.not8 = icmp eq i64 %i.f, 0
  br i1 %.not8, label %bb.c, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit.thread:        ; preds = %bb.b, %SUNDataNode_HasChildren_InMem.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = tail call i64 @SUNHashMap_GetValue(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %2) #12
  %.not6 = icmp eq i64 %i.i, 0
  %. = select i1 %.not6, i32 0, i32 -9983
  br label %bb.c

bb.c:                                             ; preds = %SUNDataNode_HasChildren_InMem.exit, %SUNDataNode_HasChildren_InMem.exit.thread
  %.0 = phi i32 [ %., %SUNDataNode_HasChildren_InMem.exit.thread ], [ -9983, %SUNDataNode_HasChildren_InMem.exit ]
  ret i32 %.0
}

declare i64 @SUNHashMap_GetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -9983, 1) i32 @SUNDataNode_RemoveChild_InMem(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SUNDataNode_HasChildren_InMem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !38 ; 2 uses
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %SUNDataNode_HasChildren_InMem.exit, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %.not20 = icmp eq i64 %i.f, 0
  br i1 %.not20, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %SUNDataNode_HasChildren_InMem.exit
  store ptr null, ptr %2, align 8, !tbaa !8
  br label %SUNStlVector_SUNDataNode_Erase.exit

thread-pre-split:                                 ; preds = %SUNDataNode_HasChildren_InMem.exit
  %.pr = load i64, ptr %i.d, align 8, !tbaa !38
  br label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit.thread:        ; preds = %bb.b, %thread-pre-split
  %i.g = phi i64 [ %.pr, %thread-pre-split ], [ %.val.i, %bb.b ] ; 3 uses
  %i.h = icmp sge i64 %1, %i.g
  %i.i = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.i, %i.h
  br i1 %or.cond.i, label %SUNStlVector_SUNDataNode_Erase.exit, label %SUNStlVector_SUNDataNode_At.exit

SUNStlVector_SUNDataNode_At.exit:                 ; preds = %SUNDataNode_HasChildren_InMem.exit.thread
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 4 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %SUNStlVector_SUNDataNode_Erase.exit, label %bb.d

bb.d:                                             ; preds = %SUNStlVector_SUNDataNode_At.exit
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !8
  %.not15 = icmp eq ptr %i.m, null
  br i1 %.not15, label %SUNStlVector_SUNDataNode_Erase.exit, label %SUNStlVector_SUNDataNode_Set.exit.i

SUNStlVector_SUNDataNode_Set.exit.i:              ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  store ptr null, ptr %i.o, align 8, !tbaa !58
  store ptr null, ptr %i.l, align 8, !tbaa !8
  %i.p = add nsw i64 %i.g, -1                     ; 3 uses
  %i.q = icmp slt i64 %1, %i.p
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %SUNStlVector_SUNDataNode_Set.exit.i
  %i.r = shl i64 %1, 3
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %scevgep35.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.s = sub nsw i64 %i.p, %1
  %i.t = shl nuw i64 %i.s, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep35.i, i64 %i.t, i1 false), !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %SUNStlVector_SUNDataNode_Set.exit.i
  %i.u = getelementptr [8 x i8], ptr %i.k, i64 %i.g
  %3 = getelementptr i8, ptr %i.u, i64 -8
  store ptr null, ptr %3, align 8, !tbaa !8
  store i64 %i.p, ptr %i.d, align 8, !tbaa !38
  br label %SUNStlVector_SUNDataNode_Erase.exit

SUNStlVector_SUNDataNode_Erase.exit:              ; preds = %SUNDataNode_HasChildren_InMem.exit.thread, %._crit_edge.i, %bb.d, %SUNStlVector_SUNDataNode_At.exit, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ 0, %._crit_edge.i ], [ -9983, %bb.d ], [ -9983, %SUNStlVector_SUNDataNode_At.exit ], [ -9983, %SUNDataNode_HasChildren_InMem.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -9983, 1) i32 @SUNDataNode_RemoveNamedChild_InMem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 8)) %2) #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SUNDataNode_HasChildren_InMem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !38
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %SUNDataNode_HasChildren_InMem.exit, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %.not11 = icmp eq i64 %i.f, 0
  br i1 %.not11, label %bb.e, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit.thread:        ; preds = %bb.b, %SUNDataNode_HasChildren_InMem.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = tail call i64 @SUNHashMap_Remove(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %2) #12
  %.not9 = icmp eq i64 %i.i, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SUNDataNode_HasChildren_InMem.exit.thread
  store ptr null, ptr %2, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %SUNDataNode_HasChildren_InMem.exit.thread
  %i.j = load ptr, ptr %2, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  store ptr null, ptr %i.l, align 8, !tbaa !58
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !57
  %i.p = add nsw i64 %i.o, -1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %SUNDataNode_HasChildren_InMem.exit, %bb.d, %bb.c
  %.0 = phi i32 [ -9983, %bb.c ], [ 0, %bb.d ], [ 0, %SUNDataNode_HasChildren_InMem.exit ]
  ret i32 %.0
}

declare i64 @SUNHashMap_Remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDataNode_GetData_InMem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  store i64 %i.f, ptr %2, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64
  store i64 %i.h, ptr %3, align 8, !tbaa !63
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !65
  store ptr %i.i, ptr %1, align 8, !tbaa !66
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNDataNode_GetDataNvector_InMem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !63
  %i.i = call i32 @N_VBufSize(ptr noundef %1, ptr noundef nonnull %i.a) #12 ; 0 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !68
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !64
  %i.o = call i32 @SUNMemoryHelper_Alloc(ptr noundef %i.l, ptr noundef nonnull %i.b, i64 noundef %i.n, i32 noundef 0, ptr noundef null) #12 ; 0 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.t = load i64, ptr %i.a, align 8, !tbaa !63
  %i.u = call i32 @SUNMemoryHelper_Copy(ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull %i.f, i64 noundef %i.t, ptr noundef null) #12 ; 0 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !65   ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !69
  store double %i.x, ptr %2, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = call i32 @N_VBufUnpack(ptr noundef %1, ptr noundef nonnull %i.y) #12 ; 0 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.ae = call i32 @SUNMemoryHelper_Dealloc(ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !65  ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !69
  store double %i.ag, ptr %2, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = call i32 @N_VBufUnpack(ptr noundef %1, ptr noundef nonnull %i.ah) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

declare i32 @N_VBufSize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNMemoryHelper_Alloc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNMemoryHelper_Copy(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @N_VBufUnpack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNMemoryHelper_Dealloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @SUNDataNode_SetData_InMem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = tail call ptr @SUNMemoryHelper_Wrap(ptr noundef %i.e, ptr noundef %3, i32 noundef %1) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !68
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = call i32 @SUNMemoryHelper_AllocStrided(ptr noundef %i.i, ptr noundef nonnull %i.a, i64 noundef %5, i64 noundef %4, i32 noundef %2, ptr noundef null) #12 ; 0 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.o = call i32 @SUNMemoryHelper_Copy(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.f, i64 noundef %5, ptr noundef null) #12 ; 0 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.s = call i32 @SUNMemoryHelper_Dealloc(ptr noundef %i.r, ptr noundef %i.f, ptr noundef null) #12 ; 0 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.t, ptr %i.v, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

declare ptr @SUNMemoryHelper_Wrap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SUNMemoryHelper_AllocStrided(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @SUNDataNode_SetDataNvector_InMem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, double noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !63
  %i.c = call i32 @N_VBufSize(ptr noundef %1, ptr noundef nonnull %i.a) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = load i64, ptr %i.a, align 8, !tbaa !63
  %i.i = add i64 %i.h, 8
  %i.j = call i32 @SUNMemoryHelper_AllocStrided(ptr noundef %i.g, ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef 8, i32 noundef 0, ptr noundef null) #12 ; 0 uses
end_hunk_0
