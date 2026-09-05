Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tpm-util?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@tpm_util_crb_chunk_transfer:bb.a

tpm_wait_till_bit_clear.exit65:                   ; preds = %bb.l, %bb.n, %.lr.ph74
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %.072
  call void @qtest_memread(ptr noundef %0, i64 noundef %i.c, ptr noundef %i.ao, i64 noundef %i.ag) #11
  %i.ap = icmp samesign ult i64 %i.ad, %spec.select6166
  br i1 %i.ap, label %.lr.ph74, label %._crit_edge75, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_startup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false), !annotation !9
  call void %1(ptr noundef %0, ptr noundef nonnull @tpm_util_startup.tpm_startup, i64 noundef 12, ptr noundef nonnull %i.a, i64 noundef 1024) #11
  %i.b = load i64, ptr %i.a, align 16
  %i.c = xor i64 %i.b, 10995116278144
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i16, ptr %i.d, align 8
  %i.f = zext i16 %i.e to i64
  %i.g = or i64 %i.c, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @__func__.tpm_util_startup, ptr noundef nonnull @.str.7) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @g_assertion_message(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_pcrextend(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false), !annotation !9
  call void %1(ptr noundef %0, ptr noundef nonnull @tpm_util_pcrextend.tpm_pcrextend, i64 noundef 65, ptr noundef nonnull %i.a, i64 noundef 1024) #11
  %i.b = load i128, ptr %i.a, align 16
  %i.c = xor i128 %i.b, 20890720928384
  %i.d = getelementptr i8, ptr %i.a, i64 3
  %i.e = load i128, ptr %i.d, align 1
  %i.f = xor i128 %i.e, 20282409603651670423947252531200
  %i.g = or i128 %i.c, %i.f
  %i.h = icmp ne i128 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 175, ptr noundef nonnull @__func__.tpm_util_pcrextend, ptr noundef nonnull @.str.11) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_pcrread(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false), !annotation !9
  call void %1(ptr noundef %0, ptr noundef nonnull @tpm_util_pcrread.tpm_pcrread, i64 noundef 20, ptr noundef nonnull %i.a, i64 noundef 1024) #11
  %i.b = icmp ult i64 %3, 15
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @__func__.tpm_util_pcrread, ptr noundef nonnull @.str.12) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %i.a, align 16
  %i.e = load i64, ptr %2, align 1
  %i.f = xor i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %i.a, i64 5
  %i.h = getelementptr i8, ptr %2, i64 5
  %i.i = load i64, ptr %i.g, align 1
  %i.j = load i64, ptr %i.h, align 1
  %i.k = xor i64 %i.i, %i.j
  %i.l = or i64 %i.f, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.str.16.sink = phi ptr [ @.str.14, %bb.c ], [ @.str.16, %bb.d ]
  call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @__func__.tpm_util_pcrread, ptr noundef nonnull %.str.16.sink) #11
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.q = add i64 %3, -14
  %bcmp48 = call i32 @bcmp(ptr nonnull %i.o, ptr nonnull %i.p, i64 %i.q)
  %.not49 = icmp eq i32 %bcmp48, 0
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @__func__.tpm_util_pcrread, ptr noundef nonnull @.str.20) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @tpm_util_swtpm_has_tpm2() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = call i32 @g_spawn_sync(ptr noundef null, ptr noundef nonnull @tpm_util_swtpm_has_tpm2.argv, ptr noundef null, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.24) #13
  %.not2 = icmp ne ptr %i.d, null
  call void @g_free(ptr noundef nonnull %i.c) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.01 = phi i1 [ %.not2, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %.01
}

declare i32 @g_spawn_sync(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @tpm_util_swtpm_start(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((0, 8)) %2, ptr noundef %3) local_unnamed_addr #0 {
g_strdup_inline.exit34:
  %i.a = alloca [8 x ptr], align 16               ; 13 uses
  %i.b = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.25, ptr noundef %0) #11
  %i.c = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.26, ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = tail call noalias dereferenceable_or_null(6) ptr @g_malloc(i64 noundef 6) #14 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 noundef 6, i1 noundef false) #11
  store ptr %i.d, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = tail call noalias dereferenceable_or_null(7) ptr @g_malloc(i64 noundef 7) #14 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.22, i64 noundef 7, i1 noundef false) #11
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = tail call noalias dereferenceable_or_null(11) ptr @g_malloc(i64 noundef 11) #14 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.h, ptr noundef nonnull align 1 dereferenceable(11) @.str.27, i64 noundef 11, i1 noundef false) #11
  store ptr %i.h, ptr %i.g, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = tail call noalias dereferenceable_or_null(7) ptr @g_malloc(i64 noundef 7) #14 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.k, ptr noundef nonnull align 1 dereferenceable(7) @.str.28, i64 noundef 7, i1 noundef false) #11
  store ptr %i.k, ptr %i.j, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = tail call noalias dereferenceable_or_null(7) ptr @g_malloc(i64 noundef 7) #14 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.n, ptr noundef nonnull align 1 dereferenceable(7) @.str.24, i64 noundef 7, i1 noundef false) #11
  store ptr %i.n, ptr %i.m, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.o, align 8
  %i.p = tail call noalias dereferenceable_or_null(64) ptr @g_malloc0(i64 noundef 64) #14 ; 2 uses
  store ptr %i.p, ptr %2, align 8
  store i32 1, ptr %i.p, align 8
  %i.q = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef null) #11
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = call i32 @g_spawn_async(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef %3) #11
  %i.u = load ptr, ptr %i.a, align 16             ; 2 uses
  %.not35 = icmp eq ptr %i.u, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %g_strdup_inline.exit34, %.lr.ph
  %4 = phi ptr [ %i.w, %.lr.ph ], [ %i.u, %g_strdup_inline.exit34 ]
  %.02536 = phi i32 [ %5, %.lr.ph ], [ 0, %g_strdup_inline.exit34 ]
  call void @g_free(ptr noundef nonnull %4) #11
  %5 = add i32 %.02536, 1                         ; 2 uses
  %6 = zext i32 %5 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %6
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %g_strdup_inline.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.t
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #6

declare noalias ptr @g_build_filename(ptr noundef, ...) local_unnamed_addr #2

declare i32 @g_spawn_async(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_swtpm_kill(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_spawn_close_pid(i32 noundef %0) #11
  %i.a = tail call i32 @kill(i32 noundef %0, i32 noundef 0) #11
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @kill(i32 noundef %0, i32 noundef 9) #11 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @g_spawn_close_pid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_migrate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @qtest_qmp(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %1) #11 ; 4 uses
  %i.b = tail call i32 @qdict_haskey(ptr noundef %i.a, ptr noundef nonnull @.str.31) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 281, ptr noundef nonnull @__func__.tpm_util_migrate, ptr noundef nonnull @.str.32) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %qobject_unref_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not6.i = icmp eq i64 %i.d, 0
  br i1 %.not6.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %i.c, i64 1 seq_cst, align 8
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.g, label %qobject_unref_impl.exit

bb.g:                                             ; preds = %bb.f
  tail call void @qobject_destroy(ptr noundef nonnull %i.a) #11
  br label %qobject_unref_impl.exit

qobject_unref_impl.exit:                          ; preds = %bb.c, %bb.f, %bb.g
  ret void
}

declare ptr @qtest_qmp(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @qdict_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_wait_for_migration_complete(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ...) @qtest_qmp(ptr noundef %0, ptr noundef nonnull @.str.33) #11 ; 2 uses
  %i.b = tail call i32 @qdict_haskey(ptr noundef %i.a, ptr noundef nonnull @.str.31) #11
  %.not30 = icmp eq i32 %i.b, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !prof !15

._crit_edge:                                      ; preds = %bb.j, %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @__func__.tpm_util_wait_for_migration_complete, ptr noundef nonnull @.str.32) #12
  unreachable

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %i.c = phi ptr [ %i.o, %bb.j ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = tail call ptr @qdict_get_qdict(ptr noundef %i.c, ptr noundef nonnull @.str.31) #11 ; 2 uses
  %i.e = tail call i32 @qdict_haskey(ptr noundef %i.d, ptr noundef nonnull @.str.34) #11
  %.not26.not = icmp eq i32 %i.e, 0
  br i1 %.not26.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %.lr.ph
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 297, ptr noundef nonnull @__func__.tpm_util_wait_for_migration_complete, ptr noundef nonnull @.str.35) #12
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.f = tail call ptr @qdict_get_str(ptr noundef %i.d, ptr noundef nonnull @.str.36) #11 ; 3 uses
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(10) @.str.37) #13
  %i.h = icmp eq i32 %i.g, 0
  %i.i = tail call i32 @g_strcmp0(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.38) #11
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 300, ptr noundef nonnull @__func__.tpm_util_wait_for_migration_complete, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %qobject_unref_impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not6.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.j, i64 1 seq_cst, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %qobject_unref_impl.exit

bb.i:                                             ; preds = %bb.h
  tail call void @qobject_destroy(ptr noundef nonnull %i.c) #11
  br label %qobject_unref_impl.exit

qobject_unref_impl.exit:                          ; preds = %bb.e, %bb.h, %bb.i
  br i1 %i.h, label %bb.k, label %bb.j

bb.j:                                             ; preds = %qobject_unref_impl.exit
  %i.n = tail call i32 @usleep(i32 noundef 1000) #11 ; 0 uses
  %i.o = tail call ptr (ptr, ptr, ...) @qtest_qmp(ptr noundef %0, ptr noundef nonnull @.str.33) #11 ; 2 uses
  %i.p = tail call i32 @qdict_haskey(ptr noundef %i.o, ptr noundef nonnull @.str.31) #11
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !prof !16

bb.k:                                             ; preds = %qobject_unref_impl.exit
  ret void
}

declare ptr @qdict_get_qdict(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @qdict_get_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_assertion_message_cmpstr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @usleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_migration_start_qemu(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %6, null
  %..str.42 = select i1 %.not, ptr @.str.42, ptr %6 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.41, ptr noundef nonnull %..str.42, ptr noundef %i.b, ptr noundef %5) #11 ; 2 uses
  %i.d = tail call ptr @qtest_init(ptr noundef %i.c) #11
  store ptr %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.43, ptr noundef nonnull %..str.42, ptr noundef %i.f, ptr noundef %5, ptr noundef %4) #11 ; 2 uses
  %i.h = tail call ptr @qtest_init(ptr noundef %i.g) #11
  store ptr %i.h, ptr %1, align 8
  tail call void @g_free(ptr noundef %i.c) #11
  tail call void @g_free(ptr noundef %i.g) #11
  ret void
}

declare ptr @qtest_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tpm_util_rmdir(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.44, ptr noundef %0) #11 ; 2 uses
  %i.b = tail call i32 @g_unlink(ptr noundef %i.a) #11 ; 0 uses
  tail call void @g_free(ptr noundef %i.a) #11
  %i.c = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.45, ptr noundef %0) #11 ; 2 uses
end_hunk_0
