Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/qjs?download=true
inline.NumInlined: 25
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@load_standalone_module:bb.a
bb.a:
  %i.a = load i32, ptr @qjsc_standalone_size, align 4, !tbaa !9
  %i.b = zext i32 %i.a to i64
  %i.c = tail call { i64, i64 } @JS_ReadObject(ptr noundef nonnull %0, ptr noundef nonnull @qjsc_standalone, i64 noundef %i.b, i32 noundef 1) #19 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 6 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 6 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @JS_ResolveModule(ptr noundef nonnull %0, i64 %i.d, i64 %i.e) #19
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @js_module_set_import_meta(ptr noundef nonnull %0, i64 %i.d, i64 %i.e, i1 noundef zeroext false, i1 noundef zeroext true) #19
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call { i64, i64 } @JS_DupValue(ptr noundef nonnull %0, i64 %i.d, i64 %i.e) #19 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  %i.o = tail call { i64, i64 } @JS_EvalFunction(ptr noundef nonnull %0, i64 %i.m, i64 %i.n) #19 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  %i.r = tail call { i64, i64 } @js_std_await(ptr noundef nonnull %0, i64 %i.p, i64 %i.q) #19 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 1        ; 2 uses
  %i.t = and i64 %i.s, 4294967295
  %i.u = icmp eq i64 %i.t, 6
  br i1 %i.u, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  tail call void @JS_FreeValue(ptr noundef nonnull %0, i64 %i.d, i64 %i.e) #19
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  tail call void @js_std_dump_error(ptr noundef nonnull %0) #19
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = extractvalue { i64, i64 } %i.r, 0
  tail call void @JS_FreeValue(ptr noundef nonnull %0, i64 %i.v, i64 %i.s) #19
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @JS_FreeValue(ptr noundef nonnull %0, i64 %i.d, i64 %i.e) #19
  %i.x = tail call { i64, i64 } @JS_GetModuleNamespace(ptr noundef nonnull %0, ptr noundef %i.w) #19
  ret { i64, i64 } %i.x
}

declare { i64, i64 } @JS_GetPropertyStr(ptr noundef, i64, i64, ptr noundef) local_unnamed_addr #2

declare void @JS_FreeValue(ptr noundef, i64, i64) local_unnamed_addr #2

declare { i64, i64 } @JS_Call(ptr noundef, i64, i64, i64, i64, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @js_std_eval_binary(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @js_std_loop(ptr noundef) local_unnamed_addr #2

declare void @js_std_dump_error(ptr noundef) local_unnamed_addr #2

declare void @JS_ComputeMemoryUsage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @JS_DumpMemoryUsage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @js_std_free_handlers(ptr noundef) local_unnamed_addr #2

declare void @JS_FreeContext(ptr noundef) local_unnamed_addr #2

declare void @JS_FreeRuntime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #7

declare ptr @JS_NewContext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal noundef ptr @js_trace_calloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) #4 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %1, i64 noundef %2) #26 ; 2 uses
  tail call void (ptr, ptr, ...) @js_trace_malloc_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %1, i64 noundef %2, ptr noundef %i.a)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @js_trace_malloc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #4 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %1) #25 ; 2 uses
  tail call void (ptr, ptr, ...) @js_trace_malloc_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i64 noundef %1, ptr noundef %i.a)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @js_trace_free(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @js_trace_malloc_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull %1)
  tail call void @free(ptr noundef nonnull %1) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @js_trace_realloc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #4 {
bb.a:
  tail call void (ptr, ptr, ...) @js_trace_malloc_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i64 noundef %2, ptr noundef %1)
  %i.a = tail call ptr @realloc(ptr noundef %1, i64 noundef %2) #27 ; 2 uses
  tail call void (ptr, ptr, ...) @js_trace_malloc_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %i.a)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @js__malloc_usable_size(ptr noundef %0) #13 {
bb.a:
  %i.a = tail call i64 @malloc_usable_size(ptr noundef %0) #19
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal void @js_trace_malloc_printf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.d = load i8, ptr %.0, align 1, !tbaa !14     ; 2 uses
  %i.e = zext i8 %i.d to i32
  switch i8 %i.d, label %bb.o [
    i8 0, label %bb.p
    i8 37, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge
  %i.f = load i8, ptr %i.c, align 1, !tbaa !14
  switch i8 %i.f, label %bb.o [
    i8 112, label %bb.c
    i8 122, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %2, align 16               ; 3 uses
  %i.h = icmp ult i32 %i.g, 41
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 16
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = add nuw nsw i32 %i.g, 8
  store i32 %i.l, ptr %2, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %i.k, %bb.d ], [ %i.m, %bb.e ]
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.val = load ptr, ptr %0, align 8, !tbaa !21
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %.val to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = call i64 @malloc_usable_size(ptr noundef nonnull %i.p) #19
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i64 noundef %i.u, i64 noundef %i.v) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 2
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.i, %bb.n, %bb.o
  %.0.be = phi ptr [ %i.x, %bb.i ], [ %i.am, %bb.n ], [ %i.c, %bb.o ]
  br label %.backedge, !llvm.loop !29

bb.j:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14
  %i.aa = icmp eq i8 %i.z, 100
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %2, align 16              ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 41
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.b, align 16
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = add nuw nsw i32 %i.ab, 8
  store i32 %i.ag, ptr %2, align 16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.a, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aj = phi ptr [ %i.af, %bb.l ], [ %i.ah, %bb.m ]
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !23
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.49, i64 noundef %i.ak) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 3
  br label %.backedge.backedge

bb.o:                                             ; preds = %bb.b, %.backedge, %bb.j
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ao = call i32 @putc(i32 noundef %i.e, ptr noundef %i.an) ; 0 uses
  br label %.backedge.backedge

bb.p:                                             ; preds = %.backedge
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #7

declare ptr @js_init_module_std(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @js_init_module_os(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @js_init_module_bjson(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i64, i64 } @JS_GetGlobalObject(ptr noundef) local_unnamed_addr #2

declare i32 @JS_SetPropertyFunctionList(ptr noundef, i64, i64, ptr noundef, i32 noundef) local_unnamed_addr #2

declare { i64, i64 } @JS_NewArray(ptr noundef) local_unnamed_addr #2

declare i32 @JS_SetPropertyUint32(ptr noundef, i64, i64, i32 noundef, i64, i64) local_unnamed_addr #2

declare i32 @JS_SetPropertyStr(ptr noundef, i64, i64, ptr noundef, i64, i64) local_unnamed_addr #2

declare { i64, i64 } @JS_NewObject(ptr noundef) local_unnamed_addr #2

declare { i64, i64 } @JS_NewObjectProto(ptr noundef, i64, i64) local_unnamed_addr #2

declare i32 @JS_DefinePropertyValueStr(ptr noundef, i64, i64, ptr noundef, i64, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_gc(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #4 {
bb.a:
  %i.a = tail call ptr @JS_GetRuntime(ptr noundef %0) #19
  tail call void @JS_RunGC(ptr noundef %i.a) #19
  ret { i64, i64 } { i64 0, i64 3 }
}

declare void @JS_RunGC(ptr noundef) local_unnamed_addr #2

declare ptr @JS_GetRuntime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_navigator_get_userAgent(ptr noundef %0, i64 %1, i64 %2) #4 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call ptr @JS_GetVersion() #19
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.66, ptr noundef %i.b) #19 ; 0 uses
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.e = call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret { i64, i64 } %i.e
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #1

declare { i64, i64 } @JS_Eval(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @js_module_set_import_meta(ptr noundef, i64, i64, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare { i64, i64 } @JS_EvalFunction(ptr noundef, i64, i64) local_unnamed_addr #2

declare { i64, i64 } @js_std_await(ptr noundef, i64, i64) local_unnamed_addr #2

declare ptr @js_load_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #17

declare zeroext i1 @JS_DetectModule(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @js_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i64, i64 } @JS_ReadObject(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @JS_ResolveModule(ptr noundef, i64, i64) local_unnamed_addr #2

declare { i64, i64 } @JS_DupValue(ptr noundef, i64, i64) local_unnamed_addr #2

declare { i64, i64 } @JS_GetModuleNamespace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i64, i64 } @JS_NewStringLen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"p2 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"trace_malloc_data", !15, i64 0}
!21 = !{!20, !15, i64 0}
!22 = !{!"long", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !19, !27}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19, !27}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = !{!10, !10, i64 0}
end_hunk_0
