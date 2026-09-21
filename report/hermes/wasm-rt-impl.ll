Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/wasm-rt-impl?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
begin_hunk_0_@get_mmap_hint:bb.a
  %i.l = sub i64 0, %i.k
  %i.m = and i64 %i.j, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  ret ptr %i.n
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define hidden void @wasm_rt_trap(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @g_wasm_rt_jmp_buf) ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.d, i32 noundef %0) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @wasm_rt_init() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @wasm_rt_is_initialized() local_unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @wasm_rt_free() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @wasm_rt_allocate_memory(ptr nofree noundef writeonly captures(none) initializes((8, 33)) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = zext i1 %3 to i8
  %i.d = shl i64 %1, 16                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.e, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.c, ptr %i.h, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.i = call i64 @getrandom(ptr noundef nonnull %i.b, i64 noundef 4, i32 noundef 1) #17 ; 0 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw i64 %i.k, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.m = call i64 @getrandom(ptr noundef nonnull %i.a, i64 noundef 4, i32 noundef 1) #17 ; 0 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.o = zext i32 %i.n to i64
  %.masked.i.i = and i64 %i.l, 70364449210368
  %i.p = or disjoint i64 %.masked.i.i, %i.o
  %i.q = call i64 @sysconf(i32 noundef 30) #17
  %i.r = sub i64 0, %i.q
  %i.s = and i64 %i.p, %i.r
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = call ptr @mmap(ptr noundef %i.t, i64 noundef 8589934592, i32 noundef 0, i32 noundef 34, i32 noundef -1, i64 noundef 0) #17 ; 3 uses
  %magicptr = ptrtoint ptr %i.u to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @os_print_last_error(ptr noundef nonnull @.str)
  call void @abort() #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = call i32 @mprotect(ptr noundef nonnull %i.u, i64 noundef %i.d, i32 noundef 3) #17
  %.not16 = icmp eq i32 %i.v, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call fastcc void @os_print_last_error(ptr noundef nonnull @.str.1)
  call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %i.u, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @os_print_last_error(ptr nofree noundef readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  tail call void @perror(ptr noundef %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @wasm_rt_grow_memory(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = add i64 %i.b, %1                         ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %grow_memory_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %i.c, %i.b
  br i1 %i.e, label %grow_memory_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %grow_memory_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %i.b, 16
  %i.j = shl i64 %1, 16
  %i.k = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  %i.m = tail call i32 @mprotect(ptr noundef %i.l, i64 noundef %i.j, i32 noundef 3) #17
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %grow_memory_impl.exit

bb.e:                                             ; preds = %bb.d
  %i.n = shl i64 %i.c, 16
  store i64 %i.c, ptr %i.a, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !12
  store ptr %i.k, ptr %0, align 8, !tbaa !15
  br label %grow_memory_impl.exit

grow_memory_impl.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.1.i = phi i64 [ -1, %bb.b ], [ 0, %bb.a ], [ -1, %bb.c ], [ %i.b, %bb.e ], [ -1, %bb.d ]
  ret i64 %.1.i
}

; Function Attrs: nounwind uwtable
define hidden void @wasm_rt_free_memory(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = tail call i32 @munmap(ptr noundef %i.a, i64 noundef 8589934592) #17 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden void @wasm_rt_allocate_funcref_table(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !18
  %i.c = zext i32 %1 to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 24) #20
  store ptr %i.d, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @wasm_rt_free_funcref_table(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.a) #17
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden i32 @wasm_rt_grow_funcref_table(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly byval(%struct.wasm_rt_funcref_t) align 8 captures(none) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = zext i32 %1 to i64
  %i.e = add nuw nsw i64 %i.c, %i.d               ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !18
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ugt i64 %i.e, %i.i
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !19
  %i.l = mul nuw nsw i64 %i.e, 24
  %i.m = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %i.l) #21 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !19
  %i.n = trunc nuw i64 %i.e to i32
  store i32 %i.n, ptr %i.a, align 4, !tbaa !17
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.o = phi i64 [ %4, %.lr.ph ], [ %i.c, %bb.d ]
  %.026 = phi i32 [ %3, %.lr.ph ], [ %i.b, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  %3 = add i32 %.026, 1                           ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.r = icmp samesign ugt i64 %i.e, %4
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ], [ -1, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden void @wasm_rt_allocate_externref_table(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 8, !tbaa !25
  %i.c = zext i32 %1 to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 8) #20
  store ptr %i.d, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @wasm_rt_free_externref_table(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.a) #17
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden i32 @wasm_rt_grow_externref_table(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24   ; 4 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = zext i32 %1 to i64
  %i.e = add nuw nsw i64 %i.c, %i.d               ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ugt i64 %i.e, %i.i
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !26
  %i.l = shl nuw nsw i64 %i.e, 3
  %i.m = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %i.l) #21 ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !26
  %i.n = trunc nuw i64 %i.e to i32
  store i32 %i.n, ptr %i.a, align 4, !tbaa !24
  %.not30 = icmp eq i32 %1, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.o = phi i64 [ %4, %.lr.ph ], [ %i.c, %bb.d ]
  %.027 = phi i32 [ %3, %.lr.ph ], [ %i.b, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr %2, ptr %i.q, align 8, !tbaa !20
  %3 = add i32 %.027, 1                           ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.r = icmp samesign ugt i64 %i.e, %4
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ], [ -1, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @wasm_rt_strerror(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ult i32 %0, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wasm_rt_strerror, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.12, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"_Bool", !4, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"", !9, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32}
!12 = !{!11, !10, i64 24}
!13 = !{!11, !10, i64 8}
!14 = !{!11, !10, i64 16}
!15 = !{!11, !9, i64 0}
!16 = !{!"", !8, i64 0, !5, i64 8, !5, i64 12}
!17 = !{!16, !5, i64 12}
!18 = !{!16, !5, i64 8}
!19 = !{!16, !8, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"any p2 pointer", !8, i64 0}
!23 = !{!"", !22, i64 0, !5, i64 8, !5, i64 12}
!24 = !{!23, !5, i64 12}
!25 = !{!23, !5, i64 8}
!26 = !{!23, !22, i64 0}
!27 = !{!"", !7, i64 0, !4, i64 8}
!28 = !{!27, !7, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!11, !7, i64 32}
!32 = distinct !{!32, !21}
!33 = !{!9, !9, i64 0}
!34 = !{i64 0, i64 8, !33, i64 8, i64 8, !20, i64 16, i64 8, !20}
!35 = distinct !{!35, !21}
end_hunk_0
