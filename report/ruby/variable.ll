inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_gvar_var_getter:bb.a
bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @rb_gvar_var_setter(i64 noundef %0, i64 %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #8 {
bb.a:
  store i64 %0, ptr %2, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gvar_var_marker(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !16
  tail call void @rb_gc_mark_maybe(i64 noundef %i.a) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @rb_gc_mark_maybe(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_gvar_readonly_setter(i64 %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  %i.a = tail call fastcc i64 @QUOTE_ID(i64 noundef %1)
  tail call void (i64, ptr, ...) @rb_name_error(i64 noundef %1, ptr noundef nonnull @.str.10, i64 noundef %i.a) #27
  unreachable
}

; Function Attrs: noreturn
declare void @rb_name_error(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_mark_global_tbl() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.a, ptr noundef nonnull @mark_global_entry, ptr noundef null) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @mark_global_entry(i64 noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  tail call void %i.d(ptr noundef %i.f) #26
  %i.g = getelementptr i8, ptr %i.b, i64 48
  %.010 = load ptr, ptr %i.g, align 8, !tbaa !78  ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi ptr [ %.0, %bb.c ], [ %.010, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.012, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %.not9 = icmp eq i64 %i.i, 0
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @rb_gc_mark_maybe(i64 noundef %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr i8, ptr %.012, i64 24
  %.0 = load ptr, ptr %i.j, align 8, !tbaa !78    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_update_global_tbl() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_id_table_foreach_values(ptr noundef nonnull %i.a, ptr noundef nonnull @update_global_entry, ptr noundef null) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @update_global_entry(i64 noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74
  tail call void %i.d(ptr noundef %i.b) #26
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_hooked_variable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 4, %bb.a ]
  store volatile i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = tail call fastcc i64 @global_id(ptr noundef %0)
  %i.f = tail call fastcc ptr @rb_global_entry(i64 noundef %i.e)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.h, align 8, !tbaa !75
  %.not13 = icmp eq ptr %2, null
  %i.i = select i1 %.not13, ptr @rb_gvar_var_getter, ptr %2
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !71
  %.not14 = icmp eq ptr %3, null
  %i.k = select i1 %.not14, ptr @rb_gvar_var_setter, ptr %3
  %i.l = getelementptr i8, ptr %i.g, i64 24
  store ptr %i.k, ptr %i.l, align 8, !tbaa !72
  %i.m = getelementptr i8, ptr %i.g, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.m, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.o = load volatile i64, ptr %i.n, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @global_id(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !42
  %i.c = icmp eq i8 %i.b, 36
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_intern(ptr noundef nonnull %0) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = icmp ult i64 %i.f, 1024
  br i1 %i.g, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.h = add i64 %i.e, 8
  %i.i = lshr i64 %i.h, 3
  %i.j = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 1024, 0) %i.f, i64 noundef %i.i) #30 ; 3 uses
  store i8 36, ptr %i.j, align 1, !tbaa !42
  %i.k = getelementptr i8, ptr %i.j, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = alloca i8, i64 %i.f, align 16            ; 4 uses
  store i8 36, ptr %i.l, align 16, !tbaa !42
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.n = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.d ]
  %i.o = phi ptr [ %i.j, %.thread ], [ %i.l, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.n, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %i.e, i1 noundef false) #26
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.q = call i64 @rb_intern2(ptr noundef nonnull %i.p, i64 noundef %i.f) #26
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.q, %ruby_nonempty_memcpy.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_variable(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  store volatile i64 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = tail call fastcc i64 @global_id(ptr noundef nonnull %0)
  %i.e = tail call fastcc ptr @rb_global_entry(i64 noundef %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr i8, ptr %i.f, i64 16
  store ptr @rb_gvar_var_getter, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr i8, ptr %i.f, i64 24
  store ptr @rb_gvar_var_setter, ptr %i.i, align 8, !tbaa !72
  %i.j = getelementptr i8, ptr %i.f, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.j, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_readonly_variable(ptr noundef nonnull %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  store volatile i64 %i.c, ptr %i.a, align 8, !tbaa !16
  %i.d = tail call fastcc i64 @global_id(ptr noundef nonnull %0)
  %i.e = tail call fastcc ptr @rb_global_entry(i64 noundef %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr i8, ptr %i.f, i64 16
  store ptr @rb_gvar_var_getter, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr i8, ptr %i.f, i64 24
  store ptr @rb_gvar_readonly_setter, ptr %i.i, align 8, !tbaa !72
  %i.j = getelementptr i8, ptr %i.f, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.j, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.l = load volatile i64, ptr %i.k, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_virtual_variable(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @rb_gvar_val_getter, ptr %1
  %.not6 = icmp eq ptr %2, null
  %spec.store.select1 = select i1 %.not6, ptr @rb_gvar_readonly_setter, ptr %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store volatile i64 4, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call fastcc i64 @global_id(ptr noundef nonnull %0)
  %i.d = tail call fastcc ptr @rb_global_entry(i64 noundef %i.c)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr i8, ptr %i.e, i64 16
  store ptr %spec.store.select, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr i8, ptr %i.e, i64 24
  store ptr %spec.store.select1, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr i8, ptr %i.e, i64 32
  store ptr @rb_gvar_var_marker, ptr %i.i, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !81
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_f_trace_var(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !16
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %.thread, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #27
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.f = tail call i64 @rb_block_proc() #26
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread, %rb_scan_args_set.exit
  %i.g = phi i64 [ %i.f, %rb_scan_args_set.exit ], [ %i.d, %.thread ] ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %thread-pre-split
  %i.i = tail call i64 @rb_f_untrace_var(i32 noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %thread-pre-split
  %i.j = tail call i64 @rb_to_id(i64 noundef %i.b) #26
  %i.k = tail call fastcc ptr @rb_global_entry(i64 noundef %i.j)
  %i.l = tail call noalias nonnull dereferenceable(32) ptr @ruby_xmalloc(i64 noundef 32) #29 ; 5 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.n = getelementptr i8, ptr %i.m, i64 48       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @rb_trace_eval, ptr %i.q, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.g, ptr %i.r, align 8, !tbaa !79
  store i32 0, ptr %i.l, align 8, !tbaa !83
  store ptr %i.l, ptr %i.n, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.i, %bb.c ], [ 4, %bb.d ]
  ret i64 %.0
}

declare i64 @rb_block_proc() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_f_untrace_var(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.trace_var, align 8          ; 4 uses
  %3 = alloca %struct.trace_var, align 8          ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.d, label %.preheader39

.preheader39:                                     ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.c, ptr %i.a, align 8, !tbaa !16
  %.not51 = icmp eq i32 %0, 1
  br i1 %.not51, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader39
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader39, %bb.b
  %i.g = phi i64 [ %i.e, %bb.b ], [ 4, %.preheader39 ] ; 3 uses
  %.185.i.lcssa = phi i1 [ %i.f, %bb.b ], [ true, %.preheader39 ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #27
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.h = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.i = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.j = call fastcc i64 @QUOTE(i64 noundef %i.i)
  call void (i64, ptr, ...) @rb_name_error_str(i64 noundef %i.i, ptr noundef nonnull @.str.12, i64 noundef %i.j) #27
  unreachable

end_hunk_0
begin_hunk_1_@rb_gvar_get:bb.a
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.f, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72
  %.not40 = icmp eq ptr %i.n, @rb_gvar_readonly_setter
  br i1 %.not40, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load i64, ptr %i.d, align 8, !tbaa !87   ; 3 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = call i64 @rb_id2sym(i64 noundef %i.q) #26 ; 3 uses
  %i.s = call i64 @rb_hash_has_key(i64 noundef %i.o, i64 noundef %i.r) #26
  %i.t = and i64 %i.s, -5
  %.not52 = icmp eq i64 %i.t, 0
  br i1 %.not52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = call i64 @rb_hash_aref(i64 noundef %i.o, i64 noundef %i.r) #26
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i43 = icmp eq ptr %i.v, null
  br i1 %.not.i.i43, label %bb.i, label %rb_vm_unlock.exit

bb.i:                                             ; preds = %bb.h
  call void @rb_vm_unlock_body() #26
  br label %rb_vm_unlock.exit

rb_vm_unlock.exit:                                ; preds = %bb.h, %bb.i
  %i.w = getelementptr i8, ptr %i.f, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71
  %i.y = load i64, ptr %i.p, align 8, !tbaa !76
  %i.z = getelementptr i8, ptr %i.f, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = call i64 %i.x(i64 noundef %i.y, ptr noundef %i.aa) #26 ; 3 uses
  %.pr.i = load i64, ptr @rb_gvar_get.rbimpl_id, align 8, !tbaa !16 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rb_vm_unlock.exit, %.lr.ph.i
  %i.ac = call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 5) #26 ; 3 uses
  store i64 %i.ac, ptr @rb_gvar_get.rbimpl_id, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !92

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rb_vm_unlock.exit
  %.lcssa.i = phi i64 [ %.pr.i, %rb_vm_unlock.exit ], [ %i.ac, %.lr.ph.i ]
  %i.ad = call i32 @rb_obj_respond_to(i64 noundef %i.ab, i64 noundef %.lcssa.i, i32 noundef 1) #26
  %.not42 = icmp eq i32 %i.ad, 0
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rbimpl_intern_const.exit
  %.pr.i44 = load i64, ptr @rb_gvar_get.rbimpl_id.14, align 8, !tbaa !16 ; 2 uses
  %.not4.i45 = icmp eq i64 %.pr.i44, 0
  br i1 %.not4.i45, label %.lr.ph.i47, label %rbimpl_intern_const.exit49

.lr.ph.i47:                                       ; preds = %bb.j, %.lr.ph.i47
  %i.ae = call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 5) #26 ; 3 uses
  store i64 %i.ae, ptr @rb_gvar_get.rbimpl_id.14, align 8, !tbaa !16
  %.not.i48 = icmp eq i64 %i.ae, 0
  br i1 %.not.i48, label %.lr.ph.i47, label %rbimpl_intern_const.exit49, !llvm.loop !92

rbimpl_intern_const.exit49:                       ; preds = %.lr.ph.i47, %bb.j
  %.lcssa.i46 = phi i64 [ %.pr.i44, %bb.j ], [ %i.ae, %.lr.ph.i47 ]
  %i.af = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ab, i64 noundef %.lcssa.i46, i32 noundef 0) #26
  br label %bb.k

bb.k:                                             ; preds = %rbimpl_intern_const.exit49, %rbimpl_intern_const.exit
  %.1 = phi i64 [ %i.af, %rbimpl_intern_const.exit49 ], [ %i.ab, %rbimpl_intern_const.exit ] ; 2 uses
  %i.ag = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i50 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i50, label %bb.l, label %rb_vm_lock.exit

bb.l:                                             ; preds = %bb.k
  call void @rb_vm_lock_body() #26
  br label %rb_vm_lock.exit

rb_vm_lock.exit:                                  ; preds = %bb.k, %bb.l
  %i.ah = call i64 @rb_hash_aset(i64 noundef %i.o, i64 noundef %i.r, i64 noundef %.1) #26 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %rb_vm_lock_enter.exit, %bb.c, %bb.e, %rb_vm_lock.exit, %bb.g
  %.134 = phi i1 [ true, %bb.g ], [ true, %rb_vm_lock.exit ], [ false, %bb.e ], [ false, %bb.c ], [ false, %rb_vm_lock_enter.exit ]
  %.2 = phi i64 [ %i.u, %bb.g ], [ %.1, %rb_vm_lock.exit ], [ undef, %bb.e ], [ undef, %bb.c ], [ undef, %rb_vm_lock_enter.exit ]
  %i.ai = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i51 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i51, label %bb.n, label %rb_vm_lock_leave.exit

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.134, label %bb.p, label %bb.o

bb.o:                                             ; preds = %rb_vm_lock_leave.exit
  %i.aj = getelementptr i8, ptr %i.f, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = getelementptr i8, ptr %i.e, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !76
  %i.an = getelementptr i8, ptr %i.f, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.ap = call i64 %i.ak(i64 noundef %i.am, ptr noundef %i.ao) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %rb_vm_lock_leave.exit
  %.3 = phi i64 [ %.2, %rb_vm_lock_leave.exit ], [ %i.ap, %bb.o ]
  ret i64 %.3
}

declare i64 @rb_hash_has_key(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rb_vm_unlock() unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_unlock_body() #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @rb_obj_respond_to(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_gv_get(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @find_global_id(ptr noundef %0) ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.15, ptr noundef nonnull %0) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_gvar_get(i64 noundef %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.c ], [ 4, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @find_global_id(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 5 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !42
  %i.d = icmp eq i8 %i.c, 36
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_check_id_cstr(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef null) #26
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !16
  %i.f = add i64 %i.b, 1                          ; 4 uses
  %i.g = icmp ult i64 %i.f, 1024
  br i1 %i.g, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.h = add i64 %i.b, 8
  %i.i = lshr i64 %i.h, 3
  %i.j = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 1024, 0) %i.f, i64 noundef %i.i) #30 ; 3 uses
  store i8 36, ptr %i.j, align 1, !tbaa !42
  %i.k = getelementptr i8, ptr %i.j, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = alloca i8, i64 %i.f, align 16            ; 4 uses
  store i8 36, ptr %i.l, align 16, !tbaa !42
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.n = phi ptr [ %i.k, %.thread ], [ %i.m, %bb.d ]
  %i.o = phi ptr [ %i.j, %.thread ], [ %i.l, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.n, ptr noundef nonnull readonly align 1 %0, i64 noundef range(i64 1, 0) %i.b, i1 noundef false) #26
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.q = call i64 @rb_check_id_cstr(ptr noundef nonnull %i.p, i64 noundef %i.f, ptr noundef null) #26
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ %i.q, %ruby_nonempty_memcpy.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 0, 21) i64 @rb_gvar_defined(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @rb_global_entry(i64 noundef %0)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq ptr %i.d, @rb_gvar_undef_getter
  %i.e = select i1 %.not, i64 0, i64 20
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_gvar_getter_function_of(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @rb_global_entry(i64 noundef %0)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_gvar_setter_function_of(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @rb_global_entry(i64 noundef %0)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_f_global_variables() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = tail call i64 @rb_ary_new() #26          ; 3 uses
  %i.c = tail call i64 @rb_backref_get() #26      ; 3 uses
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  %i.e = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.e, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  %i.f = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.16) #27
  unreachable

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  %i.g = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11
  %i.h = inttoptr i64 %i.b to ptr
  tail call void @rb_id_table_foreach(ptr noundef %i.g, ptr noundef nonnull @gvar_i, ptr noundef %i.h) #26
  %i.i = icmp eq i64 %i.c, 4
  br i1 %i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %rb_ractor_main_p.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.j = tail call i32 @rb_match_count(i64 noundef %i.c) #26 ; 2 uses
  store i8 36, ptr %i.a, align 1, !tbaa !42
  %.not18 = icmp slt i32 %i.j, 1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.01519 = phi i32 [ 1, %.lr.ph ], [ %i.v, %bb.i ] ; 5 uses
  %i.l = call i64 @rb_reg_nth_defined(i32 noundef %.01519, i64 noundef %i.c) #26
  %i.m = and i64 %i.l, -5
  %.not17 = icmp eq i64 %i.m, 0
  br i1 %.not17, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp slt i32 %.01519, 10
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = trunc i32 %.01519 to i8
  %i.p = add i8 %i.o, 48
  store i8 %i.p, ptr %i.k, align 1, !tbaa !42
  %i.q = call i64 @rb_intern2(ptr noundef nonnull %i.a, i64 noundef 2) #26
  %i.r = call i64 @rb_id2sym(i64 noundef %i.q) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.17, i32 noundef %.01519) #26
  %i.t = call i64 @rb_str_intern(i64 noundef %i.s) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.r, %bb.f ], [ %i.t, %bb.g ]
  %i.u = call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %.0) #26 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %i.v = add i32 %.01519, 1                       ; 2 uses
  %.not = icmp sgt i32 %i.v, %i.j
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !93

._crit_edge:                                      ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %rb_ractor_main_p.exit.thread
  ret i64 %i.b
}

declare i64 @rb_backref_get() local_unnamed_addr #1

declare void @rb_id_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @gvar_i(i64 noundef %0, i64 %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @rb_id2sym(i64 noundef %0) #26
  %i.b = ptrtoint ptr %2 to i64
  %i.c = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.a) #26 ; 0 uses
  ret i32 0
}

declare i32 @rb_match_count(i64 noundef) local_unnamed_addr #1

declare i64 @rb_reg_nth_defined(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_intern(i64 noundef) local_unnamed_addr #1

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_alias_variable(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11 ; 2 uses
  %i.d = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit

rb_ractor_main_p.exit:                            ; preds = %bb.a
  %i.e = tail call zeroext i1 @rb_ractor_main_p_() #26
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  %i.f = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.16) #27
  unreachable

bb.c:                                             ; preds = %rb_ractor_main_p.exit
  %.pr = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.d, %bb.c, %.thread
  %i.g = call fastcc ptr @rb_global_entry(i64 noundef %1) ; 2 uses
  %i.h = call i32 @rb_id_table_lookup(ptr noundef %i.c, i64 noundef %0, ptr noundef nonnull %i.a) #26
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_vm_lock_enter.exit
  %i.i = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #31 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %0, ptr %i.j, align 8, !tbaa !76
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = call i32 @rb_id_table_insert(ptr noundef %i.c, i64 noundef %0, i64 noundef %i.k) #26 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %rb_vm_lock_enter.exit
  %i.m = load i64, ptr %i.a, align 8, !tbaa !16
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 6 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !58
  %.not23 = icmp eq ptr %i.o, %i.p
  br i1 %.not23, label %bb.k, label %bb.g

end_hunk_1
begin_hunk_2_@trace_en:bb.a

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.d, %bb.a ] ; 4 uses
  %i.g = phi ptr [ %i.k, %bb.c ], [ %i.e, %bb.a ]
  %.013.i = phi ptr [ %.1.i, %bb.c ], [ %1, %bb.a ]
  %i.h = load i32, ptr %i.f, align 8, !tbaa !83
  %.not11.i = icmp eq i32 %i.h, 0
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  store ptr %i.j, ptr %i.g, align 8, !tbaa !65
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi ptr [ %.013.i, %bb.b ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %.1.i, i64 24      ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !85

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !65
  br label %remove_trace.exit

remove_trace.exit:                                ; preds = %bb.a, %._crit_edge.loopexit.i
  %i.m = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ null, %bb.a ]
  store ptr %i.m, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i64 4
}

declare void @rb_vm_unlock_body() local_unnamed_addr #1

declare void @rb_vm_lock_body() local_unnamed_addr #1

declare zeroext i1 @rb_ractor_main_p_() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

declare void @rb_imemo_fields_clear(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef) local_unnamed_addr #1

declare i32 @rb_shape_transition_complex(i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_fields_new_complex_tbl(i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @rb_shape_transition_remove_ivar(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rb_evict_fields_to_hash(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = lshr i64 %i.b, 32
  %i.d = and i64 %i.c, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = getelementptr [40 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !120
  %i.i = zext i16 %i.h to i64
  %i.j = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %i.i) #26 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  tail call fastcc void @rb_field_foreach(i64 noundef %0, ptr noundef nonnull @rb_obj_copy_ivs_to_hash_table_i, i64 noundef %i.k, i1 noundef zeroext false)
  %i.l = tail call fastcc i32 @obj_transition_too_complex(i64 noundef %0, ptr noundef %i.j)
  ret i32 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @imemo_fields_complex_from_obj(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = lshr i64 %i.b, 32
  %i.d = and i64 %i.c, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = getelementptr [40 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !120
  %i.i = zext i16 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.j, %bb.b ], [ 1, %bb.a ]
  %i.l = inttoptr i64 %0 to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = and i64 %i.m, 256
  %i.o = icmp ne i64 %i.n, 0
  %i.p = tail call i64 @rb_imemo_fields_new_complex(i64 noundef %0, i64 noundef %i.k, i1 noundef zeroext %i.o) #26 ; 3 uses
  tail call fastcc void @rb_field_foreach(i64 noundef %1, ptr noundef nonnull @imemo_fields_complex_from_obj_i, i64 noundef %i.p, i1 noundef zeroext false)
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !20
  %i.s = and i64 %i.r, 4294967295
  %i.t = zext i32 %2 to i64
  %i.u = shl nuw i64 %i.t, 32
  %i.v = or disjoint i64 %i.s, %i.u
  store i64 %i.v, ptr %i.q, align 8, !tbaa !20
  ret i64 %i.p
}

declare i64 @rb_obj_embedded_size(i32 noundef) local_unnamed_addr #1

declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #1

declare i64 @rb_imemo_fields_new_complex(i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @imemo_fields_complex_from_obj_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %rb_imemo_fields_complex_tbl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call void @rb_st_add_direct(ptr noundef %.0.i, i64 noundef %0, i64 noundef %1) #26
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_obj_written.exit, label %bb.c

bb.c:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %1) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %rb_imemo_fields_complex_tbl.exit, %bb.c
  ret i32 0
}

declare void @rb_st_add_direct(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare zeroext i1 @rb_shape_find_ivar(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_shape_transition_add_ivar(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

declare void @rb_set_boxed_class_shape_id(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @imemo_fields_copy_capa(i64 noundef %0, i64 noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %2 to i64
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = and i64 %i.c, 256
  %i.e = icmp ne i64 %i.d, 0
  %i.f = tail call i64 @rb_imemo_fields_new(i64 noundef %0, i64 noundef %i.a, i1 noundef zeroext %i.e) #26 ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 3 uses
  %i.i = lshr i64 %i.h, 32
  %i.j = and i64 %i.i, 524287
  %i.k = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.l = getelementptr [40 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 28
  %i.n = load i16, ptr %i.m, align 4, !tbaa !120  ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rb_imemo_fields_ptr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20
  %i.q = and i64 %i.p, 65536
  %.not5.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.d, !prof !97

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.s, %bb.d ], [ null, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %i.t = and i64 %i.h, 65536
  %.not5.i19 = icmp eq i64 %i.t, 0
  %i.u = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  br i1 %.not5.i19, label %rbimpl_size_mul_or_raise.exit, label %bb.e, !prof !97

bb.e:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  br label %rbimpl_size_mul_or_raise.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.e, %rb_imemo_fields_ptr.exit
  %.0.i20 = phi ptr [ %i.v, %bb.e ], [ %i.u, %rb_imemo_fields_ptr.exit ]
  %.not.i22 = icmp eq i16 %i.n, 0
  br i1 %.not.i22, label %ruby_nonempty_memcpy.exit.thread, label %.lr.ph.preheader

ruby_nonempty_memcpy.exit.thread:                 ; preds = %rbimpl_size_mul_or_raise.exit
  %i.w = and i64 %i.h, -4294967296
  %i.x = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !20
  %i.z = and i64 %i.y, 4294967295
  %i.aa = or disjoint i64 %i.z, %i.w
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !20
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ab = zext i16 %i.n to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i, ptr noundef nonnull readonly align 1 %.0.i20, i64 noundef range(i64 1, 0) %i.ac, i1 noundef false) #26
  %.pre = load i64, ptr %i.g, align 8, !tbaa !20
  %i.ad = and i64 %.pre, -4294967296
  %i.ae = inttoptr i64 %i.f to ptr                ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = or disjoint i64 %i.ag, %i.ad
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !20
  %wide.trip.count = zext i16 %i.n to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_written.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_written.exit ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = and i64 %i.aj, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %rb_obj_written.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @rb_gc_writebarrier(i64 noundef %i.f, i64 noundef %i.aj) #26
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !232

.loopexit:                                        ; preds = %rb_obj_written.exit, %ruby_nonempty_memcpy.exit.thread, %bb.a
  ret i64 %i.f
}

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @each_hash_iv(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp ugt i64 %0, 171
  %i.b = and i64 %0, 14
  %i.c = icmp eq i64 %i.b, 14
  %i.d = and i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !131
  %i.j = tail call i32 %i.g(i64 noundef %0, i64 noundef %1, i64 noundef %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare zeroext i1 @rb_shape_foreach_field(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @iterate_over_shapes_callback(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !134, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !233
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load i64, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 31
  switch i32 %i.o, label %bb.h [
    i32 1, label %bb.d
    i32 26, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.m, 65536
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %.not.i, label %ROBJECT_FIELDS.exit, label %bb.e, !prof !97

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit

bb.f:                                             ; preds = %bb.c
  %.not.i13 = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i13)
  %i.s = and i64 %i.m, 65536
  %.not5.i = icmp eq i64 %i.s, 0
  %i.t = getelementptr i8, ptr %i.l, i64 16       ; 2 uses
  br i1 %.not5.i, label %ROBJECT_FIELDS.exit, label %bb.g, !prof !97

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  br label %ROBJECT_FIELDS.exit

bb.h:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.22) #32
  unreachable

ROBJECT_FIELDS.exit:                              ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.012 = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  %i.v = and i32 %0, 524287
  %i.w = load ptr, ptr @rb_shape_tree, align 8, !tbaa !113
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr [40 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 28
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !120
  %i.ab = add i16 %i.aa, -1
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %.012, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %i.ah = getelementptr i8, ptr %i.y, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !131
  %i.al = tail call i32 %i.ag(i64 noundef %i.ai, i64 noundef %i.ae, i64 noundef %i.ak) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %ROBJECT_FIELDS.exit
  %.0 = phi i32 [ %i.al, %ROBJECT_FIELDS.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_name_err_raise_str(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = tail call i64 @rb_name_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #26
  tail call void @rb_exc_raise(i64 noundef %i.a) #27
  unreachable
}

declare i64 @rb_name_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_mark(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_mark_tbl_no_pin(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_free(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_st_free_table(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable
define internal i64 @autoload_table_memsize(ptr nofree noundef readonly %0) #23 {
bb.a:
  %i.a = tail call i64 @rb_st_memsize(ptr noundef %0) #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @autoload_table_compact(ptr noundef %0) #0 {
bb.a:
  tail call void @rb_gc_ref_update_table_values_only(ptr noundef %0) #26
  ret void
}

declare void @rb_mark_tbl_no_pin(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #6

declare void @rb_gc_ref_update_table_values_only(ptr noundef) local_unnamed_addr #1
end_hunk_2
