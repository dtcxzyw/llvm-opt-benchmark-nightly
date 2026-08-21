Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/savevm?download=true
inline.NumInlined: 269
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@vmstate_register_ram_global:bb.a
  tail call void @qemu_ram_set_migratable(ptr noundef %i.d) #16
  %i.e = load ptr, ptr %i.a, align 8
  tail call void @ram_block_add_cpr_blocker(ptr noundef %i.e, ptr noundef nonnull @error_fatal) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @vmstate_check_only_migratable(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @only_migratable, align 4
  %.not = icmp eq i32 %i.a, 0
  %.not4 = icmp eq ptr %0, null
  %or.cond = or i1 %.not4, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qmp_snapshot_save(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @qemu_get_aio_context() #16
  %i.c = tail call ptr @job_create(ptr noundef %0, ptr noundef nonnull @snapshot_save_job_driver, ptr noundef null, ptr noundef %i.b, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef %4) #16 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %g_strdup_inline.exit18

g_strdup_inline.exit18:                           ; preds = %bb.a
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %1) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store ptr %i.d, ptr %i.e, align 8
  %i.f = tail call noalias ptr @g_strdup(ptr noundef %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store ptr %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %3, ptr %i.a, align 8
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit18
  %i.h = tail call ptr @qapi_clone_visitor_new() #16 ; 2 uses
  %i.i = call zeroext i1 @visit_type_strList(ptr noundef %i.h, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @error_abort) #16 ; 0 uses
  call void @visit_free(ptr noundef %i.h) #16
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %g_strdup_inline.exit18
  %i.j = phi ptr [ %.pre, %bb.b ], [ null, %g_strdup_inline.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store ptr %i.j, ptr %i.k, align 8
  call void @job_start(ptr noundef nonnull %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare ptr @job_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @qemu_get_aio_context() local_unnamed_addr #2

declare ptr @qapi_clone_visitor_new() local_unnamed_addr #2

declare zeroext i1 @visit_type_strList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @visit_free(ptr noundef) local_unnamed_addr #2

declare void @job_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qmp_snapshot_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @qemu_get_aio_context() #16
  %i.c = tail call ptr @job_create(ptr noundef %0, ptr noundef nonnull @snapshot_load_job_driver, ptr noundef null, ptr noundef %i.b, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef %4) #16 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %g_strdup_inline.exit18

g_strdup_inline.exit18:                           ; preds = %bb.a
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %1) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store ptr %i.d, ptr %i.e, align 8
  %i.f = tail call noalias ptr @g_strdup(ptr noundef %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store ptr %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %3, ptr %i.a, align 8
  %.not13 = icmp eq ptr %3, null
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit18
  %i.h = tail call ptr @qapi_clone_visitor_new() #16 ; 2 uses
  %i.i = call zeroext i1 @visit_type_strList(ptr noundef %i.h, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @error_abort) #16 ; 0 uses
  call void @visit_free(ptr noundef %i.h) #16
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %g_strdup_inline.exit18
  %i.j = phi ptr [ %.pre, %bb.b ], [ null, %g_strdup_inline.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store ptr %i.j, ptr %i.k, align 8
  call void @job_start(ptr noundef nonnull %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qmp_snapshot_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @qemu_get_aio_context() #16
  %i.c = tail call ptr @job_create(ptr noundef %0, ptr noundef nonnull @snapshot_delete_job_driver, ptr noundef null, ptr noundef %i.b, i32 noundef 4, ptr noundef null, ptr noundef null, ptr noundef %3) #16 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.d = tail call noalias ptr @g_strdup(ptr noundef %1) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store ptr %i.d, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %2, ptr %i.a, align 8
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit
  %i.f = tail call ptr @qapi_clone_visitor_new() #16 ; 2 uses
  %i.g = call zeroext i1 @visit_type_strList(ptr noundef %i.f, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @error_abort) #16 ; 0 uses
  call void @visit_free(ptr noundef %i.f) #16
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %g_strdup_inline.exit
  %i.h = phi ptr [ %.pre, %bb.b ], [ null, %g_strdup_inline.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store ptr %i.h, ptr %i.i, align 8
  call void @job_start(ptr noundef nonnull %i.c) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

declare void @qemu_put_be16(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @qemu_put_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #12

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @json_writer_start_object(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @vmstate_save_vmsd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @json_writer_end_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @configuration_pre_load(ptr nofree noundef writeonly captures(none) initializes((112, 116)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @migration_legacy_page_bits() #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.a, ptr %i.b, align 8
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @configuration_post_load(ptr nofree noundef captures(none) %0, i32 %1, ptr noundef %2) #0 {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 11 uses
  %i.a = load ptr, ptr @current_machine, align 8
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #16
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = tail call i32 @strncmp(ptr noundef %i.g, ptr noundef %i.e, i64 noundef %i.j) #19
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 388, ptr noundef nonnull @__func__.configuration_post_load, ptr noundef nonnull @.str.102, i32 noundef %i.i, ptr noundef %i.g, ptr noundef %i.e) #16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4 ; 2 uses
  %.not19 = icmp eq i32 %i.m, %i.n
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 396, ptr noundef nonnull @__func__.configuration_post_load, ptr noundef nonnull @.str.103, i32 noundef %i.m, i32 noundef %i.n) #16
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @migrate_get_current() #16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i64 0, ptr %.sroa.0.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.q = load i32, ptr %i.p, align 4              ; 5 uses
  %.not23.i = icmp eq i32 %i.q, 0
  br i1 %.not23.i, label %.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %xtraiter = and i32 %i.q, 1
  %3 = icmp eq i32 %i.q, 1
  br i1 %3, label %scalar.ph.prol, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i32 %i.q, -2
  br label %scalar.ph

scalar.ph.preheader:                              ; preds = %scalar.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %.lr.ph.i
  %.01720.i.prol = phi i32 [ 0, %.lr.ph.i ], [ %18, %scalar.ph.preheader ]
  %lcmp.mod60 = trunc i32 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.t = sext i32 %.01720.i.prol to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4
  %4 = zext i32 %i.v to i64                       ; 2 uses
  %5 = and i64 %4, 63
  %i.w = shl nuw i64 1, %5
  %6 = lshr i64 %4, 3
  %.sroa.0.0..sroa_stride.i.epil = and i64 %6, 536870904 ; 2 uses
  %.sroa.0.i.0.i.0.i.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %.sroa.0.0..sroa_stride.i.epil
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.epil = load i64, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx66, align 8
  %7 = or i64 %i.w, %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.epil
  %.sroa.0.i.0.i.0.i.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %.sroa.0.0..sroa_stride.i.epil
  store i64 %7, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx69, align 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0.26.pre.i = load i64, ptr %.sroa.0.i, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %scalar.ph.prol.loopexit, %bb.e
  %.sroa.0.0..sroa.0.0.26.i = phi i64 [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0.26.pre.i, %scalar.ph.prol.loopexit ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1080
  br label %.outer

.outer:                                           ; preds = %.thread, %.preheader.i
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i21, %.thread ], [ 0, %.preheader.i ]
  %.022.i.ph = phi i1 [ false, %.thread ], [ true, %.preheader.i ]
  br label %bb.f

scalar.ph:                                        ; preds = %scalar.ph, %vector.ph
  %.01720.i = phi i32 [ 0, %vector.ph ], [ %18, %scalar.ph ] ; 3 uses
  %niter = phi i32 [ 0, %vector.ph ], [ %i.af, %scalar.ph ]
  %i.y = sext i32 %.01720.i to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %8 = and i64 %i.ab, 63
  %9 = shl nuw i64 1, %8
  %10 = lshr i64 %i.ab, 3
  %.sroa.0.0..sroa_stride.i = and i64 %10, 536870904 ; 2 uses
  %.sroa.0.i.0.i.0.i.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %.sroa.0.0..sroa_stride.i
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i = load i64, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx, align 8
  %11 = or i64 %9, %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i
  %.sroa.0.i.0.i.0.i.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %.sroa.0.0..sroa_stride.i
  store i64 %11, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx63, align 8
  %i.ac = sext i32 %.01720.i to i64
  %i.ad = getelementptr [4 x i8], ptr %i.s, i64 %i.ac
  %12 = getelementptr i8, ptr %i.ad, i64 4
  %13 = load i32, ptr %12, align 4
  %i.ae = zext i32 %13 to i64                     ; 2 uses
  %14 = and i64 %i.ae, 63
  %15 = shl nuw i64 1, %14
  %16 = lshr i64 %i.ae, 3
  %.sroa.0.0..sroa_stride.i.1 = and i64 %16, 536870904 ; 2 uses
  %.sroa.0.i.0.i.0.i.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %.sroa.0.0..sroa_stride.i.1
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.1 = load i64, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx72, align 8
  %17 = or i64 %15, %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..i.1
  %.sroa.0.i.0.i.0.i.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 %.sroa.0.0..sroa_stride.i.1
  store i64 %17, ptr %.sroa.0.i.0.i.0.i.0..sroa_idx75, align 8
  %18 = add nuw i32 %.01720.i, 2                  ; 2 uses
  %i.af = add nuw i32 %niter, 2                   ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.af, %n.vec
  br i1 %exitcond.not.i.3, label %scalar.ph.preheader, label %scalar.ph, !llvm.loop !69

bb.f:                                             ; preds = %.outer, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ %indvars.iv.i.ph, %.outer ] ; 5 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  switch i32 %i.ag, label %bb.h [
    i32 20, label %bb.g
    i32 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ah = lshr i64 %.sroa.0.0..sroa.0.0.26.i, %indvars.iv.i
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1                        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i
  %i.al = load i8, ptr %i.ak, align 1, !range !20, !noundef !21 ; 2 uses
  %i.am = zext nneg i8 %i.al to i32
  %.not19.i = icmp eq i32 %i.aj, %i.am
  br i1 %.not19.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next.i, 21
  br i1 %exitcond25.not.i, label %configuration_validate_capabilities.exit, label %bb.f, !llvm.loop !70

.thread:                                          ; preds = %bb.g
  %i.an = trunc nuw i8 %i.al to i1
  %.not.i = icmp eq i32 %i.aj, 0
  %i.ao = tail call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef %i.ag) #16
  %i.ap = select i1 %i.an, ptr @.str.106, ptr @.str.107
  %i.aq = select i1 %.not.i, ptr @.str.107, ptr @.str.106
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.105, ptr noundef %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq) #16
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond25.not.i22 = icmp eq i64 %indvars.iv.next.i21, 21
  br i1 %exitcond25.not.i22, label %configuration_validate_capabilities.exit.thread, label %.outer, !llvm.loop !70

configuration_validate_capabilities.exit.thread:  ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %configuration_validate_capabilities.exit.thread.a

configuration_validate_capabilities.exit:         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br i1 %.022.i.ph, label %bb.i, label %configuration_validate_capabilities.exit.thread.a

configuration_validate_capabilities.exit.thread.a: ; preds = %configuration_validate_capabilities.exit.thread, %configuration_validate_capabilities.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 402, ptr noundef nonnull @__func__.configuration_post_load, ptr noundef nonnull @.str.104) #16
  br label %bb.i

bb.i:                                             ; preds = %configuration_validate_capabilities.exit, %configuration_validate_capabilities.exit.thread.a, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %configuration_validate_capabilities.exit ], [ false, %configuration_validate_capabilities.exit.thread.a ]
  %i.ar = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.ar) #16
  store ptr null, ptr %i.f, align 8
  store i32 0, ptr %i.h, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  tail call void @g_free(ptr noundef %i.at) #16
  store ptr null, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.au, align 4
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @configuration_pre_save(ptr nofree noundef captures(none) initializes((100, 120), (128, 144)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr @current_machine, align 8
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #16
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_GET_CLASS) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call ptr @migrate_get_current() #16 ; 2 uses
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #19
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.h, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.e, ptr %i.j, align 8
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.k, ptr %i.l, align 8
  %i.m = tail call ptr @migrate_get_current() #16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1093
  %i.o = load i8, ptr %i.n, align 1, !range !20, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1100
  %i.q = load i8, ptr %i.p, align 1, !range !20, !noundef !21
  %narrow.i = add nuw nsw i8 %i.q, %i.o           ; 2 uses
  %spec.select.20.i = zext nneg i8 %narrow.i to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %spec.select.20.i, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = zext nneg i8 %narrow.i to i64
  %i.v = tail call ptr @g_realloc_n(ptr noundef %i.t, i64 noundef %i.u, i64 noundef 4) #16
  store ptr %i.v, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1093
  %i.x = load i8, ptr %i.w, align 1, !range !20, !noundef !21
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.s, align 8
  store i32 13, ptr %i.z, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1.13 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1100
  %i.ab = load i8, ptr %i.aa, align 1, !range !20, !noundef !21
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.s, align 8
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.1.13
  store i32 20, ptr %i.ae, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) @qemu_uuid, i64 16, i1 false)
  ret i1 true
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @configuration_post_save(ptr nofree noundef captures(none) initializes((116, 120)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b) #16
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.c, align 4
  ret void
}

declare i32 @migration_legacy_page_bits() local_unnamed_addr #2

declare ptr @qapi_enum_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @g_realloc_n(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @vmstate_target_page_bits_needed(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @target_page, i64 4), align 4
  %i.b = tail call i32 @migration_legacy_page_bits() #16
  %i.c = icmp sgt i32 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @vmstate_capabilites_needed(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = tail call ptr @migrate_get_current() #16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1093
  %i.c = load i8, ptr %i.b, align 1, !range !20, !noundef !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1100
  %i.e = load i8, ptr %i.d, align 1, !range !20, !noundef !21
  %i.f = or i8 %i.e, %i.c
  %i.g = icmp ne i8 %i.f, 0
  ret i1 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @load_capability(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !annotation !27
  %i.b = tail call i32 @qemu_get_byte(ptr noundef %0) #16
  %i.c = and i32 %i.b, 255
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = call i64 @qemu_get_buffer(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.d) #16 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  store i8 0, ptr %i.f, align 1
  %i.g = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 0) #16
  %i.h = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ]
  store i32 %.014.lcssa, ptr %1, align 4
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.i = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 1) #16
  %i.j = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.1 = icmp eq i32 %i.j, 0
  br i1 %.not.1, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 2) #16
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.2 = icmp eq i32 %i.l, 0
  br i1 %.not.2, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 3) #16
  %i.n = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.3 = icmp eq i32 %i.n, 0
  br i1 %.not.3, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 4) #16
  %i.p = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.4 = icmp eq i32 %i.p, 0
  br i1 %.not.4, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 5) #16
  %i.r = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.5 = icmp eq i32 %i.r, 0
  br i1 %.not.5, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 6) #16
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.6 = icmp eq i32 %i.t, 0
  br i1 %.not.6, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 7) #16
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.7 = icmp eq i32 %i.v, 0
  br i1 %.not.7, label %bb.b, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 8) #16
  %i.x = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.8 = icmp eq i32 %i.x, 0
  br i1 %.not.8, label %bb.b, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 9) #16
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.9 = icmp eq i32 %i.z, 0
  br i1 %.not.9, label %bb.b, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call ptr @qapi_enum_lookup(ptr noundef nonnull @MigrationCapability_lookup, i32 noundef 10) #16
  %i.ab = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(1) %i.a) #19
  %.not.10 = icmp eq i32 %i.ab, 0
  br i1 %.not.10, label %bb.b, label %bb.m
end_hunk_0
begin_hunk_1_@thread_pool_wait
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare void @g_date_time_unref(ptr noundef) local_unnamed_addr #2

declare ptr @qio_channel_block_new(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @migration_is_running() local_unnamed_addr #2

declare i32 @migrate_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @snapshot_save_job_run(ptr noundef initializes((304, 320)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.a, align 8
  %i.b = tail call ptr @qemu_coroutine_self() #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.b, ptr %i.c, align 8
  %i.d = tail call ptr @qemu_get_aio_context() #16
  tail call void @aio_bh_schedule_oneshot_full(ptr noundef %i.d, ptr noundef nonnull @snapshot_save_job_bh, ptr noundef %0, ptr noundef nonnull @.str.257) #16
  tail call void @qemu_coroutine_yield() #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load i8, ptr %i.e, align 8, !range !20, !noundef !21
  %i.g = xor i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = sub nsw i32 0, %i.h
  ret i32 %i.i
}

declare void @aio_bh_schedule_oneshot_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @snapshot_save_job_bh(ptr noundef %0) #0 {
bb.a:
  tail call void @job_progress_set_remaining(ptr noundef %0, i64 noundef 1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 @save_snapshot(ptr noundef %i.b, i1 noundef zeroext false, ptr noundef %i.d, i1 noundef zeroext true, ptr noundef %i.f, ptr noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = zext i1 %i.i to i8
  store i8 %i.k, ptr %i.j, align 8
  tail call void @job_progress_update(ptr noundef %0, i64 noundef 1) #16
  %i.l = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.l) #16
  %i.m = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.m) #16
  %i.n = load ptr, ptr %i.e, align 8
  tail call void @qapi_free_strList(ptr noundef %i.n) #16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @aio_co_wake(ptr noundef %i.p) #16
  ret void
}

declare void @job_progress_set_remaining(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @job_progress_update(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @aio_co_wake(ptr noundef) local_unnamed_addr #2

declare void @qapi_free_strList(ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @snapshot_load_job_run(ptr noundef initializes((304, 320)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.a, align 8
  %i.b = tail call ptr @qemu_coroutine_self() #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.b, ptr %i.c, align 8
  %i.d = tail call ptr @qemu_get_aio_context() #16
  tail call void @aio_bh_schedule_oneshot_full(ptr noundef %i.d, ptr noundef nonnull @snapshot_load_job_bh, ptr noundef %0, ptr noundef nonnull @.str.259) #16
  tail call void @qemu_coroutine_yield() #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load i8, ptr %i.e, align 8, !range !20, !noundef !21
  %i.g = xor i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = sub nsw i32 0, %i.h
  ret i32 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @snapshot_load_job_bh(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @runstate_get() #16        ; 2 uses
  tail call void @job_progress_set_remaining(ptr noundef %0, i64 noundef 1) #16
  %i.b = tail call i32 @vm_stop(i32 noundef 8) #16 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 @load_snapshot(ptr noundef %i.d, ptr noundef %i.f, i1 noundef zeroext true, ptr noundef %i.h, ptr noundef %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 8
  br i1 %i.k, label %bb.b, label %load_snapshot_resume.exit

bb.b:                                             ; preds = %bb.a
  tail call void @vm_resume(i32 noundef %i.a) #16
  %i.n = icmp eq i32 %i.a, 9
  br i1 %i.n, label %bb.c, label %load_snapshot_resume.exit

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @runstate_get() #16
  %i.p = icmp eq i32 %i.o, 12
  br i1 %i.p, label %bb.d, label %load_snapshot_resume.exit

bb.d:                                             ; preds = %bb.c
  tail call void @qemu_system_wakeup_request(i32 noundef 3, ptr noundef nonnull @error_abort) #16
  br label %load_snapshot_resume.exit

load_snapshot_resume.exit:                        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @job_progress_update(ptr noundef nonnull %0, i64 noundef 1) #16
  %i.q = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.q) #16
  %i.r = load ptr, ptr %i.e, align 8
  tail call void @g_free(ptr noundef %i.r) #16
  %i.s = load ptr, ptr %i.g, align 8
  tail call void @qapi_free_strList(ptr noundef %i.s) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @aio_co_wake(ptr noundef %i.u) #16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 1) i32 @snapshot_delete_job_run(ptr noundef initializes((304, 320)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.a, align 8
  %i.b = tail call ptr @qemu_coroutine_self() #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.b, ptr %i.c, align 8
  %i.d = tail call ptr @qemu_get_aio_context() #16
  tail call void @aio_bh_schedule_oneshot_full(ptr noundef %i.d, ptr noundef nonnull @snapshot_delete_job_bh, ptr noundef %0, ptr noundef nonnull @.str.261) #16
  tail call void @qemu_coroutine_yield() #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load i8, ptr %i.e, align 8, !range !20, !noundef !21
  %i.g = xor i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = sub nsw i32 0, %i.h
  ret i32 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @snapshot_delete_job_bh(ptr noundef %0) #0 {
bb.a:
  tail call void @job_progress_set_remaining(ptr noundef %0, i64 noundef 1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = tail call zeroext i1 @bdrv_all_can_snapshot(i1 noundef zeroext true, ptr noundef %i.d, ptr noundef %i.f) #16
  br i1 %i.g, label %bb.b, label %delete_snapshot.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @bdrv_all_delete_snapshot(ptr noundef %i.b, i1 noundef zeroext true, ptr noundef %i.d, ptr noundef %i.f) #16
  %i.i = icmp sgt i32 %i.h, -1
  %i.j = zext i1 %i.i to i8
  br label %delete_snapshot.exit

delete_snapshot.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i8 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %.0.i, ptr %i.k, align 8
  tail call void @job_progress_update(ptr noundef nonnull %0, i64 noundef 1) #16
  %i.l = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.l) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @g_free(ptr noundef %i.n) #16
  %i.o = load ptr, ptr %i.c, align 8
  tail call void @qapi_free_strList(ptr noundef %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @aio_co_wake(ptr noundef %i.q) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{!12, !8, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{null}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{i8 0, i8 2}
!21 = !{}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!26 = distinct !{!26, !8}
!27 = !{!"auto-init"}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"memcpy.inline: argument 0"}
!30 = distinct !{!30, !"memcpy.inline"}
!31 = distinct !{!31, !30, !"memcpy.inline: argument 1"}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8}
!34 = distinct !{!34, !8}
!35 = distinct !{null}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{null}
!39 = distinct !{null, null}
!40 = distinct !{null}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
!48 = distinct !{!48, !8}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{null}
!54 = distinct !{null, null}
!55 = distinct !{!55, !8}
!56 = distinct !{null, null, null, null, null, null}
!57 = distinct !{null, null}
!58 = distinct !{!58, !8}
!59 = !{!"branch_weights", !"expected", i32 2146407573, i32 1076075}
!60 = distinct !{null}
!61 = distinct !{!61, !8}
!62 = distinct !{!62, !8}
!63 = distinct !{null, null}
!64 = distinct !{null}
!65 = distinct !{!65, !8}
!66 = distinct !{!66, !8}
!67 = distinct !{!67, !8}
!68 = !{ptr @qemu_savevm_state_cleanup}
!69 = distinct !{!69, !8}
!70 = distinct !{!70, !8}
end_hunk_1
