Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sundatanode_inmem?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0_@SUNDataNode_CreateObject_InMem:bb.a
  store ptr @SUNDataNode_IsLeaf_InMem, ptr %i.f, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @SUNDataNode_IsList_InMem, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @SUNDataNode_IsObject_InMem, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @SUNDataNode_AddChild_InMem, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @SUNDataNode_AddNamedChild_InMem, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr @SUNDataNode_GetChild_InMem, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @SUNDataNode_GetNamedChild_InMem, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr @SUNDataNode_RemoveChild_InMem, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr @SUNDataNode_RemoveNamedChild_InMem, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr @SUNDataNode_GetData_InMem, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr @SUNDataNode_GetDataNvector_InMem, ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr @SUNDataNode_SetData_InMem, ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store ptr @SUNDataNode_SetDataNvector_InMem, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr @SUNDataNode_Destroy_InMem, ptr %i.s, align 8, !tbaa !30
  %calloc.i = call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %calloc.i, ptr %i.t, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 2, ptr %i.u, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.v = call i32 @SUNHashMap_New(i64 noundef %0, ptr noundef nonnull @sunDataNode_FreeKeyValue_InMem, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.w, ptr %i.y, align 8, !tbaa !49
  store ptr %i.d, ptr %2, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 0
}

declare i32 @SUNHashMap_New(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @sunDataNode_FreeKeyValue_InMem(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  store ptr %i.d, ptr %i.a, align 8, !tbaa !10
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !66
  tail call void @free(ptr noundef %i.e) #12
  %i.f = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @free(ptr noundef %i.f) #12
  %i.g = call i32 @SUNDataNode_Destroy_InMem(ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @SUNDataNode_CreateLeaf_InMem(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call i32 @SUNDataNode_CreateEmpty(ptr noundef %1, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 15 uses
  store ptr @SUNDataNode_HasChildren_InMem, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @SUNDataNode_IsLeaf_InMem, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @SUNDataNode_IsList_InMem, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @SUNDataNode_IsObject_InMem, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @SUNDataNode_AddChild_InMem, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @SUNDataNode_AddNamedChild_InMem, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr @SUNDataNode_GetChild_InMem, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @SUNDataNode_GetNamedChild_InMem, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr @SUNDataNode_RemoveChild_InMem, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr @SUNDataNode_RemoveNamedChild_InMem, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr @SUNDataNode_GetData_InMem, ptr %i.n, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr @SUNDataNode_GetDataNvector_InMem, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr @SUNDataNode_SetData_InMem, ptr %i.p, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr @SUNDataNode_SetDataNvector_InMem, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr @SUNDataNode_Destroy_InMem, ptr %i.r, align 8, !tbaa !30
  %calloc.i = call dereferenceable_or_null(56) ptr @calloc(i64 1, i64 56) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %calloc.i, ptr %i.s, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %0, ptr %i.u, align 8, !tbaa !50
  store ptr %i.c, ptr %2, align 8, !tbaa !10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @SUNDataNode_IsLeaf_InMem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = icmp eq i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @SUNDataNode_IsList_InMem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = icmp eq i32 %i.b, 1
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @SUNDataNode_IsObject_InMem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %i.c = icmp eq i32 %i.b, 2
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @SUNDataNode_HasChildren_InMem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.d, align 8, !tbaa !38
  %.not5 = icmp eq i64 %.val, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ 1, %bb.b ], [ %i.h, %bb.c ]
  store i32 %i.i, ptr %1, align 4, !tbaa !51
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i32 @SUNDataNode_AddChild_InMem(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 6 uses
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
  %i.m = fptosi x86_fp80 %i.l to i64              ; 2 uses
  %.not.i.i.i = icmp slt i64 %i.e, %i.m
  br i1 %.not.i.i.i, label %bb.d, label %SUNStlVector_SUNDataNode_Grow.exit.thread.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %2 = phi i64 [ %i.m, %bb.c ], [ 2, %bb.b ]      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = shl i64 %2, 3
  %i.q = tail call ptr @realloc(ptr noundef %i.o, i64 noundef %i.p) #14 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not11.i.i.i, label %SUNStlVector_SUNDataNode_PushBack.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.n, align 8, !tbaa !37
  store i64 %2, ptr %i.f, align 8, !tbaa !39
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !38
  br label %SUNStlVector_SUNDataNode_Grow.exit.thread.i

SUNStlVector_SUNDataNode_Grow.exit.thread.i:      ; preds = %bb.e, %bb.c, %bb.a
  %i.r = phi i64 [ %.pre.i, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.u = add nsw i64 %i.r, 1
  store i64 %i.u, ptr %i.d, align 8, !tbaa !38
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.r
  store ptr %1, ptr %i.v, align 8, !tbaa !10
  br label %SUNStlVector_SUNDataNode_PushBack.exit

SUNStlVector_SUNDataNode_PushBack.exit:           ; preds = %bb.d, %SUNStlVector_SUNDataNode_Grow.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  store ptr %0, ptr %i.x, align 8, !tbaa !53
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -9990, 1) i32 @SUNDataNode_AddNamedChild_InMem(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call i64 @SUNHashMap_Insert(ptr noundef %i.g, ptr noundef %1, ptr noundef %2) #12
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  store ptr %0, ptr %i.i, align 8, !tbaa !53
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52
  %i.m = add nsw i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !52
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SUNDataNode_HasChildren_InMem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !38 ; 2 uses
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %SUNDataNode_HasChildren_InMem.exit, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %.not8 = icmp eq ptr %i.k, null
  br i1 %.not8, label %SUNStlVector_SUNDataNode_At.exit.thread, label %bb.c

bb.c:                                             ; preds = %SUNStlVector_SUNDataNode_At.exit
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10
  store ptr %i.m, ptr %2, align 8, !tbaa !10
  br label %SUNStlVector_SUNDataNode_At.exit.thread

SUNStlVector_SUNDataNode_At.exit.thread:          ; preds = %SUNDataNode_HasChildren_InMem.exit.thread, %bb.c, %SUNStlVector_SUNDataNode_At.exit, %SUNDataNode_HasChildren_InMem.exit
  %.1 = phi i32 [ -9983, %SUNDataNode_HasChildren_InMem.exit ], [ 0, %bb.c ], [ -9983, %SUNStlVector_SUNDataNode_At.exit ], [ -9983, %SUNDataNode_HasChildren_InMem.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -9983, 1) i32 @SUNDataNode_GetNamedChild_InMem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 8)) %2) #0 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SUNDataNode_HasChildren_InMem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !38
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %SUNDataNode_HasChildren_InMem.exit, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 5 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %SUNDataNode_HasChildren_InMem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !38 ; 2 uses
  %.not5.i = icmp eq i64 %.val.i, 0
  br i1 %.not5.i, label %SUNDataNode_HasChildren_InMem.exit, label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit:               ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52
  %.not20 = icmp eq i64 %i.f, 0
  br i1 %.not20, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %SUNDataNode_HasChildren_InMem.exit
  store ptr null, ptr %2, align 8, !tbaa !10
  br label %SUNStlVector_SUNDataNode_Erase.exit

thread-pre-split:                                 ; preds = %SUNDataNode_HasChildren_InMem.exit
  %.pr = load i64, ptr %i.d, align 8, !tbaa !38
  br label %SUNDataNode_HasChildren_InMem.exit.thread

SUNDataNode_HasChildren_InMem.exit.thread:        ; preds = %bb.b, %thread-pre-split
  %i.g = phi i64 [ %.pr, %thread-pre-split ], [ %.val.i, %bb.b ] ; 2 uses
  %i.h = icmp sge i64 %1, %i.g
  %i.i = icmp slt i64 %1, 0
  %or.cond.i = or i1 %i.i, %i.h
  br i1 %or.cond.i, label %SUNStlVector_SUNDataNode_Erase.exit, label %SUNStlVector_SUNDataNode_At.exit

SUNStlVector_SUNDataNode_At.exit:                 ; preds = %SUNDataNode_HasChildren_InMem.exit.thread
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 4 uses
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %SUNStlVector_SUNDataNode_Erase.exit, label %bb.d

bb.d:                                             ; preds = %SUNStlVector_SUNDataNode_At.exit
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %1 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !10   ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !10
  %.not15 = icmp eq ptr %i.m, null
  br i1 %.not15, label %SUNStlVector_SUNDataNode_Erase.exit, label %SUNStlVector_SUNDataNode_Set.exit.i

SUNStlVector_SUNDataNode_Set.exit.i:              ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  store ptr null, ptr %i.o, align 8, !tbaa !53
  store ptr null, ptr %i.l, align 8, !tbaa !10
  %i.p = add nsw i64 %i.g, -1                     ; 4 uses
  %i.q = icmp slt i64 %1, %i.p
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %SUNStlVector_SUNDataNode_Set.exit.i
  %i.r = shl i64 %1, 3
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.r ; 2 uses
  %scevgep35.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.s = sub nuw nsw i64 %i.p, %1
  %i.t = shl nuw i64 %i.s, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i, ptr align 8 %scevgep35.i, i64 %i.t, i1 false), !tbaa !10
  br label %._crit_edge.i

end_hunk_0
