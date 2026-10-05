Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/cjson_add?download=true
inline.NumInlined: 222
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@main:bb.a
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cJSON_add_object_should_add_object, ptr noundef nonnull @.str.28, i32 noundef 462) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cjson_add_object_should_fail_with_null_pointers, ptr noundef nonnull @.str.29, i32 noundef 463) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cjson_add_object_should_fail_on_allocation_failure, ptr noundef nonnull @.str.30, i32 noundef 464) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cJSON_add_array_should_add_array, ptr noundef nonnull @.str.31, i32 noundef 466) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cjson_add_array_should_fail_with_null_pointers, ptr noundef nonnull @.str.32, i32 noundef 467) #30
  tail call void @UnityDefaultTestRun(ptr noundef nonnull @cjson_add_array_should_fail_on_allocation_failure, ptr noundef nonnull @.str.33, i32 noundef 468) #30
  %i.a = tail call i32 @UnityEnd() #30
  ret i32 %i.a
}

declare void @UnityBegin(ptr noundef) local_unnamed_addr #22

declare void @UnityDefaultTestRun(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_null_should_add_null() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 3 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !10 ; 15 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddNullToObject.exit, label %cJSON_CreateNull.exit.i

cJSON_CreateNull.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 4, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddNullToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateNull.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 5) #30, !inline_history !11 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddNullToObject.exit.thread4, label %bb.d

cJSON_AddNullToObject.exit.thread4:               ; preds = %bb.c
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %cJSON_AddNullToObject.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.35, i64 5, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %cJSON_AddNullToObject.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %cJSON_AddNullToObject.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %cJSON_AddNullToObject.exit.thread

cJSON_AddNullToObject.exit:                       ; preds = %cJSON_CreateObject.exit, %cJSON_CreateNull.exit.i
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br i1 %.not.i.i, label %.loopexit, label %cJSON_AddNullToObject.exit.thread

cJSON_AddNullToObject.exit.thread:                ; preds = %bb.j, %bb.i, %bb.h, %cJSON_AddNullToObject.exit.thread4, %cJSON_AddNullToObject.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.x, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %cJSON_AddNullToObject.exit.thread, %bb.l
  %.048.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.x, %cJSON_AddNullToObject.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(5) @.str.35, ptr noundef nonnull dereferenceable(1) %i.z) #31
  %.not27.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ab, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.l, %.lr.ph.i.i, %cJSON_AddNullToObject.exit.thread, %cJSON_AddNullToObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 55) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.ae, i64 noundef 4, ptr noundef null, i64 noundef 56, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_null_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !10 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateNull.exit.i

cJSON_CreateNull.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 4, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateNull.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.e = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !10 ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateNull.exit.i4

cJSON_CreateNull.exit.i4:                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 4, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateNull.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.e)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_null_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !10 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddNullToObject.exit, label %cJSON_CreateNull.exit.i

cJSON_CreateNull.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 4, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddNullToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateNull.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 5) #30, !inline_history !11 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddNullToObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.35, i64 5, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %bb.k

cJSON_AddNullToObject.exit:                       ; preds = %cJSON_CreateObject.exit, %cJSON_CreateNull.exit.i, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 77) #30
  br label %bb.l

bb.l:                                             ; preds = %cJSON_AddNullToObject.exit, %bb.k
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_true_should_add_true() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 3 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !13 ; 15 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddTrueToObject.exit, label %cJSON_CreateTrue.exit.i

cJSON_CreateTrue.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 2, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddTrueToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateTrue.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 5) #30, !inline_history !14 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddTrueToObject.exit.thread4, label %bb.d

cJSON_AddTrueToObject.exit.thread4:               ; preds = %bb.c
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %cJSON_AddTrueToObject.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.37, i64 5, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %cJSON_AddTrueToObject.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %cJSON_AddTrueToObject.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %cJSON_AddTrueToObject.exit.thread

cJSON_AddTrueToObject.exit:                       ; preds = %cJSON_CreateObject.exit, %cJSON_CreateTrue.exit.i
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br i1 %.not.i.i, label %.loopexit, label %cJSON_AddTrueToObject.exit.thread

cJSON_AddTrueToObject.exit.thread:                ; preds = %bb.j, %bb.i, %bb.h, %cJSON_AddTrueToObject.exit.thread4, %cJSON_AddTrueToObject.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.x, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %cJSON_AddTrueToObject.exit.thread, %bb.l
  %.048.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.x, %cJSON_AddTrueToObject.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(5) @.str.37, ptr noundef nonnull dereferenceable(1) %i.z) #31
  %.not27.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ab, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.l, %.lr.ph.i.i, %cJSON_AddTrueToObject.exit.thread, %cJSON_AddTrueToObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 91) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.ae, i64 noundef 2, ptr noundef null, i64 noundef 92, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_true_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !13 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateTrue.exit.i

cJSON_CreateTrue.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateTrue.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.e = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !13 ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateTrue.exit.i4

cJSON_CreateTrue.exit.i4:                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 2, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateTrue.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.e)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_true_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !13 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddTrueToObject.exit, label %cJSON_CreateTrue.exit.i

cJSON_CreateTrue.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 2, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddTrueToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateTrue.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 5) #30, !inline_history !14 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddTrueToObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.37, i64 5, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %bb.k

cJSON_AddTrueToObject.exit:                       ; preds = %cJSON_CreateObject.exit, %cJSON_CreateTrue.exit.i, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 113) #30
  br label %bb.l

bb.l:                                             ; preds = %cJSON_AddTrueToObject.exit, %bb.k
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_create_int_array_should_fail_on_allocation_failure() #8 {
bb.a:
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.a = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !117 ; 5 uses
  %.not.i.i.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.not.i, label %cJSON_CreateIntArray.exit.thread, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 32, ptr %i.b, align 8, !tbaa !46
  %global_hooks.val.i32.peel.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i32.peel.i(i64 noundef 64) #30, !inline_history !118 ; 8 uses
  %.not.i.i33.peel.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i33.peel.i, label %.split.us.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %cJSON_CreateArray.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 8, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 1, ptr %i.g, align 8, !tbaa !56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !54
  %global_hooks.val.i32.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.h = tail call ptr %global_hooks.val.i32.i(i64 noundef 64) #30, !inline_history !118 ; 9 uses
  %.not.i.i33.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i33.i, label %.split.us.i, label %.lr.ph.split.i.1

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %cJSON_CreateArray.exit.i
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %cJSON_CreateIntArray.exit.thread

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 8, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store double 2.000000e+00, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 2, ptr %i.k, align 8, !tbaa !56
  store ptr %i.h, ptr %i.c, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.c, ptr %i.l, align 8, !tbaa !74
  %global_hooks.val.i32.i.1 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.m = tail call ptr %global_hooks.val.i32.i.1(i64 noundef 64) #30, !inline_history !118 ; 8 uses
  %.not.i.i33.i.1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i33.i.1, label %.split.us.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.split.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 8, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store double 3.000000e+00, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 3, ptr %i.p, align 8, !tbaa !56
  store ptr %i.m, ptr %i.h, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.h, ptr %i.q, align 8, !tbaa !74
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %.not.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i2, label %cJSON_CreateIntArray.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.m, ptr %i.s, align 8, !tbaa !74
  br label %cJSON_CreateIntArray.exit

cJSON_CreateIntArray.exit:                        ; preds = %bb.b, %.loopexit.i
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 126) #30
  br label %cJSON_CreateIntArray.exit.thread

cJSON_CreateIntArray.exit.thread:                 ; preds = %.split.us.i, %bb.a, %cJSON_CreateIntArray.exit
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_create_float_array_should_fail_on_allocation_failure() #8 {
bb.a:
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.a = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !119 ; 5 uses
  %.not.i.i.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.not.i, label %cJSON_CreateFloatArray.exit.thread, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 32, ptr %i.b, align 8, !tbaa !46
  %global_hooks.val.i32.peel.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i32.peel.i(i64 noundef 64) #30, !inline_history !120 ; 8 uses
  %.not.i.i33.peel.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i33.peel.i, label %.split.us.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %cJSON_CreateArray.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 8, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 1, ptr %i.g, align 8, !tbaa !56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !54
  %global_hooks.val.i32.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.h = tail call ptr %global_hooks.val.i32.i(i64 noundef 64) #30, !inline_history !120 ; 9 uses
  %.not.i.i33.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i33.i, label %.split.us.i, label %.lr.ph.split.i.1

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %cJSON_CreateArray.exit.i
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %cJSON_CreateFloatArray.exit.thread

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 8, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store double 2.000000e+00, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 2, ptr %i.k, align 8, !tbaa !56
  store ptr %i.h, ptr %i.c, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.c, ptr %i.l, align 8, !tbaa !74
  %global_hooks.val.i32.i.1 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.m = tail call ptr %global_hooks.val.i32.i.1(i64 noundef 64) #30, !inline_history !120 ; 8 uses
  %.not.i.i33.i.1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i33.i.1, label %.split.us.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.split.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 8, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store double 3.000000e+00, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 3, ptr %i.p, align 8, !tbaa !56
  store ptr %i.m, ptr %i.h, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.h, ptr %i.q, align 8, !tbaa !74
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %.not.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i2, label %cJSON_CreateFloatArray.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.m, ptr %i.s, align 8, !tbaa !74
  br label %cJSON_CreateFloatArray.exit

cJSON_CreateFloatArray.exit:                      ; preds = %bb.b, %.loopexit.i
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 137) #30
  br label %cJSON_CreateFloatArray.exit.thread

cJSON_CreateFloatArray.exit.thread:               ; preds = %.split.us.i, %bb.a, %cJSON_CreateFloatArray.exit
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_create_double_array_should_fail_on_allocation_failure() #8 {
bb.a:
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.a = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !121 ; 5 uses
  %.not.i.i.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.not.i, label %cJSON_CreateDoubleArray.exit.thread, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 32, ptr %i.b, align 8, !tbaa !46
  %global_hooks.val.i32.peel.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i32.peel.i(i64 noundef 64) #30, !inline_history !122 ; 8 uses
  %.not.i.i33.peel.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i33.peel.i, label %.split.us.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %cJSON_CreateArray.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 8, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 1, ptr %i.g, align 8, !tbaa !56
  store ptr %i.c, ptr %i.d, align 8, !tbaa !54
  %global_hooks.val.i32.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.h = tail call ptr %global_hooks.val.i32.i(i64 noundef 64) #30, !inline_history !122 ; 9 uses
  %.not.i.i33.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i33.i, label %.split.us.i, label %.lr.ph.split.i.1

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %cJSON_CreateArray.exit.i
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  br label %cJSON_CreateDoubleArray.exit.thread

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 8, ptr %i.i, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store double 2.000000e+00, ptr %i.j, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 2, ptr %i.k, align 8, !tbaa !56
  store ptr %i.h, ptr %i.c, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.c, ptr %i.l, align 8, !tbaa !74
  %global_hooks.val.i32.i.1 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.m = tail call ptr %global_hooks.val.i32.i.1(i64 noundef 64) #30, !inline_history !122 ; 8 uses
  %.not.i.i33.i.1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i33.i.1, label %.split.us.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.split.i.1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 8, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store double 3.000000e+00, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 3, ptr %i.p, align 8, !tbaa !56
  store ptr %i.m, ptr %i.h, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.h, ptr %i.q, align 8, !tbaa !74
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %.not.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i2, label %cJSON_CreateDoubleArray.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.m, ptr %i.s, align 8, !tbaa !74
  br label %cJSON_CreateDoubleArray.exit

cJSON_CreateDoubleArray.exit:                     ; preds = %bb.b, %.loopexit.i
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 148) #30
  br label %cJSON_CreateDoubleArray.exit.thread

cJSON_CreateDoubleArray.exit.thread:              ; preds = %.split.us.i, %bb.a, %cJSON_CreateDoubleArray.exit
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_create_string_array_should_fail_on_allocation_failure() #8 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.cjson_create_string_array_should_fail_on_allocation_failure.strings, i64 24, i1 false)
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.b = call ptr @cJSON_CreateStringArray(ptr noundef nonnull %i.a, i32 noundef 3)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 159) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_false_should_add_false() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 3 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !16 ; 15 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddFalseToObject.exit, label %cJSON_CreateFalse.exit.i

cJSON_CreateFalse.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 1, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddFalseToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateFalse.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 6) #30, !inline_history !17 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddFalseToObject.exit.thread4, label %bb.d

cJSON_AddFalseToObject.exit.thread4:              ; preds = %bb.c
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %cJSON_AddFalseToObject.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.36, i64 6, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %cJSON_AddFalseToObject.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %cJSON_AddFalseToObject.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %cJSON_AddFalseToObject.exit.thread

cJSON_AddFalseToObject.exit:                      ; preds = %cJSON_CreateObject.exit, %cJSON_CreateFalse.exit.i
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br i1 %.not.i.i, label %.loopexit, label %cJSON_AddFalseToObject.exit.thread

cJSON_AddFalseToObject.exit.thread:               ; preds = %bb.j, %bb.i, %bb.h, %cJSON_AddFalseToObject.exit.thread4, %cJSON_AddFalseToObject.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.x, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %cJSON_AddFalseToObject.exit.thread, %bb.l
  %.048.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.x, %cJSON_AddFalseToObject.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(6) @.str.36, ptr noundef nonnull dereferenceable(1) %i.z) #31
  %.not27.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ab, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.l, %.lr.ph.i.i, %cJSON_AddFalseToObject.exit.thread, %cJSON_AddFalseToObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 171) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.ae, i64 noundef 1, ptr noundef null, i64 noundef 172, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_false_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !16 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateFalse.exit.i

cJSON_CreateFalse.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateFalse.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.e = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !16 ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateFalse.exit.i4

cJSON_CreateFalse.exit.i4:                        ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateFalse.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.e)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_false_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !16 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddFalseToObject.exit, label %cJSON_CreateFalse.exit.i

cJSON_CreateFalse.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 1, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddFalseToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateFalse.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 6) #30, !inline_history !17 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddFalseToObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.36, i64 6, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %bb.k

cJSON_AddFalseToObject.exit:                      ; preds = %cJSON_CreateObject.exit, %cJSON_CreateFalse.exit.i, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 193) #30
  br label %bb.l

bb.l:                                             ; preds = %cJSON_AddFalseToObject.exit, %bb.k
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_bool_should_add_bool() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 8 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 5 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !19 ; 15 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddBoolToObject.exit, label %cJSON_CreateBool.exit.i

cJSON_CreateBool.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 2, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddBoolToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateBool.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 5) #30, !inline_history !20 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddBoolToObject.exit.thread26, label %bb.d

cJSON_AddBoolToObject.exit.thread26:              ; preds = %bb.c
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %cJSON_AddBoolToObject.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.37, i64 5, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %cJSON_AddBoolToObject.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %cJSON_AddBoolToObject.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %cJSON_AddBoolToObject.exit.thread

cJSON_AddBoolToObject.exit:                       ; preds = %cJSON_CreateObject.exit, %cJSON_CreateBool.exit.i
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br i1 %.not.i.i, label %.loopexit36, label %cJSON_AddBoolToObject.exit.thread

cJSON_AddBoolToObject.exit.thread:                ; preds = %bb.j, %bb.i, %bb.h, %cJSON_AddBoolToObject.exit.thread26, %cJSON_AddBoolToObject.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.x, null
  br i1 %.not2349.i.i, label %.loopexit36, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %cJSON_AddBoolToObject.exit.thread, %bb.l
  %.048.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.x, %cJSON_AddBoolToObject.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %.loopexit36, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(5) @.str.37, ptr noundef nonnull dereferenceable(1) %i.z) #31
  %.not27.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ab, null
  br i1 %.not25.i.i, label %.loopexit36, label %.lr.ph.i.i

.loopexit36:                                      ; preds = %bb.l, %.lr.ph.i.i, %cJSON_AddBoolToObject.exit.thread, %cJSON_AddBoolToObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 208) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.ae, i64 noundef 2, ptr noundef null, i64 noundef 209, i32 noundef 20) #30
  %global_hooks.val.i.i8 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.af = tail call ptr %global_hooks.val.i.i8(i64 noundef 64) #30, !inline_history !19 ; 16 uses
  %.not.i.i.i9 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i9, label %cJSON_AddBoolToObject.exit17, label %cJSON_CreateBool.exit.i10

cJSON_CreateBool.exit.i10:                        ; preds = %cJSON_GetObjectItemCaseSensitive.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, i8 0, i64 64, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  store i32 1, ptr %i.ag, align 8, !tbaa !46
  %i.ah = icmp eq ptr %i.a, %i.af
  %or.cond34.i.i11 = or i1 %.not.i.i, %i.ah
  br i1 %or.cond34.i.i11, label %cJSON_AddBoolToObject.exit17, label %bb.m

bb.m:                                             ; preds = %cJSON_CreateBool.exit.i10
  %i.ai = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.aj = tail call ptr %i.ai(i64 noundef 6) #30, !inline_history !20 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %cJSON_AddBoolToObject.exit17.thread31, label %bb.n

cJSON_AddBoolToObject.exit17.thread31:            ; preds = %bb.m
  tail call void @cJSON_Delete(ptr noundef nonnull %i.af)
  br label %cJSON_AddBoolToObject.exit17.thread

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.36, i64 6, i1 false)
  %i.al = load i32, ptr %i.ag, align 8, !tbaa !46 ; 2 uses
  %i.am = and i32 %i.al, -513
  %i.an = and i32 %i.al, 512
  %.not32.i.i12 = icmp eq i32 %i.an, 0
  br i1 %.not32.i.i12, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %.not33.i.i15 = icmp eq ptr %i.ap, null
  br i1 %.not33.i.i15, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.aq(ptr noundef nonnull %i.ap) #30, !inline_history !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !55
  store i32 %i.am, ptr %i.ag, align 8, !tbaa !46
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !54  ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %cJSON_AddBoolToObject.exit17.thread.thread, label %bb.r

cJSON_AddBoolToObject.exit17.thread.thread:       ; preds = %bb.q
  store ptr %i.af, ptr %i.w, align 8, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.af, ptr %i.au, align 8, !tbaa !74
  store ptr null, ptr %i.af, align 8, !tbaa !53
  br label %.lr.ph.i.i19.preheader

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !74 ; 3 uses
  %.not.i.i6.i13 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i6.i13, label %cJSON_AddBoolToObject.exit17.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.af, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !74
  store ptr %i.af, ptr %i.av, align 8, !tbaa !74
  br label %cJSON_AddBoolToObject.exit17.thread

cJSON_AddBoolToObject.exit17:                     ; preds = %cJSON_GetObjectItemCaseSensitive.exit, %cJSON_CreateBool.exit.i10
  tail call void @cJSON_Delete(ptr noundef %i.af)
  br i1 %.not.i.i, label %.loopexit, label %cJSON_AddBoolToObject.exit17.thread

cJSON_AddBoolToObject.exit17.thread:              ; preds = %bb.s, %bb.r, %cJSON_AddBoolToObject.exit17.thread31, %cJSON_AddBoolToObject.exit17
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i18 = icmp eq ptr %.pr, null
  br i1 %.not2349.i.i18, label %.loopexit, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %cJSON_AddBoolToObject.exit17.thread.thread, %cJSON_AddBoolToObject.exit17.thread
  %.048.i.i20.ph = phi ptr [ %.pr, %cJSON_AddBoolToObject.exit17.thread ], [ %i.af, %cJSON_AddBoolToObject.exit17.thread.thread ]
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.preheader, %bb.u
  %.048.i.i20 = phi ptr [ %i.bb, %bb.u ], [ %.048.i.i20.ph, %.lr.ph.i.i19.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.048.i.i20, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55 ; 2 uses
  %.not26.i.i21 = icmp eq ptr %i.az, null
  br i1 %.not26.i.i21, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i19
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(6) @.str.36, ptr noundef nonnull dereferenceable(1) %i.az) #31
  %.not27.i.i22 = icmp eq i32 %i.ba, 0
  br i1 %.not27.i.i22, label %cJSON_GetObjectItemCaseSensitive.exit25, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = load ptr, ptr %.048.i.i20, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i23 = icmp eq ptr %i.bb, null
  br i1 %.not25.i.i23, label %.loopexit, label %.lr.ph.i.i19

.loopexit:                                        ; preds = %bb.u, %.lr.ph.i.i19, %cJSON_AddBoolToObject.exit17.thread, %cJSON_AddBoolToObject.exit17
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 213) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit25:          ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %.048.i.i20, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !46
  %i.be = sext i32 %i.bd to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.be, i64 noundef 1, ptr noundef null, i64 noundef 214, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_bool_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !19 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateBool.exit.i

cJSON_CreateBool.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateBool.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.e = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !19 ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateBool.exit.i4

cJSON_CreateBool.exit.i4:                         ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateBool.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.e)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_bool_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !19 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddBoolToObject.exit, label %cJSON_CreateBool.exit.i

cJSON_CreateBool.exit.i:                          ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 1, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddBoolToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateBool.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 6) #30, !inline_history !20 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddBoolToObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.36, i64 6, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %bb.k

cJSON_AddBoolToObject.exit:                       ; preds = %cJSON_CreateObject.exit, %cJSON_CreateBool.exit.i, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 235) #30
  br label %bb.l

bb.l:                                             ; preds = %cJSON_AddBoolToObject.exit, %bb.k
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_number_should_add_number() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit.thread, label %bb.b

cJSON_CreateObject.exit.thread:                   ; preds = %bb.a
  %i.b = tail call ptr @cJSON_AddNumberToObject(ptr noundef null, ptr noundef nonnull @.str.49, double noundef 4.200000e+01) ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.c, align 8, !tbaa !46
  %i.d = tail call ptr @cJSON_AddNumberToObject(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49, double noundef 4.200000e+01) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.f, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.048.i.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.h, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(7) @.str.49, ptr noundef nonnull dereferenceable(1) %i.h) #31
  %.not27.i.i = icmp eq i32 %i.i, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.j, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i, %bb.b, %cJSON_CreateObject.exit.thread
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 249) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = sext i32 %i.l to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.m, i64 noundef 8, ptr noundef null, i64 noundef 251, i32 noundef 20) #30
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 48
  %i.o = load double, ptr %i.n, align 8, !tbaa !48 ; 2 uses
  %i.p = fmul double %i.o, f0x3D719799812DEA11
  tail call void @UnityAssertDoublesWithin(double noundef %i.p, double noundef %i.o, double noundef 4.200000e+01, ptr noundef null, i64 noundef 252) #30
  %i.q = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !56
  %i.s = sext i32 %i.r to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.s, i64 noundef 42, ptr noundef null, i64 noundef 253, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_number_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !123 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateNumber.exit.i

cJSON_CreateNumber.exit.i:                        ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 8, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double 4.200000e+01, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 42, ptr %i.f, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateNumber.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !123 ; 6 uses
  %.not.i.i.i3 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateNumber.exit.i4

cJSON_CreateNumber.exit.i4:                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 8, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store double 4.200000e+01, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 42, ptr %i.j, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateNumber.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.g)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_number_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @cJSON_AddNumberToObject(ptr noundef %i.a, ptr noundef nonnull @.str.49, double noundef 4.200000e+01)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 274) #30
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateObject.exit, %bb.c
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_string_should_add_string() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit.thread, label %bb.b

cJSON_CreateObject.exit.thread:                   ; preds = %bb.a
  %i.b = tail call ptr @cJSON_AddStringToObject(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.c, align 8, !tbaa !46
  %i.d = tail call ptr @cJSON_AddStringToObject(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.f, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.048.i.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.h, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(7) @.str.50, ptr noundef nonnull dereferenceable(1) %i.h) #31
  %.not27.i.i = icmp eq i32 %i.i, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.j, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i, %bb.b, %cJSON_CreateObject.exit.thread
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 288) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = sext i32 %i.l to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.m, i64 noundef 16, ptr noundef null, i64 noundef 289, i32 noundef 20) #30
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  tail call void @UnityAssertEqualString(ptr noundef %i.o, ptr noundef nonnull @.str.51, ptr noundef null, i64 noundef 290) #30
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_string_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !124 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 16, ptr %i.d, align 8, !tbaa !46
  %i.e = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.f = tail call ptr %i.e(i64 noundef 7) #30, !inline_history !125 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %cJSON_strdup.exit.i.i

cJSON_strdup.exit.i.i:                            ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.50, i64 7, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.f, ptr %i.h, align 8, !tbaa !47
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !47
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cJSON_strdup.exit.i.i, %cJSON_CreateObject.exit
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.c, %cJSON_strdup.exit.i.i ], [ null, %cJSON_CreateObject.exit ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.j = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !124 ; 7 uses
  %.not.i.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 16, ptr %i.k, align 8, !tbaa !46
  %i.l = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.m = tail call ptr %i.l(i64 noundef 7) #30, !inline_history !125 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %cJSON_strdup.exit.i.i4

cJSON_strdup.exit.i.i4:                           ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.50, i64 7, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.o, align 8, !tbaa !47
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.p, align 8, !tbaa !47
  tail call void @cJSON_Delete(ptr noundef nonnull %i.j)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %cJSON_strdup.exit.i.i4, %bb.e
  %.0.i.i5 = phi ptr [ null, %bb.g ], [ %i.j, %cJSON_strdup.exit.i.i4 ], [ null, %bb.e ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i5)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_string_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @cJSON_AddStringToObject(ptr noundef %i.a, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.50)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 311) #30
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateObject.exit, %bb.c
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_raw_should_add_raw() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit.thread, label %bb.b

cJSON_CreateObject.exit.thread:                   ; preds = %bb.a
  %i.b = tail call ptr @cJSON_AddRawToObject(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) ; 0 uses
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.c, align 8, !tbaa !46
  %i.d = tail call ptr @cJSON_AddRawToObject(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.f, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.048.i.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.h, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(4) @.str.52, ptr noundef nonnull dereferenceable(1) %i.h) #31
  %.not27.i.i = icmp eq i32 %i.i, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.j, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.d, %.lr.ph.i.i, %bb.b, %cJSON_CreateObject.exit.thread
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 325) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46
  %i.m = sext i32 %i.l to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.m, i64 noundef 128, ptr noundef null, i64 noundef 326, i32 noundef 20) #30
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  tail call void @UnityAssertEqualString(ptr noundef %i.o, ptr noundef nonnull @.str.53, ptr noundef null, i64 noundef 327) #30
  tail call void @cJSON_Delete(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_raw_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !126 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 128, ptr %i.d, align 8, !tbaa !46
  %i.e = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.f = tail call ptr %i.e(i64 noundef 3) #30, !inline_history !127 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %cJSON_strdup.exit.i.i

cJSON_strdup.exit.i.i:                            ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.53, i64 3, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.f, ptr %i.h, align 8, !tbaa !47
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !47
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %cJSON_strdup.exit.i.i, %cJSON_CreateObject.exit
  %.0.i.i = phi ptr [ null, %bb.d ], [ %i.c, %cJSON_strdup.exit.i.i ], [ null, %cJSON_CreateObject.exit ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.j = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !126 ; 7 uses
  %.not.i.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i3, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 128, ptr %i.k, align 8, !tbaa !46
  %i.l = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.m = tail call ptr %i.l(i64 noundef 3) #30, !inline_history !127 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %cJSON_strdup.exit.i.i4

cJSON_strdup.exit.i.i4:                           ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.53, i64 3, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.m, ptr %i.o, align 8, !tbaa !47
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.p, align 8, !tbaa !47
  tail call void @cJSON_Delete(ptr noundef nonnull %i.j)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %cJSON_strdup.exit.i.i4, %bb.e
  %.0.i.i5 = phi ptr [ null, %bb.g ], [ %i.j, %cJSON_strdup.exit.i.i4 ], [ null, %bb.e ]
  tail call void @cJSON_Delete(ptr noundef %.0.i.i5)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_raw_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @cJSON_AddRawToObject(ptr noundef %i.a, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 348) #30
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateObject.exit, %bb.c
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cJSON_add_object_should_add_object() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 3 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !22 ; 15 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddObjectToObject.exit, label %cJSON_CreateObject.exit.i

cJSON_CreateObject.exit.i:                        ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 64, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddObjectToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 7) #30, !inline_history !23 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddObjectToObject.exit.thread4, label %bb.d

cJSON_AddObjectToObject.exit.thread4:             ; preds = %bb.c
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %cJSON_AddObjectToObject.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.54, i64 7, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %cJSON_AddObjectToObject.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %cJSON_AddObjectToObject.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %cJSON_AddObjectToObject.exit.thread

cJSON_AddObjectToObject.exit:                     ; preds = %cJSON_CreateObject.exit, %cJSON_CreateObject.exit.i
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br i1 %.not.i.i, label %.loopexit, label %cJSON_AddObjectToObject.exit.thread

cJSON_AddObjectToObject.exit.thread:              ; preds = %bb.j, %bb.i, %bb.h, %cJSON_AddObjectToObject.exit.thread4, %cJSON_AddObjectToObject.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.x, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %cJSON_AddObjectToObject.exit.thread, %bb.l
  %.048.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.x, %cJSON_AddObjectToObject.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(7) @.str.54, ptr noundef nonnull dereferenceable(1) %i.z) #31
  %.not27.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ab, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.l, %.lr.ph.i.i, %cJSON_AddObjectToObject.exit.thread, %cJSON_AddObjectToObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 361) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.ae, i64 noundef 64, ptr noundef null, i64 noundef 362, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_object_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !22 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateObject.exit.i

cJSON_CreateObject.exit.i:                        ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 64, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.e = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !22 ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateObject.exit.i4

cJSON_CreateObject.exit.i4:                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 64, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateObject.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.e)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_object_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !22 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddObjectToObject.exit, label %cJSON_CreateObject.exit.i

cJSON_CreateObject.exit.i:                        ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 64, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddObjectToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateObject.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 7) #30, !inline_history !23 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddObjectToObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.54, i64 7, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %bb.k

cJSON_AddObjectToObject.exit:                     ; preds = %cJSON_CreateObject.exit, %cJSON_CreateObject.exit.i, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 383) #30
  br label %bb.l

bb.l:                                             ; preds = %cJSON_AddObjectToObject.exit, %bb.k
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cJSON_add_array_should_add_array() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 3 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !25 ; 15 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddArrayToObject.exit, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 32, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddArrayToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateArray.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 6) #30, !inline_history !26 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddArrayToObject.exit.thread4, label %bb.d

cJSON_AddArrayToObject.exit.thread4:              ; preds = %bb.c
  tail call void @cJSON_Delete(ptr noundef nonnull %i.c)
  br label %cJSON_AddArrayToObject.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %cJSON_AddArrayToObject.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %cJSON_AddArrayToObject.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %cJSON_AddArrayToObject.exit.thread

cJSON_AddArrayToObject.exit:                      ; preds = %cJSON_CreateObject.exit, %cJSON_CreateArray.exit.i
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br i1 %.not.i.i, label %.loopexit, label %cJSON_AddArrayToObject.exit.thread

cJSON_AddArrayToObject.exit.thread:               ; preds = %bb.j, %bb.i, %bb.h, %cJSON_AddArrayToObject.exit.thread4, %cJSON_AddArrayToObject.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %.not2349.i.i = icmp eq ptr %i.x, null
  br i1 %.not2349.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %cJSON_AddArrayToObject.exit.thread, %bb.l
  %.048.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.x, %cJSON_AddArrayToObject.exit.thread ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 2 uses
  %.not26.i.i = icmp eq ptr %i.z, null
  br i1 %.not26.i.i, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(6) @.str.55, ptr noundef nonnull dereferenceable(1) %i.z) #31
  %.not27.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not27.i.i, label %cJSON_GetObjectItemCaseSensitive.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr %.048.i.i, align 8, !tbaa !53 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ab, null
  br i1 %.not25.i.i, label %.loopexit, label %.lr.ph.i.i

.loopexit:                                        ; preds = %bb.l, %.lr.ph.i.i, %cJSON_AddArrayToObject.exit.thread, %cJSON_AddArrayToObject.exit
  tail call void @UnityFail(ptr noundef nonnull @.str.44, i64 noundef 396) #30
  unreachable

cJSON_GetObjectItemCaseSensitive.exit:            ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  tail call void @UnityAssertEqualNumber(i64 noundef %i.ae, i64 noundef 32, ptr noundef null, i64 noundef 397, i32 noundef 20) #30
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_array_should_fail_with_null_pointers() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  %global_hooks.val.i.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.c = tail call ptr %global_hooks.val.i.i(i64 noundef 64) #30, !inline_history !25 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 32, ptr %i.d, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %cJSON_CreateArray.exit.i, %cJSON_CreateObject.exit
  tail call void @cJSON_Delete(ptr noundef %i.c)
  %global_hooks.val.i.i2 = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.e = tail call ptr %global_hooks.val.i.i2(i64 noundef 64) #30, !inline_history !25 ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3, label %bb.d, label %cJSON_CreateArray.exit.i4

cJSON_CreateArray.exit.i4:                        ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 32, ptr %i.f, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %cJSON_CreateArray.exit.i4, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.e)
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cjson_add_array_should_fail_on_allocation_failure() #8 {
bb.a:
  %global_hooks.val.i = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.a = tail call ptr %global_hooks.val.i(i64 noundef 64) #30, !inline_history !8 ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %cJSON_CreateObject.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 64, ptr %i.b, align 8, !tbaa !46
  br label %cJSON_CreateObject.exit

cJSON_CreateObject.exit:                          ; preds = %bb.a, %bb.b
  store ptr @failing_malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @normal_free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  %i.c = tail call ptr @failing_malloc(i64 noundef 64) #30, !inline_history !25 ; 14 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %cJSON_AddArrayToObject.exit, label %cJSON_CreateArray.exit.i

cJSON_CreateArray.exit.i:                         ; preds = %cJSON_CreateObject.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i32 32, ptr %i.d, align 8, !tbaa !46
  %i.e = icmp eq ptr %i.a, %i.c
  %or.cond34.i.i = or i1 %.not.i.i, %i.e
  br i1 %or.cond34.i.i, label %cJSON_AddArrayToObject.exit, label %bb.c

bb.c:                                             ; preds = %cJSON_CreateArray.exit.i
  %i.f = load ptr, ptr @global_hooks, align 8, !tbaa !50
  %i.g = tail call ptr %i.f(i64 noundef 6) #30, !inline_history !26 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %cJSON_AddArrayToObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(6) @.str.55, i64 6, i1 false)
  %i.i = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.j = and i32 %i.i, -513
  %i.k = and i32 %i.i, 512
  %.not32.i.i = icmp eq i32 %i.k, 0
  br i1 %.not32.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.not33.i.i = icmp eq ptr %i.m, null
  br i1 %.not33.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  tail call void %i.n(ptr noundef nonnull %i.m) #30, !inline_history !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.g, ptr %i.o, align 8, !tbaa !55
  store i32 %i.j, ptr %i.d, align 8, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.c, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.c, ptr %i.s, align 8, !tbaa !74
  store ptr null, ptr %i.c, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.c, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !74
  store ptr %i.c, ptr %i.t, align 8, !tbaa !74
  br label %bb.k

cJSON_AddArrayToObject.exit:                      ; preds = %cJSON_CreateObject.exit, %cJSON_CreateArray.exit.i, %bb.c
  tail call void @cJSON_Delete(ptr noundef %i.c)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @UnityFail(ptr noundef nonnull @.str.45, i64 noundef 418) #30
  br label %bb.l

bb.l:                                             ; preds = %cJSON_AddArrayToObject.exit, %bb.k
  store ptr @malloc, ptr @global_hooks, align 8, !tbaa !50
  store ptr @free, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 8), align 8, !tbaa !51
  store ptr @realloc, ptr getelementptr inbounds nuw (i8, ptr @global_hooks, i64 16), align 8, !tbaa !52
  tail call void @cJSON_Delete(ptr noundef %i.a)
  ret void
}

declare i32 @UnityEnd() local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_string(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 6 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 7 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !64
  %.not = icmp eq i8 %i.e, 34
  br i1 %.not, label %.preheader, label %.thread103

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60   ; 3 uses
  %i.h = add nuw nsw i64 %i.c, 1
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.thread103

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.in = phi ptr [ %.ptr124, %bb.d ], [ %.ptr, %.preheader ]
  %.059117 = phi i64 [ %.160, %bb.d ], [ 0, %.preheader ] ; 3 uses
  %.063116.idx = phi i64 [ %.164.add, %bb.d ], [ 1, %.preheader ] ; 5 uses
  %.063116.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.j = load i8, ptr %.063116.ptr, align 1, !tbaa !64
  switch i8 %i.j, label %bb.d [
    i8 34, label %bb.e
    i8 92, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %.063116.add = add nuw nsw i64 %.063116.idx, 1  ; 2 uses
  %i.k = add nuw nsw i64 %i.c, %.063116.add
  %.not75 = icmp ult i64 %i.k, %i.g
  br i1 %.not75, label %bb.c, label %.thread103

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %.059117, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.164.idx = phi i64 [ %.063116.add, %bb.c ], [ %.063116.idx, %.lr.ph ]
  %.160 = phi i64 [ %i.l, %bb.c ], [ %.059117, %.lr.ph ]
  %.164.add = add nuw nsw i64 %.164.idx, 1        ; 3 uses
  %.ptr124 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.164.add
  %i.m = add nuw nsw i64 %i.c, %.164.add
  %i.n = icmp ult i64 %i.m, %i.g
  br i1 %i.n, label %.lr.ph, label %.thread103

bb.e:                                             ; preds = %.lr.ph
  %i.o = ptrtoint ptr %.in to i64                 ; 4 uses
  %.063116.ptr.le = getelementptr inbounds nuw i8, ptr %i.d, i64 %.063116.idx
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69
  %i.s = add i64 %.059117, %i.p
  %reass.sub = sub i64 %i.o, %i.s
  %i.t = add i64 %reass.sub, 1
  %i.u = tail call ptr %i.r(i64 noundef %i.t) #30 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread103, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.e
  %i.w = icmp sgt i64 %.063116.idx, 1
  br i1 %i.w, label %.lr.ph123, label %.critedge._crit_edge

.lr.ph123:                                        ; preds = %.critedge.preheader, %.critedge
  %.065120 = phi ptr [ %.2, %.critedge ], [ %.ptr, %.critedge.preheader ] ; 13 uses
  %.090119 = phi ptr [ %.393, %.critedge ], [ %i.u, %.critedge.preheader ] ; 19 uses
  %i.x = load i8, ptr %.065120, align 1, !tbaa !64 ; 2 uses
  %.not76 = icmp eq i8 %i.x, 92
  br i1 %.not76, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph123
  %i.y = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 %i.x, ptr %.090119, align 1, !tbaa !64
  br label %.critedge

bb.g:                                             ; preds = %.lr.ph123
  %i.aa = ptrtoint ptr %.065120 to i64
  %i.ab = sub i64 %i.o, %i.aa                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 1
  br i1 %i.ac, label %utf16_literal_to_utf8.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.065120, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !64  ; 2 uses
  switch i8 %i.ae, label %utf16_literal_to_utf8.exit.thread [
    i8 98, label %bb.i
    i8 102, label %bb.j
    i8 110, label %bb.k
    i8 114, label %bb.l
    i8 116, label %bb.m
    i8 34, label %bb.n
    i8 92, label %bb.n
    i8 47, label %bb.n
    i8 117, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 8, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 12, ptr %.090119, align 1, !tbaa !64
  br label %bb.al

bb.k:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.090119, i64 1
  store i8 10, ptr %.090119, align 1, !tbaa !64
end_hunk_0
