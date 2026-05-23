inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@rb_vm_pop_frame:bb.a
  %i.k = getelementptr i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_push_frame_fname(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @rb_iseq_alloc_with_dummy_path(i64 noundef %1) #23 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 8 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 4 uses
  %i.f = getelementptr i8, ptr %i.c, i64 -56      ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 56
  %.not.i = icmp ugt ptr %i.f, %i.g
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !74
  %i.j = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.k = getelementptr i8, ptr %i.e, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 2040070179, ptr %i.j, align 8, !tbaa !11
  store ptr null, ptr %i.f, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 -48
  store ptr %i.k, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 -40
  store ptr %i.a, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 -32
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 -24
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.c, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.f, ptr %i.b, align 8, !tbaa !70
  %i.l = ptrtoint ptr %i.a to i64
  ret i64 %i.l
}

declare ptr @rb_iseq_alloc_with_dummy_path(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_error_arity(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i64 @rb_arity_error_new(i32 noundef %0, i32 noundef %1, i32 noundef %2)
  tail call void @rb_exc_raise(i64 noundef %i.a) #42
  unreachable
}

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rb_arity_error_new(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.127, i32 noundef %0, i32 noundef %1) #23 ; 4 uses
  %i.b = icmp eq i32 %1, %2
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.128, i64 noundef 1) #23 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.a, ptr noundef nonnull @.str.129, i32 noundef %2) #23 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.f = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.130, i64 noundef 1) #23 ; 0 uses
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  %i.h = tail call i64 @rb_exc_new_str(i64 noundef %i.g, i64 noundef %i.a) #23
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_env_write(ptr noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !11
  %i.b = and i64 %i.a, 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  store i64 %2, ptr %i.e, align 8, !tbaa !11
  br label %vm_env_write.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @vm_env_write_slowpath(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2)
  br label %vm_env_write.exit

vm_env_write.exit:                                ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_bh_to_procval(ptr noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 3
  switch i64 %i.b, label %bb.c [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %1, 255
  %i.d = icmp eq i64 %i.c, 12
  br i1 %i.d, label %vm_block_handler_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i64 %1, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %RB_SYMBOL_P.exit.i, label %bb.e

RB_SYMBOL_P.exit.i:                               ; preds = %bb.d
  %i.f = inttoptr i64 %1 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77
  %.fr10.i = freeze i64 %i.g
  %i.h = and i64 %.fr10.i, 31
  %i.i = icmp eq i64 %i.h, 20
  br i1 %i.i, label %vm_block_handler_type.exit, label %bb.e

RB_SYMBOL_P.exit.thread7.fold.split.i:            ; preds = %bb.b, %bb.b
  %i.j = and i64 %1, -4
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.m = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.k, i64 noundef %i.l, i8 noundef signext 0), !inline_history !78
  br label %bb.e

vm_block_handler_type.exit:                       ; preds = %RB_SYMBOL_P.exit.i, %bb.c
  %i.n = tail call i64 @rb_sym_to_proc(i64 noundef %1) #23
  br label %bb.e

bb.e:                                             ; preds = %RB_SYMBOL_P.exit.i, %bb.d, %bb.a, %vm_block_handler_type.exit, %RB_SYMBOL_P.exit.thread7.fold.split.i
  %.0 = phi i64 [ 4, %bb.a ], [ %i.m, %RB_SYMBOL_P.exit.thread7.fold.split.i ], [ %i.n, %vm_block_handler_type.exit ], [ %1, %bb.d ], [ %1, %RB_SYMBOL_P.exit.i ]
  ret i64 %.0
}

declare i64 @rb_sym_to_proc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_frame_method_entry(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.07.val16 = load i64, ptr %i.b, align 8, !tbaa !11
  %i.c = and i64 %.07.val16, 2
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0718 = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.0718, i64 -16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %i.i = and i64 %i.h, 61440
  %cond = icmp eq i64 %i.i, 24576
  br i1 %cond, label %check_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr i8, ptr %.0718, i64 -8
  %.07.val10 = load i64, ptr %i.j, align 8, !tbaa !11
  %i.k = and i64 %.07.val10, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %.07.val = load i64, ptr %i.l, align 8, !tbaa !11
  %i.m = and i64 %.07.val, 2
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !79

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.07.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ]
  %i.n = getelementptr i8, ptr %.07.lcssa, i64 -16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %check_method_entry.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.q = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %1 = trunc i64 %i.r to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %check_method_entry.exit [
    i32 6, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %check_method_entry.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %check_method_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = and i64 %i.w, 61440
  %cond.i = icmp eq i64 %i.x, 24576
  %spec.select.i = select i1 %cond.i, ptr %i.v, ptr null
  br label %check_method_entry.exit

check_method_entry.exit:                          ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %._crit_edge
  %.0 = phi ptr [ %spec.select.i, %bb.g ], [ null, %bb.d ], [ null, %._crit_edge ], [ %i.q, %bb.e ], [ null, %bb.f ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_frame_method_entry_unchecked(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.07.val1016 = load i64, ptr %i.b, align 8, !tbaa !11
  %i.c = and i64 %.07.val1016, 2
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0718 = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.0718, i64 -16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %i.i = and i64 %i.h, 61440
  %cond = icmp eq i64 %i.i, 24576
  br i1 %cond, label %env_method_entry_unchecked.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr i8, ptr %.0718, i64 -8
  %.07.val = load i64, ptr %i.j, align 8, !tbaa !11
  %i.k = and i64 %.07.val, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %.07.val10 = load i64, ptr %i.l, align 8, !tbaa !11
  %i.m = and i64 %.07.val10, 2
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.07.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ]
  %i.n = getelementptr i8, ptr %.07.lcssa, i64 -16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %env_method_entry_unchecked.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.q = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %1 = trunc i64 %i.r to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %env_method_entry_unchecked.exit [
    i32 6, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %env_method_entry_unchecked.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %env_method_entry_unchecked.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = and i64 %i.w, 61440
  %cond.i = icmp eq i64 %i.x, 24576
  %spec.select.i = select i1 %cond.i, ptr %i.v, ptr null
  br label %env_method_entry_unchecked.exit

env_method_entry_unchecked.exit:                  ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %._crit_edge
  %.0 = phi ptr [ %spec.select.i, %bb.g ], [ null, %bb.d ], [ null, %._crit_edge ], [ %i.q, %bb.e ], [ null, %bb.f ], [ %i.g, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @rb_vm_get_cref(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @vm_get_cref(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @vm_get_cref(ptr noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %.06.val20.i = load i64, ptr %0, align 8, !tbaa !11
  %i.a = and i64 %.06.val20.i, 2
  %.not21.i = icmp eq i64 %i.a, 0
  br i1 %.not21.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %check_cref.exit.thread.i
  %.0622.i = phi ptr [ %i.n, %check_cref.exit.thread.i ], [ %0, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.0622.i, i64 -16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %check_cref.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77
  %1 = trunc i64 %i.f to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %check_cref.exit.thread.i [
    i32 6, label %bb.c
    i32 1, label %vm_env_cref.exit.thread6
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !83 ; 2 uses
  %i.h = load i8, ptr %.val.i.i, align 8
  %i.i = and i8 %i.h, 15
  %cond.i.i.i = icmp eq i8 %i.i, 0
  br i1 %cond.i.i.i, label %check_cref.exit.i, label %check_cref.exit.thread.i

check_cref.exit.i:                                ; preds = %bb.c
  %i.j = getelementptr i8, ptr %.val.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %.not8.i = icmp eq ptr %i.k, null
  br i1 %.not8.i, label %check_cref.exit.thread.i, label %vm_env_cref.exit.thread6

check_cref.exit.thread.i:                         ; preds = %check_cref.exit.i, %bb.c, %bb.b, %.lr.ph.i
  %i.l = getelementptr i8, ptr %.0622.i, i64 -8
  %.06.val9.i = load i64, ptr %i.l, align 8, !tbaa !11
  %i.m = and i64 %.06.val9.i, -4
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %.06.val.i = load i64, ptr %i.n, align 8, !tbaa !11
  %i.o = and i64 %.06.val.i, 2
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %check_cref.exit.thread.i, %bb.a
  %.06.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.n, %check_cref.exit.thread.i ]
  %i.p = getelementptr i8, ptr %.06.lcssa.i, i64 -16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %vm_env_cref.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.s = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %4 = trunc i64 %i.t to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  switch i32 %6, label %vm_env_cref.exit.thread [
    i32 6, label %bb.e
    i32 1, label %vm_env_cref.exit.thread6
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val.i11.i = load ptr, ptr %i.u, align 8, !tbaa !83 ; 2 uses
  %i.v = load i8, ptr %.val.i11.i, align 8
  %i.w = and i8 %i.v, 15
  %cond.i.i12.i = icmp eq i8 %i.w, 0
  br i1 %cond.i.i12.i, label %vm_env_cref.exit, label %vm_env_cref.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %vm_env_cref.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %i.y to ptr                ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77
  %7 = trunc i64 %i.ab to i32
  %8 = lshr i32 %7, 12
  %9 = and i32 %8, 15
  switch i32 %9, label %vm_env_cref.exit.thread [
    i32 6, label %bb.h
    i32 1, label %vm_env_cref.exit.thread6
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.ad = load i8, ptr %.val.i.i.i, align 8
  %i.ae = and i8 %i.ad, 15
  %cond.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %cond.i.i.i.i, label %vm_env_cref.exit, label %vm_env_cref.exit.thread

vm_env_cref.exit:                                 ; preds = %bb.h, %bb.e
  %.val.i11.i.pn = phi ptr [ %.val.i11.i, %bb.e ], [ %.val.i.i.i, %bb.h ]
  %.0.i.in = getelementptr i8, ptr %.val.i11.i.pn, i64 16
  %.0.i = load ptr, ptr %.0.i.in, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %vm_env_cref.exit.thread, label %vm_env_cref.exit.thread6

vm_env_cref.exit.thread6:                         ; preds = %check_cref.exit.i, %bb.b, %bb.g, %bb.d, %vm_env_cref.exit
  %.0.i9 = phi ptr [ %.0.i, %vm_env_cref.exit ], [ %i.s, %bb.d ], [ %i.aa, %bb.g ], [ %i.e, %bb.b ], [ %i.k, %check_cref.exit.i ]
  ret ptr %.0.i9

vm_env_cref.exit.thread:                          ; preds = %bb.f, %bb.g, %bb.d, %._crit_edge.i, %bb.e, %bb.h, %vm_env_cref.exit
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.131) #57
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_vm_rewrite_cref(ptr noundef captures(address) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not62 = icmp eq ptr %0, null
  br i1 %.not62, label %rb_obj_write.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %rb_obj_write.exit
  %.02365 = phi ptr [ %i.an, %rb_obj_write.exit ], [ null, %bb.a ] ; 6 uses
  %.02464 = phi ptr [ %.3, %rb_obj_write.exit ], [ null, %bb.a ] ; 4 uses
  %.02963 = phi ptr [ %.029.val, %rb_obj_write.exit ], [ %0, %bb.a ] ; 10 uses
  %.val.i = load i64, ptr %.02963, align 8, !tbaa !24 ; 3 uses
  %i.a = and i64 %.val.i, 524288
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = getelementptr i8, ptr %.02963, i64 16    ; 2 uses
  %.0.i47 = load i64, ptr %i.b, align 8, !tbaa !11 ; 11 uses
  br i1 %.not.i, label %CREF_CLASS.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp eq i64 %.0.i47, 0
  %i.d = and i64 %.0.i47, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %CREF_CLASS.exit.thread73

bb.c:                                             ; preds = %bb.b
  switch i64 %.0.i47, label %bb.f [
    i64 0, label %CREF_CLASS.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %CREF_CLASS.exit

bb.e:                                             ; preds = %bb.c
  br label %CREF_CLASS.exit

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %.0.i47 to i1
  br i1 %i.g, label %CREF_CLASS.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %.0.i47, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select.i.i = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %CREF_CLASS.exit

CREF_CLASS.exit:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %spec.select.i.i, %bb.g ], [ @rb_cInteger, %bb.f ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11
  %.not33 = icmp eq i64 %.0.i, %1
  br i1 %.not33, label %bb.h, label %bb.o

CREF_CLASS.exit.thread73:                         ; preds = %bb.b
  %i.j = inttoptr i64 %.0.i47 to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.0.i75 = load i64, ptr %i.k, align 8, !tbaa !11
  %.not3376 = icmp eq i64 %.0.i75, %1
  br i1 %.not3376, label %bb.h, label %.thread

CREF_CLASS.exit.thread:                           ; preds = %.lr.ph
  %.not3348 = icmp eq i64 %.0.i47, %1
  br i1 %.not3348, label %bb.h, label %CREF_CLASS.exit39

bb.h:                                             ; preds = %CREF_CLASS.exit.thread73, %CREF_CLASS.exit.thread, %CREF_CLASS.exit
  %i.l = icmp ult ptr %.02963, inttoptr (i64 2 to ptr)
  br i1 %i.l, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %.02963, i64 8
  %.val28.i.i = load i64, ptr %i.m, align 8, !tbaa !26 ; 2 uses
  %i.n = icmp eq i64 %.val28.i.i, 4
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = or i64 %.val.i, 262144
  store i64 %i.o, ptr %.02963, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.not26.i.i = phi i1 [ true, %bb.i ], [ false, %bb.j ], [ true, %bb.h ]
  %.0.i.i = phi i64 [ 4, %bb.i ], [ %.val28.i.i, %bb.j ], [ 4, %bb.h ]
  %i.p = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i, i64 noundef 40, i1 noundef zeroext true) #23 ; 5 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  store i64 %2, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr i8, ptr %.02963, i64 24
  %.val.i.i = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr i8, ptr %i.q, i64 24
  store ptr %.val.i.i, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr i8, ptr %i.q, i64 32
  store i8 0, ptr %i.u, align 8, !tbaa !27
  br i1 %.not26.i.i, label %vm_cref_new_use_prev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = load i64, ptr %i.q, align 8, !tbaa !24
  %i.w = or i64 %i.v, 262144
  store i64 %i.w, ptr %i.q, align 8, !tbaa !24
  br label %vm_cref_new_use_prev.exit

vm_cref_new_use_prev.exit:                        ; preds = %bb.k, %bb.l
  %.not32 = icmp eq ptr %.02365, null
  br i1 %.not32, label %rb_obj_write.exit.thread, label %bb.m

bb.m:                                             ; preds = %vm_cref_new_use_prev.exit
  %i.x = getelementptr i8, ptr %.02365, i64 24
  store i64 %i.p, ptr %i.x, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.p, 0
  %i.z = and i64 %i.p, 7
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %rb_obj_write.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = ptrtoint ptr %.02365 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.ac, i64 noundef %i.p) #23
  br label %rb_obj_write.exit.thread

.thread:                                          ; preds = %CREF_CLASS.exit.thread73
  %i.ad = inttoptr i64 %.0.i47 to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  br label %CREF_CLASS.exit39

bb.o:                                             ; preds = %CREF_CLASS.exit
  switch i64 %.0.i47, label %bb.r [
    i64 0, label %CREF_CLASS.exit39
    i64 4, label %bb.p
    i64 20, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  br label %CREF_CLASS.exit39

bb.q:                                             ; preds = %bb.o
  br label %CREF_CLASS.exit39

bb.r:                                             ; preds = %bb.o
  %i.af = trunc i64 %.0.i47 to i1
  br i1 %i.af, label %CREF_CLASS.exit39, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = and i64 %.0.i47, 254
  %i.ah = icmp eq i64 %i.ag, 12
  %spec.select.i.i38 = select i1 %i.ah, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %CREF_CLASS.exit39

CREF_CLASS.exit39:                                ; preds = %CREF_CLASS.exit.thread, %.thread, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.in.i36 = phi ptr [ %spec.select.i.i38, %bb.s ], [ %i.ae, %.thread ], [ @rb_cNilClass, %bb.p ], [ @rb_cTrueClass, %bb.q ], [ @rb_cFalseClass, %bb.o ], [ @rb_cInteger, %bb.r ], [ %i.b, %CREF_CLASS.exit.thread ]
  %.0.i37 = load i64, ptr %.0.in.i36, align 8, !tbaa !11
  %i.ai = icmp ult ptr %.02963, inttoptr (i64 2 to ptr)
  br i1 %i.ai, label %bb.v, label %bb.t

bb.t:                                             ; preds = %CREF_CLASS.exit39
  %i.aj = getelementptr i8, ptr %.02963, i64 8
  %.val28.i.i40 = load i64, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.ak = icmp eq i64 %.val28.i.i40, 4
  br i1 %i.ak, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = or i64 %.val.i, 262144
  store i64 %i.al, ptr %.02963, align 8, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %CREF_CLASS.exit39
  %.not26.i.i41 = phi i1 [ true, %bb.t ], [ false, %bb.u ], [ true, %CREF_CLASS.exit39 ]
  %.0.i.i42 = phi i64 [ 4, %bb.t ], [ %.val28.i.i40, %bb.u ], [ 4, %CREF_CLASS.exit39 ]
  %i.am = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i42, i64 noundef 40, i1 noundef zeroext true) #23 ; 5 uses
  %i.an = inttoptr i64 %i.am to ptr               ; 7 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store i64 %.0.i37, ptr %i.ao, align 8, !tbaa !25
  %i.ap = getelementptr i8, ptr %.02963, i64 24   ; 2 uses
  %.val.i.i43 = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.aq = getelementptr i8, ptr %i.an, i64 24
  store ptr %.val.i.i43, ptr %i.aq, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@vm_yield_with_cfunc:bb.a
  %i.ai = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr i8, ptr %i.v, i64 24
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !11
  store ptr null, ptr %i.w, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.aj, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -40
  store ptr %i.ag, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -24
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.t, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.w, ptr %i.s, align 8, !tbaa !70
  %i.ak = getelementptr i8, ptr %i.b, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211
  %i.am = getelementptr i8, ptr %i.b, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !214
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = tail call i64 %i.al(i64 noundef %.0, i64 noundef %i.ao, i32 noundef %3, ptr noundef %4, i64 noundef %.0.i) #23
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !70
  %i.ar = getelementptr i8, ptr %0, i64 32
  %i.as = load atomic volatile i32, ptr %i.ar monotonic, align 8
  %i.at = getelementptr i8, ptr %0, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !71
  %i.av = xor i32 %i.au, -1
  %i.aw = and i32 %i.as, %i.av
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.h, !prof !72

bb.h:                                             ; preds = %vm_push_frame.exit
  %i.ax = getelementptr i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.ay = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %vm_push_frame.exit, %bb.h
  %i.az = getelementptr i8, ptr %i.aq, i64 56
  store ptr %i.az, ptr %i.s, align 8, !tbaa !70
  ret i64 %i.ap
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_vm_defined(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @vm_defined(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4)
  ret i1 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @vm_defined(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.c, label %bb.au [
    i32 2, label %bb.b
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 17, label %bb.e
    i32 16, label %bb.f
    i32 7, label %bb.n
    i32 8, label %bb.x
    i32 9, label %bb.z
    i32 15, label %bb.aj
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74
  %i.f = tail call i64 @rb_sym2id(i64 noundef %3) #23
  %i.g = tail call i64 @rb_ivar_defined(i64 noundef %i.e, i64 noundef %i.f) #23
  %i.h = icmp ne i64 %i.g, 0
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_sym2id(i64 noundef %3) #23
  %i.j = tail call i64 @rb_gvar_defined(i64 noundef %i.i) #23
  %i.k = icmp ne i64 %i.j, 0
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = tail call fastcc ptr @vm_get_cref(ptr noundef %i.m)
  %i.o = tail call fastcc i64 @vm_get_cvar_base(ptr noundef %i.n, i32 noundef 0)
  %i.p = tail call i64 @rb_sym2id(i64 noundef %3) #23
  %i.q = tail call i64 @rb_cvar_defined(i64 noundef %i.o, i64 noundef %i.p) #23
  %i.r = icmp ne i64 %i.q, 0
  br label %.thread

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.s = icmp eq i32 %i.c, 6
  %i.t = tail call i64 @rb_sym2id(i64 noundef %3) #23
  %i.u = tail call fastcc i64 @vm_get_ev_const(ptr noundef %0, i64 noundef %4, i64 noundef %i.t, i1 noundef zeroext %i.s, i32 noundef 1)
  %i.v = icmp ne i64 %i.u, 0
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.w = tail call i64 @rb_sym2id(i64 noundef %3) #23 ; 2 uses
  %i.x = icmp eq i64 %4, 0
  %i.y = and i64 %4, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %4 to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  br label %rb_class_of.exit68

bb.h:                                             ; preds = %bb.f
  switch i64 %4, label %bb.k [
    i64 0, label %rb_class_of.exit68
    i64 4, label %bb.i
    i64 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %rb_class_of.exit68

bb.j:                                             ; preds = %bb.h
  br label %rb_class_of.exit68

bb.k:                                             ; preds = %bb.h
  %i.ad = trunc i64 %4 to i1
  br i1 %i.ad, label %rb_class_of.exit68, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = and i64 %4, 254
  %i.af = icmp eq i64 %i.ae, 12
  %spec.select.i67 = select i1 %i.af, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit68

rb_class_of.exit68:                               ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.in.i65 = phi ptr [ %i.ac, %bb.g ], [ @rb_cNilClass, %bb.i ], [ @rb_cTrueClass, %bb.j ], [ @rb_cFalseClass, %bb.h ], [ @rb_cInteger, %bb.k ], [ %spec.select.i67, %bb.l ]
  %.0.i66 = load i64, ptr %.0.in.i65, align 8, !tbaa !11
  %i.ag = tail call fastcc i32 @vm_respond_to(ptr noundef %0, i64 noundef %.0.i66, i64 noundef %4, i64 noundef %i.w, i32 noundef 1), !inline_history !216 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %rb_ec_obj_respond_to.exit

bb.m:                                             ; preds = %rb_class_of.exit68
  %i.ai = tail call fastcc i32 @basic_obj_respond_to(ptr noundef %0, i64 noundef %4, i64 noundef %i.w, i32 noundef 0), !inline_history !216
  br label %rb_ec_obj_respond_to.exit

rb_ec_obj_respond_to.exit:                        ; preds = %rb_class_of.exit68, %bb.m
  %.0.i = phi i32 [ %i.ai, %bb.m ], [ %i.ag, %rb_class_of.exit68 ]
  %i.aj = icmp ne i32 %.0.i, 0
  br label %.thread

bb.n:                                             ; preds = %bb.a
  %i.ak = icmp eq i64 %4, 0
  %i.al = and i64 %4, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = inttoptr i64 %4 to ptr
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  br label %rb_class_of.exit

bb.p:                                             ; preds = %bb.n
  switch i64 %4, label %bb.s [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.q
    i64 20, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %rb_class_of.exit

bb.r:                                             ; preds = %bb.p
  br label %rb_class_of.exit

bb.s:                                             ; preds = %bb.p
  %i.aq = trunc i64 %4 to i1
  br i1 %i.aq, label %rb_class_of.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = and i64 %4, 254
  %i.as = icmp eq i64 %i.ar, 12
  %spec.select.i = select i1 %i.as, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.in.i = phi ptr [ %i.ap, %bb.o ], [ @rb_cNilClass, %bb.q ], [ @rb_cTrueClass, %bb.r ], [ @rb_cFalseClass, %bb.p ], [ @rb_cInteger, %bb.s ], [ %spec.select.i, %bb.t ]
  %.0.i55 = load i64, ptr %.0.in.i, align 8, !tbaa !11
  %i.at = tail call i64 @rb_sym2id(i64 noundef %3) #23
  %i.au = tail call fastcc ptr @method_entry_resolve_refinement(i64 noundef %.0.i55, i64 noundef %i.at, i32 noundef 1, ptr noundef null) ; 3 uses
  %.not53 = icmp eq ptr %i.au, null
  br i1 %.not53, label %check_respond_to_missing.exit, label %bb.u

bb.u:                                             ; preds = %rb_class_of.exit
  %i.av = load i64, ptr %i.au, align 8, !tbaa !217
  %i.aw = trunc i64 %i.av to i32
  %5 = lshr i32 %i.aw, 16
  %6 = and i32 %5, 3
  switch i32 %6, label %default.unreachable101 [
    i32 2, label %VM_CF_BLOCK_HANDLER.exit.thread
    i32 3, label %bb.v
    i32 1, label %.thread
    i32 0, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.ax = getelementptr i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !74
  %i.az = getelementptr i8, ptr %i.au, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !198
  %i.bb = tail call i64 @rb_class_real(i64 noundef %i.ba) #56
  %i.bc = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.ay, i64 noundef %i.bb) #23
  %.not54 = icmp eq i64 %i.bc, 0
  br i1 %.not54, label %VM_CF_BLOCK_HANDLER.exit.thread, label %.thread

default.unreachable101:                           ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.170, i32 noundef 0) #57
  unreachable

check_respond_to_missing.exit:                    ; preds = %rb_class_of.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %3, ptr %i.b, align 16, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !11
  %i.be = call fastcc i64 @rb_check_funcall_default_kw(i64 noundef %4, i64 noundef 158, i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef 36, i32 noundef 0), !inline_history !218 ; 2 uses
  %i.bf = icmp ugt i64 %i.be, 36
  %switch.cast = trunc i64 %i.be to i37
  %switch.downshift = lshr i37 68719476718, %switch.cast
  %switch.masked = trunc i37 %switch.downshift to i1
  %.0.i56 = select i1 %i.bf, i1 true, i1 %switch.masked
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread

bb.x:                                             ; preds = %bb.a
  %i.bg = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.bg, align 8, !tbaa !15 ; 3 uses
  %.val.i = load i64, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.bh = and i64 %.val.i, 2147418113             ; 2 uses
  switch i64 %i.bh, label %bb.y [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread
  ]

bb.y:                                             ; preds = %bb.x
  %i.bi = and i64 %.val.i, 2
  %.not5.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %.val, %bb.y ]
  %i.bj = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bk = and i64 %.0.val3.i.i.i, -4
  %i.bl = inttoptr i64 %i.bk to ptr               ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !11 ; 2 uses
  %i.bm = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.loopexit.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i:                        ; preds = %.lr.ph.i.i.i
  %.pre.i = and i64 %.0.val.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i

VM_CF_LEP.exit.i:                                 ; preds = %VM_CF_LEP.exit.loopexit.i, %bb.y
  %.pre-phi.i = phi i64 [ %.pre.i, %VM_CF_LEP.exit.loopexit.i ], [ %i.bh, %bb.y ]
  %.0.lcssa.i.i.i = phi ptr [ %i.bl, %VM_CF_LEP.exit.loopexit.i ], [ %.val, %bb.y ]
  switch i64 %.pre-phi.i, label %VM_CF_BLOCK_HANDLER.exit [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread
  ]

VM_CF_BLOCK_HANDLER.exit:                         ; preds = %VM_CF_LEP.exit.i
  %i.bn = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 -8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %.not52 = icmp eq i64 %i.bo, 0
  br i1 %.not52, label %VM_CF_BLOCK_HANDLER.exit.thread, label %.thread

bb.z:                                             ; preds = %bb.a
  %i.bp = getelementptr i8, ptr %1, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 3 uses
  %.07.val16.i = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.br = and i64 %.07.val16.i, 2
  %.not17.i = icmp eq i64 %i.br, 0
  br i1 %.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.z, %bb.ab
  %.0718.i = phi ptr [ %i.ca, %bb.ab ], [ %i.bq, %bb.z ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.0718.i, i64 -16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.bv = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !77
  %i.bx = and i64 %i.bw, 61440
  %cond.i = icmp eq i64 %i.bx, 24576
  br i1 %cond.i, label %rb_vm_frame_method_entry.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i
  %i.by = getelementptr i8, ptr %.0718.i, i64 -8
  %.07.val10.i = load i64, ptr %i.by, align 8, !tbaa !11
  %i.bz = and i64 %.07.val10.i, -4
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %.07.val.i = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cb = and i64 %.07.val.i, 2
  %.not.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.ab, %bb.z
  %.07.lcssa.i = phi ptr [ %i.bq, %bb.z ], [ %i.ca, %bb.ab ]
  %i.cc = getelementptr i8, ptr %.07.lcssa.i, i64 -16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %VM_CF_BLOCK_HANDLER.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i
  %i.cf = inttoptr i64 %i.cd to ptr               ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !77
  %7 = trunc i64 %i.cg to i32
  %8 = lshr i32 %7, 12
  %9 = and i32 %8, 15
  switch i32 %9, label %VM_CF_BLOCK_HANDLER.exit.thread [
    i32 6, label %rb_vm_frame_method_entry.exit
    i32 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !80 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %VM_CF_BLOCK_HANDLER.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !77
  %i.cm = and i64 %i.cl, 61440
  %cond.i.i = icmp eq i64 %i.cm, 24576
  br i1 %cond.i.i, label %rb_vm_frame_method_entry.exit, label %VM_CF_BLOCK_HANDLER.exit.thread

rb_vm_frame_method_entry.exit:                    ; preds = %bb.aa, %bb.ae, %bb.ac
  %.0.i58 = phi ptr [ %i.ck, %bb.ae ], [ %i.cf, %bb.ac ], [ %i.bv, %bb.aa ] ; 2 uses
  %i.cn = getelementptr i8, ptr %.0.i58, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !200
  %i.cp = tail call fastcc i64 @vm_search_normal_superclass(i64 noundef %i.co) ; 3 uses
  %.not51 = icmp eq i64 %i.cp, 0
  br i1 %.not51, label %.thread, label %bb.af

bb.af:                                            ; preds = %rb_vm_frame_method_entry.exit
  %i.cq = getelementptr i8, ptr %.0.i58, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !83
  %i.cs = getelementptr i8, ptr %i.cr, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !205 ; 3 uses
  %i.cu = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.cp, i64 noundef %i.ct, ptr noundef null) ; 2 uses
  %.not.i.i.i14.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i14.i, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i.i15.i = icmp eq ptr %i.cw, null
  br i1 %.not7.i.i.i15.i, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = load i8, ptr %i.cw, align 8
  %i.cy = and i8 %i.cx, 15                        ; 2 uses
  switch i8 %i.cy, label %rb_callable_method_entry_with_refinements.exit.thread21.i [
    i8 7, label %.thread
    i8 11, label %bb.ai
  ], !prof !219

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.cz = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %i.cp, i64 noundef %i.ct, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.da = load i64, ptr %i.a, align 8, !tbaa !11
  %i.db = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.da, i64 noundef %i.ct, ptr noundef %i.cz, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not12.i = icmp eq ptr %i.db, null
  br i1 %.not12.i, label %.thread, label %.rb_callable_method_entry_with_refinements.exit.thread21.i_crit_edge

.rb_callable_method_entry_with_refinements.exit.thread21.i_crit_edge: ; preds = %bb.ai
  %.phi.trans.insert = getelementptr i8, ptr %i.db, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  %.pre89 = load i8, ptr %.pre, align 8
  %.pre90 = and i8 %.pre89, 15
  br label %rb_callable_method_entry_with_refinements.exit.thread21.i

rb_callable_method_entry_with_refinements.exit.thread21.i: ; preds = %.rb_callable_method_entry_with_refinements.exit.thread21.i_crit_edge, %bb.ah
  %.pre-phi = phi i8 [ %.pre90, %.rb_callable_method_entry_with_refinements.exit.thread21.i_crit_edge ], [ %i.cy, %bb.ah ]
  %i.dc = icmp ne i8 %.pre-phi, 8
  br label %.thread

bb.aj:                                            ; preds = %bb.a
  %i.dd = getelementptr i8, ptr %1, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15 ; 3 uses
  %.0.val4.i = load i64, ptr %i.de, align 8, !tbaa !11
  %i.df = and i64 %.0.val4.i, 2
  %.not5.i = icmp eq i64 %i.df, 0
  br i1 %.not5.i, label %.lr.ph.i60, label %.loopexit

.lr.ph.i60:                                       ; preds = %bb.aj, %.lr.ph.i60
  %.06.i = phi ptr [ %i.di, %.lr.ph.i60 ], [ %i.de, %bb.aj ]
  %i.dg = getelementptr i8, ptr %.06.i, i64 -8
  %.0.val3.i = load i64, ptr %i.dg, align 8, !tbaa !11
  %i.dh = and i64 %.0.val3.i, -4
  %i.di = inttoptr i64 %i.dh to ptr               ; 3 uses
  %.0.val.i = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dj = and i64 %.0.val.i, 2
  %.not.i61 = icmp eq i64 %i.dj, 0
  br i1 %.not.i61, label %.lr.ph.i60, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph.i60, %bb.aj
  %.0.lcssa.i = phi ptr [ %i.de, %bb.aj ], [ %i.di, %.lr.ph.i60 ] ; 2 uses
  %i.dk = tail call i64 @rb_fix2int(i64 noundef %3) #23 ; 2 uses
  %sext = shl i64 %i.dk, 32
  %i.dl = ashr exact i64 %sext, 32
  %i.dm = icmp eq ptr %0, null
  br i1 %i.dm, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %i.dn = getelementptr i8, ptr %0, i64 104
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !220
  %.not8.i.i.i = icmp eq ptr %i.do, %.0.lcssa.i
  br i1 %.not8.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.loopexit
  %i.dp = getelementptr i8, ptr %.0.lcssa.i, i64 -16
  br label %lep_svar.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dq = getelementptr i8, ptr %0, i64 112
  br label %lep_svar.exit.i.i

lep_svar.exit.i.i:                                ; preds = %bb.am, %bb.al
  %.0.in.i.i.i = phi ptr [ %i.dp, %bb.al ], [ %i.dq, %bb.am ]
  %.0.i.i.i = load i64, ptr %.0.in.i.i.i, align 8, !tbaa !11 ; 2 uses
  %i.dr = inttoptr i64 %.0.i.i.i to ptr           ; 2 uses
  %i.ds = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.ds, label %lep_svar_get.exit.i, label %bb.an

bb.an:                                            ; preds = %lep_svar.exit.i.i
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !77
  %i.du = and i64 %i.dt, 61440
  %.not.i.i = icmp eq i64 %i.du, 8192
  br i1 %.not.i.i, label %bb.ao, label %lep_svar_get.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.dv = getelementptr i8, ptr %i.dr, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !221
  br label %lep_svar_get.exit.i

lep_svar_get.exit.i:                              ; preds = %bb.ao, %bb.an, %lep_svar.exit.i.i
  %.1.i.i = phi i64 [ %i.dw, %bb.ao ], [ 4, %lep_svar.exit.i.i ], [ 4, %bb.an ] ; 2 uses
  %i.dx = and i64 %i.dk, 1
  %.not.i63 = icmp eq i64 %i.dx, 0
  %i.dy = lshr i64 %i.dl, 1                       ; 2 uses
  br i1 %.not.i63, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %lep_svar_get.exit.i
  switch i64 %i.dy, label %bb.ar [
    i64 38, label %bb.at
    i64 96, label %bb.at
    i64 39, label %bb.at
    i64 43, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.dz = tail call i64 @rb_reg_last_defined(i64 noundef %.1.i.i) #23
  br label %vm_backref_defined.exit

bb.ar:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.172) #57
  unreachable

bb.as:                                            ; preds = %lep_svar_get.exit.i
  %i.ea = trunc i64 %i.dy to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ap, %bb.ap
  %.0.i64 = phi i32 [ 0, %bb.ap ], [ 0, %bb.ap ], [ 0, %bb.ap ], [ %i.ea, %bb.as ]
  %i.eb = tail call i64 @rb_reg_nth_defined(i32 noundef %.0.i64, i64 noundef %.1.i.i) #23
  br label %vm_backref_defined.exit

vm_backref_defined.exit:                          ; preds = %bb.aq, %bb.at
  %.08.i = phi i64 [ %i.eb, %bb.at ], [ %i.dz, %bb.aq ]
  %i.ec = and i64 %.08.i, -5
  %i.ed = icmp ne i64 %i.ec, 0
  br label %.thread

bb.au:                                            ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.171) #57
  unreachable

VM_CF_BLOCK_HANDLER.exit.thread:                  ; preds = %VM_CF_LEP.exit.i, %VM_CF_LEP.exit.i, %bb.x, %bb.x, %bb.ad, %._crit_edge.i, %bb.ac, %bb.ae, %bb.u, %bb.v, %VM_CF_BLOCK_HANDLER.exit
  br label %.thread

.thread:                                          ; preds = %rb_callable_method_entry_with_refinements.exit.thread21.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %rb_vm_frame_method_entry.exit, %bb.u, %bb.v, %check_respond_to_missing.exit, %VM_CF_BLOCK_HANDLER.exit, %VM_CF_BLOCK_HANDLER.exit.thread, %vm_backref_defined.exit, %rb_ec_obj_respond_to.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.3 = phi i1 [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %bb.e ], [ %i.aj, %rb_ec_obj_respond_to.exit ], [ false, %VM_CF_BLOCK_HANDLER.exit.thread ], [ true, %VM_CF_BLOCK_HANDLER.exit ], [ %i.ed, %vm_backref_defined.exit ], [ %.0.i56, %check_respond_to_missing.exit ], [ true, %bb.u ], [ true, %bb.v ], [ false, %rb_vm_frame_method_entry.exit ], [ false, %bb.ai ], [ false, %bb.af ], [ false, %bb.ag ], [ %i.dc, %rb_callable_method_entry_with_refinements.exit.thread21.i ], [ false, %bb.ah ]
  ret i1 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_get_special_object(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_get_special_object(ptr noundef %0, i32 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_get_special_object(ptr noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  switch i32 %1, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_mRubyVMFrozenCore, align 8, !tbaa !11
  br label %vm_get_cbase.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @vm_get_cref(ptr noundef readonly %0) ; 2 uses
  %.val.i.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.c = and i64 %.val.i.i, 524288
end_hunk_1
begin_hunk_2_@rb_vm_send:bb.a
  br label %vm_sendish.exit

vm_sendish.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.be, %bb.o ], [ %i.ay, %bb.n ] ; 2 uses
  store ptr %.0.i.i, ptr %i.x, align 8, !tbaa !233
  %i.bf = getelementptr i8, ptr %.0.i.i, i64 24
  %.0.i.val.i = load ptr, ptr %i.bf, align 8, !tbaa !234
  %i.bg = call i64 %.0.i.val.i(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bh = icmp eq i64 %i.bg, 36
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %vm_sendish.exit
  %i.bi = getelementptr i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bn = or i64 %i.bm, 32
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !11
  %i.bo = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %vm_sendish.exit
  %.0 = phi i64 [ %i.bo, %bb.p ], [ %i.bg, %vm_sendish.exit ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @stack_check(ptr noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4 = icmp eq i32 %i.d, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.a, align 8, !tbaa !63
  %i.f = or i8 %i.e, 2
  store i8 %i.f, ptr %i.a, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_caller_setup_arg_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.b to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 16
  br label %vm_ci_flag.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  %i.g = trunc i64 %i.f to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.h = and i32 %.0.i, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %vm_ci_flag.exit
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr i8, ptr %i.j, i64 -8       ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !73
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 24 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %VM_CF_BLOCK_HANDLER.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr @rb_block_param_proxy, align 8, !tbaa !11
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 32
  %.val41 = load ptr, ptr %i.p, align 8, !tbaa !15 ; 3 uses
  %.val.i = load i64, ptr %.val41, align 8, !tbaa !11 ; 2 uses
  %i.q = and i64 %.val.i, 2147418113              ; 2 uses
  switch i64 %i.q, label %bb.g [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = and i64 %.val.i, 2
  %.not5.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.val41, %bb.g ]
  %i.s = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.s, align 8, !tbaa !11
  %i.t = and i64 %.0.val3.i.i.i, -4
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.u, align 8, !tbaa !11 ; 2 uses
  %i.v = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.loopexit.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i:                        ; preds = %.lr.ph.i.i.i
  %.pre.i = and i64 %.0.val.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i

VM_CF_LEP.exit.i:                                 ; preds = %VM_CF_LEP.exit.loopexit.i, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %VM_CF_LEP.exit.loopexit.i ], [ %i.q, %bb.g ]
  %.0.lcssa.i.i.i = phi ptr [ %i.u, %VM_CF_LEP.exit.loopexit.i ], [ %.val41, %bb.g ]
  switch i64 %.pre-phi.i, label %bb.h [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.h:                                             ; preds = %VM_CF_LEP.exit.i
  %i.w = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  br label %VM_CF_BLOCK_HANDLER.exit

bb.i:                                             ; preds = %bb.e
  %i.y = and i64 %i.l, 255
  %i.z = icmp eq i64 %i.y, 12
  br i1 %i.z, label %RB_SYMBOL_P.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i64 %i.l, 0
  %i.ab = and i64 %i.l, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %RB_SYMBOL_P.exit.thread1, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.j
  %i.ae = inttoptr i64 %i.l to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 20
  br i1 %i.ah, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread1

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.i, %RB_SYMBOL_P.exit
  %i.ai = load i64, ptr @rb_cSymbol, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %rb_method_basic_definition_p.exit.thread4, label %bb.k

bb.k:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.aj = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.ai, i64 noundef 3329, ptr noundef null) ; 3 uses
  %.not.i.i.i43 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i43, label %RB_SYMBOL_P.exit.thread1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not7.i.i.i, label %RB_SYMBOL_P.exit.thread1, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 15
  %i.ao = icmp eq i8 %i.an, 7
  br i1 %i.ao, label %RB_SYMBOL_P.exit.thread1, label %rb_method_basic_definition_p.exit

rb_method_basic_definition_p.exit:                ; preds = %bb.m
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !170
  %i.aq = and i64 %i.ap, 262144
  %.not39 = icmp eq i64 %i.aq, 0
  br i1 %.not39, label %RB_SYMBOL_P.exit.thread1, label %rb_method_basic_definition_p.exit.thread4

rb_method_basic_definition_p.exit.thread4:        ; preds = %RB_SYMBOL_P.exit.thread, %rb_method_basic_definition_p.exit
  %i.ar = getelementptr i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 3 uses
  %.06.val20.i = load i64, ptr %i.as, align 8, !tbaa !11
  %i.at = and i64 %.06.val20.i, 2
  %.not21.i = icmp eq i64 %i.at, 0
  br i1 %.not21.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %rb_method_basic_definition_p.exit.thread4, %check_cref.exit.thread.i
  %.0622.i = phi ptr [ %i.bg, %check_cref.exit.thread.i ], [ %i.as, %rb_method_basic_definition_p.exit.thread4 ] ; 2 uses
  %i.au = getelementptr i8, ptr %.0622.i, i64 -16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %check_cref.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.ax = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !77
  %4 = trunc i64 %i.ay to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  switch i32 %6, label %check_cref.exit.thread.i [
    i32 6, label %bb.o
    i32 1, label %vm_env_cref.exit.thread10
  ]

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr i8, ptr %i.ax, i64 16
  %.val.i.i = load ptr, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %i.ba = load i8, ptr %.val.i.i, align 8
  %i.bb = and i8 %i.ba, 15
  %cond.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %cond.i.i.i, label %check_cref.exit.i, label %check_cref.exit.thread.i

check_cref.exit.i:                                ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %.val.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %.not8.i = icmp eq ptr %i.bd, null
  br i1 %.not8.i, label %check_cref.exit.thread.i, label %vm_env_cref.exit.thread10

check_cref.exit.thread.i:                         ; preds = %check_cref.exit.i, %bb.o, %bb.n, %.lr.ph.i
  %i.be = getelementptr i8, ptr %.0622.i, i64 -8
  %.06.val9.i = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bf = and i64 %.06.val9.i, -4
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  %.06.val.i = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bh = and i64 %.06.val.i, 2
  %.not.i46 = icmp eq i64 %i.bh, 0
  br i1 %.not.i46, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %check_cref.exit.thread.i, %rb_method_basic_definition_p.exit.thread4
  %.06.lcssa.i = phi ptr [ %i.as, %rb_method_basic_definition_p.exit.thread4 ], [ %i.bg, %check_cref.exit.thread.i ]
  %i.bi = getelementptr i8, ptr %.06.lcssa.i, i64 -16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %VM_CF_BLOCK_HANDLER.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.bl = inttoptr i64 %i.bj to ptr               ; 4 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !77
  %7 = trunc i64 %i.bm to i32
  %8 = lshr i32 %7, 12
  %9 = and i32 %8, 15
  switch i32 %9, label %VM_CF_BLOCK_HANDLER.exit [
    i32 6, label %bb.q
    i32 1, label %vm_env_cref.exit.thread10
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr i8, ptr %i.bl, i64 16
  %.val.i11.i = load ptr, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %i.bo = load i8, ptr %.val.i11.i, align 8
  %i.bp = and i8 %i.bo, 15
  %cond.i.i12.i = icmp eq i8 %i.bp, 0
  br i1 %cond.i.i12.i, label %vm_env_cref.exit, label %VM_CF_BLOCK_HANDLER.exit

bb.r:                                             ; preds = %bb.p
  %i.bq = getelementptr i8, ptr %i.bl, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !80 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %VM_CF_BLOCK_HANDLER.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = inttoptr i64 %i.br to ptr               ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !77
  %10 = trunc i64 %i.bu to i32
  %11 = lshr i32 %10, 12
  %12 = and i32 %11, 15
  switch i32 %12, label %VM_CF_BLOCK_HANDLER.exit [
    i32 6, label %bb.t
    i32 1, label %vm_env_cref.exit.thread10
  ]

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr i8, ptr %i.bt, i64 16
  %.val.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %i.bw = load i8, ptr %.val.i.i.i, align 8
  %i.bx = and i8 %i.bw, 15
  %cond.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %cond.i.i.i.i, label %vm_env_cref.exit, label %VM_CF_BLOCK_HANDLER.exit

vm_env_cref.exit:                                 ; preds = %bb.t, %bb.q
  %.val.i11.i.pn = phi ptr [ %.val.i11.i, %bb.q ], [ %.val.i.i.i, %bb.t ]
  %.0.i45.in = getelementptr i8, ptr %.val.i11.i.pn, i64 16
  %.0.i45 = load ptr, ptr %.0.i45.in, align 8, !tbaa !27 ; 2 uses
  %.not40 = icmp eq ptr %.0.i45, null
  br i1 %.not40, label %VM_CF_BLOCK_HANDLER.exit, label %vm_env_cref.exit.thread10

vm_env_cref.exit.thread10:                        ; preds = %check_cref.exit.i, %bb.n, %bb.s, %bb.p, %vm_env_cref.exit
  %.0.i4513 = phi ptr [ %.0.i45, %vm_env_cref.exit ], [ %i.bl, %bb.p ], [ %i.bt, %bb.s ], [ %i.ax, %bb.n ], [ %i.bd, %check_cref.exit.i ]
  %i.by = getelementptr i8, ptr %.0.i4513, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, 4
  br i1 %i.ca, label %VM_CF_BLOCK_HANDLER.exit, label %bb.u

bb.u:                                             ; preds = %vm_env_cref.exit.thread10
  %i.cb = tail call i64 @rb_hash_lookup(i64 noundef %i.bz, i64 noundef %i.l) #23 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4
  br i1 %i.cc, label %bb.v, label %VM_CF_BLOCK_HANDLER.exit

bb.v:                                             ; preds = %bb.u
  %i.cd = tail call i64 @rb_ary_hidden_new(i64 noundef 2) #23 ; 4 uses
  %i.ce = tail call i64 @rb_ary_push(i64 noundef %i.cd, i64 noundef %i.l) #23 ; 0 uses
  %i.cf = tail call i64 @rb_ary_push(i64 noundef %i.cd, i64 noundef %i.bz) #23 ; 0 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.cd) #23
  %i.cg = tail call i64 @rb_func_lambda_new(ptr noundef nonnull @refine_sym_proc_call, i64 noundef %i.cd, i32 noundef 1, i32 noundef -1) #23 ; 2 uses
  %i.ch = tail call i64 @rb_hash_aset(i64 noundef %i.bz, i64 noundef %i.l, i64 noundef %i.cg) #23 ; 0 uses
  br label %VM_CF_BLOCK_HANDLER.exit

RB_SYMBOL_P.exit.thread1:                         ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %rb_method_basic_definition_p.exit, %RB_SYMBOL_P.exit
  %i.ci = tail call i64 @rb_obj_is_proc(i64 noundef %i.l) #23, !inline_history !235
  %.not.i47 = icmp eq i64 %i.ci, 0
  br i1 %.not.i47, label %bb.w, label %VM_CF_BLOCK_HANDLER.exit, !prof !177

bb.w:                                             ; preds = %RB_SYMBOL_P.exit.thread1
  %i.cj = tail call fastcc i64 @rb_class_of(i64 noundef %i.l) #56, !inline_history !235
  %i.ck = tail call ptr @rb_callable_method_entry_with_refinements(i64 noundef %i.cj, i64 noundef 3329, ptr noundef null), !inline_history !235 ; 2 uses
  %.not18.i = icmp eq ptr %i.ck, null             ; 2 uses
  br i1 %.not18.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !28
  store volatile ptr %i.cm, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cn = tail call i64 @rb_vm_call0(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.l, i64 noundef 3329, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.ck, i32 noundef 0), !inline_history !235
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.co = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.l, i32 noundef 12, ptr noundef nonnull @.str.177, i64 noundef 3329) #23, !inline_history !235
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.016.i = phi i64 [ %i.cn, %bb.x ], [ %i.co, %bb.y ] ; 4 uses
  %i.cp = icmp eq i64 %.016.i, 4
  br i1 %i.cp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = tail call i64 @rb_obj_is_proc(i64 noundef %.016.i) #23, !inline_history !235
  %.not19.i = icmp eq i64 %i.cq, 0
  br i1 %.not19.i, label %bb.ab, label %VM_CF_BLOCK_HANDLER.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %.not18.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cr = tail call i64 @rb_obj_class(i64 noundef %i.l) #23, !inline_history !235 ; 2 uses
  %i.cs = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ct = tail call i64 @rb_obj_class(i64 noundef %.016.i) #23, !inline_history !235
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cs, ptr noundef nonnull @.str.178, i64 noundef %i.cr, i64 noundef %i.cr, i64 noundef %i.ct) #42, !inline_history !235
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.cv = tail call ptr @rb_obj_classname(i64 noundef %i.l) #23, !inline_history !235
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cu, ptr noundef nonnull @.str.179, ptr noundef %i.cv) #42, !inline_history !235
  unreachable

bb.ae:                                            ; preds = %vm_ci_flag.exit
  %.not37 = icmp eq ptr %2, null
  br i1 %.not37, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr i8, ptr %0, i64 24
  %i.cx = getelementptr i8, ptr %0, i64 40
  store ptr %2, ptr %i.cx, align 8, !tbaa !27
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = or i64 %i.cy, 1
  br label %VM_CF_BLOCK_HANDLER.exit

bb.ag:                                            ; preds = %bb.ae
  %.not38 = icmp eq i32 %3, 0
  br i1 %.not38, label %VM_CF_BLOCK_HANDLER.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.da, align 8, !tbaa !15 ; 3 uses
  %.val.i49 = load i64, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.db = and i64 %.val.i49, 2147418113           ; 2 uses
  switch i64 %i.db, label %bb.ai [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dc = and i64 %.val.i49, 2
  %.not5.i.i.i51 = icmp eq i64 %i.dc, 0
  br i1 %.not5.i.i.i51, label %.lr.ph.i.i.i55, label %VM_CF_LEP.exit.i52

.lr.ph.i.i.i55:                                   ; preds = %bb.ai, %.lr.ph.i.i.i55
  %.06.i.i.i56 = phi ptr [ %i.df, %.lr.ph.i.i.i55 ], [ %.val, %bb.ai ]
  %i.dd = getelementptr i8, ptr %.06.i.i.i56, i64 -8
  %.0.val3.i.i.i57 = load i64, ptr %i.dd, align 8, !tbaa !11
  %i.de = and i64 %.0.val3.i.i.i57, -4
  %i.df = inttoptr i64 %i.de to ptr               ; 3 uses
  %.0.val.i.i.i58 = load i64, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.dg = and i64 %.0.val.i.i.i58, 2
  %.not.i.i.i59 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i59, label %.lr.ph.i.i.i55, label %VM_CF_LEP.exit.loopexit.i60, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i60:                      ; preds = %.lr.ph.i.i.i55
  %.pre.i61 = and i64 %.0.val.i.i.i58, 2147418113
  br label %VM_CF_LEP.exit.i52

VM_CF_LEP.exit.i52:                               ; preds = %VM_CF_LEP.exit.loopexit.i60, %bb.ai
  %.pre-phi.i53 = phi i64 [ %.pre.i61, %VM_CF_LEP.exit.loopexit.i60 ], [ %i.db, %bb.ai ]
  %.0.lcssa.i.i.i54 = phi ptr [ %i.df, %VM_CF_LEP.exit.loopexit.i60 ], [ %.val, %bb.ai ]
  switch i64 %.pre-phi.i53, label %bb.aj [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.aj:                                            ; preds = %VM_CF_LEP.exit.i52
  %i.dh = getelementptr i8, ptr %.0.lcssa.i.i.i54, i64 -8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11
  br label %VM_CF_BLOCK_HANDLER.exit

VM_CF_BLOCK_HANDLER.exit:                         ; preds = %bb.r, %bb.s, %bb.p, %._crit_edge.i, %bb.q, %bb.t, %bb.aj, %VM_CF_LEP.exit.i52, %VM_CF_LEP.exit.i52, %bb.ah, %bb.ah, %bb.aa, %RB_SYMBOL_P.exit.thread1, %bb.h, %VM_CF_LEP.exit.i, %VM_CF_LEP.exit.i, %bb.f, %bb.f, %bb.ag, %bb.d, %bb.u, %bb.v, %vm_env_cref.exit.thread10, %vm_env_cref.exit, %bb.af
  %.1 = phi i64 [ %i.cb, %bb.u ], [ %i.cz, %bb.af ], [ %i.l, %RB_SYMBOL_P.exit.thread1 ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.d ], [ %i.l, %vm_env_cref.exit.thread10 ], [ %i.l, %vm_env_cref.exit ], [ %i.cg, %bb.v ], [ 0, %bb.f ], [ %i.x, %bb.h ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %bb.f ], [ %.016.i, %bb.aa ], [ 0, %bb.ah ], [ %i.di, %bb.aj ], [ 0, %VM_CF_LEP.exit.i52 ], [ 0, %VM_CF_LEP.exit.i52 ], [ %i.l, %bb.t ], [ %i.l, %bb.q ], [ %i.l, %._crit_edge.i ], [ %i.l, %bb.p ], [ %i.l, %bb.s ], [ %i.l, %bb.r ]
  ret i64 %.1
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_sendish(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef range(i32 0, 3) %4) unnamed_addr #11 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.rb_calling_info, align 8    ; 12 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !225    ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %.not.i.i = trunc i64 %i.d to i1                ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 1
  %i.g = and i32 %i.f, 32767
  br label %vm_ci_argc.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !174
  %i.j = trunc i64 %i.i to i32
  br label %vm_ci_argc.exit

vm_ci_argc.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i26 = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73
  %i.m = sext i32 %.0.i26 to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr [8 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %2, ptr %5, align 8, !tbaa !226
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr null, ptr %i.r, align 8, !tbaa !233
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %i.s, align 8, !tbaa !228
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.q, ptr %i.t, align 8, !tbaa !229
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.0.i26, ptr %i.u, align 8, !tbaa !230
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 36
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vm_ci_argc.exit
  %i.w = trunc i64 %i.d to i32
  %i.x = lshr i32 %i.w, 16
  br label %vm_ci_flag.exit

bb.e:                                             ; preds = %vm_ci_argc.exit
  %i.y = getelementptr i8, ptr %i.c, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !173
  %i.aa = trunc i64 %i.z to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i28 = phi i32 [ %i.x, %bb.d ], [ %i.aa, %bb.e ]
  %i.ab = trunc i32 %.0.i28 to i8
  %i.ac = lshr i8 %i.ab, 6
  %i.ad = and i8 %i.ac, 1
  store i8 %i.ad, ptr %i.v, align 4, !tbaa !231
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ae, i8 0, i64 11, i1 false)
  switch i32 %4, label %default.unreachable54 [
    i32 0, label %bb.f
    i32 2, label %bb.o
    i32 1, label %bb.bf
  ]

bb.f:                                             ; preds = %vm_ci_flag.exit
  %i.af = getelementptr i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = icmp eq i64 %i.q, 0
  %i.aj = and i64 %i.q, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = inttoptr i64 %i.q to ptr
  %i.an = getelementptr i8, ptr %i.am, i64 8
  br label %rb_class_of.exit

bb.h:                                             ; preds = %bb.f
  switch i64 %i.q, label %bb.k [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.i
    i64 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %rb_class_of.exit

bb.j:                                             ; preds = %bb.h
  br label %rb_class_of.exit

bb.k:                                             ; preds = %bb.h
  %i.ao = trunc i64 %i.q to i1
  br i1 %i.ao, label %rb_class_of.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = and i64 %i.q, 254
  %i.aq = icmp eq i64 %i.ap, 12
  %spec.select.i = select i1 %i.aq, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.in.i = phi ptr [ %i.an, %bb.g ], [ @rb_cNilClass, %bb.i ], [ @rb_cTrueClass, %bb.j ], [ @rb_cFalseClass, %bb.h ], [ @rb_cInteger, %bb.k ], [ %spec.select.i, %bb.l ]
  %.0.i29 = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  %i.ar = getelementptr i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !182 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val24 = load i64, ptr %i.at, align 8, !tbaa !185
  %i.au = icmp eq i64 %.val24, %.0.i29
  br i1 %i.au, label %bb.m, label %bb.n, !prof !72

bb.m:                                             ; preds = %rb_class_of.exit
  %i.av = getelementptr i8, ptr %i.as, i64 16
  %.val = load ptr, ptr %i.av, align 8, !tbaa !187
  %i.aw = load i64, ptr %.val, align 8, !tbaa !170
  %i.ax = and i64 %i.aw, 2097152
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %vm_search_method_fastpath.exit, label %bb.n, !prof !72

bb.n:                                             ; preds = %bb.m, %rb_class_of.exit
  %i.ay = tail call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.ah, ptr noundef nonnull %2, i64 noundef %.0.i29)
  br label %vm_search_method_fastpath.exit

vm_search_method_fastpath.exit:                   ; preds = %bb.m, %bb.n
  %.0.i = phi ptr [ %i.ay, %bb.n ], [ %i.as, %bb.m ] ; 2 uses
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !233
  %i.az = getelementptr i8, ptr %.0.i, i64 24
  %.0.i.val = load ptr, ptr %i.az, align 8, !tbaa !234
  %i.ba = call i64 %.0.i.val(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #23
  br label %bb.bk

bb.o:                                             ; preds = %vm_ci_flag.exit
  %i.bb = getelementptr i8, ptr %1, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15 ; 3 uses
  %.07.val16.i.i = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.bd = and i64 %.07.val16.i.i, 2
  %.not17.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not17.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.q
  %.0718.i.i = phi ptr [ %i.bm, %bb.q ], [ %i.bc, %bb.o ] ; 2 uses
  %i.be = getelementptr i8, ptr %.0718.i.i, i64 -16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bh = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !77
  %i.bj = and i64 %i.bi, 61440
  %cond.i.i = icmp eq i64 %i.bj, 24576
  br i1 %cond.i.i, label %rb_vm_frame_method_entry.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.bk = getelementptr i8, ptr %.0718.i.i, i64 -8
  %.07.val10.i.i = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bl = and i64 %.07.val10.i.i, -4
  %i.bm = inttoptr i64 %i.bl to ptr               ; 3 uses
  %.07.val.i.i = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bn = and i64 %.07.val.i.i, 2
  %.not.i70.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i70.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.o
  %.07.lcssa.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.bm, %bb.q ]
  %i.bo = getelementptr i8, ptr %.07.lcssa.i.i, i64 -16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.br = inttoptr i64 %i.bp to ptr               ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !77
  %6 = trunc i64 %i.bs to i32
  %7 = lshr i32 %6, 12
  %8 = and i32 %7, 15
  switch i32 %8, label %bb.u [
    i32 6, label %rb_vm_frame_method_entry.exit.i
    i32 2, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !80 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !77
  %i.by = and i64 %i.bx, 61440
  %cond.i.i.i = icmp eq i64 %i.by, 24576
  br i1 %cond.i.i.i, label %rb_vm_frame_method_entry.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %._crit_edge.i.i
  tail call fastcc void @vm_super_outside() #58, !inline_history !236
  unreachable

rb_vm_frame_method_entry.exit.i:                  ; preds = %bb.p, %bb.t, %bb.r
  %.0.i69.i = phi ptr [ %i.bw, %bb.t ], [ %i.br, %bb.r ], [ %i.bh, %bb.p ] ; 3 uses
  %i.bz = getelementptr i8, ptr %.0.i69.i, i64 8  ; 2 uses
  %.val68.i = load i64, ptr %i.bz, align 8, !tbaa !200 ; 2 uses
  %i.ca = inttoptr i64 %.val68.i to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 128
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !237 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4
  %i.ce = select i1 %i.cd, i64 %.val68.i, i64 %i.cc ; 6 uses
  %i.cf = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !77
  %i.ch = and i64 %i.cg, 31
  %.not57.i = icmp eq i64 %i.ch, 3
  br i1 %.not57.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %rb_vm_frame_method_entry.exit.i
  %i.ci = getelementptr i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.ck = getelementptr i8, ptr %.0.i69.i, i64 16
  %.val.i = load ptr, ptr %i.ck, align 8, !tbaa !83 ; 2 uses
  %i.cl = load i8, ptr %.val.i, align 8
  %i.cm = and i8 %i.cl, 15
  %cond.i71.i = icmp eq i8 %i.cm, 0
  br i1 %cond.i71.i, label %bb.w, label %method_entry_iseqptr.exit.i

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr i8, ptr %.val.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !27
  br label %method_entry_iseqptr.exit.i

method_entry_iseqptr.exit.i:                      ; preds = %bb.w, %bb.v
  %.0.i72.i = phi ptr [ %i.co, %bb.w ], [ null, %bb.v ]
  %.not58.i = icmp eq ptr %i.cj, %.0.i72.i
  br i1 %.not58.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %method_entry_iseqptr.exit.i
  %i.cp = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.q, i64 noundef %i.ce) #23, !inline_history !236
  %.not59.i = icmp eq i64 %i.cp, 0
  br i1 %.not59.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cq = icmp eq i64 %i.ce, 0
  %i.cr = and i64 %i.ce, 7
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.y
  %i.cu = load i64, ptr %i.cf, align 8, !tbaa !77
  %i.cv = and i64 %i.cu, 31
  %i.cw = icmp eq i64 %i.cv, 28
  br i1 %i.cw, label %bb.z, label %.thread.i

bb.z:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cx = getelementptr i8, ptr %i.cf, i64 136
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !27
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.z, %bb.y
  %i.cz = phi i64 [ %i.cy, %bb.z ], [ %i.ce, %bb.y ] ; 2 uses
  %.not60.i = icmp eq i64 %i.cz, 0
  br i1 %.not60.i, label %bb.aa, label %.thread.i

.thread.i:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.da = phi i64 [ %i.cz, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.ce, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.db = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.dc = tail call i64 @rb_obj_class(i64 noundef %i.q) #23, !inline_history !236
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.db, ptr noundef nonnull @.str.180, i64 noundef %i.dc, i64 noundef %i.da) #42, !inline_history !236
  unreachable

bb.aa:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %bb.x, %method_entry_iseqptr.exit.i, %rb_vm_frame_method_entry.exit.i
  %i.dd = getelementptr i8, ptr %.0.i69.i, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %i.df = load i8, ptr %i.de, align 8
  %i.dg = and i8 %i.df, 15
  %i.dh = icmp eq i8 %i.dg, 4
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !225 ; 9 uses
  br i1 %i.dh, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.di = ptrtoint ptr %.pre.i to i64             ; 2 uses
  %.not.i.i.i = trunc i64 %i.di to i1
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dj = trunc i64 %i.di to i32
  %i.dk = lshr i32 %i.dj, 16
  br label %vm_ci_flag.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.dl = getelementptr i8, ptr %.pre.i, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !173
  %i.dn = trunc i64 %i.dm to i32
  br label %vm_ci_flag.exit.i

vm_ci_flag.exit.i:                                ; preds = %bb.ad, %bb.ac
  %.0.i73.i = phi i32 [ %i.dk, %bb.ac ], [ %i.dn, %bb.ad ]
  %i.do = and i32 %.0.i73.i, 512
  %.not61.i = icmp eq i32 %i.do, 0
  br i1 %.not61.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %vm_ci_flag.exit.i
  %i.dp = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dp, ptr noundef nonnull @.str.181) #42, !inline_history !236
  unreachable

bb.af:                                            ; preds = %vm_ci_flag.exit.i, %bb.aa
  %i.dq = getelementptr i8, ptr %i.de, i64 32
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !205 ; 6 uses
  %.not.i74.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i74.i, label %vm_ci_markable.exit.thread95.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = ptrtoint ptr %.pre.i to i64             ; 2 uses
  %.not.i.i75.i = trunc i64 %i.ds to i1
  br i1 %.not.i.i75.i, label %vm_ci_argc.exit.thread.i, label %vm_ci_markable.exit.i

vm_ci_markable.exit.i:                            ; preds = %bb.ag
  %i.dt = load i64, ptr %.pre.i, align 8, !tbaa !77
  %i.du = and i64 %i.dt, 65536
  %.not5.i.i = icmp eq i64 %i.du, 0
  br i1 %.not5.i.i, label %vm_ci_markable.exit.thread.i, label %vm_ci_markable.exit.thread95.i

vm_ci_markable.exit.thread95.i:                   ; preds = %vm_ci_markable.exit.i, %bb.af
  %i.dv = getelementptr i8, ptr %.pre.i, i64 16
  store i64 %i.dr, ptr %i.dv, align 8, !tbaa !11
  br label %rb_obj_written.exit.i

vm_ci_argc.exit.thread.i:                         ; preds = %bb.ag
  %i.dw = trunc i64 %i.ds to i32                  ; 2 uses
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = lshr i32 %i.dw, 1
  %i.dz = and i32 %i.dy, 32767
  br label %vm_ci_kwarg.exit.i

vm_ci_markable.exit.thread.i:                     ; preds = %vm_ci_markable.exit.i
  %i.ea = getelementptr i8, ptr %.pre.i, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !173
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr i8, ptr %.pre.i, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !174
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = getelementptr i8, ptr %.pre.i, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !238
  br label %vm_ci_kwarg.exit.i

vm_ci_kwarg.exit.i:                               ; preds = %vm_ci_markable.exit.thread.i, %vm_ci_argc.exit.thread.i
  %.0.i81103.i = phi i32 [ %i.ef, %vm_ci_markable.exit.thread.i ], [ %i.dz, %vm_ci_argc.exit.thread.i ] ; 3 uses
  %.0.i7898102.i = phi i32 [ %i.ec, %vm_ci_markable.exit.thread.i ], [ %i.dx, %vm_ci_argc.exit.thread.i ] ; 3 uses
  %.0.i83.i = phi ptr [ %i.eh, %vm_ci_markable.exit.thread.i ], [ null, %vm_ci_argc.exit.thread.i ] ; 4 uses
  %.not.i.i84.i = icmp ugt i64 %i.dr, 4294967295
  %i.ei = icmp ugt i32 %.0.i7898102.i, 65535
  %or.cond13.i.i.i = or i1 %.not.i.i84.i, %i.ei
  br i1 %or.cond13.i.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %vm_ci_kwarg.exit.i
  %i.ej = icmp ugt i32 %.0.i81103.i, 32767
  %i.ek = icmp ne ptr %.0.i83.i, null
  %or.cond.i.i.i = or i1 %i.ej, %i.ek
  br i1 %or.cond.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = shl nuw i64 %i.dr, 32
  %i.em = shl nuw i32 %.0.i7898102.i, 16
  %i.en = zext i32 %i.em to i64
  %i.eo = or disjoint i64 %i.el, %i.en
  %i.ep = shl nuw nsw i32 %.0.i81103.i, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = or disjoint i64 %i.eo, %i.eq
  %i.es = or disjoint i64 %i.er, 1
  %i.et = inttoptr i64 %i.es to ptr
  br label %vm_ci_new_runtime_.exit.i

bb.aj:                                            ; preds = %bb.ah, %vm_ci_kwarg.exit.i
  %i.eu = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !240
  %.not.i.i.i.i = icmp eq ptr %.0.i83.i, null
  br i1 %.not.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
end_hunk_2
begin_hunk_3_@remove_method:bb.a
bb.s:                                             ; preds = %bb.r
  %i.bk = load i8, ptr %i.bj, align 8
  %i.bl = and i8 %i.bk, 15
  %i.bm = icmp eq i8 %i.bl, 7
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %RCLASS_EXT_READABLE.exit86, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s, %bb.p
  %i.bn = call i64 @rb_id2sym(i64 noundef %1) #23
  call fastcc void @rb_name_err_raise(i64 noundef %i.aa, i64 noundef %i.bn) #58
  unreachable

bb.u:                                             ; preds = %bb.p, %bb.s
  %.not66 = icmp eq i64 %i.aa, %0
  br i1 %.not66, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @rb_clear_method_cache(i64 noundef %0, i64 noundef %1)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @rb_clear_method_cache(i64 noundef %i.aa, i64 noundef %1)
  %i.bo = icmp ne i64 %i.aa, 0
  %i.bp = and i64 %i.aa, 7
  %i.bq = icmp eq i64 %i.bp, 0
  %.not5.i.i.i = and i1 %i.bo, %i.bq
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.w
  %i.br = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.bs = and i64 %i.br, 16384
  %.not10.i = icmp eq i64 %i.bs, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.x, !prof !110

bb.x:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.bt = getelementptr i8, ptr %i.ac, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.w
  %i.bu = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i87 = icmp eq ptr %i.bu, null
  br i1 %.not.i87, label %.split.i90, label %bb.y

.split.i90:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.bv = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.aa, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.y:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.bw = getelementptr i8, ptr %i.bu, i64 128
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !111, !range !114, !noundef !64
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %.split7.i89, label %bb.z

.split7.i89:                                      ; preds = %bb.y
  %i.bz = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.aa, ptr noundef nonnull %i.bu)
  br label %RCLASS_EXT_WRITABLE.exit

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr i8, ptr %i.ac, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.x, %.split.i90, %.split7.i89, %bb.z
  %.0.i88 = phi ptr [ %i.bt, %bb.x ], [ %i.ca, %bb.z ], [ %i.bv, %.split.i90 ], [ %i.bz, %.split7.i89 ]
  %i.cb = getelementptr i8, ptr %.0.i88, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !388
  %i.cd = call i32 @rb_id_table_delete(ptr noundef %i.cc, i64 noundef %1) #23 ; 0 uses
  call fastcc void @rb_vm_check_redefinition_opt_method(ptr noundef nonnull %i.bb, i64 noundef %i.aa)
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !418
  %i.cf = load i8, ptr %i.ce, align 8
  %i.cg = and i8 %i.cf, 15
  %i.ch = icmp eq i8 %i.cg, 11
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %RCLASS_EXT_WRITABLE.exit
  call void @rb_add_refined_method_entry(i64 noundef %i.aa, i64 noundef %1)
  br label %bb.ab

bb.ab:                                            ; preds = %RCLASS_EXT_WRITABLE.exit, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ci = call i64 @rb_id2sym(i64 noundef %1) #23
  store i64 %i.ci, ptr %i.d, align 8, !tbaa !11
  %i.cj = icmp eq i64 %0, 0
  %i.ck = and i64 %0, 7
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = or i1 %i.cj, %i.cl
  br i1 %i.cm, label %.split56, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.ab
  %i.cn = load i64, ptr %i.e, align 8, !tbaa !77
  %i.co = and i64 %i.cn, 8223
  %or.cond = icmp eq i64 %i.co, 8194
  br i1 %or.cond, label %.split, label %.split56

.split56:                                         ; preds = %bb.ab, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cp = call fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef 2961, i32 noundef 1, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !286 ; 0 uses
  br label %bb.ac

.split:                                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cq = getelementptr i8, ptr %i.e, i64 136
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !27
  %i.cs = call fastcc i64 @rb_funcallv_scope(i64 noundef %i.cr, i64 noundef 2977, i32 noundef 1, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !286 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.split56, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_remove_method(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_intern(ptr noundef nonnull %1) #23
  tail call fastcc void @remove_method(i64 noundef %0, i64 noundef %i.a)
  ret void
}

declare i64 @rb_intern(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 3) i32 @rb_method_boundp(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @method_boundp(i64 noundef %0, i64 noundef %1, i32 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 3) i32 @method_boundp(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = and i32 %2, 2                            ; 2 uses
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %0, i64 noundef %1, ptr noundef null) ; 5 uses
  %.not.i.i.i14 = icmp eq ptr %i.d, null          ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i14, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not7.i.i.i, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, 15
  switch i8 %i.h, label %rb_callable_method_entry_with_refinements.exit.thread21 [
    i8 7, label %rb_callable_method_entry_with_refinements.exit.thread
    i8 11, label %bb.e
  ], !prof !219

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.i = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef nonnull %i.b)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !11
  %i.k = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.j, i64 noundef %1, ptr noundef %i.i, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %rb_callable_method_entry_with_refinements.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i.i14, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i15 = icmp eq ptr %i.m, null
  br i1 %.not7.i.i.i15, label %rb_callable_method_entry_with_refinements.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, 15
  switch i8 %i.o, label %rb_callable_method_entry_with_refinements.exit.thread21 [
    i8 7, label %rb_callable_method_entry_with_refinements.exit.thread
    i8 11, label %bb.i
  ], !prof !219

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.p = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %0, i64 noundef %1, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.q = load i64, ptr %i.a, align 8, !tbaa !11
  %i.r = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.q, i64 noundef %1, ptr noundef %i.p, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %rb_callable_method_entry_with_refinements.exit

rb_callable_method_entry_with_refinements.exit:   ; preds = %bb.i, %bb.e
  %.0 = phi ptr [ %i.r, %bb.i ], [ %i.k, %bb.e ]  ; 2 uses
  %.not12 = icmp eq ptr %.0, null
  br i1 %.not12, label %rb_callable_method_entry_with_refinements.exit.thread, label %rb_callable_method_entry_with_refinements.exit.thread21

rb_callable_method_entry_with_refinements.exit.thread21: ; preds = %bb.h, %bb.d, %rb_callable_method_entry_with_refinements.exit
  %.024 = phi ptr [ %.0, %rb_callable_method_entry_with_refinements.exit ], [ %i.d, %bb.d ], [ %i.d, %bb.h ] ; 2 uses
  %i.s = and i32 %2, -3
  %.not13 = icmp eq i32 %i.s, 0
  br i1 %.not13, label %bb.l, label %bb.j

bb.j:                                             ; preds = %rb_callable_method_entry_with_refinements.exit.thread21
  %i.t = load i64, ptr %.024, align 8, !tbaa !170
  %i.u = trunc i64 %i.t to i32
  %3 = lshr i32 %i.u, 16
  %i.v = and i32 %3, 3
  switch i32 %i.v, label %bb.l [
    i32 2, label %rb_callable_method_entry_with_refinements.exit.thread
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %.not, label %bb.l, label %rb_callable_method_entry_with_refinements.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j, %rb_callable_method_entry_with_refinements.exit.thread21
  %i.w = getelementptr i8, ptr %.024, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 15
  %i.aa = icmp eq i8 %i.z, 8
  %spec.select = select i1 %i.aa, i32 %i.c, i32 1
  br label %rb_callable_method_entry_with_refinements.exit.thread

rb_callable_method_entry_with_refinements.exit.thread: ; preds = %bb.g, %bb.f, %bb.h, %bb.c, %bb.b, %bb.d, %bb.l, %rb_callable_method_entry_with_refinements.exit, %bb.k, %bb.j
  %.011 = phi i32 [ 0, %rb_callable_method_entry_with_refinements.exit ], [ 0, %bb.k ], [ 0, %bb.j ], [ %spec.select, %bb.l ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  ret i32 %.011
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_scope_visibility_set(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 8
  %.val8.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i.i.i.i, i64 %.val8.i.i.i.i ; 2 uses
  %.not910.i.i.i.i = icmp ugt ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not910.i.i.i.i)
  %i.h = getelementptr i8, ptr %i.e, i64 32
  %.0.val.i.i.i3.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i.i.i4.i = load i64, ptr %.0.val.i.i.i3.i, align 8, !tbaa !11
  %i.i = and i64 %.0.val.val.i.i.i4.i, 128
  %.not7.not.i.i.i5.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i.i.i5.i, label %vm_cref_set_visibility.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.011.i.i.i6.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr i8, ptr %.011.i.i.i6.i, i64 56 ; 2 uses
  %.not9.i.i.i.i = icmp ugt ptr %i.g, %i.j
  tail call void @llvm.assume(i1 %.not9.i.i.i.i)
  %i.k = getelementptr i8, ptr %.011.i.i.i6.i, i64 88
  %.0.val.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i.i.i.i = load i64, ptr %.0.val.i.i.i.i, align 8, !tbaa !11
  %i.l = and i64 %.0.val.val.i.i.i.i, 128
  %.not7.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not7.not.i.i.i.i, label %vm_cref_set_visibility.exit, label %.lr.ph.i.i.i.i

vm_cref_set_visibility.exit:                      ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.0.val.i.i.i.lcssa.i = phi ptr [ %.0.val.i.i.i3.i, %bb.a ], [ %.0.val.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.m = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull %.0.val.i.i.i.lcssa.i)
  %i.n = getelementptr i8, ptr %i.m, i64 32       ; 2 uses
  %i.o = trunc i32 %0 to i8
  %i.p = load i8, ptr %i.n, align 4
  %i.q = and i8 %i.o, 7
  %i.r = and i8 %i.p, -16
  %i.s = or disjoint i8 %i.r, %i.q
  store i8 %i.s, ptr %i.n, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_attr(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call ptr @rb_vm_cref_in_context(i64 noundef %0, i64 noundef %0)
  %i.e = icmp ne i32 %4, 0
  %i.f = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @vm_scope_visibility_get(ptr noundef %.0..0..0..0..0..0..i) ; 2 uses
  switch i32 %i.g, label %bb.e [
    i32 2, label %bb.c
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc i32 @vm_scope_module_func_check(ptr noundef %.0..0..0..0..0..0..i)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.7) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 1, %bb.e ], [ 1, %bb.a ], [ 2, %bb.c ], [ 2, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.i = tail call i64 @rb_id2str(i64 noundef %1) #23
  %i.j = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.8, i64 noundef %i.i) #23
  %i.k = tail call i64 @rb_intern_str(i64 noundef %i.j) #23 ; 2 uses
  %.not17 = icmp eq i32 %2, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = inttoptr i64 %i.k to ptr
  tail call void @rb_add_method(i64 noundef %0, i64 noundef %1, i32 noundef 3, ptr noundef %i.l, i32 noundef %.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not18 = icmp eq i32 %3, 0
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i64 @rb_id_attrset(i64 noundef %1) #23
  %i.n = inttoptr i64 %i.k to ptr
  tail call void @rb_add_method(i64 noundef %0, i64 noundef %i.m, i32 noundef 2, ptr noundef %i.n, i32 noundef %.0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_vm_cref_in_context(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val8.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.g, %i.e
  br i1 %.not910.i, label %.lr.ph.i, label %vm_env_cref_by_cref.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.011.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr i8, ptr %.011.i, i64 32
  %.0.val.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 4 uses
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.not9.i = icmp ugt ptr %i.g, %i.j
  br i1 %.not9.i, label %.lr.ph.i, label %vm_env_cref_by_cref.exit, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %.011.i, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %.not11 = icmp eq i64 %i.l, %0
  br i1 %.not11, label %bb.c, label %vm_env_cref_by_cref.exit

bb.c:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit
  %i.m = and i64 %.0.val.val.i, 2
  %.not15.i = icmp eq i64 %i.m, 0
  br i1 %.not15.i, label %.lr.ph.i14, label %._crit_edge.i

.lr.ph.i14:                                       ; preds = %bb.c, %bb.d
  %.016.i = phi ptr [ %i.y, %bb.d ], [ %.0.val.i, %bb.c ] ; 2 uses
  %i.n = getelementptr i8, ptr %.016.i, i64 -16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = and i64 %i.o, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %.lr.ph.i14
  %i.t = inttoptr i64 %i.o to ptr
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77
  %i.v = and i64 %i.u, 61471
  %or.cond.i = icmp eq i64 %i.v, 4122
  br i1 %or.cond.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %.lr.ph.i14
  %i.w = getelementptr i8, ptr %.016.i, i64 -8
  %.0.val6.i = load i64, ptr %i.w, align 8, !tbaa !11
  %i.x = and i64 %.0.val6.i, -4
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %.0.val.i15 = load i64, ptr %i.y, align 8, !tbaa !11
  %i.z = and i64 %.0.val.i15, 2
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %.lr.ph.i14, label %._crit_edge.i, !llvm.loop !440

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.0.lcssa.i = phi ptr [ %.0.val.i, %bb.c ], [ %i.y, %bb.d ]
  %i.aa = getelementptr i8, ptr %.0.lcssa.i, i64 -16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = and i64 %i.ab, 7
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i7.i

rbimpl_RB_TYPE_P_fastpath.exit.i7.i:              ; preds = %._crit_edge.i
  %i.ag = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !77 ; 2 uses
  %i.ai = and i64 %i.ah, 31
  %i.aj = icmp eq i64 %i.ai, 26
  br i1 %i.aj, label %bb.e, label %vm_env_cref_by_cref.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7.i
  %2 = trunc i64 %i.ah to i32
  %3 = lshr i32 %2, 12
  %4 = and i32 %3, 15
  switch i32 %4, label %vm_env_cref_by_cref.exit [
    i32 1, label %.loopexit
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !80 ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  %i.an = and i64 %i.al, 7
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.f
  %i.aq = inttoptr i64 %i.al to ptr
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.as = and i64 %i.ar, 61471
  %or.cond.i.i = icmp eq i64 %i.as, 4122
  br i1 %or.cond.i.i, label %.loopexit, label %vm_env_cref_by_cref.exit

.loopexit:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.e
  %i.at = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull %.0.val.i) ; 3 uses
  %.val.i16 = load i64, ptr %i.at, align 8, !tbaa !24
  %i.au = and i64 %.val.i16, 524288
  %.not.i17 = icmp eq i64 %i.au, 0
  %i.av = getelementptr i8, ptr %i.at, i64 16     ; 2 uses
  br i1 %.not.i17, label %CREF_CLASS.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25 ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = and i64 %i.aw, 7
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = or i1 %i.ax, %i.az
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = inttoptr i64 %i.aw to ptr
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  br label %CREF_CLASS.exit

bb.i:                                             ; preds = %bb.g
  switch i64 %i.aw, label %bb.l [
    i64 0, label %CREF_CLASS.exit
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %CREF_CLASS.exit

bb.k:                                             ; preds = %bb.i
  br label %CREF_CLASS.exit

bb.l:                                             ; preds = %bb.i
  %i.bd = trunc i64 %i.aw to i1
  br i1 %i.bd, label %CREF_CLASS.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = and i64 %i.aw, 254
  %i.bf = icmp eq i64 %i.be, 12
  %spec.select.i.i = select i1 %i.bf, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %CREF_CLASS.exit

CREF_CLASS.exit:                                  ; preds = %.loopexit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.in.i = phi ptr [ %spec.select.i.i, %bb.m ], [ %i.bc, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %i.av, %.loopexit ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11
  %.not13 = icmp eq i64 %.0.i, %1
  %. = select i1 %.not13, ptr %i.at, ptr null
  br label %vm_env_cref_by_cref.exit

vm_env_cref_by_cref.exit:                         ; preds = %bb.b, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.f, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i, %._crit_edge.i, %CREF_CLASS.exit, %rb_vm_get_ruby_level_next_cfp.exit
  %.0 = phi ptr [ null, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ %., %CREF_CLASS.exit ], [ null, %rb_vm_get_ruby_level_next_cfp.exit ], [ null, %._crit_edge.i ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 8) i32 @vm_scope_visibility_get(ptr noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val8.i = load i64, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 3 uses
  %.not910.i = icmp ugt ptr %i.d, %i.b
  tail call void @llvm.assume(i1 %.not910.i)
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.0.val.i8 = load ptr, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %.0.val.val.i9 = load i64, ptr %.0.val.i8, align 8, !tbaa !11 ; 2 uses
  %i.f = and i64 %.0.val.val.i9, 128
  %.not7.not.i10 = icmp eq i64 %i.f, 0            ; 2 uses
  br i1 %.not7.not.i10, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i11 = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %.011.i11, i64 56  ; 2 uses
  %.not9.i = icmp ugt ptr %i.d, %i.g
  tail call void @llvm.assume(i1 %.not9.i)
  %i.h = getelementptr i8, ptr %.011.i11, i64 88
  %.0.val.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i, %bb.a
  %.0.val14.i = phi i64 [ %.0.val.val.i9, %bb.a ], [ %.0.val.val.i, %.lr.ph.i ]
  %i.j = phi ptr [ %.0.val.i8, %bb.a ], [ %.0.val.i, %.lr.ph.i ] ; 2 uses
  %i.k = and i64 %.0.val14.i, 2
  %.not15.i = icmp eq i64 %i.k, 0
  br i1 %.not15.i, label %.lr.ph.i4, label %._crit_edge.i

.lr.ph.i4:                                        ; preds = %rb_vm_get_ruby_level_next_cfp.exit, %bb.b
  %.016.i = phi ptr [ %i.w, %bb.b ], [ %i.j, %rb_vm_get_ruby_level_next_cfp.exit ] ; 2 uses
  %i.l = getelementptr i8, ptr %.016.i, i64 -16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i64 %i.m, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %.lr.ph.i4
  %i.r = inttoptr i64 %i.m to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77
  %i.t = and i64 %i.s, 61471
  %or.cond.i = icmp eq i64 %i.t, 4122
  br i1 %or.cond.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %.lr.ph.i4
  %i.u = getelementptr i8, ptr %.016.i, i64 -8
  %.0.val6.i = load i64, ptr %i.u, align 8, !tbaa !11
  %i.v = and i64 %.0.val6.i, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %.0.val.i5 = load i64, ptr %i.w, align 8, !tbaa !11
  %i.x = and i64 %.0.val.i5, 2
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !440

._crit_edge.i:                                    ; preds = %bb.b, %rb_vm_get_ruby_level_next_cfp.exit
  %.0.lcssa.i = phi ptr [ %i.j, %rb_vm_get_ruby_level_next_cfp.exit ], [ %i.w, %bb.b ]
  %i.y = getelementptr i8, ptr %.0.lcssa.i, i64 -16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = and i64 %i.z, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i7.i

rbimpl_RB_TYPE_P_fastpath.exit.i7.i:              ; preds = %._crit_edge.i
  %i.ae = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77 ; 2 uses
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 26
  br i1 %i.ah, label %bb.c, label %vm_env_cref_by_cref.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7.i
  %1 = trunc i64 %i.af to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %vm_env_cref_by_cref.exit [
    i32 1, label %.loopexit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = and i64 %i.aj, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.d
  %i.ao = inttoptr i64 %i.aj to ptr
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !77
  %i.aq = and i64 %i.ap, 61471
  %or.cond.i.i = icmp eq i64 %i.aq, 4122
  br i1 %or.cond.i.i, label %.loopexit, label %vm_env_cref_by_cref.exit

.loopexit:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.c
  br i1 %.not7.not.i10, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %.lr.ph.i.i
  %.011.i.i15 = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.b, %.loopexit ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.011.i.i15, i64 56 ; 2 uses
  %.not9.i.i = icmp ugt ptr %i.d, %i.ar
  tail call void @llvm.assume(i1 %.not9.i.i)
  %i.as = getelementptr i8, ptr %.011.i.i15, i64 88
  %.0.val.i.i = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i.i = load i64, ptr %.0.val.i.i, align 8, !tbaa !11
  %i.at = and i64 %.0.val.val.i.i, 128
  %.not7.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not7.not.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %.lr.ph.i.i

rb_vm_get_ruby_level_next_cfp.exit.i:             ; preds = %.lr.ph.i.i, %.loopexit
  %.0.val.i.i.lcssa = phi ptr [ %.0.val.i8, %.loopexit ], [ %.0.val.i.i, %.lr.ph.i.i ]
  %i.au = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull %.0.val.i.i.lcssa)
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 7
  %i.ay = zext nneg i8 %i.ax to i32
  br label %vm_env_cref_by_cref.exit

vm_env_cref_by_cref.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i, %._crit_edge.i, %rb_vm_get_ruby_level_next_cfp.exit.i
  %.0 = phi i32 [ %i.ay, %rb_vm_get_ruby_level_next_cfp.exit.i ], [ 1, %._crit_edge.i ], [ 1, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @vm_scope_module_func_check(ptr noundef readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val8.i = load i64, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 3 uses
  %.not910.i = icmp ugt ptr %i.d, %i.b
  tail call void @llvm.assume(i1 %.not910.i)
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %.0.val.i8 = load ptr, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %.0.val.val.i9 = load i64, ptr %.0.val.i8, align 8, !tbaa !11 ; 2 uses
  %i.f = and i64 %.0.val.val.i9, 128
  %.not7.not.i10 = icmp eq i64 %i.f, 0            ; 2 uses
  br i1 %.not7.not.i10, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i11 = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr i8, ptr %.011.i11, i64 56  ; 2 uses
  %.not9.i = icmp ugt ptr %i.d, %i.g
  tail call void @llvm.assume(i1 %.not9.i)
  %i.h = getelementptr i8, ptr %.011.i11, i64 88
  %.0.val.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i, %bb.a
  %.0.val14.i = phi i64 [ %.0.val.val.i9, %bb.a ], [ %.0.val.val.i, %.lr.ph.i ]
  %i.j = phi ptr [ %.0.val.i8, %bb.a ], [ %.0.val.i, %.lr.ph.i ] ; 2 uses
  %i.k = and i64 %.0.val14.i, 2
  %.not15.i = icmp eq i64 %i.k, 0
  br i1 %.not15.i, label %.lr.ph.i4, label %._crit_edge.i

.lr.ph.i4:                                        ; preds = %rb_vm_get_ruby_level_next_cfp.exit, %bb.b
  %.016.i = phi ptr [ %i.w, %bb.b ], [ %i.j, %rb_vm_get_ruby_level_next_cfp.exit ] ; 2 uses
  %i.l = getelementptr i8, ptr %.016.i, i64 -16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i64 %i.m, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %.lr.ph.i4
  %i.r = inttoptr i64 %i.m to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !77
  %i.t = and i64 %i.s, 61471
  %or.cond.i = icmp eq i64 %i.t, 4122
  br i1 %or.cond.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %.lr.ph.i4
  %i.u = getelementptr i8, ptr %.016.i, i64 -8
  %.0.val6.i = load i64, ptr %i.u, align 8, !tbaa !11
  %i.v = and i64 %.0.val6.i, -4
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %.0.val.i5 = load i64, ptr %i.w, align 8, !tbaa !11
  %i.x = and i64 %.0.val.i5, 2
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !440

._crit_edge.i:                                    ; preds = %bb.b, %rb_vm_get_ruby_level_next_cfp.exit
  %.0.lcssa.i = phi ptr [ %i.j, %rb_vm_get_ruby_level_next_cfp.exit ], [ %i.w, %bb.b ]
  %i.y = getelementptr i8, ptr %.0.lcssa.i, i64 -16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = and i64 %i.z, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i7.i

rbimpl_RB_TYPE_P_fastpath.exit.i7.i:              ; preds = %._crit_edge.i
  %i.ae = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77 ; 2 uses
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 26
  br i1 %i.ah, label %bb.c, label %vm_env_cref_by_cref.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7.i
  %1 = trunc i64 %i.af to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %vm_env_cref_by_cref.exit [
    i32 1, label %.loopexit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = and i64 %i.aj, 7
  %i.am = icmp ne i64 %i.al, 0
  %i.an = or i1 %i.ak, %i.am
  br i1 %i.an, label %vm_env_cref_by_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.d
  %i.ao = inttoptr i64 %i.aj to ptr
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !77
  %i.aq = and i64 %i.ap, 61471
  %or.cond.i.i = icmp eq i64 %i.aq, 4122
  br i1 %or.cond.i.i, label %.loopexit, label %vm_env_cref_by_cref.exit

.loopexit:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.c
  br i1 %.not7.not.i10, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit, %.lr.ph.i.i
  %.011.i.i15 = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.b, %.loopexit ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.011.i.i15, i64 56 ; 2 uses
  %.not9.i.i = icmp ugt ptr %i.d, %i.ar
  tail call void @llvm.assume(i1 %.not9.i.i)
  %i.as = getelementptr i8, ptr %.011.i.i15, i64 88
  %.0.val.i.i = load ptr, ptr %i.as, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i.i = load i64, ptr %.0.val.i.i, align 8, !tbaa !11
  %i.at = and i64 %.0.val.val.i.i, 128
  %.not7.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not7.not.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %.lr.ph.i.i

rb_vm_get_ruby_level_next_cfp.exit.i:             ; preds = %.lr.ph.i.i, %.loopexit
  %.0.val.i.i.lcssa = phi ptr [ %.0.val.i8, %.loopexit ], [ %.0.val.i.i, %.lr.ph.i.i ]
  %i.au = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull %.0.val.i.i.lcssa)
  %i.av = getelementptr i8, ptr %i.au, i64 32
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = lshr i8 %i.aw, 3
  %i.ay = and i8 %i.ax, 1
  %i.az = zext nneg i8 %i.ay to i32
  br label %vm_env_cref_by_cref.exit

vm_env_cref_by_cref.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i, %._crit_edge.i, %rb_vm_get_ruby_level_next_cfp.exit.i
  %.0 = phi i32 [ %i.az, %rb_vm_get_ruby_level_next_cfp.exit.i ], [ 0, %._crit_edge.i ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ]
  ret i32 %.0
}

declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_intern_str(i64 noundef) local_unnamed_addr #4

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #4

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #4

declare i64 @rb_id_attrset(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_undef(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = icmp eq i64 %0, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.9) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_class_modify_check(i64 noundef %0) #23
  switch i64 %1, label %bb.e [
    i64 3185, label %bb.d
    i64 3153, label %bb.d
    i64 2865, label %bb.d
    i64 2849, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.e = tail call ptr @rb_id2name(i64 noundef %1) #23
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.10, ptr noundef %i.e) #63
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.f = tail call fastcc ptr @search_method0(i64 noundef %0, i64 noundef %1, ptr noundef null, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !418  ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 15
  %i.k = icmp eq i8 %i.j, 11
  br i1 %i.k, label %bb.g, label %.thread53.thread

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc ptr @resolve_refined_method(i64 noundef 4, ptr noundef nonnull %i.f, ptr noundef null) ; 2 uses
  %.not47 = icmp eq ptr %i.l, null
  br i1 %.not47, label %.thread, label %.thread53

.thread53:                                        ; preds = %bb.g
  %.phi.trans.insert = getelementptr i8, ptr %i.l, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !418 ; 2 uses
  %.not48 = icmp eq ptr %.pre, null
  br i1 %.not48, label %.thread, label %.thread53.thread

.thread53.thread:                                 ; preds = %bb.f, %.thread53
  %i.m = phi ptr [ %.pre, %.thread53 ], [ %i.h, %bb.f ] ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, 15
  switch i8 %i.o, label %bb.k [
    i8 7, label %.thread
    i8 11, label %bb.h
  ]

bb.h:                                             ; preds = %.thread53.thread
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %.not49 = icmp eq ptr %i.q, null
  br i1 %.not49, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !418  ; 2 uses
  %.not50 = icmp eq ptr %i.s, null
  br i1 %.not50, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load i8, ptr %i.s, align 8
  %i.u = and i8 %i.t, 15
  %i.v = icmp eq i8 %i.u, 7
  br i1 %i.v, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.e, %.thread53.thread, %bb.j, %bb.i, %bb.h, %.thread53, %bb.g
  %i.w = tail call i64 @rb_id2str(i64 noundef %1) #23
  tail call void @rb_method_name_error(i64 noundef %0, i64 noundef %i.w) #42
  unreachable

bb.k:                                             ; preds = %.thread53.thread, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.x = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.l, label %rb_vm_lock_enter.exit.i

bb.l:                                             ; preds = %bb.k
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #23, !inline_history !430
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.l, %bb.k
  %i.y = call fastcc ptr @rb_method_entry_make(i64 noundef %0, i64 noundef %1, i64 noundef %0, i32 noundef 1, i32 noundef 7, ptr noundef null, i64 noundef %1, ptr noundef null), !inline_history !430 ; 0 uses
  %i.z = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i12.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i12.i, label %bb.m, label %rb_add_method.exit

bb.m:                                             ; preds = %rb_vm_lock_enter.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #23, !inline_history !430
  br label %rb_add_method.exit

rb_add_method.exit:                               ; preds = %rb_vm_lock_enter.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.aa = call i64 @rb_id2sym(i64 noundef %1) #23
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !11
  %i.ab = icmp eq i64 %0, 0
  %i.ac = and i64 %0, 7
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %.split42, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rb_add_method.exit
  %i.af = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ah = and i64 %i.ag, 8223
  %or.cond = icmp eq i64 %i.ah, 8194
  br i1 %or.cond, label %.split, label %.split42

.split42:                                         ; preds = %rb_add_method.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ai = call fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef 2993, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !286 ; 0 uses
  br label %bb.n

.split:                                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aj = getelementptr i8, ptr %i.af, i64 136
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !27
  %i.al = call fastcc i64 @rb_funcallv_scope(i64 noundef %i.ak, i64 noundef 3009, i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !286 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.split42, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

declare void @rb_class_modify_check(i64 noundef) local_unnamed_addr #4

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #17

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #4
end_hunk_3
begin_hunk_4_@rb_vm_call_with_refinements:bb.a

bb.k:                                             ; preds = %rb_callable_method_entry_with_refinements.exit.thread, %vm_call0_cc.exit
  %.0 = phi i64 [ %i.az, %vm_call0_cc.exit ], [ %i.ba, %rb_callable_method_entry_with_refinements.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_call_kw(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %7 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %8 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %9 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %10 = alloca %struct.rb_callcache, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i64 3190810, ptr %10, align 8, !tbaa !442
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 36, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %5, ptr %i.e, align 8, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @vm_call_general, ptr %i.f, align 8, !tbaa !234
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.g, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.h = icmp ne i32 %6, 0                        ; 2 uses
  %i.i = select i1 %i.h, i32 64, i32 0            ; 2 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.j = getelementptr i8, ptr %5, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15
  %i.n = icmp eq i8 %i.m, 0
  %i.o = icmp sgt i32 %3, 128
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %vm_call0_cc.exit, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.q = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %6), !inline_history !462 ; 0 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre6 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %bb.a, %bb.b
  %i.r = phi i32 [ %.pre6, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %i.s = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.a ]
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %4, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 106522, ptr %9, align 8, !tbaa !445
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !238
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %2, ptr %i.u, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.w = sext i32 %i.s to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !173
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.y = sext i32 %i.r to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !174
  store ptr %9, ptr %8, align 8, !tbaa !225
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !182
  store ptr %8, ptr %7, align 8, !tbaa !226
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %10, ptr %i.aa, align 8, !tbaa !233
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !441
  store i64 0, ptr %i.ac, align 8, !tbaa !441
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %1, ptr %i.ae, align 8, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.r, ptr %i.af, align 8, !tbaa !230
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ah = zext i1 %i.h to i8
  store i8 %i.ah, ptr %i.ag, align 4, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ai, i8 0, i64 11, i1 false)
  %i.aj = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %7, ptr noundef %.0.i), !inline_history !462
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret i64 %i.aj
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_call_super_kw(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  store volatile ptr %i.e, ptr %i.c, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 7 uses
  %.val.i.i.i = load i64, ptr %.val.i.i, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.val.i.i.i, 2147418113          ; 2 uses
  switch i64 %i.i, label %bb.b [
    i64 1145307137, label %pass_passed_block_handler.exit
    i64 858980353, label %pass_passed_block_handler.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %.val.i.i.i, 2
  %.not5.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not5.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %bb.b ]
  %i.k = getelementptr i8, ptr %.06.i.i.i.i.i, i64 -8
  %.0.val3.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !11
  %i.l = and i64 %.0.val3.i.i.i.i.i, -4
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %.0.val.i.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !11 ; 2 uses
  %i.n = and i64 %.0.val.i.i.i.i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.loopexit.i.i.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i = and i64 %.0.val.i.i.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i.i.i

VM_CF_LEP.exit.i.i.i:                             ; preds = %VM_CF_LEP.exit.loopexit.i.i.i, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %i.i, %bb.b ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.m, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %.val.i.i, %bb.b ]
  switch i64 %.pre-phi.i.i.i, label %bb.c [
    i64 1145307137, label %pass_passed_block_handler.exit
    i64 858980353, label %pass_passed_block_handler.exit
  ]

bb.c:                                             ; preds = %VM_CF_LEP.exit.i.i.i
  %i.o = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  br label %pass_passed_block_handler.exit

pass_passed_block_handler.exit:                   ; preds = %bb.a, %bb.a, %VM_CF_LEP.exit.i.i.i, %VM_CF_LEP.exit.i.i.i, %bb.c
  %.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.p, %bb.c ], [ 0, %VM_CF_LEP.exit.i.i.i ], [ 0, %VM_CF_LEP.exit.i.i.i ], [ 0, %bb.a ]
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 136
  store i64 %.0.i.i.i, ptr %i.q, align 8, !tbaa !441
  %i.r = load i64, ptr %.val.i.i, align 8, !tbaa !11 ; 3 uses
  %i.s = or i64 %i.r, 2048
  store i64 %i.s, ptr %.val.i.i, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.g, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !74   ; 2 uses
  %i.v = and i64 %i.r, 2
  %.not17.i.i = icmp eq i64 %i.v, 0
  br i1 %.not17.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %pass_passed_block_handler.exit, %bb.e
  %.0718.i.i = phi ptr [ %i.ae, %bb.e ], [ %.val.i.i, %pass_passed_block_handler.exit ] ; 2 uses
  %i.w = getelementptr i8, ptr %.0718.i.i, i64 -16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %i.ab = and i64 %i.aa, 61440
  %cond.i.i = icmp eq i64 %i.ab, 24576
  br i1 %cond.i.i, label %rb_vm_frame_method_entry.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.ac = getelementptr i8, ptr %.0718.i.i, i64 -8
  %.07.val10.i.i = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ad = and i64 %.07.val10.i.i, -4
  %i.ae = inttoptr i64 %i.ad to ptr               ; 3 uses
  %.07.val.i.i = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.af = and i64 %.07.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %bb.e, %pass_passed_block_handler.exit
  %.07.lcssa.i.i = phi ptr [ %.val.i.i, %pass_passed_block_handler.exit ], [ %i.ae, %bb.e ]
  %i.ag = getelementptr i8, ptr %.07.lcssa.i.i, i64 -16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %rb_vm_frame_method_entry.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aj = inttoptr i64 %i.ah to ptr               ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77
  %3 = trunc i64 %i.ak to i32
  %4 = lshr i32 %3, 12
  %5 = and i32 %4, 15
  switch i32 %5, label %rb_vm_frame_method_entry.exit.i [
    i32 6, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %rb_vm_frame_method_entry.exit.i

bb.h:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !80 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %rb_vm_frame_method_entry.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !77
  %i.aq = and i64 %i.ap, 61440
  %cond.i.i.i = icmp eq i64 %i.aq, 24576
  %spec.select.i.i.i = select i1 %cond.i.i.i, ptr %i.ao, ptr null
  br label %rb_vm_frame_method_entry.exit.i

rb_vm_frame_method_entry.exit.i:                  ; preds = %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge.i.i
  %.0.i.i = phi ptr [ %spec.select.i.i.i, %bb.i ], [ null, %bb.f ], [ null, %._crit_edge.i.i ], [ %i.aj, %bb.g ], [ null, %bb.h ], [ %i.z, %bb.d ] ; 2 uses
  %i.ar = and i64 %i.r, 128
  %.not.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_vm_frame_method_entry.exit.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.235) #57
  unreachable

bb.k:                                             ; preds = %rb_vm_frame_method_entry.exit.i
  %i.as = getelementptr i8, ptr %.0.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !200
  %i.au = inttoptr i64 %i.at to ptr               ; 7 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !77
  %i.aw = and i64 %i.av, 65536
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.au, i64 160    ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !192
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.l

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %bb.k
  %i.ba = getelementptr i8, ptr %i.au, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.l:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.bb = tail call ptr @rb_current_box() #23     ; 3 uses
  %.not.i25.i = icmp eq ptr %i.bb, null
  br i1 %.not.i25.i, label %.split.i.i, label %bb.m

.split.i.i:                                       ; preds = %bb.l
  %i.bc = getelementptr i8, ptr %i.au, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr i8, ptr %i.bb, i64 128
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !111, !range !114, !noundef !64
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.split7.i.i, label %bb.p

.split7.i.i:                                      ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !77
  %i.bh = and i64 %i.bg, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.n

bb.n:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.bj = load i64, ptr %i.bb, align 8, !tbaa !196
  %i.bk = call i32 @rb_st_lookup(ptr noundef nonnull %i.bi, i64 noundef %i.bj, ptr noundef nonnull %i.b) #23
  %.not5.i.i13.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.o, %bb.n, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.bm, %bb.o ], [ null, %bb.n ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.bn = getelementptr i8, ptr %i.au, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.bn, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.p:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %i.au, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.p, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i26.i = phi ptr [ %i.ba, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.bo, %bb.p ], [ %i.bc, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.bp = getelementptr i8, ptr %.0.i26.i, i64 96
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !406
  %i.br = inttoptr i64 %i.bq to ptr               ; 7 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !77
  %i.bt = and i64 %i.bs, 65536
  %.not.i.i27.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i27.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i45.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i28.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i28.i:      ; preds = %RCLASS_EXT_READABLE.exit.i
  %i.bu = getelementptr i8, ptr %i.br, i64 160    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !192
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i45.i, label %bb.q

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i45.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i28.i, %RCLASS_EXT_READABLE.exit.i
  %i.bx = getelementptr i8, ptr %i.br, i64 24
  br label %RCLASS_EXT_READABLE.exit46.i

bb.q:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i28.i
  %i.by = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i29.i = icmp eq ptr %i.by, null
  br i1 %.not.i29.i, label %.split.i40.i, label %bb.r

.split.i40.i:                                     ; preds = %bb.q
  %i.bz = getelementptr i8, ptr %i.br, i64 24
  br label %RCLASS_EXT_READABLE.exit46.i

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr i8, ptr %i.by, i64 128
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !111, !range !114, !noundef !64
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.split7.i31.i, label %bb.u

.split7.i31.i:                                    ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.cd = load i64, ptr %i.br, align 8, !tbaa !77
  %i.ce = and i64 %i.cd, 65536
  %.not.i.i.i10.i32.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i10.i32.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i36.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i33.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i33.i:             ; preds = %.split7.i31.i
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i34.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i12.i34.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i36.i, label %bb.s

bb.s:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i33.i
  %i.cg = load i64, ptr %i.by, align 8, !tbaa !196
  %i.ch = call i32 @rb_st_lookup(ptr noundef nonnull %i.cf, i64 noundef %i.cg, ptr noundef nonnull %i.a) #23
  %.not5.i.i13.i35.i = icmp eq i32 %i.ch, 0
  br i1 %.not5.i.i13.i35.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i36.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !11
  %i.cj = inttoptr i64 %i.ci to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i36.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i36.i:          ; preds = %bb.t, %bb.s, %RCLASS_CLASSEXT_TBL.exit.i.i11.i33.i, %.split7.i31.i
  %.0.i.i14.i37.i = phi ptr [ %i.cj, %bb.t ], [ null, %bb.s ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i33.i ], [ null, %.split7.i31.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i38.i = icmp eq ptr %.0.i.i14.i37.i, null
  %i.ck = getelementptr i8, ptr %i.br, i64 24
  %.0.i16.i39.i = select i1 %.not.i15.i38.i, ptr %i.ck, ptr %.0.i.i14.i37.i
  br label %RCLASS_EXT_READABLE.exit46.i

bb.u:                                             ; preds = %bb.r
  %i.cl = getelementptr i8, ptr %i.br, i64 24
  br label %RCLASS_EXT_READABLE.exit46.i

RCLASS_EXT_READABLE.exit46.i:                     ; preds = %bb.u, %RCLASS_EXT_READABLE_LOOKUP.exit17.i36.i, %.split.i40.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i45.i
  %.0.i30.i = phi ptr [ %i.bx, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i45.i ], [ %i.cl, %bb.u ], [ %i.bz, %.split.i40.i ], [ %.0.i16.i39.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i36.i ]
  %i.cm = getelementptr i8, ptr %.0.i30.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !197
  %i.co = getelementptr i8, ptr %.0.i.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !83
  %i.cq = getelementptr i8, ptr %i.cp, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !205 ; 3 uses
  %i.cs = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.cn, i64 noundef %i.cr, ptr noundef null) ; 3 uses
  %.not.i.i47.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i47.i, label %select.unfold.i, label %bb.v

bb.v:                                             ; preds = %RCLASS_EXT_READABLE.exit46.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not7.i.i.i, label %select.unfold.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = load i8, ptr %i.cu, align 8
  %i.cw = and i8 %i.cv, 15
  %i.cx = icmp eq i8 %i.cw, 7
  br i1 %i.cx, label %select.unfold.i, label %rb_callable_method_entry.exit.i

select.unfold.i:                                  ; preds = %bb.w, %bb.v, %RCLASS_EXT_READABLE.exit46.i
  %i.cy = call fastcc i64 @method_missing(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.u, i64 noundef %i.cr, i32 noundef %0, ptr noundef %1, i32 noundef 16, i32 noundef %2)
  br label %vm_call_super.exit

rb_callable_method_entry.exit.i:                  ; preds = %bb.w
  %i.cz = call i64 @rb_vm_call_kw(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.u, i64 noundef %i.cr, i32 noundef %0, ptr noundef %1, ptr noundef nonnull %i.cs, i32 noundef %2)
  br label %vm_call_super.exit

end_hunk_4
begin_hunk_5_@rb_ec_tag_state:bb.a

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #23
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_yield_refine_block(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.rb_captured_block, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %.val15 = load ptr, ptr %i.f, align 8, !tbaa !15 ; 3 uses
  %.val.i = load i64, ptr %.val15, align 8, !tbaa !11 ; 2 uses
  %i.g = and i64 %.val.i, 2147418113              ; 2 uses
  switch i64 %i.g, label %bb.b [
    i64 1145307137, label %.thread24
    i64 858980353, label %.thread24
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %.val.i, 2
  %.not5.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.val15, %bb.b ]
  %i.i = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.i, align 8, !tbaa !11
  %i.j = and i64 %.0.val3.i.i.i, -4
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !11 ; 2 uses
  %i.l = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.loopexit.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i:                        ; preds = %.lr.ph.i.i.i
  %.pre.i = and i64 %.0.val.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i

VM_CF_LEP.exit.i:                                 ; preds = %VM_CF_LEP.exit.loopexit.i, %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %VM_CF_LEP.exit.loopexit.i ], [ %i.g, %bb.b ]
  %.0.lcssa.i.i.i = phi ptr [ %i.k, %VM_CF_LEP.exit.loopexit.i ], [ %.val15, %bb.b ]
  switch i64 %.pre-phi.i, label %VM_CF_BLOCK_HANDLER.exit [
    i64 1145307137, label %.thread24
    i64 858980353, label %.thread24
  ]

VM_CF_BLOCK_HANDLER.exit:                         ; preds = %VM_CF_LEP.exit.i
  %i.m = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = and i64 %i.n, 3
  %cond = icmp eq i64 %i.o, 1
  br i1 %cond, label %vm_block_handler_type.exit, label %.thread24

.thread24:                                        ; preds = %VM_CF_BLOCK_HANDLER.exit, %VM_CF_LEP.exit.i, %VM_CF_LEP.exit.i, %bb.a, %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.62) #57
  unreachable

vm_block_handler_type.exit:                       ; preds = %VM_CF_BLOCK_HANDLER.exit
  %i.p = and i64 %i.n, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !500
  %i.r = ptrtoint ptr %2 to i64
  %i.s = or disjoint i64 %i.r, 1
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !210
  %i.v = call fastcc ptr @vm_cref_push(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %0, ptr noundef %i.u, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !11
  %i.x = icmp eq i64 %1, 0
  %i.y = and i64 %1, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %CREF_REFINEMENTS_SET.exit, label %bb.c

bb.c:                                             ; preds = %vm_block_handler_type.exit
  %i.ab = ptrtoint ptr %i.v to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ab, i64 noundef %1) #23
  br label %CREF_REFINEMENTS_SET.exit

CREF_REFINEMENTS_SET.exit:                        ; preds = %vm_block_handler_type.exit, %bb.c
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 6 uses
  %.0.val4.i.i = load i64, ptr %.val, align 8, !tbaa !11
  %i.ae = and i64 %.0.val4.i.i, 2
  %.not5.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not5.i.i, label %.lr.ph.i.i, label %VM_CF_LEP.exit

.lr.ph.i.i:                                       ; preds = %CREF_REFINEMENTS_SET.exit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.val, %CREF_REFINEMENTS_SET.exit ]
  %i.af = getelementptr i8, ptr %.06.i.i, i64 -8
  %.0.val3.i.i = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ag = and i64 %.0.val3.i.i, -4
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %.0.val.i.i = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.ai = and i64 %.0.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %VM_CF_LEP.exit, !llvm.loop !13

VM_CF_LEP.exit:                                   ; preds = %.lr.ph.i.i, %CREF_REFINEMENTS_SET.exit
  %.0.lcssa.i.i = phi ptr [ %.val, %CREF_REFINEMENTS_SET.exit ], [ %i.ah, %.lr.ph.i.i ]
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i, i64 -8
  store i64 %i.s, ptr %i.aj, align 8, !tbaa !11
  store i64 %0, ptr %2, align 8, !tbaa !208
  %.val.i.i.i = load i64, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.ak = and i64 %.val.i.i.i, 2147418113         ; 2 uses
  switch i64 %i.ak, label %bb.d [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
  ]

bb.d:                                             ; preds = %VM_CF_LEP.exit
  %i.al = and i64 %.val.i.i.i, 2
  %.not5.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not5.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.val, %bb.d ]
  %i.am = getelementptr i8, ptr %.06.i.i.i.i.i, i64 -8
  %.0.val3.i.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !11
  %i.an = and i64 %.0.val3.i.i.i.i.i, -4
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %.0.val.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %i.ap = and i64 %.0.val.i.i.i.i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.loopexit.i.i.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i = and i64 %.0.val.i.i.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i.i.i

VM_CF_LEP.exit.i.i.i:                             ; preds = %VM_CF_LEP.exit.loopexit.i.i.i, %bb.d
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %i.ak, %bb.d ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ao, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %.val, %bb.d ]
  switch i64 %.pre-phi.i.i.i, label %VM_CF_BLOCK_HANDLER.exit.i.i [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
  ]

VM_CF_BLOCK_HANDLER.exit.i.i:                     ; preds = %VM_CF_LEP.exit.i.i.i
  %i.aq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i, label %vm_yield_with_cref.exit, !prof !110

VM_CF_BLOCK_HANDLER.exit.thread.i.i:              ; preds = %VM_CF_BLOCK_HANDLER.exit.i.i, %VM_CF_LEP.exit.i.i.i, %VM_CF_LEP.exit.i.i.i, %VM_CF_LEP.exit, %VM_CF_LEP.exit
  call void @rb_vm_localjump_error(ptr noundef nonnull @.str.253, i64 noundef 4, i32 noundef 0) #58
  unreachable

vm_yield_with_cref.exit:                          ; preds = %VM_CF_BLOCK_HANDLER.exit.i.i
  %i.at = call fastcc i64 @invoke_block_from_c_bh(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %i.ar, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.v, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i64 %i.at
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @vm_cref_push(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.06.val20.i = load i64, ptr %2, align 8, !tbaa !11
  %i.a = and i64 %.06.val20.i, 2
  %.not21.i = icmp eq i64 %i.a, 0
  br i1 %.not21.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %check_cref.exit.thread.i
  %.0622.i = phi ptr [ %i.n, %check_cref.exit.thread.i ], [ %2, %bb.b ] ; 2 uses
  %i.b = getelementptr i8, ptr %.0622.i, i64 -16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %check_cref.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77
  %5 = trunc i64 %i.f to i32
  %6 = lshr i32 %5, 12
  %7 = and i32 %6, 15
  switch i32 %7, label %check_cref.exit.thread.i [
    i32 6, label %bb.d
    i32 1, label %vm_env_cref.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !83 ; 2 uses
  %i.h = load i8, ptr %.val.i.i, align 8
  %i.i = and i8 %i.h, 15
  %cond.i.i.i = icmp eq i8 %i.i, 0
  br i1 %cond.i.i.i, label %check_cref.exit.i, label %check_cref.exit.thread.i

check_cref.exit.i:                                ; preds = %bb.d
  %i.j = getelementptr i8, ptr %.val.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %.not8.i = icmp eq ptr %i.k, null
  br i1 %.not8.i, label %check_cref.exit.thread.i, label %vm_env_cref.exit

check_cref.exit.thread.i:                         ; preds = %check_cref.exit.i, %bb.d, %bb.c, %.lr.ph.i
  %i.l = getelementptr i8, ptr %.0622.i, i64 -8
  %.06.val9.i = load i64, ptr %i.l, align 8, !tbaa !11
  %i.m = and i64 %.06.val9.i, -4
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %.06.val.i = load i64, ptr %i.n, align 8, !tbaa !11
  %i.o = and i64 %.06.val.i, 2
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %check_cref.exit.thread.i, %bb.b
  %.06.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.n, %check_cref.exit.thread.i ]
  %i.p = getelementptr i8, ptr %.06.lcssa.i, i64 -16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %vm_env_cref.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.s = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %8 = trunc i64 %i.t to i32
  %9 = lshr i32 %8, 12
  %10 = and i32 %9, 15
  switch i32 %10, label %vm_env_cref.exit.thread [
    i32 6, label %bb.f
    i32 1, label %vm_env_cref.exit
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val.i11.i = load ptr, ptr %i.u, align 8, !tbaa !83 ; 2 uses
  %i.v = load i8, ptr %.val.i11.i, align 8
  %i.w = and i8 %i.v, 15
  %cond.i.i12.i = icmp eq i8 %i.w, 0
  br i1 %cond.i.i12.i, label %vm_env_cref.exit.sink.split, label %vm_env_cref.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %vm_env_cref.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = inttoptr i64 %i.y to ptr                ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77
  %11 = trunc i64 %i.ab to i32
  %12 = lshr i32 %11, 12
  %13 = and i32 %12, 15
  switch i32 %13, label %vm_env_cref.exit.thread [
    i32 6, label %bb.i
    i32 1, label %vm_env_cref.exit
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.ad = load i8, ptr %.val.i.i.i, align 8
  %i.ae = and i8 %i.ad, 15
  %cond.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %cond.i.i.i.i, label %vm_env_cref.exit.sink.split, label %vm_env_cref.exit.thread

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val13.i = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %.val13.val.i = load i64, ptr %.val13.i, align 8, !tbaa !11 ; 2 uses
  %i.ai = and i64 %.val13.val.i, 128
  %.not.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.not.i, label %vm_get_ruby_level_caller_cfp.exit.thread36, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %.val14.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.aj = getelementptr i8, ptr %0, i64 8
  %.val15.i = load i64, ptr %i.aj, align 8, !tbaa !122
  %i.ak = getelementptr [8 x i8], ptr %.val14.i, i64 %.val15.i
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.preheader.i
  %.pn.i = phi ptr [ %.0.i12, %bb.m ], [ %i.ag, %.preheader.i ] ; 2 uses
  %.0.i12 = getelementptr i8, ptr %.pn.i, i64 56  ; 3 uses
  %.not.i13 = icmp ugt ptr %i.ak, %.0.i12
  br i1 %.not.i13, label %bb.l, label %vm_env_cref.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %.pn.i, i64 88
  %.0.val.i = load ptr, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 3 uses
  %i.am = and i64 %.0.val.val.i, 128
  %.not12.not.i = icmp eq i64 %i.am, 0
  br i1 %.not12.not.i, label %vm_get_ruby_level_caller_cfp.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = and i64 %.0.val.val.i, 2048
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %vm_env_cref.exit.thread, label %bb.k, !llvm.loop !510

vm_get_ruby_level_caller_cfp.exit:                ; preds = %bb.l
  %.not11 = icmp eq ptr %.0.i12, null
  br i1 %.not11, label %vm_env_cref.exit.thread, label %vm_get_ruby_level_caller_cfp.exit.thread36

vm_get_ruby_level_caller_cfp.exit.thread36:       ; preds = %vm_get_ruby_level_caller_cfp.exit, %bb.j
  %.06.val20.i14 = phi i64 [ %.val13.val.i, %bb.j ], [ %.0.val.val.i, %vm_get_ruby_level_caller_cfp.exit ]
  %i.ap = phi ptr [ %.val13.i, %bb.j ], [ %.0.val.i, %vm_get_ruby_level_caller_cfp.exit ] ; 2 uses
  %i.aq = and i64 %.06.val20.i14, 2
  %.not21.i15 = icmp eq i64 %i.aq, 0
  br i1 %.not21.i15, label %.lr.ph.i23, label %._crit_edge.i16

.lr.ph.i23:                                       ; preds = %vm_get_ruby_level_caller_cfp.exit.thread36, %check_cref.exit.thread.i27
  %.0622.i24 = phi ptr [ %i.bd, %check_cref.exit.thread.i27 ], [ %i.ap, %vm_get_ruby_level_caller_cfp.exit.thread36 ] ; 2 uses
  %i.ar = getelementptr i8, ptr %.0622.i24, i64 -16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %check_cref.exit.thread.i27, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i23
  %i.au = inttoptr i64 %i.as to ptr               ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !77
  %14 = trunc i64 %i.av to i32
  %15 = lshr i32 %14, 12
  %16 = and i32 %15, 15
  switch i32 %16, label %check_cref.exit.thread.i27 [
    i32 6, label %bb.o
    i32 1, label %vm_env_cref.exit
  ]

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %.val.i.i25 = load ptr, ptr %i.aw, align 8, !tbaa !83 ; 2 uses
  %i.ax = load i8, ptr %.val.i.i25, align 8
  %i.ay = and i8 %i.ax, 15
  %cond.i.i.i26 = icmp eq i8 %i.ay, 0
  br i1 %cond.i.i.i26, label %check_cref.exit.i31, label %check_cref.exit.thread.i27

check_cref.exit.i31:                              ; preds = %bb.o
  %i.az = getelementptr i8, ptr %.val.i.i25, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27 ; 2 uses
  %.not8.i32 = icmp eq ptr %i.ba, null
  br i1 %.not8.i32, label %check_cref.exit.thread.i27, label %vm_env_cref.exit

check_cref.exit.thread.i27:                       ; preds = %check_cref.exit.i31, %bb.o, %bb.n, %.lr.ph.i23
  %i.bb = getelementptr i8, ptr %.0622.i24, i64 -8
  %.06.val9.i28 = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bc = and i64 %.06.val9.i28, -4
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %.06.val.i29 = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.be = and i64 %.06.val.i29, 2
  %.not.i30 = icmp eq i64 %i.be, 0
  br i1 %.not.i30, label %.lr.ph.i23, label %._crit_edge.i16, !llvm.loop !86

._crit_edge.i16:                                  ; preds = %check_cref.exit.thread.i27, %vm_get_ruby_level_caller_cfp.exit.thread36
  %.06.lcssa.i17 = phi ptr [ %i.ap, %vm_get_ruby_level_caller_cfp.exit.thread36 ], [ %i.bd, %check_cref.exit.thread.i27 ]
  %i.bf = getelementptr i8, ptr %.06.lcssa.i17, i64 -16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %vm_env_cref.exit.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i16
  %i.bi = inttoptr i64 %i.bg to ptr               ; 4 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !77
  %17 = trunc i64 %i.bj to i32
  %18 = lshr i32 %17, 12
  %19 = and i32 %18, 15
  switch i32 %19, label %vm_env_cref.exit.thread [
    i32 6, label %bb.q
    i32 1, label %vm_env_cref.exit
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val.i11.i21 = load ptr, ptr %i.bk, align 8, !tbaa !83 ; 2 uses
  %i.bl = load i8, ptr %.val.i11.i21, align 8
  %i.bm = and i8 %i.bl, 15
  %cond.i.i12.i22 = icmp eq i8 %i.bm, 0
  br i1 %cond.i.i12.i22, label %vm_env_cref.exit.sink.split, label %vm_env_cref.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.bn = getelementptr i8, ptr %i.bi, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %vm_env_cref.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = inttoptr i64 %i.bo to ptr               ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !77
  %20 = trunc i64 %i.br to i32
  %21 = lshr i32 %20, 12
  %22 = and i32 %21, 15
  switch i32 %22, label %vm_env_cref.exit.thread [
    i32 6, label %bb.t
    i32 1, label %vm_env_cref.exit
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr i8, ptr %i.bq, i64 16
  %.val.i.i.i19 = load ptr, ptr %i.bs, align 8, !tbaa !83 ; 2 uses
  %i.bt = load i8, ptr %.val.i.i.i19, align 8
  %i.bu = and i8 %i.bt, 15
  %cond.i.i.i.i20 = icmp eq i8 %i.bu, 0
  br i1 %cond.i.i.i.i20, label %vm_env_cref.exit.sink.split, label %vm_env_cref.exit.thread

vm_env_cref.exit.sink.split:                      ; preds = %bb.t, %bb.q, %bb.i, %bb.f
  %.val.i.i.i19.sink = phi ptr [ %.val.i11.i21, %bb.q ], [ %.val.i.i.i, %bb.i ], [ %.val.i11.i, %bb.f ], [ %.val.i.i.i19, %bb.t ]
  %i.bv = getelementptr i8, ptr %.val.i.i.i19.sink, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27
  br label %vm_env_cref.exit

vm_env_cref.exit:                                 ; preds = %check_cref.exit.i, %bb.c, %check_cref.exit.i31, %bb.n, %vm_env_cref.exit.sink.split, %bb.s, %bb.p, %bb.h, %bb.e
  %.1 = phi ptr [ %i.bq, %bb.s ], [ %i.aa, %bb.h ], [ %i.s, %bb.e ], [ %i.bi, %bb.p ], [ %i.bw, %vm_env_cref.exit.sink.split ], [ %i.au, %bb.n ], [ %i.ba, %check_cref.exit.i31 ], [ %i.e, %bb.c ], [ %i.k, %check_cref.exit.i ] ; 7 uses
  %i.bx = icmp ult ptr %.1, inttoptr (i64 2 to ptr)
  br i1 %i.bx, label %vm_env_cref.exit.thread, label %bb.u

bb.u:                                             ; preds = %vm_env_cref.exit
  %i.by = getelementptr i8, ptr %.1, i64 8
  %.val28.i.i = load i64, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %i.bz = icmp eq i64 %.val28.i.i, 4
  br i1 %i.bz, label %vm_env_cref.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load i64, ptr %.1, align 8, !tbaa !24
  %i.cb = or i64 %i.ca, 262144
  store i64 %i.cb, ptr %.1, align 8, !tbaa !24
  br label %vm_env_cref.exit.thread

vm_env_cref.exit.thread:                          ; preds = %bb.m, %bb.k, %bb.r, %bb.s, %bb.p, %._crit_edge.i16, %bb.q, %bb.t, %bb.g, %bb.h, %bb.e, %._crit_edge.i, %bb.f, %bb.i, %vm_get_ruby_level_caller_cfp.exit, %bb.v, %bb.u, %vm_env_cref.exit
  %.141 = phi ptr [ %.1, %bb.u ], [ %.1, %bb.v ], [ %.1, %vm_env_cref.exit ], [ null, %vm_get_ruby_level_caller_cfp.exit ], [ null, %bb.i ], [ null, %bb.f ], [ null, %._crit_edge.i ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.t ], [ null, %bb.q ], [ null, %._crit_edge.i16 ], [ null, %bb.p ], [ null, %bb.s ], [ null, %bb.r ], [ null, %bb.k ], [ null, %bb.m ]
  %.not26.i.i = phi i1 [ true, %bb.u ], [ false, %bb.v ], [ true, %vm_env_cref.exit ], [ true, %vm_get_ruby_level_caller_cfp.exit ], [ true, %bb.i ], [ true, %bb.f ], [ true, %._crit_edge.i ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.t ], [ true, %bb.q ], [ true, %._crit_edge.i16 ], [ true, %bb.p ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.k ], [ true, %bb.m ]
  %.0.i.i = phi i64 [ 4, %bb.u ], [ %.val28.i.i, %bb.v ], [ 4, %vm_env_cref.exit ], [ 4, %vm_get_ruby_level_caller_cfp.exit ], [ 4, %bb.i ], [ 4, %bb.f ], [ 4, %._crit_edge.i ], [ 4, %bb.e ], [ 4, %bb.h ], [ 4, %bb.g ], [ 4, %bb.t ], [ 4, %bb.q ], [ 4, %._crit_edge.i16 ], [ 4, %bb.p ], [ 4, %bb.s ], [ 4, %bb.r ], [ 4, %bb.k ], [ 4, %bb.m ]
  %i.cc = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i, i64 noundef 40, i1 noundef zeroext true) #23
  %i.cd = inttoptr i64 %i.cc to ptr               ; 10 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  store i64 %1, ptr %i.ce, align 8, !tbaa !25
  %i.cf = getelementptr i8, ptr %i.cd, i64 24
  store ptr %.141, ptr %i.cf, align 8, !tbaa !20
  %i.cg = getelementptr i8, ptr %i.cd, i64 32
  store i8 1, ptr %i.cg, align 8, !tbaa !27
  %.not25.i.i = icmp eq i32 %3, 0
  br i1 %.not25.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %vm_env_cref.exit.thread
  %i.ch = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.ci = or i64 %i.ch, 131072
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %vm_env_cref.exit.thread
  br i1 %.not26.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.ck = or i64 %i.cj, 262144
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not27.i.i = icmp eq i32 %4, 0
  br i1 %.not27.i.i, label %vm_cref_new.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !24
  %i.cm = or i64 %i.cl, 524288
  store i64 %i.cm, ptr %i.cd, align 8, !tbaa !24
  br label %vm_cref_new.exit

vm_cref_new.exit:                                 ; preds = %bb.z, %bb.aa
  ret ptr %i.cd
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_obj_instance_eval(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @specific_eval(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @specific_eval(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  store i64 %2, ptr %i.c, align 8, !tbaa !11
  %i.f = tail call i32 @rb_block_given_p() #23
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %0, 0
  br i1 %i.g, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 0) #58
  unreachable

bb.c:                                             ; preds = %bb.b
  %.not22 = icmp eq i32 %0, 0
  br i1 %.not22, label %rb_check_arity.exit, label %.split9.i

.split9.i:                                        ; preds = %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 0) #58
  unreachable

rb_check_arity.exit:                              ; preds = %bb.c
  %i.h = call fastcc i64 @yield_under(i64 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef %4)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 4, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.i = icmp slt i32 %0, 1
  br i1 %i.i, label %.split.i13, label %bb.e

.split.i13:                                       ; preds = %bb.d
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #58
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ugt i32 %0, 3
  br i1 %i.j, label %.split9.i12, label %rb_check_arity.exit14

.split9.i12:                                      ; preds = %bb.e
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #58
  unreachable

rb_check_arity.exit14:                            ; preds = %bb.e
  %i.k = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.k, ptr %i.e, align 8, !tbaa !11
  %i.l = call i64 @rb_string_value(ptr noundef nonnull %i.e) #23 ; 0 uses
  switch i32 %0, label %bb.i [
    i32 3, label %bb.f
    i32 1, label %.thread18
  ]

bb.f:                                             ; preds = %rb_check_arity.exit14
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = call i64 @rb_fix2int(i64 noundef %i.n) #23
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.q = call i64 @rb_num2int(i64 noundef %i.n) #23
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.p, %bb.g ], [ %i.q, %bb.h ]
  %i.r = trunc i64 %.0.i to i32
  br label %bb.i

bb.i:                                             ; preds = %rb_check_arity.exit14, %.thread
  %.017 = phi i32 [ %i.r, %.thread ], [ 1, %rb_check_arity.exit14 ] ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  store i64 %i.t, ptr %i.d, align 8, !tbaa !11
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %.thread18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = call i64 @rb_string_value(ptr noundef nonnull %i.d) #23 ; 0 uses
  %.pr.pre = load i64, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %i.w = icmp eq i64 %.pr.pre, 4
  br i1 %i.w, label %.thread18, label %bb.k

.thread18:                                        ; preds = %rb_check_arity.exit14, %bb.i, %bb.j
  %.01621 = phi i32 [ %.017, %bb.j ], [ %.017, %bb.i ], [ %0, %rb_check_arity.exit14 ]
  %i.x = call fastcc i64 @get_eval_default_path() ; 2 uses
  store i64 %i.x, ptr %i.d, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %.thread18, %bb.j
  %i.y = phi i64 [ %i.x, %.thread18 ], [ %.pr.pre, %bb.j ]
  %.01620 = phi i32 [ %.01621, %.thread18 ], [ %.017, %bb.j ]
  %i.z = load i64, ptr %i.e, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.z, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  store volatile ptr %i.ab, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = call fastcc ptr @vm_cref_push(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %2, ptr noundef null, i32 noundef 0, i32 noundef range(i32 0, 2) %3)
  %i.ad = call i64 @rb_string_value(ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !11
  %i.af = call fastcc i64 @eval_string_with_cref(i64 noundef %2, i64 noundef %i.ae, ptr noundef %i.ac, i64 noundef %i.y, i32 noundef %.01620)
end_hunk_5
begin_hunk_6_@rb_obj_instance_exec_internal:bb.a
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @rb_method_missing(i32 noundef %0, ptr noundef %1, i64 noundef %2) #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 145
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  tail call fastcc void @raise_method_missing(ptr noundef %.0..0..0..0..0..0..i, i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %i.f) #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_public_send(i32 noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #23
  %.not.i = icmp eq i32 %i.a, 0
  %.0.i = select i1 %.not.i, i32 0, i32 3
  %i.b = tail call fastcc i64 @send_internal(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %.0.i)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_mod_module_exec_internal(i32 noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #23
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %i.d = tail call fastcc i64 @yield_under(i64 noundef %2, i32 noundef 0, i32 noundef %0, ptr noundef %1, i32 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_mod_module_eval_internal(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #23
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %i.d = tail call fastcc i64 @specific_eval(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef %i.c)
  ret i64 %i.d
}

declare i64 @rb_define_class(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @uncaught_throw_init(i32 noundef %0, ptr noundef %1, i64 noundef returned %2) #2 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %.split.i, label %rb_check_arity.exit

.split.i:                                         ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #58
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = add nsw i32 %0, -2
  %i.c = getelementptr i8, ptr %1, i64 16
  %i.d = tail call i64 @rb_call_super_kw(i32 noundef %i.b, ptr noundef %i.c, i32 noundef 0) ; 0 uses
  %i.e = load i64, ptr @id_tag, align 8, !tbaa !11
  %i.f = load i64, ptr %1, align 8, !tbaa !11
  %i.g = tail call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.e, i64 noundef %i.f) #23 ; 0 uses
  %i.h = load i64, ptr @id_value, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = tail call i64 @rb_ivar_set(i64 noundef %2, i64 noundef %i.h, i64 noundef %i.j) #23 ; 0 uses
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @uncaught_throw_tag(i64 noundef %0) #2 {
bb.a:
  %i.a = load i64, ptr @id_tag, align 8, !tbaa !11
  %i.b = tail call i64 @rb_ivar_get(i64 noundef %0, i64 noundef %i.a) #23
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @uncaught_throw_value(i64 noundef %0) #2 {
bb.a:
  %i.a = load i64, ptr @id_value, align 8, !tbaa !11
  %i.b = tail call i64 @rb_ivar_get(i64 noundef %0, i64 noundef %i.a) #23
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @uncaught_throw_to_s(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_attr_get(i64 noundef %0, i64 noundef 3489) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.c = load i64, ptr @id_tag, align 8, !tbaa !11
  %i.d = tail call i64 @rb_ivar_get(i64 noundef %0, i64 noundef %i.c) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = call i64 @rb_str_format(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_current_ec_noinline() local_unnamed_addr #26 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_current_ec_set(ptr noundef %0) local_unnamed_addr #28 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  store ptr %0, ptr %i.a, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_vm_inc_const_missing_count() local_unnamed_addr #29 {
bb.a:
  %i.a = load i64, ptr @ruby_vm_const_missing_count, align 8, !tbaa !11
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @ruby_vm_const_missing_count, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_dtrace_setup(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #30 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  store volatile ptr %i.e, ptr %i.b, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021 = phi ptr [ %0, %bb.b ], [ %.0..0..0..0..0..0..i, %bb.c ]
  %i.f = getelementptr i8, ptr %.021, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 3 uses
  %.07.val16.i.i.i = load i64, ptr %i.i, align 8, !tbaa !11
  %i.j = and i64 %.07.val16.i.i.i, 2
  %.not17.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not17.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.f
  %.0718.i.i.i = phi ptr [ %i.s, %bb.f ], [ %i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr i8, ptr %.0718.i.i.i, i64 -16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !77
  %i.p = and i64 %i.o, 61440
  %cond.i.i.i = icmp eq i64 %i.p, 24576
  br i1 %cond.i.i.i, label %rb_ec_frame_method_id_and_class.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.q = getelementptr i8, ptr %.0718.i.i.i, i64 -8
  %.07.val10.i.i.i = load i64, ptr %i.q, align 8, !tbaa !11
  %i.r = and i64 %.07.val10.i.i.i, -4
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  %.07.val.i.i.i = load i64, ptr %i.s, align 8, !tbaa !11
  %i.t = and i64 %.07.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !79

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.d
  %.07.lcssa.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.s, %bb.f ]
  %i.u = getelementptr i8, ptr %.07.lcssa.i.i.i, i64 -16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %rb_ec_frame_method_id_and_class.exit.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.x = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !77
  %4 = trunc i64 %i.y to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  switch i32 %6, label %rb_ec_frame_method_id_and_class.exit.thread [
    i32 6, label %rb_ec_frame_method_id_and_class.exit
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %rb_ec_frame_method_id_and_class.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  %i.ae = and i64 %i.ad, 61440
  %cond.i.i.i.i = icmp eq i64 %i.ae, 24576
  br i1 %cond.i.i.i.i, label %rb_ec_frame_method_id_and_class.exit, label %rb_ec_frame_method_id_and_class.exit.thread

rb_ec_frame_method_id_and_class.exit:             ; preds = %bb.e, %bb.g, %bb.i
  %.0.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.x, %bb.g ], [ %i.n, %bb.e ] ; 2 uses
  %i.af = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !83
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !205
  %i.aj = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !405 ; 2 uses
  %.not51 = icmp eq i64 %i.ak, 0
  br i1 %.not51, label %rb_ec_frame_method_id_and_class.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.a, %rb_ec_frame_method_id_and_class.exit
  %.040 = phi i64 [ %i.ak, %rb_ec_frame_method_id_and_class.exit ], [ %1, %bb.a ] ; 4 uses
  %.0 = phi i64 [ %i.ai, %rb_ec_frame_method_id_and_class.exit ], [ %2, %bb.a ]
  %i.al = and i64 %.040, 7
  %.not52 = icmp eq i64 %i.al, 0
  br i1 %.not52, label %rbimpl_RB_TYPE_P_fastpath.exit, label %RCLASS_SINGLETON_P.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.j
  %i.am = inttoptr i64 %.040 to ptr               ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !77 ; 2 uses
  %i.ao = and i64 %i.an, 31
  %i.ap = icmp eq i64 %i.ao, 28
  br i1 %i.ap, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit.i

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aq = getelementptr i8, ptr %i.am, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61
  br label %RCLASS_SINGLETON_P.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.as = and i64 %i.an, 8223
  %or.cond50 = icmp eq i64 %i.as, 8194
  br i1 %or.cond50, label %bb.l, label %RCLASS_SINGLETON_P.exit.thread

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.at = getelementptr i8, ptr %i.am, i64 136
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %rb_ec_frame_method_id_and_class.exit.thread, label %RCLASS_SINGLETON_P.exit.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.l, %bb.k
  %.141 = phi i64 [ %i.ar, %bb.k ], [ %i.au, %bb.l ], [ %.040, %bb.j ], [ %.040, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 3 uses
  %i.aw = inttoptr i64 %.141 to ptr
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !77
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = and i32 %i.ay, 31
  %i.ba = icmp eq i32 %i.az, 28
  %i.bb = and i32 %i.ay, 30
  %i.bc = icmp eq i32 %i.bb, 2
  %or.cond5 = or i1 %i.bc, %i.ba
  br i1 %or.cond5, label %bb.m, label %rb_ec_frame_method_id_and_class.exit.thread

bb.m:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bd = tail call i64 @rb_class_path(i64 noundef %.141) #23 ; 2 uses
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !11
  %i.be = tail call ptr @rb_id2name(i64 noundef %.0) #23 ; 2 uses
  %.not28 = icmp eq ptr %i.be, null
  br i1 %.not28, label %rb_ec_frame_method_id_and_class.exit.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr i8, ptr %3, i64 24        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  store volatile ptr %i.bh, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bi = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, align 8, !tbaa !121
  %i.bk = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 8
  %.val8.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !122
  %i.bl = getelementptr [8 x i8], ptr %.val.i.i.i, i64 %.val8.i.i.i ; 2 uses
  %.not910.i.i.i = icmp ugt ptr %i.bl, %i.bj
  br i1 %.not910.i.i.i, label %.lr.ph.i.i.i32, label %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i

.lr.ph.i.i.i32:                                   ; preds = %bb.n, %bb.o
  %.011.i.i.i = phi ptr [ %i.bo, %bb.o ], [ %i.bj, %bb.n ] ; 4 uses
  %i.bm = getelementptr i8, ptr %.011.i.i.i, i64 32
  %.0.val.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !15
  %.0.val.val.i.i.i = load i64, ptr %.0.val.i.i.i, align 8, !tbaa !11
  %i.bn = and i64 %.0.val.val.i.i.i, 128
  %.not7.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not7.not.i.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i32
  %i.bo = getelementptr i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i = icmp ugt ptr %i.bl, %i.bo
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i32, label %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit.i.i:           ; preds = %.lr.ph.i.i.i32
  %.not14.i.i = icmp eq ptr %i.bf, null
  br i1 %.not14.i.i, label %rb_source_location.exit.i, label %bb.p

bb.p:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i.i
  %i.bp = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i.i.i) #23
  store i32 %i.bp, ptr %i.bf, align 4, !tbaa !7
  br label %rb_source_location.exit.i

rb_vm_get_ruby_level_next_cfp.exit.thread.i.i:    ; preds = %bb.o, %bb.n
  %.not13.i.i = icmp eq ptr %i.bf, null
  br i1 %.not13.i.i, label %rb_ec_frame_method_id_and_class.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i
  store i32 0, ptr %i.bf, align 4, !tbaa !7
  br label %rb_ec_frame_method_id_and_class.exit.thread.sink.split

rb_source_location.exit.i:                        ; preds = %bb.p, %rb_vm_get_ruby_level_next_cfp.exit.i.i
  %i.bq = getelementptr i8, ptr %.011.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !123
  %i.bs = tail call i64 @rb_iseq_path(ptr noundef %i.br) #23 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4
  br i1 %i.bt, label %rb_ec_frame_method_id_and_class.exit.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %rb_source_location.exit.i
  %i.bu = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !77
  %i.bw = and i64 %i.bv, 8192
  %.not.i.i = icmp eq i64 %i.bw, 0
  %i.bx = getelementptr i8, ptr %i.bu, i64 24     ; 2 uses
  br i1 %.not.i.i, label %rb_source_location_cstr.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !27
  br label %rb_source_location_cstr.exit

rb_source_location_cstr.exit:                     ; preds = %bb.r, %bb.s
  %.0.i31 = phi ptr [ %i.bx, %bb.r ], [ %i.by, %bb.s ] ; 2 uses
  %.not29 = icmp eq ptr %.0.i31, null
  br i1 %.not29, label %rb_ec_frame_method_id_and_class.exit.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %rb_source_location_cstr.exit
  %i.bz = icmp eq i64 %i.bd, 4
  br i1 %i.bz, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.c) #23 ; 2 uses
  %.not30 = icmp eq ptr %i.ca, null
  br i1 %.not30, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %.critedge

.critedge:                                        ; preds = %bb.v, %bb.u
  %.022 = phi ptr [ @.str.86, %bb.v ], [ %i.ca, %bb.u ]
  store ptr %.022, ptr %3, align 8, !tbaa !520
  %i.cb = getelementptr i8, ptr %3, i64 8
  store ptr %i.be, ptr %i.cb, align 8, !tbaa !522
  %i.cc = getelementptr i8, ptr %3, i64 16
  store ptr %.0.i31, ptr %i.cc, align 8, !tbaa !523
  %i.cd = getelementptr i8, ptr %3, i64 32
  store volatile i64 %.141, ptr %i.cd, align 8, !tbaa !524
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !11
  %i.cf = getelementptr i8, ptr %3, i64 40
  store volatile i64 %i.ce, ptr %i.cf, align 8, !tbaa !525
  br label %rb_ec_frame_method_id_and_class.exit.thread.sink.split

rb_ec_frame_method_id_and_class.exit.thread.sink.split: ; preds = %rb_source_location_cstr.exit, %bb.m, %rb_source_location.exit.i, %bb.q, %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i, %.critedge
  %.1.ph = phi i32 [ 1, %.critedge ], [ 0, %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i ], [ 0, %bb.q ], [ 0, %rb_source_location.exit.i ], [ 0, %bb.m ], [ 0, %rb_source_location_cstr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %rb_ec_frame_method_id_and_class.exit.thread

rb_ec_frame_method_id_and_class.exit.thread:      ; preds = %rb_ec_frame_method_id_and_class.exit.thread.sink.split, %._crit_edge.i.i.i, %bb.g, %bb.i, %bb.h, %RCLASS_SINGLETON_P.exit.thread, %bb.l, %rb_ec_frame_method_id_and_class.exit
  %.1 = phi i32 [ 0, %bb.l ], [ 0, %bb.g ], [ 0, %rb_ec_frame_method_id_and_class.exit ], [ 0, %._crit_edge.i.i.i ], [ 0, %RCLASS_SINGLETON_P.exit.thread ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.1.ph, %rb_ec_frame_method_id_and_class.exit.thread.sink.split ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_ec_frame_method_id_and_class(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #31 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %.07.val16.i.i = load i64, ptr %i.d, align 8, !tbaa !11
  %i.e = and i64 %.07.val16.i.i, 2
  %.not17.i.i = icmp eq i64 %i.e, 0
  br i1 %.not17.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.0718.i.i = phi ptr [ %i.n, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.0718.i.i, i64 -16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  %i.k = and i64 %i.j, 61440
  %cond.i.i = icmp eq i64 %i.k, 24576
  br i1 %cond.i.i, label %rb_vm_frame_method_entry.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.l = getelementptr i8, ptr %.0718.i.i, i64 -8
  %.07.val10.i.i = load i64, ptr %i.l, align 8, !tbaa !11
  %i.m = and i64 %.07.val10.i.i, -4
  %i.n = inttoptr i64 %i.m to ptr                 ; 3 uses
  %.07.val.i.i = load i64, ptr %i.n, align 8, !tbaa !11
  %i.o = and i64 %.07.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.a
  %.07.lcssa.i.i = phi ptr [ %i.d, %bb.a ], [ %i.n, %bb.c ]
  %i.p = getelementptr i8, ptr %.07.lcssa.i.i, i64 -16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %rb_vm_control_frame_id_and_class.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = inttoptr i64 %i.q to ptr                 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77
  %4 = trunc i64 %i.t to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  switch i32 %6, label %rb_vm_control_frame_id_and_class.exit [
    i32 6, label %rb_vm_frame_method_entry.exit.i
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !80   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %rb_vm_control_frame_id_and_class.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !77
  %i.z = and i64 %i.y, 61440
  %cond.i.i.i = icmp eq i64 %i.z, 24576
  br i1 %cond.i.i.i, label %rb_vm_frame_method_entry.exit.i, label %rb_vm_control_frame_id_and_class.exit

rb_vm_frame_method_entry.exit.i:                  ; preds = %bb.b, %bb.f, %bb.d
  %.0.i.i = phi ptr [ %i.x, %bb.f ], [ %i.s, %bb.d ], [ %i.i, %bb.b ] ; 3 uses
  %.not15.i = icmp eq ptr %1, null
  br i1 %.not15.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_vm_frame_method_entry.exit.i
  %i.aa = getelementptr i8, ptr %.0.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !205
  store i64 %i.ad, ptr %1, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_vm_frame_method_entry.exit.i
  %.not16.i = icmp eq ptr %2, null
  br i1 %.not16.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %.0.i.i, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !202
  store i64 %i.af, ptr %2, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not17.i = icmp eq ptr %3, null
  br i1 %.not17.i, label %rb_vm_control_frame_id_and_class.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %.0.i.i, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !405
  store i64 %i.ah, ptr %3, align 8, !tbaa !11
  br label %rb_vm_control_frame_id_and_class.exit

rb_vm_control_frame_id_and_class.exit:            ; preds = %._crit_edge.i.i, %bb.d, %bb.e, %bb.f, %bb.j, %bb.k
  %.0.i = phi i32 [ 1, %bb.j ], [ 1, %bb.k ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %._crit_edge.i.i ], [ 0, %bb.e ]
  ret i32 %.0.i
}

declare i64 @rb_class_path(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_source_location_cstr(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..i.i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 8
  %.val8.i.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val8.i.i ; 2 uses
  %.not910.i.i = icmp ugt ptr %i.g, %i.e
  br i1 %.not910.i.i, label %.lr.ph.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.011.i.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = getelementptr i8, ptr %.011.i.i, i64 32
  %.0.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %.0.val.val.i.i = load i64, ptr %.0.val.i.i, align 8, !tbaa !11
  %i.i = and i64 %.0.val.val.i.i, 128
  %.not7.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr i8, ptr %.011.i.i, i64 56  ; 2 uses
  %.not9.i.i = icmp ugt ptr %i.g, %i.j
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.thread.i, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit.i:             ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %0, null
  br i1 %.not14.i, label %rb_source_location.exit, label %bb.c

bb.c:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i
  %i.k = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i.i) #23
  store i32 %i.k, ptr %0, align 4, !tbaa !7
  br label %rb_source_location.exit

rb_vm_get_ruby_level_next_cfp.exit.thread.i:      ; preds = %bb.b, %bb.a
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread.i
  store i32 0, ptr %0, align 4, !tbaa !7
  br label %RSTRING_PTR.exit

rb_source_location.exit:                          ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i, %bb.c
  %i.l = getelementptr i8, ptr %.011.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.n = tail call i64 @rb_iseq_path(ptr noundef %i.m) #23 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %rb_source_location.exit
  %i.p = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !77
  %i.r = and i64 %i.q, 8192
  %.not.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr i8, ptr %i.p, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread.i, %bb.d, %bb.f, %bb.e, %rb_source_location.exit
  %.0 = phi ptr [ %i.s, %bb.e ], [ null, %rb_source_location.exit ], [ %i.t, %bb.f ], [ null, %bb.d ], [ null, %rb_vm_get_ruby_level_next_cfp.exit.thread.i ]
  ret ptr %.0
}

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define hidden ptr @rb_vm_get_binding_creatable_next_cfp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address, ret: address, provenance) %1) local_unnamed_addr #32 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !121
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.a, align 8, !tbaa !122
  %i.b = getelementptr [8 x i8], ptr %.val, i64 %.val8 ; 2 uses
  %.not910 = icmp ugt ptr %i.b, %1
  br i1 %.not910, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.011 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.c = getelementptr i8, ptr %.011, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.011, i64 56      ; 2 uses
  %.not9 = icmp ugt ptr %i.b, %i.e
  br i1 %.not9, label %.lr.ph, label %._crit_edge, !llvm.loop !526

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.06 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.011, %.lr.ph ]
  ret ptr %.06
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_pop_cfunc_frame() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.rb_trace_arg_struct, align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %.07.val16.i = load i64, ptr %i.g, align 8, !tbaa !11
  %i.h = and i64 %.07.val16.i, 2
  %.not17.i = icmp eq i64 %i.h, 0
  br i1 %.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.0718.i = phi ptr [ %i.q, %bb.c ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %.0718.i, i64 -16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = and i64 %i.m, 61440
  %cond.i = icmp eq i64 %i.n, 24576
  br i1 %cond.i, label %rb_vm_frame_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.o = getelementptr i8, ptr %.0718.i, i64 -8
  %.07.val10.i = load i64, ptr %i.o, align 8, !tbaa !11
  %i.p = and i64 %.07.val10.i, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %.07.val.i = load i64, ptr %i.q, align 8, !tbaa !11
  %i.r = and i64 %.07.val.i, 2
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.07.lcssa.i = phi ptr [ %i.g, %bb.a ], [ %i.q, %bb.c ]
  %i.s = getelementptr i8, ptr %.07.lcssa.i, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %rb_vm_frame_method_entry.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.v = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %1 = trunc i64 %i.w to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rb_vm_frame_method_entry.exit [
    i32 6, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %rb_vm_frame_method_entry.exit

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %rb_vm_frame_method_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = inttoptr i64 %i.y to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ac = and i64 %i.ab, 61440
  %cond.i.i = icmp eq i64 %i.ac, 24576
  %spec.select.i.i = select i1 %cond.i.i, ptr %i.aa, ptr null
  br label %rb_vm_frame_method_entry.exit

rb_vm_frame_method_entry.exit:                    ; preds = %bb.b, %._crit_edge.i, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %spec.select.i.i, %bb.g ], [ null, %bb.d ], [ null, %._crit_edge.i ], [ %i.v, %bb.e ], [ null, %bb.f ], [ %i.l, %bb.b ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ae = getelementptr i8, ptr %.val, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !264 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !527
  %i.ai = and i32 %i.ah, 64
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %rb_vm_frame_method_entry.exit
  %i.aj = getelementptr i8, ptr %i.af, i64 16
  %i.ak = getelementptr i8, ptr %i.e, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !74
  %i.am = getelementptr i8, ptr %.0.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.ao = getelementptr i8, ptr %i.an, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !205
  %i.aq = getelementptr i8, ptr %.0.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load <2 x i64>, ptr %i.aq, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store i32 64, ptr %0, align 8, !tbaa !528
  store ptr %.0..0..0..0..0..0..i, ptr %i.ar, align 8, !tbaa !530
  store ptr %i.e, ptr %i.as, align 8, !tbaa !531
  store i64 %i.al, ptr %i.at, align 8, !tbaa !532
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !533
  store <2 x i64> %i.aw, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4, ptr %i.ax, align 8, !tbaa !534
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 36, ptr %i.ay, align 8, !tbaa !535
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.az, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %0, ptr noundef %i.aj, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_vm_frame_method_entry.exit
  %i.ba = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.bb = load atomic volatile i32, ptr %i.ba monotonic, align 4
  %i.bc = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.be = xor i32 %i.bd, -1
  %i.bf = and i32 %i.bb, %i.be
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %vm_pop_frame.exit, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %.val.i.i = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.bg = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit

vm_pop_frame.exit:                                ; preds = %bb.i, %bb.j
  %i.bh = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_rewind_cfp(ptr noundef %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not5 = icmp eq ptr %i.b, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = getelementptr i8, ptr %0, i64 36
  %i.e = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %bb.f ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !15
  %.val.val = load i64, ptr %.val, align 8, !tbaa !11
  %i.h = and i64 %.val.val, 2147418113
  %.not4 = icmp eq i64 %i.h, 1431633921
  br i1 %.not4, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.j = load i32, ptr %i.d, align 4, !tbaa !71
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.i, %i.k
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.m = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %bb.c, %bb.d
  %i.n = getelementptr i8, ptr %i.f, i64 56       ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !70
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @rb_vm_pop_cfunc_frame()
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rb_vm_pop_frame.exit
  %i.o = phi ptr [ %.pre, %bb.e ], [ %i.n, %rb_vm_pop_frame.exit ] ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !491

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_vm_at_exit(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.b = tail call noalias nonnull dereferenceable(16) ptr @ruby_xmalloc(i64 noundef 16) #59 ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !537
  %i.c = getelementptr i8, ptr %i.a, i64 1264     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !539
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !540
  store ptr %i.b, ptr %i.c, align 8, !tbaa !539
  ret void
}

; Function Attrs: allocsize(0)
declare noalias nonnull ptr @ruby_xmalloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_stack_to_heap(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val.i11 = load ptr, ptr %0, align 8, !tbaa !121
  %.val8.i12 = load i64, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr [8 x i8], ptr %.val.i11, i64 %.val8.i12 ; 2 uses
  %.not910.i13 = icmp ugt ptr %i.d, %i.b
  br i1 %.not910.i13, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a, %rb_vm_get_binding_creatable_next_cfp.exit
  %i.e = phi ptr [ %i.k, %rb_vm_get_binding_creatable_next_cfp.exit ], [ %i.d, %bb.a ]
  %.014 = phi ptr [ %i.j, %rb_vm_get_binding_creatable_next_cfp.exit ], [ %i.b, %bb.a ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %.011.i = phi ptr [ %i.h, %bb.b ], [ %.014, %.lr.ph.i.preheader ] ; 4 uses
  %i.f = getelementptr i8, ptr %.011.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123
  %.not7.i = icmp eq ptr %i.g, null
  br i1 %.not7.i, label %bb.b, label %rb_vm_get_binding_creatable_next_cfp.exit

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.not9.i = icmp ugt ptr %i.e, %i.h
  br i1 %.not9.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !526

rb_vm_get_binding_creatable_next_cfp.exit:        ; preds = %.lr.ph.i
  %i.i = tail call fastcc i64 @vm_make_env_each(ptr noundef nonnull readnone %0, ptr noundef nonnull %.011.i), !inline_history !496 ; 0 uses
  %i.j = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !121
  %.val8.i = load i64, ptr %i.c, align 8, !tbaa !122
  %i.k = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.k, %i.j
  br i1 %.not910.i, label %.lr.ph.i.preheader, label %.loopexit, !llvm.loop !541

.loopexit:                                        ; preds = %rb_vm_get_binding_creatable_next_cfp.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_env_prev_env(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
end_hunk_6
begin_hunk_7_@rb_sourceline:bb.a
  %i.k = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i) #23
  br label %rb_vm_get_ruby_level_next_cfp.exit.thread

rb_vm_get_ruby_level_next_cfp.exit.thread:        ; preds = %bb.b, %bb.a, %rb_vm_get_ruby_level_next_cfp.exit
  %.0 = phi i32 [ %i.k, %rb_vm_get_ruby_level_next_cfp.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_source_location(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val8.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.g, %i.e
  br i1 %.not910.i, label %.lr.ph.i, label %rb_vm_get_ruby_level_next_cfp.exit.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.011.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = getelementptr i8, ptr %.011.i, i64 32
  %.0.val.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11
  %i.i = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.not9.i = icmp ugt ptr %i.g, %i.j
  br i1 %.not9.i, label %.lr.ph.i, label %rb_vm_get_ruby_level_next_cfp.exit.thread, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i
  %.not14 = icmp eq ptr %0, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit
  %i.k = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i) #23
  store i32 %i.k, ptr %0, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_vm_get_ruby_level_next_cfp.exit
  %i.l = getelementptr i8, ptr %.011.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !123
  %i.n = tail call i64 @rb_iseq_path(ptr noundef %i.m) #23
  br label %bb.f

rb_vm_get_ruby_level_next_cfp.exit.thread:        ; preds = %bb.b, %bb.a
  %.not13 = icmp eq ptr %0, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread
  store i32 0, ptr %0, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread, %bb.e, %bb.d
  %.0 = phi i64 [ %i.n, %bb.d ], [ 4, %bb.e ], [ 4, %rb_vm_get_ruby_level_next_cfp.exit.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_vm_cref() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.val.i.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val8.i.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val8.i.i ; 2 uses
  %.not910.i.i = icmp ugt ptr %i.g, %i.e
  br i1 %.not910.i.i, label %.lr.ph.i.i, label %vm_ec_cref.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.011.i.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.011.i.i, i64 32
  %.0.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i.i = load i64, ptr %.0.val.i.i, align 8, !tbaa !11
  %i.i = and i64 %.0.val.val.i.i, 128
  %.not7.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr i8, ptr %.011.i.i, i64 56  ; 2 uses
  %.not9.i.i = icmp ugt ptr %i.g, %i.j
  br i1 %.not9.i.i, label %.lr.ph.i.i, label %vm_ec_cref.exit, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit.i:             ; preds = %.lr.ph.i.i
  %i.k = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull %.0.val.i.i)
  br label %vm_ec_cref.exit

vm_ec_cref.exit:                                  ; preds = %bb.b, %bb.a, %rb_vm_get_ruby_level_next_cfp.exit.i
  %.0.i = phi ptr [ %i.k, %rb_vm_get_ruby_level_next_cfp.exit.i ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @rb_vm_cref_replace_with_duplicated_cref() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 3 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val8.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not910.i)
  %i.h = getelementptr i8, ptr %i.e, i64 32
  %.0.val.i16 = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i17 = load i64, ptr %.0.val.i16, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.0.val.val.i17, 128
  %.not7.not.i18 = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i18, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i19 = phi ptr [ %i.j, %.lr.ph.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = getelementptr i8, ptr %.011.i19, i64 56  ; 2 uses
  %.not9.i = icmp ugt ptr %i.g, %i.j
  tail call void @llvm.assume(i1 %.not9.i)
  %i.k = getelementptr i8, ptr %.011.i19, i64 88
  %.0.val.i = load ptr, ptr %i.k, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 2 uses
  %i.l = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.l, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %.lr.ph.i

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i, %bb.a
  %.0.val14.i.i = phi i64 [ %.0.val.val.i17, %bb.a ], [ %.0.val.val.i, %.lr.ph.i ] ; 2 uses
  %i.m = phi ptr [ %.0.val.i16, %bb.a ], [ %.0.val.i, %.lr.ph.i ] ; 4 uses
  %i.n = and i64 %.0.val14.i.i, 2
  %.not15.i.i = icmp eq i64 %i.n, 0
  br i1 %.not15.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %rb_vm_get_ruby_level_next_cfp.exit, %bb.b
  %.016.i.i = phi ptr [ %i.z, %bb.b ], [ %i.m, %rb_vm_get_ruby_level_next_cfp.exit ] ; 2 uses
  %i.o = getelementptr i8, ptr %.016.i.i, i64 -16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = and i64 %i.p, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %.lr.ph.i.i
  %i.u = inttoptr i64 %i.p to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77
  %i.w = and i64 %i.v, 61471
  %or.cond.i.i = icmp eq i64 %i.w, 4122
  br i1 %or.cond.i.i, label %vm_env_cref_by_cref.exit.i, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %.lr.ph.i.i
  %i.x = getelementptr i8, ptr %.016.i.i, i64 -8
  %.0.val6.i.i = load i64, ptr %i.x, align 8, !tbaa !11
  %i.y = and i64 %.0.val6.i.i, -4
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %.0.val.i.i = load i64, ptr %i.z, align 8, !tbaa !11
  %i.aa = and i64 %.0.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !440

._crit_edge.i.i:                                  ; preds = %bb.b, %rb_vm_get_ruby_level_next_cfp.exit
  %.0.lcssa.i.i = phi ptr [ %i.m, %rb_vm_get_ruby_level_next_cfp.exit ], [ %i.z, %bb.b ]
  %i.ab = getelementptr i8, ptr %.0.lcssa.i.i, i64 -16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = and i64 %i.ac, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %bb.w, label %rbimpl_RB_TYPE_P_fastpath.exit.i7.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i7.i.i:            ; preds = %._crit_edge.i.i
  %i.ah = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.aj = and i64 %i.ai, 31
  %i.ak = icmp eq i64 %i.aj, 26
  br i1 %i.ak, label %bb.c, label %bb.w

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7.i.i
  %0 = trunc i64 %i.ai to i32
  %1 = lshr i32 %0, 12
  %2 = and i32 %1, 15
  switch i32 %2, label %bb.w [
    i32 1, label %vm_env_cref_by_cref.exit.i
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr i8, ptr %i.ah, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !80 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  %i.ao = and i64 %i.am, 7
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap
  br i1 %i.aq, label %bb.w, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %bb.d
  %i.ar = inttoptr i64 %i.am to ptr
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.at = and i64 %i.as, 61471
  %or.cond.i.i.i = icmp eq i64 %i.at, 4122
  br i1 %or.cond.i.i.i, label %vm_env_cref_by_cref.exit.i, label %bb.w

vm_env_cref_by_cref.exit.i:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %bb.c
  %i.au = trunc i64 %.0.val14.i.i to i32          ; 3 uses
  %i.av = and i32 %i.au, 2
  %.not1450.i = icmp eq i32 %i.av, 0
  br i1 %.not1450.i, label %.lr.ph.i5, label %._crit_edge.i

.lr.ph.i5:                                        ; preds = %vm_env_cref_by_cref.exit.i, %cref_replace_with_duplicated_cref_each_frame.exit.thread.i
  %i.aw = phi i32 [ %i.bt, %cref_replace_with_duplicated_cref_each_frame.exit.thread.i ], [ %i.au, %vm_env_cref_by_cref.exit.i ]
  %.01251.i = phi ptr [ %i.bs, %cref_replace_with_duplicated_cref_each_frame.exit.thread.i ], [ %i.m, %vm_env_cref_by_cref.exit.i ] ; 3 uses
  %i.ax = and i32 %i.aw, 4
  %.not16.i = icmp eq i32 %i.ax, 0
  br i1 %.not16.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i5
  %i.ay = getelementptr i8, ptr %.01251.i, i64 8
  %.012.val20.i = load i64, ptr %i.ay, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i5
  %i.az = phi i64 [ %.012.val20.i, %bb.e ], [ 0, %.lr.ph.i5 ] ; 2 uses
  %i.ba = getelementptr i8, ptr %.01251.i, i64 -16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11 ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = and i64 %i.bb, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %cref_replace_with_duplicated_cref_each_frame.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.f
  %i.bg = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !77 ; 2 uses
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 26
  br i1 %i.bj, label %bb.g, label %cref_replace_with_duplicated_cref_each_frame.exit.thread.i

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %3 = trunc i64 %i.bh to i32
  %4 = lshr i32 %3, 12
  %5 = and i32 %4, 15
  switch i32 %5, label %cref_replace_with_duplicated_cref_each_frame.exit.thread.i [
    i32 1, label %bb.h
    i32 2, label %bb.j
    i32 6, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.bk = tail call fastcc ptr @vm_cref_dup(ptr noundef nonnull %i.bg), !inline_history !581 ; 5 uses
  %.not16.i.i = icmp eq i64 %i.az, 0
  %i.bl = ptrtoint ptr %i.bk to i64               ; 3 uses
  store i64 %i.bl, ptr %i.ba, align 8, !tbaa !11
  br i1 %.not16.i.i, label %cref_replace_with_duplicated_cref_each_frame.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = icmp eq ptr %i.bk, null
  %i.bn = and i64 %i.bl, 7
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %cref_replace_with_duplicated_cref_each_frame.exit.i, label %cref_replace_with_duplicated_cref_each_frame.exit.thread32.i

cref_replace_with_duplicated_cref_each_frame.exit.thread32.i: ; preds = %bb.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.az, i64 noundef %i.bl) #23, !inline_history !581
  br label %vm_cref_replace_with_duplicated_cref.exit

bb.j:                                             ; preds = %bb.g, %bb.g
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.255) #57, !inline_history !581
  unreachable

cref_replace_with_duplicated_cref_each_frame.exit.i: ; preds = %bb.i, %bb.h
  %.not17.i = icmp eq ptr %i.bk, null
  br i1 %.not17.i, label %cref_replace_with_duplicated_cref_each_frame.exit.thread.i, label %vm_cref_replace_with_duplicated_cref.exit

cref_replace_with_duplicated_cref_each_frame.exit.thread.i: ; preds = %cref_replace_with_duplicated_cref_each_frame.exit.i, %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.bq = getelementptr i8, ptr %.01251.i, i64 -8
  %.012.val18.i = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.br = and i64 %.012.val18.i, -4
  %i.bs = inttoptr i64 %i.br to ptr               ; 3 uses
  %.012.val.i = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bt = trunc i64 %.012.val.i to i32            ; 3 uses
  %i.bu = and i32 %i.bt, 2
  %.not14.i = icmp eq i32 %i.bu, 0
  br i1 %.not14.i, label %.lr.ph.i5, label %._crit_edge.i, !llvm.loop !582

._crit_edge.i:                                    ; preds = %cref_replace_with_duplicated_cref_each_frame.exit.thread.i, %vm_env_cref_by_cref.exit.i
  %.012.lcssa.i = phi ptr [ %i.m, %vm_env_cref_by_cref.exit.i ], [ %i.bs, %cref_replace_with_duplicated_cref_each_frame.exit.thread.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.au, %vm_env_cref_by_cref.exit.i ], [ %i.bt, %cref_replace_with_duplicated_cref_each_frame.exit.thread.i ]
  %i.bv = and i32 %.lcssa.i, 4
  %.not15.i = icmp eq i32 %i.bv, 0
  br i1 %.not15.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.bw = getelementptr i8, ptr %.012.lcssa.i, i64 8
  %.012.val19.i = load i64, ptr %i.bw, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.bx = phi i64 [ %.012.val19.i, %bb.k ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.by = getelementptr i8, ptr %.012.lcssa.i, i64 -16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11 ; 4 uses
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = and i64 %i.bz, 7
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = or i1 %i.ca, %i.cc
  br i1 %i.cd, label %vm_cref_replace_with_duplicated_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i23.i

rbimpl_RB_TYPE_P_fastpath.exit.i23.i:             ; preds = %bb.l
  %i.ce = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !77 ; 2 uses
  %i.cg = and i64 %i.cf, 31
  %i.ch = icmp eq i64 %i.cg, 26
  br i1 %i.ch, label %bb.m, label %vm_cref_replace_with_duplicated_cref.exit

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i23.i
  %6 = trunc i64 %i.cf to i32
  %7 = lshr i32 %6, 12
  %8 = and i32 %7, 15
  switch i32 %8, label %vm_cref_replace_with_duplicated_cref.exit [
    i32 1, label %bb.n
    i32 2, label %bb.q
    i32 6, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call fastcc ptr @vm_cref_dup(ptr noundef nonnull %i.ce), !inline_history !581 ; 5 uses
  %.not16.i26.i = icmp eq i64 %i.bx, 0
  %i.cj = ptrtoint ptr %i.ci to i64               ; 3 uses
  store i64 %i.cj, ptr %i.by, align 8, !tbaa !11
  br i1 %.not16.i26.i, label %vm_cref_replace_with_duplicated_cref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp eq ptr %i.ci, null
  %i.cl = and i64 %i.cj, 7
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = or i1 %i.ck, %i.cm
  br i1 %i.cn, label %vm_cref_replace_with_duplicated_cref.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @rb_gc_writebarrier(i64 noundef %i.bx, i64 noundef %i.cj) #23, !inline_history !581
  br label %vm_cref_replace_with_duplicated_cref.exit

bb.q:                                             ; preds = %bb.m
  %i.co = getelementptr i8, ptr %i.ce, i64 8      ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11 ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = and i64 %i.cp, 7
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %vm_cref_replace_with_duplicated_cref.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i25.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i25.i:           ; preds = %bb.q
  %i.cu = inttoptr i64 %i.cp to ptr               ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !77 ; 2 uses
  %i.cw = and i64 %i.cv, 31
  %i.cx = icmp eq i64 %i.cw, 26
  br i1 %i.cx, label %bb.r, label %vm_cref_replace_with_duplicated_cref.exit

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i25.i
  %9 = trunc i64 %i.cv to i32
  %10 = lshr i32 %9, 12
  %11 = and i32 %10, 15
  switch i32 %11, label %vm_cref_replace_with_duplicated_cref.exit [
    i32 1, label %bb.s
    i32 2, label %bb.u
    i32 6, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.cy = tail call fastcc ptr @vm_cref_dup(ptr noundef nonnull %i.cu), !inline_history !583 ; 4 uses
  %i.cz = ptrtoint ptr %i.cy to i64               ; 3 uses
  store i64 %i.cz, ptr %i.co, align 8, !tbaa !11
  %i.da = icmp eq ptr %i.cy, null
  %i.db = and i64 %i.cz, 7
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = or i1 %i.da, %i.dc
  br i1 %i.dd, label %vm_cref_replace_with_duplicated_cref.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @rb_gc_writebarrier(i64 noundef %i.bz, i64 noundef %i.cz) #23, !inline_history !583
  br label %vm_cref_replace_with_duplicated_cref.exit

bb.u:                                             ; preds = %bb.r, %bb.r
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.255) #57, !inline_history !583
  unreachable

bb.v:                                             ; preds = %bb.m
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.255) #57, !inline_history !581
  unreachable

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %bb.d, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i7.i.i, %._crit_edge.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.254) #57
  unreachable

vm_cref_replace_with_duplicated_cref.exit:        ; preds = %cref_replace_with_duplicated_cref_each_frame.exit.i, %cref_replace_with_duplicated_cref_each_frame.exit.thread32.i, %bb.l, %rbimpl_RB_TYPE_P_fastpath.exit.i23.i, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.i.i25.i, %bb.r, %bb.s, %bb.t
  %.0.i = phi ptr [ %i.bk, %cref_replace_with_duplicated_cref_each_frame.exit.thread32.i ], [ %i.ci, %bb.n ], [ %i.cy, %bb.t ], [ %i.ci, %bb.p ], [ null, %bb.q ], [ null, %bb.m ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit.i23.i ], [ %i.ci, %bb.o ], [ null, %bb.l ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit.i.i25.i ], [ %i.cy, %bb.s ], [ null, %bb.r ], [ %i.bk, %cref_replace_with_duplicated_cref_each_frame.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_cbase() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val8.i = load i64, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr [8 x i8], ptr %.val.i, i64 %.val8.i ; 2 uses
  %.not910.i = icmp ugt ptr %i.g, %i.e
  br i1 %.not910.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.011.i = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = getelementptr i8, ptr %.011.i, i64 32
  %.0.val.i = load ptr, ptr %i.h, align 8, !tbaa !15 ; 2 uses
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11
  %i.i = and i64 %.0.val.val.i, 128
  %.not7.not.i = icmp eq i64 %i.i, 0
  br i1 %.not7.not.i, label %rb_vm_get_ruby_level_next_cfp.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr i8, ptr %.011.i, i64 56    ; 2 uses
  %.not9.i = icmp ugt ptr %i.g, %i.j
  br i1 %.not9.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !360

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.k = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.94) #42
  unreachable

rb_vm_get_ruby_level_next_cfp.exit:               ; preds = %.lr.ph.i
  %i.l = tail call fastcc ptr @vm_get_cref(ptr noundef nonnull readonly %.0.val.i) ; 2 uses
  %.val.i.i = load i64, ptr %i.l, align 8, !tbaa !24
  %i.m = and i64 %.val.i.i, 524288
  %.not.i.i = icmp eq i64 %i.m, 0
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  br i1 %.not.i.i, label %vm_get_cbase.exit, label %bb.c

bb.c:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit
  %i.p = tail call i64 @rb_singleton_class(i64 noundef %i.o) #23
  br label %vm_get_cbase.exit

vm_get_cbase.exit:                                ; preds = %rb_vm_get_ruby_level_next_cfp.exit, %bb.c
  %.0.i.i = phi i64 [ %i.p, %bb.c ], [ %i.o, %rb_vm_get_ruby_level_next_cfp.exit ]
  ret i64 %.0.i.i
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define hidden void @rb_vm_localjump_error(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i64 @make_localjump_error(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  tail call void @rb_exc_raise(i64 noundef %i.a) #42
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_localjump_error(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @rb_eLocalJumpError, align 8, !tbaa !11
  %i.b = tail call i64 @rb_exc_new_cstr(i64 noundef %i.a, ptr noundef %0) #23 ; 3 uses
  switch i32 %2, label %bb.g [
    i32 2, label %bb.b
    i32 5, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.e
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @make_localjump_error.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.c = tail call i64 @rb_intern2(ptr noundef nonnull @.str.256, i64 noundef 5) #23 ; 3 uses
  store i64 %i.c, ptr @make_localjump_error.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !584

bb.c:                                             ; preds = %bb.a
  %.pr.i12 = load i64, ptr @make_localjump_error.rbimpl_id.257, align 8, !tbaa !11 ; 2 uses
  %.not4.i13 = icmp eq i64 %.pr.i12, 0
  br i1 %.not4.i13, label %.lr.ph.i15, label %rbimpl_intern_const.exit

.lr.ph.i15:                                       ; preds = %bb.c, %.lr.ph.i15
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.258, i64 noundef 4) #23 ; 3 uses
  store i64 %i.d, ptr @make_localjump_error.rbimpl_id.257, align 8, !tbaa !11
  %.not.i16 = icmp eq i64 %i.d, 0
  br i1 %.not.i16, label %.lr.ph.i15, label %rbimpl_intern_const.exit, !llvm.loop !584

bb.d:                                             ; preds = %bb.a
  %.pr.i18 = load i64, ptr @make_localjump_error.rbimpl_id.259, align 8, !tbaa !11 ; 2 uses
  %.not4.i19 = icmp eq i64 %.pr.i18, 0
  br i1 %.not4.i19, label %.lr.ph.i21, label %rbimpl_intern_const.exit

.lr.ph.i21:                                       ; preds = %bb.d, %.lr.ph.i21
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.260, i64 noundef 5) #23 ; 3 uses
  store i64 %i.e, ptr @make_localjump_error.rbimpl_id.259, align 8, !tbaa !11
  %.not.i22 = icmp eq i64 %i.e, 0
  br i1 %.not.i22, label %.lr.ph.i21, label %rbimpl_intern_const.exit, !llvm.loop !584

bb.e:                                             ; preds = %bb.a
  %.pr.i24 = load i64, ptr @make_localjump_error.rbimpl_id.261, align 8, !tbaa !11 ; 2 uses
  %.not4.i25 = icmp eq i64 %.pr.i24, 0
  br i1 %.not4.i25, label %.lr.ph.i27, label %rbimpl_intern_const.exit

.lr.ph.i27:                                       ; preds = %bb.e, %.lr.ph.i27
  %i.f = tail call i64 @rb_intern2(ptr noundef nonnull @.str.262, i64 noundef 4) #23 ; 3 uses
  store i64 %i.f, ptr @make_localjump_error.rbimpl_id.261, align 8, !tbaa !11
  %.not.i28 = icmp eq i64 %i.f, 0
  br i1 %.not.i28, label %.lr.ph.i27, label %rbimpl_intern_const.exit, !llvm.loop !584

bb.f:                                             ; preds = %bb.a
  %.pr.i30 = load i64, ptr @make_localjump_error.rbimpl_id.263, align 8, !tbaa !11 ; 2 uses
  %.not4.i31 = icmp eq i64 %.pr.i30, 0
  br i1 %.not4.i31, label %.lr.ph.i33, label %rbimpl_intern_const.exit

.lr.ph.i33:                                       ; preds = %bb.f, %.lr.ph.i33
  %i.g = tail call i64 @rb_intern2(ptr noundef nonnull @.str.264, i64 noundef 6) #23 ; 3 uses
  store i64 %i.g, ptr @make_localjump_error.rbimpl_id.263, align 8, !tbaa !11
  %.not.i34 = icmp eq i64 %i.g, 0
  br i1 %.not.i34, label %.lr.ph.i33, label %rbimpl_intern_const.exit, !llvm.loop !584

bb.g:                                             ; preds = %bb.a
  %.pr.i36 = load i64, ptr @make_localjump_error.rbimpl_id.265, align 8, !tbaa !11 ; 2 uses
  %.not4.i37 = icmp eq i64 %.pr.i36, 0
  br i1 %.not4.i37, label %.lr.ph.i39, label %rbimpl_intern_const.exit

.lr.ph.i39:                                       ; preds = %bb.g, %.lr.ph.i39
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.266, i64 noundef 8) #23 ; 3 uses
  store i64 %i.h, ptr @make_localjump_error.rbimpl_id.265, align 8, !tbaa !11
  %.not.i40 = icmp eq i64 %i.h, 0
  br i1 %.not.i40, label %.lr.ph.i39, label %rbimpl_intern_const.exit, !llvm.loop !584

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i33, %.lr.ph.i27, %.lr.ph.i21, %.lr.ph.i15, %.lr.ph.i, %.lr.ph.i39, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.h, %.lr.ph.i39 ], [ %i.f, %.lr.ph.i27 ], [ %i.c, %.lr.ph.i ], [ %i.d, %.lr.ph.i15 ], [ %i.e, %.lr.ph.i21 ], [ %.pr.i, %bb.b ], [ %.pr.i12, %bb.c ], [ %.pr.i18, %bb.d ], [ %.pr.i24, %bb.e ], [ %.pr.i30, %bb.f ], [ %.pr.i36, %bb.g ], [ %i.g, %.lr.ph.i33 ]
  %i.i = tail call i64 @rb_iv_set(i64 noundef %i.b, ptr noundef nonnull @.str.267, i64 noundef %1) #23 ; 0 uses
  %i.j = tail call i64 @rb_id2sym(i64 noundef %.0) #23
  %i.k = tail call i64 @rb_iv_set(i64 noundef %i.b, ptr noundef nonnull @.str.268, i64 noundef %i.j) #23 ; 0 uses
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  switch i32 %0, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 5, label %.thread
    i32 4, label %bb.d
  ]

end_hunk_7
begin_hunk_8_@rb_iseq_eval_main:bb.a

bb.f:                                             ; preds = %tailrecurse.i9.i.i, %tailrecurse.i9.i.i
  %i.q = getelementptr i8, ptr %.tr.i10.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = or i64 %i.s, 1
  br label %vm_block_ep.exit.i.i

bb.g:                                             ; preds = %tailrecurse.i9.i.i
  %i.u = load i64, ptr %.tr.i10.i.i, align 8, !tbaa !27
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !456
  br label %tailrecurse.i9.i.i

bb.h:                                             ; preds = %tailrecurse.i9.i.i
  unreachable

vm_block_ep.exit.i.i:                             ; preds = %tailrecurse.i9.i.i, %bb.f
  %.0.i12.i.i = phi i64 [ %i.t, %bb.f ], [ 1, %tailrecurse.i9.i.i ]
  %i.y = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !124  ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 7 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 5 uses
  %i.ag = getelementptr i8, ptr %i.z, i64 240
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !190 ; 5 uses
  %i.ai = getelementptr i8, ptr %i.z, i64 264
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !355
  %i.ak = getelementptr i8, ptr %i.ad, i64 -56    ; 4 uses
  %i.al = add i32 %i.aj, %i.ah
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr [8 x i8], ptr %i.af, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 56
  %.not.i.i.i = icmp ugt ptr %i.ak, %i.ao
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.i, !prof !72

.preheader.i.i.i:                                 ; preds = %vm_block_ep.exit.i.i
  %i.ap = icmp sgt i32 %i.ah, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.preheader, label %vm_set_eval_stack.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %i.aq = zext nneg i32 %i.ah to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ah, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.aq, 2147483644              ; 4 uses
  %i.ar = shl nuw nsw i64 %n.vec, 3
  %i.as = getelementptr i8, ptr %i.af, i64 %i.ar  ; 2 uses
  %i.at = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.av, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %vm_set_eval_stack.exit.i, label %.lr.ph.i.i.i.preheader27

.lr.ph.i.i.i.preheader27:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.026.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.02325.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i

bb.i:                                             ; preds = %vm_block_ep.exit.i.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader27, %.lr.ph.i.i.i
  %.026.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %.026.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ] ; 2 uses
  %.02325.i.i.i = phi i32 [ %i.ay, %.lr.ph.i.i.i ], [ %.02325.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ]
  %i.ax = getelementptr i8, ptr %.026.i.i.i, i64 8 ; 2 uses
  store i64 4, ptr %.026.i.i.i, align 8, !tbaa !11
  %i.ay = add nuw nsw i32 %.02325.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ay, %i.ah
  br i1 %exitcond.not.i.i.i, label %vm_set_eval_stack.exit.i, label %.lr.ph.i.i.i, !llvm.loop !589

vm_set_eval_stack.exit.i:                         ; preds = %.lr.ph.i.i.i, %middle.block, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.af, %.preheader.i.i.i ], [ %i.as, %middle.block ], [ %i.ax, %.lr.ph.i.i.i ] ; 4 uses
  %i.az = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i.i, align 8, !tbaa !11
  %i.ba = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  store i64 %.0.i12.i.i, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 24
  store i64 2004287521, ptr %i.ba, align 8, !tbaa !11
  store ptr %i.ab, ptr %i.ak, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ad, i64 -48
  store ptr %i.bb, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ad, i64 -40
  store ptr %0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ad, i64 -32
  store i64 %.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ad, i64 -24
  store ptr %i.ba, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ad, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !70
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !124
  %i.bd = getelementptr i8, ptr %i.bc, i64 240
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !190
  %.not10.i = icmp eq i32 %i.be, 0
  br i1 %.not10.i, label %vm_set_main_stack.exit, label %bb.j

bb.j:                                             ; preds = %vm_set_eval_stack.exit.i
  %i.bf = tail call fastcc i64 @vm_make_env_each(ptr noundef nonnull readnone %.0..0..0..0..0..0..i, ptr noundef nonnull %i.ak), !inline_history !496
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = getelementptr i8, ptr %i.i, i64 16
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !497 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !11
  %i.bl = icmp eq ptr %i.bj, null
  %i.bm = and i64 %i.bk, 7
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rb_obj_write.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @rb_gc_writebarrier(i64 noundef %i.f, i64 noundef %i.bk) #23
  br label %rb_obj_write.exit.i.i

rb_obj_write.exit.i.i:                            ; preds = %bb.k, %bb.j
  %i.bp = getelementptr i8, ptr %i.bg, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !499 ; 2 uses
  %i.br = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !27
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  %.val.i.i11.i = load i64, ptr %i.bs, align 8, !tbaa !11 ; 3 uses
  %i.bt = icmp eq i64 %.val.i.i11.i, 0
  %i.bu = and i64 %.val.i.i11.i, 7
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = or i1 %i.bt, %i.bv
  br i1 %i.bw, label %vm_set_main_stack.exit, label %bb.l

bb.l:                                             ; preds = %rb_obj_write.exit.i.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.f, i64 noundef %.val.i.i11.i) #23
  br label %vm_set_main_stack.exit

vm_set_main_stack.exit:                           ; preds = %vm_set_eval_stack.exit.i, %rb_obj_write.exit.i.i, %bb.l
  %i.bx = tail call i64 @rb_vm_exec(ptr noundef nonnull %.0..0..0..0..0..0..i)
  ret i64 %i.bx
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @rb_vm_control_frame_id_and_class(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #31 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.07.val16.i = load i64, ptr %i.b, align 8, !tbaa !11
  %i.c = and i64 %.07.val16.i, 2
  %.not17.i = icmp eq i64 %i.c, 0
  br i1 %.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.0718.i = phi ptr [ %i.l, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.0718.i, i64 -16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77
  %i.i = and i64 %i.h, 61440
  %cond.i = icmp eq i64 %i.i, 24576
  br i1 %cond.i, label %rb_vm_frame_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr i8, ptr %.0718.i, i64 -8
  %.07.val10.i = load i64, ptr %i.j, align 8, !tbaa !11
  %i.k = and i64 %.07.val10.i, -4
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %.07.val.i = load i64, ptr %i.l, align 8, !tbaa !11
  %i.m = and i64 %.07.val.i, 2
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.07.lcssa.i = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ]
  %i.n = getelementptr i8, ptr %.07.lcssa.i, i64 -16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %rb_vm_frame_method_entry.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.q = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %4 = trunc i64 %i.r to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  switch i32 %6, label %rb_vm_frame_method_entry.exit.thread [
    i32 6, label %rb_vm_frame_method_entry.exit
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !80   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %rb_vm_frame_method_entry.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = and i64 %i.w, 61440
  %cond.i.i = icmp eq i64 %i.x, 24576
  br i1 %cond.i.i, label %rb_vm_frame_method_entry.exit, label %rb_vm_frame_method_entry.exit.thread

rb_vm_frame_method_entry.exit:                    ; preds = %bb.b, %bb.f, %bb.d
  %.0.i = phi ptr [ %i.v, %bb.f ], [ %i.q, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_vm_frame_method_entry.exit
  %i.y = getelementptr i8, ptr %.0.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83
  %i.aa = getelementptr i8, ptr %i.z, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205
  store i64 %i.ab, ptr %1, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_vm_frame_method_entry.exit
  %.not16 = icmp eq ptr %2, null
  br i1 %.not16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %.0.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !202
  store i64 %i.ad, ptr %2, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %rb_vm_frame_method_entry.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %.0.i, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !405
  store i64 %i.af, ptr %3, align 8, !tbaa !11
  br label %rb_vm_frame_method_entry.exit.thread

rb_vm_frame_method_entry.exit.thread:             ; preds = %bb.e, %._crit_edge.i, %bb.d, %bb.f, %bb.j, %bb.k
  %.0 = phi i32 [ 1, %bb.j ], [ 1, %bb.k ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %._crit_edge.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_frame_method_id_and_class(ptr noundef writeonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #36 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %.07.val16.i.i.i = load i64, ptr %i.g, align 8, !tbaa !11
  %i.h = and i64 %.07.val16.i.i.i, 2
  %.not17.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not17.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.c
  %.0718.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = getelementptr i8, ptr %.0718.i.i.i, i64 -16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = and i64 %i.m, 61440
  %cond.i.i.i = icmp eq i64 %i.n, 24576
  br i1 %cond.i.i.i, label %rb_vm_frame_method_entry.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %i.o = getelementptr i8, ptr %.0718.i.i.i, i64 -8
  %.07.val10.i.i.i = load i64, ptr %i.o, align 8, !tbaa !11
  %i.p = and i64 %.07.val10.i.i.i, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %.07.val.i.i.i = load i64, ptr %i.q, align 8, !tbaa !11
  %i.r = and i64 %.07.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !79

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.a
  %.07.lcssa.i.i.i = phi ptr [ %i.g, %bb.a ], [ %i.q, %bb.c ]
  %i.s = getelementptr i8, ptr %.07.lcssa.i.i.i, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %rb_ec_frame_method_id_and_class.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.v = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %2 = trunc i64 %i.w to i32
  %3 = lshr i32 %2, 12
  %4 = and i32 %3, 15
  switch i32 %4, label %rb_ec_frame_method_id_and_class.exit [
    i32 6, label %rb_vm_frame_method_entry.exit.i.i
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.v, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %rb_ec_frame_method_id_and_class.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = inttoptr i64 %i.y to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ac = and i64 %i.ab, 61440
  %cond.i.i.i.i = icmp eq i64 %i.ac, 24576
  br i1 %cond.i.i.i.i, label %rb_vm_frame_method_entry.exit.i.i, label %rb_ec_frame_method_id_and_class.exit

rb_vm_frame_method_entry.exit.i.i:                ; preds = %bb.b, %bb.f, %bb.d
  %.0.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.v, %bb.d ], [ %i.l, %bb.b ] ; 2 uses
  %.not15.i.i = icmp eq ptr %0, null
  br i1 %.not15.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_vm_frame_method_entry.exit.i.i
  %i.ad = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = getelementptr i8, ptr %i.ae, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !205
  store i64 %i.ag, ptr %0, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_vm_frame_method_entry.exit.i.i
  %.not17.i.i = icmp eq ptr %1, null
  br i1 %.not17.i.i, label %rb_ec_frame_method_id_and_class.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !405
  store i64 %i.ai, ptr %1, align 8, !tbaa !11
  br label %rb_ec_frame_method_id_and_class.exit

rb_ec_frame_method_id_and_class.exit:             ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e, %bb.f, %bb.h, %bb.i
  %.0.i.i = phi i32 [ 1, %bb.h ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.e ]
  ret i32 %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_call_cfunc(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = tail call ptr @rb_iseq_new(i64 noundef 4, i64 noundef %4, i64 noundef %4, i64 noundef 4, ptr noundef null, i32 noundef 0) #23
  %i.g = tail call ptr @rb_current_box() #23
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = or i64 %i.h, 1
  %i.j = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.k = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef 4, i64 noundef 40, i1 noundef zeroext true) #23 ; 3 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  store i64 %i.j, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr i8, ptr %i.l, i64 24
  store ptr null, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr i8, ptr %i.l, i64 32
  store i8 2, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr i8, ptr %.val.i, i64 240
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %vm_cref_new_toplevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.k, 2
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.l, i64 8
  %.val28.i.i.i = load i64, ptr %i.t, align 8, !tbaa !26 ; 2 uses
  %i.u = icmp eq i64 %.val28.i.i.i, 4
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.l, align 8, !tbaa !24
  %i.w = or i64 %i.v, 262144
  store i64 %i.w, ptr %i.l, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not26.i.i.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  %.0.i.i.i = phi i64 [ 4, %bb.c ], [ %.val28.i.i.i, %bb.d ], [ 4, %bb.b ]
  %i.x = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i.i, i64 noundef 40, i1 noundef zeroext true) #23 ; 3 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 5 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  store i64 %i.r, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr i8, ptr %i.y, i64 32
  store i8 2, ptr %i.ab, align 8, !tbaa !27
  br i1 %.not26.i.i.i, label %vm_cref_new_toplevel.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !24
  %i.ad = or i64 %i.ac, 262144
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !24
  br label %vm_cref_new_toplevel.exit

vm_cref_new_toplevel.exit:                        ; preds = %bb.a, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.k, %bb.a ], [ %i.x, %bb.e ], [ %i.x, %bb.f ]
  %i.ae = getelementptr i8, ptr %i.e, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73 ; 5 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !70  ; 6 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -56    ; 3 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 56
  %.not.i12 = icmp ugt ptr %i.ah, %i.ai
  br i1 %.not.i12, label %vm_push_frame.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %vm_cref_new_toplevel.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %vm_cref_new_toplevel.exit
  %i.aj = getelementptr i8, ptr %i.af, i64 8
  store i64 %.0.i, ptr %i.af, align 8, !tbaa !11
  %i.ak = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  store i64 %i.i, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr i8, ptr %i.af, i64 24
  store i64 1145307171, ptr %i.ak, align 8, !tbaa !11
  store ptr null, ptr %i.ah, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -48
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -32
  store i64 %0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -24
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !70
  %i.am = tail call i64 %1(i64 noundef %2) #23
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ao = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.ap = load atomic volatile i32, ptr %i.ao monotonic, align 8
  %i.aq = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71
  %i.as = xor i32 %i.ar, -1
  %i.at = and i32 %i.ap, %i.as
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.h, !prof !72

bb.h:                                             ; preds = %vm_push_frame.exit
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.au = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %vm_push_frame.exit, %bb.h
  %i.av = getelementptr i8, ptr %i.an, i64 56
  store ptr %i.av, ptr %i.d, align 8, !tbaa !70
  ret i64 %i.am
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_call_cfunc_in_box(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = tail call ptr @rb_iseq_new(i64 noundef 4, i64 noundef %4, i64 noundef %4, i64 noundef 4, ptr noundef null, i32 noundef 0) #23
  %i.g = ptrtoint ptr %5 to i64
  %i.h = or i64 %i.g, 1
  %i.i = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.j = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef 4, i64 noundef 40, i1 noundef zeroext true) #23 ; 3 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 7 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  store i64 %i.i, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr i8, ptr %i.k, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr i8, ptr %i.k, i64 32
  store i8 2, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr i8, ptr %.val.i, i64 240
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %vm_cref_new_toplevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.j, 2
  br i1 %i.r, label %bb.e, label %bb.c
end_hunk_8
begin_hunk_9_@rb_obj_equal

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @uncallable_object(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_id2str(i64 noundef %1) #23 ; 5 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eNotImpError, align 8, !tbaa !11
  %i.g = inttoptr i64 %0 to ptr
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.142, i64 noundef %i.a, ptr noundef %i.g) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77   ; 5 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @rb_eNotImpError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.143, i64 noundef %i.a, ptr noundef nonnull %i.h) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = trunc i64 %i.i to i32
  %i.m = and i32 %i.l, 31                         ; 2 uses
  switch i32 %i.m, label %rb_type_str.exit [
    i32 0, label %bb.af
    i32 1, label %bb.ae
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 8, label %bb.l
    i32 9, label %bb.m
    i32 10, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 14, label %bb.r
    i32 15, label %bb.s
    i32 17, label %bb.t
    i32 18, label %bb.u
    i32 19, label %bb.v
    i32 20, label %bb.w
    i32 21, label %bb.x
    i32 26, label %bb.y
    i32 22, label %bb.z
    i32 27, label %bb.aa
    i32 28, label %bb.ab
    i32 29, label %bb.ac
    i32 30, label %bb.ad
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  br label %bb.ae

bb.h:                                             ; preds = %bb.e
  br label %bb.ae

bb.i:                                             ; preds = %bb.e
  br label %bb.ae

bb.j:                                             ; preds = %bb.e
  br label %bb.ae

bb.k:                                             ; preds = %bb.e
  br label %bb.ae

bb.l:                                             ; preds = %bb.e
  br label %bb.ae

bb.m:                                             ; preds = %bb.e
  br label %bb.ae

bb.n:                                             ; preds = %bb.e
  br label %bb.ae

bb.o:                                             ; preds = %bb.e
  br label %bb.ae

bb.p:                                             ; preds = %bb.e
  br label %bb.ae

bb.q:                                             ; preds = %bb.e
  br label %bb.ae

bb.r:                                             ; preds = %bb.e
  br label %bb.ae

bb.s:                                             ; preds = %bb.e
  br label %bb.ae

bb.t:                                             ; preds = %bb.e
  br label %bb.af

bb.u:                                             ; preds = %bb.e
  br label %bb.af

bb.v:                                             ; preds = %bb.e
  br label %bb.af

bb.w:                                             ; preds = %bb.e
  br label %bb.af

bb.x:                                             ; preds = %bb.e
  br label %bb.af

bb.y:                                             ; preds = %bb.e
  br label %bb.af

bb.z:                                             ; preds = %bb.e
  br label %bb.af

bb.aa:                                            ; preds = %bb.e
  br label %bb.af

bb.ab:                                            ; preds = %bb.e
  br label %bb.af

bb.ac:                                            ; preds = %bb.e
  br label %bb.af

bb.ad:                                            ; preds = %bb.e
  br label %bb.af

rb_type_str.exit:                                 ; preds = %bb.e
  %i.n = load i64, ptr @rb_eNotImpError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.144, i64 noundef %i.a, i32 noundef %i.m, ptr noundef nonnull %i.h, i64 noundef %i.i) #42
  unreachable

bb.ae:                                            ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i.ph.ph = phi ptr [ @.str.45, %bb.s ], [ @.str.32, %bb.f ], [ @.str.33, %bb.g ], [ @.str.34, %bb.h ], [ @.str.35, %bb.i ], [ @.str.36, %bb.j ], [ @.str.37, %bb.k ], [ @.str.38, %bb.l ], [ @.str.39, %bb.m ], [ @.str.40, %bb.n ], [ @.str.41, %bb.o ], [ @.str.42, %bb.p ], [ @.str.43, %bb.q ], [ @.str.44, %bb.r ], [ @.str.31, %bb.e ]
  %i.o = load i64, ptr @rb_eNotImpError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.145, i64 noundef %i.a, ptr noundef nonnull %.0.i.ph.ph, ptr noundef nonnull %i.h, i64 noundef %i.i) #42
  unreachable

bb.af:                                            ; preds = %bb.e, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.ad
  %.0.i.ph = phi ptr [ @.str.30, %bb.e ], [ @.str.55, %bb.ac ], [ @.str.54, %bb.ab ], [ @.str.53, %bb.aa ], [ @.str.52, %bb.z ], [ @.str.51, %bb.y ], [ @.str.50, %bb.x ], [ @.str.49, %bb.w ], [ @.str.48, %bb.v ], [ @.str.47, %bb.u ], [ @.str.46, %bb.t ], [ @.str.56, %bb.ad ]
  %i.p = load i64, ptr @rb_eNotImpError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.146, i64 noundef %i.a, ptr noundef nonnull %.0.i.ph, ptr noundef nonnull %i.h, i64 noundef %i.i) #42
  unreachable
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc ptr @gccct_method_search_slowpath(ptr noundef captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 1023) %2, ptr noundef nonnull %3) unnamed_addr #30 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !593    ; 2 uses
  %i.b = tail call ptr @rb_vm_search_method_slowpath(ptr noundef nonnull %3, i64 noundef %1), !inline_history !690 ; 5 uses
  %.not.i = icmp eq i64 %i.a, 0
  %.not10.i = icmp eq ptr %i.b, @vm_empty_cc
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not10.i
  br i1 %or.cond.i, label %vm_search_method_slowpath0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = icmp eq ptr %i.b, null
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %vm_search_method_slowpath0.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_gc_writebarrier(i64 noundef %i.a, i64 noundef %i.c) #23, !inline_history !690
  br label %vm_search_method_slowpath0.exit

vm_search_method_slowpath0.exit:                  ; preds = %bb.a, %bb.b, %bb.c
  %i.h = getelementptr i8, ptr %0, i64 1336
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  store ptr %i.b, ptr %i.j, align 8, !tbaa !408
  ret ptr %i.b
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_method(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.rb_callcache, align 8       ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 8          ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233  ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val45 = load ptr, ptr %i.e, align 8, !tbaa !187 ; 3 uses
  %.not = icmp eq ptr %.val45, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %.val45, align 8, !tbaa !170
  %i.g = trunc i64 %i.f to i32
  %4 = lshr i32 %i.g, 16
  %5 = and i32 %4, 3
  switch i32 %5, label %default.unreachable56 [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.g
    i32 0, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.b to i64                 ; 3 uses
  %.not.i.i = trunc i64 %i.i to i1
  br i1 %.not.i.i, label %vm_ci_flag.exit, label %vm_ci_flag.exit.thread

vm_ci_flag.exit:                                  ; preds = %bb.d
  %i.j = and i64 %i.i, 262144
  %.not42 = icmp eq i64 %i.j, 0
  br i1 %.not42, label %bb.e, label %bb.f

vm_ci_flag.exit.thread:                           ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !173  ; 2 uses
  %i.m = and i64 %i.l, 4
  %.not4255 = icmp eq i64 %i.m, 0
  br i1 %.not4255, label %.thread, label %bb.f

bb.e:                                             ; preds = %vm_ci_flag.exit
  %i.n = trunc i64 %i.i to i32
  %i.o = lshr i32 %i.n, 16
  br label %vm_ci_flag.exit49

.thread:                                          ; preds = %vm_ci_flag.exit.thread
  %i.p = trunc i64 %i.l to i32
  br label %vm_ci_flag.exit49

vm_ci_flag.exit49:                                ; preds = %bb.e, %.thread
  %.0.i48 = phi i32 [ %i.o, %bb.e ], [ %i.p, %.thread ]
  %i.q = and i32 %.0.i48, 8
  %spec.select = or disjoint i32 %i.q, 1
  %i.r = getelementptr i8, ptr %i.d, i64 32
  store i32 %spec.select, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr i8, ptr %i.d, i64 24
  store ptr @vm_call_method_missing, ptr %i.s, align 8, !tbaa !176
  %i.t = load ptr, ptr %2, align 8, !tbaa !226
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !225
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %.val.i = load i32, ptr %i.w, align 8, !tbaa !27
  %i.x = tail call fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.u, i32 noundef %.val.i), !inline_history !691
  br label %bb.p

bb.f:                                             ; preds = %vm_ci_flag.exit.thread, %vm_ci_flag.exit
  %i.y = tail call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.z = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.not.i.i50 = trunc i64 %i.z to i1
  br i1 %.not.i.i50, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc i64 %i.z to i32
  %i.ab = lshr i32 %i.aa, 16
  br label %vm_ci_flag.exit52

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.b, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !173
  %i.ae = trunc i64 %i.ad to i32
  br label %vm_ci_flag.exit52

vm_ci_flag.exit52:                                ; preds = %bb.h, %bb.i
  %.0.i51 = phi i32 [ %i.ab, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = and i32 %.0.i51, 1028
  %.not40 = icmp eq i32 %i.af, 0
  br i1 %.not40, label %bb.j, label %bb.m

bb.j:                                             ; preds = %vm_ci_flag.exit52
  %i.ag = getelementptr i8, ptr %.val45, i64 8
  %.val46 = load i64, ptr %i.ag, align 8, !tbaa !200 ; 2 uses
  %i.ah = inttoptr i64 %.val46 to ptr
  %i.ai = getelementptr i8, ptr %i.ah, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !237 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4
  %i.al = select i1 %i.ak, i64 %.val46, i64 %i.aj
  %i.am = getelementptr i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !74
  %i.ao = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.an, i64 noundef %i.al) #23
  %.not41 = icmp eq i64 %i.ao, 0
  br i1 %.not41, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr i8, ptr %i.d, i64 32
  store i32 2, ptr %i.ap, align 8, !tbaa !27
  %i.aq = load ptr, ptr %2, align 8, !tbaa !226
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !225
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %.val.i53 = load i32, ptr %i.at, align 8, !tbaa !27
  %i.au = tail call fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.ar, i32 noundef %.val.i53), !inline_history !691
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !tbaa.struct !692
  %i.av = load i64, ptr %3, align 8, !tbaa !77
  %i.aw = or i64 %i.av, 1048576
  store i64 %i.aw, ptr %3, align 8, !tbaa !77
  store ptr %3, ptr %i.c, align 8, !tbaa !233
  %i.ax = call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.m:                                             ; preds = %vm_ci_flag.exit52
  %i.ay = tail call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

default.unreachable56:                            ; preds = %bb.b
  unreachable

bb.n:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.147) #57
  unreachable

bb.o:                                             ; preds = %bb.a
  %i.az = tail call fastcc i64 @vm_call_method_nome(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %bb.o, %bb.m, %bb.f, %vm_ci_flag.exit49, %bb.c
  %.1 = phi i64 [ %i.h, %bb.c ], [ %i.y, %bb.f ], [ %i.x, %vm_ci_flag.exit49 ], [ %i.ay, %bb.m ], [ %i.az, %bb.o ], [ %i.ax, %bb.l ], [ %i.au, %bb.k ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %4 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %8 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %12 = alloca %struct.rb_callcache, align 8      ; 7 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !226
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !225  ; 23 uses
  %i.g = getelementptr i8, ptr %2, i64 8          ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !233  ; 19 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16       ; 7 uses
  %.val165 = load ptr, ptr %i.i, align 8, !tbaa !187 ; 2 uses
  %i.j = getelementptr i8, ptr %.val165, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15                          ; 2 uses
  switch i8 %i.m, label %bb.dc [
    i8 0, label %bb.b
    i8 8, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.ac
    i8 10, label %bb.ap
    i8 4, label %bb.aq
    i8 6, label %bb.au
    i8 9, label %bb.av
    i8 11, label %bb.bp
    i8 5, label %bb.aw
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val166 = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr i8, ptr %.val166, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = load i16, ptr %i.q, align 8
  %i.s = and i16 %i.r, 8192
  %.not151 = icmp eq i16 %i.s, 0
  %i.t = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  br i1 %.not151, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @vm_call_iseq_fwd_setup, ptr %i.t, align 8, !tbaa !176
  %i.u = tail call i64 @vm_call_iseq_fwd_setup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) ; 0 uses
  br label %vm_call_bmethod.exit

bb.d:                                             ; preds = %bb.b
  store ptr @vm_call_iseq_setup, ptr %i.t, align 8, !tbaa !176
  %i.v = tail call i64 @vm_call_iseq_setup(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) ; 0 uses
  br label %vm_call_bmethod.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.w = getelementptr i8, ptr %i.h, i64 24
  store ptr @vm_call_cfunc, ptr %i.w, align 8, !tbaa !176
end_hunk_9
begin_hunk_10_@vm_call_method_each_type:bb.a
bb.bj:                                            ; preds = %bb.bh
  %i.md = getelementptr i8, ptr %i.ma, i64 16
  %i.me = load i64, ptr %i.md, align 8, !tbaa !163
  br label %vm_ci_mid.exit236

vm_ci_mid.exit236:                                ; preds = %bb.bi, %bb.bj
  %.0.i235 = phi i64 [ %i.mc, %bb.bi ], [ %i.me, %bb.bj ]
  %i.mf = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.ly, i64 noundef %.0.i235, ptr noundef null) ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i233, label %select.unfold, label %bb.bk

bb.bk:                                            ; preds = %vm_ci_mid.exit236
  %i.mg = getelementptr i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !83 ; 3 uses
  %.not7.i.i = icmp eq ptr %i.mh, null
  br i1 %.not7.i.i, label %select.unfold, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mi = load i8, ptr %i.mh, align 8
  %i.mj = and i8 %i.mi, 15
  switch i8 %i.mj, label %bb.bo [
    i8 7, label %select.unfold
    i8 11, label %bb.bm
  ]

select.unfold:                                    ; preds = %bb.bl, %RCLASS_EXT_READABLE.exit256, %vm_ci_mid.exit236, %bb.bk
  %i.mk = call fastcc i64 @vm_call_method_nome(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !inline_history !698
  br label %vm_call_zsuper.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ml = getelementptr i8, ptr %i.mh, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !27 ; 2 uses
  %.not19.i = icmp eq ptr %i.mm, null
  br i1 %.not19.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mn = call fastcc ptr @refined_method_callable_without_refinement(ptr nonnull %i.mm), !inline_history !698
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn, %bb.bm
  %.0.i227 = phi ptr [ %i.mn, %bb.bn ], [ %i.mf, %bb.bm ], [ %i.mf, %bb.bl ]
  store i64 3190810, ptr %4, align 8, !tbaa !442
  %i.mo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 36, ptr %i.mo, align 8, !tbaa !185
  %i.mp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.0.i227, ptr %i.mp, align 8, !tbaa !187
  %i.mq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @vm_call_general, ptr %i.mq, align 8, !tbaa !234
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.mr, align 8, !tbaa !443
  store ptr %4, ptr %i.g, align 8, !tbaa !233
  %i.ms = call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !inline_history !698
  br label %vm_call_zsuper.exit

vm_call_zsuper.exit:                              ; preds = %select.unfold, %bb.bo
  %.016.i228 = phi i64 [ %i.mk, %select.unfold ], [ %i.ms, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %vm_call_bmethod.exit

bb.bp:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.mt = ptrtoint ptr %i.f to i64                ; 2 uses
  %.not.i.i.i260 = trunc i64 %i.mt to i1
  br i1 %.not.i.i.i260, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mu = lshr i64 %i.mt, 32
  br label %vm_ci_mid.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.mv = getelementptr i8, ptr %i.f, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !163
  br label %vm_ci_mid.exit.i

vm_ci_mid.exit.i:                                 ; preds = %bb.br, %bb.bq
  %.0.i.i = phi i64 [ %i.mu, %bb.bq ], [ %i.mw, %bb.br ] ; 2 uses
  %i.mx = getelementptr i8, ptr %1, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !15
  %i.mz = tail call fastcc ptr @vm_get_cref(ptr noundef %i.my), !inline_history !699
  %i.na = load ptr, ptr %i.g, align 8, !tbaa !233 ; 2 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 16     ; 3 uses
  %.val57.i = load ptr, ptr %i.nb, align 8, !tbaa !187
  %i.nc = getelementptr i8, ptr %i.na, i64 24
  %i.nd = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ne = getelementptr i8, ptr %0, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %find_refinement.exit.thread.i, %vm_ci_mid.exit.i
  %.03490.i = phi ptr [ %i.mz, %vm_ci_mid.exit.i ], [ %.034.val.i, %find_refinement.exit.thread.i ] ; 2 uses
  %.03589.i = phi ptr [ %.val57.i, %vm_ci_mid.exit.i ], [ %.338.ph.i, %find_refinement.exit.thread.i ] ; 5 uses
  %i.nf = getelementptr i8, ptr %.03490.i, i64 8
  %.034.val53.i = load i64, ptr %i.nf, align 8, !tbaa !26 ; 2 uses
  %i.ng = icmp eq i64 %.034.val53.i, 4
  br i1 %i.ng, label %find_refinement.exit.thread.i, label %find_refinement.exit.i

find_refinement.exit.i:                           ; preds = %bb.bs
  %.val56.i = load ptr, ptr %i.nb, align 8, !tbaa !187
  %i.nh = getelementptr i8, ptr %.val56.i, i64 32
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !405
  %i.nj = tail call i64 @rb_hash_lookup(i64 noundef %.034.val53.i, i64 noundef %i.ni) #23, !inline_history !699 ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 4
  br i1 %i.nk, label %find_refinement.exit.thread.i, label %bb.bt

bb.bt:                                            ; preds = %find_refinement.exit.i
  %i.nl = tail call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.nj, i64 noundef %.0.i.i, ptr noundef null), !inline_history !699 ; 3 uses
  %.not.i.i61.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i61.i, label %search_refined_method.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nm = getelementptr i8, ptr %i.nl, i64 16     ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !83 ; 8 uses
  %.not7.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not7.i.i.i, label %search_refined_method.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.no = load i8, ptr %i.nn, align 8
  %i.np = and i8 %i.no, 15                        ; 6 uses
  %i.nq = icmp eq i8 %i.np, 7
  br i1 %i.nq, label %search_refined_method.exit.thread, label %rb_callable_method_entry.exit.i

rb_callable_method_entry.exit.i:                  ; preds = %bb.bv
  %.val59.i = load ptr, ptr %i.nc, align 8, !tbaa !234
  %i.nr = icmp eq ptr %.val59.i, @vm_call_super_method
  br i1 %i.nr, label %bb.bw, label %.thread.i

bb.bw:                                            ; preds = %rb_callable_method_entry.exit.i
  %i.ns = load ptr, ptr %i.nd, align 8, !tbaa !123 ; 2 uses
  %.not.i.i263 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i263, label %current_method_entry.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nt = getelementptr i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !124 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !127
  %i.nw = icmp eq i32 %i.nv, 2
  br i1 %i.nw, label %bb.by, label %current_method_entry.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.nx = getelementptr i8, ptr %i.nu, i64 176
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !700
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !121
  %.val18.i.i = load i64, ptr %i.ne, align 8, !tbaa !122
  %i.nz = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val18.i.i
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %.013.i.i = phi ptr [ %1, %bb.by ], [ %i.oa, %bb.ca ] ; 2 uses
  %i.oa = getelementptr i8, ptr %.013.i.i, i64 56 ; 3 uses
  %.not19.i.i = icmp ugt ptr %i.nz, %i.oa
  br i1 %.not19.i.i, label %bb.ca, label %current_method_entry.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.ob = getelementptr i8, ptr %.013.i.i, i64 72
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !123
  %.not17.i.i = icmp eq ptr %i.oc, %i.ny
  br i1 %.not17.i.i, label %current_method_entry.exit.i, label %bb.bz, !llvm.loop !701

current_method_entry.exit.i:                      ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bw
  %.1.i.i = phi ptr [ %1, %bb.bx ], [ %1, %bb.bw ], [ %i.oa, %bb.ca ], [ %1, %bb.bz ]
  %i.od = getelementptr i8, ptr %.1.i.i, i64 32
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !15 ; 3 uses
  %.07.val16.i.i = load i64, ptr %i.oe, align 8, !tbaa !11
  %i.of = and i64 %.07.val16.i.i, 2
  %.not17.i62.i = icmp eq i64 %i.of, 0
  br i1 %.not17.i62.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %current_method_entry.exit.i, %bb.cc
  %.0718.i.i = phi ptr [ %i.oo, %bb.cc ], [ %i.oe, %current_method_entry.exit.i ] ; 2 uses
  %i.og = getelementptr i8, ptr %.0718.i.i, i64 -16
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !11 ; 2 uses
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i.i
  %i.oj = inttoptr i64 %i.oh to ptr               ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !77
  %i.ol = and i64 %i.ok, 61440
  %cond.i.i = icmp eq i64 %i.ol, 24576
  br i1 %cond.i.i, label %rb_vm_frame_method_entry.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i.i
  %i.om = getelementptr i8, ptr %.0718.i.i, i64 -8
  %.07.val10.i.i = load i64, ptr %i.om, align 8, !tbaa !11
  %i.on = and i64 %.07.val10.i.i, -4
  %i.oo = inttoptr i64 %i.on to ptr               ; 3 uses
  %.07.val.i.i = load i64, ptr %i.oo, align 8, !tbaa !11
  %i.op = and i64 %.07.val.i.i, 2
  %.not.i65.i = icmp eq i64 %i.op, 0
  br i1 %.not.i65.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %bb.cc, %current_method_entry.exit.i
  %.07.lcssa.i.i = phi ptr [ %i.oe, %current_method_entry.exit.i ], [ %i.oo, %bb.cc ]
  %i.oq = getelementptr i8, ptr %.07.lcssa.i.i, i64 -16
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !11 ; 2 uses
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %.thread.i, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i.i
  %i.ot = inttoptr i64 %i.or to ptr               ; 3 uses
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !77
  %13 = trunc i64 %i.ou to i32
  %14 = lshr i32 %13, 12
  %15 = and i32 %14, 15
  switch i32 %15, label %.thread.i [
    i32 6, label %rb_vm_frame_method_entry.exit.i
    i32 2, label %bb.ce
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.ov = getelementptr i8, ptr %i.ot, i64 8
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !80 ; 2 uses
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %.thread.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oy = inttoptr i64 %i.ow to ptr               ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !77
  %i.pa = and i64 %i.oz, 61440
  %cond.i.i.i = icmp eq i64 %i.pa, 24576
  br i1 %cond.i.i.i, label %rb_vm_frame_method_entry.exit.i, label %.thread.i

rb_vm_frame_method_entry.exit.i:                  ; preds = %bb.cb, %bb.cf, %bb.cd
  %.0.i64.i = phi ptr [ %i.oy, %bb.cf ], [ %i.ot, %bb.cd ], [ %i.oj, %bb.cb ]
  %i.pb = getelementptr i8, ptr %.0.i64.i, i64 16
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !83
  %i.pd = tail call i32 @rb_method_definition_eq(ptr noundef nonnull %i.nn, ptr noundef %i.pc), !inline_history !699
  %.not49.i = icmp eq i32 %i.pd, 0
  br i1 %.not49.i, label %rb_vm_frame_method_entry.exit..thread_crit_edge.i, label %find_refinement.exit.thread.i

rb_vm_frame_method_entry.exit..thread_crit_edge.i: ; preds = %rb_vm_frame_method_entry.exit.i
  %.pre.pre.pre.i = load ptr, ptr %i.nm, align 8, !tbaa !83 ; 2 uses
  %.pre = load i8, ptr %.pre.pre.pre.i, align 8
  %.pre277 = and i8 %.pre, 15
  br label %.thread.i

.thread.i:                                        ; preds = %rb_vm_frame_method_entry.exit..thread_crit_edge.i, %bb.cf, %bb.ce, %bb.cd, %._crit_edge.i.i, %rb_callable_method_entry.exit.i
  %.pre-phi = phi i8 [ %.pre277, %rb_vm_frame_method_entry.exit..thread_crit_edge.i ], [ %i.np, %bb.cf ], [ %i.np, %bb.ce ], [ %i.np, %bb.cd ], [ %i.np, %._crit_edge.i.i ], [ %i.np, %rb_callable_method_entry.exit.i ]
  %.pre.pre.i = phi ptr [ %.pre.pre.pre.i, %rb_vm_frame_method_entry.exit..thread_crit_edge.i ], [ %i.nn, %bb.cf ], [ %i.nn, %bb.ce ], [ %i.nn, %bb.cd ], [ %i.nn, %._crit_edge.i.i ], [ %i.nn, %rb_callable_method_entry.exit.i ]
  %i.pe = getelementptr i8, ptr %.03589.i, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !83 ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 8
  %i.ph = and i8 %i.pg, 15
  %.not50.i = icmp eq i8 %i.ph, 11
  %.not51.i = icmp eq ptr %i.pf, %.pre.pre.i
  %or.cond.i = and i1 %.not51.i, %.not50.i
  %.136.i = select i1 %or.cond.i, ptr %.03589.i, ptr %i.nl ; 3 uses
  %.not52.i = icmp eq i8 %.pre-phi, 11
  br i1 %.not52.i, label %find_refinement.exit.thread.i, label %search_refined_method.exit

find_refinement.exit.thread.i:                    ; preds = %.thread.i, %rb_vm_frame_method_entry.exit.i, %find_refinement.exit.i, %bb.bs
  %.338.ph.i = phi ptr [ %.03589.i, %bb.bs ], [ %.03589.i, %rb_vm_frame_method_entry.exit.i ], [ %.03589.i, %find_refinement.exit.i ], [ %.136.i, %.thread.i ]
  %i.pi = getelementptr i8, ptr %.03490.i, i64 24
  %.034.val.i = load ptr, ptr %i.pi, align 8, !tbaa !20 ; 2 uses
  %.not.i261 = icmp eq ptr %.034.val.i, null
  br i1 %.not.i261, label %bb.cg, label %bb.bs, !llvm.loop !702

bb.cg:                                            ; preds = %find_refinement.exit.thread.i
  %.val55.i = load ptr, ptr %i.nb, align 8, !tbaa !187 ; 2 uses
  %i.pj = getelementptr i8, ptr %.val55.i, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !83
  %i.pl = getelementptr i8, ptr %i.pk, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !27 ; 4 uses
  %.not45.i = icmp eq ptr %i.pm, null
  br i1 %.not45.i, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pn = getelementptr i8, ptr %i.pm, i64 8
  %i.po = load i64, ptr %i.pn, align 8, !tbaa !198
  %i.pp = icmp eq i64 %i.po, 0
  br i1 %i.pp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  tail call void @rb_notimplement() #42, !inline_history !699
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.pq = getelementptr i8, ptr %i.pm, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !83 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.pr, null
  br i1 %.not9.i.i, label %search_refined_method.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ps = load i8, ptr %i.pr, align 8
  %i.pt = and i8 %i.ps, 15
  %i.pu = icmp eq i8 %i.pt, 7
  br i1 %i.pu, label %search_refined_method.exit.thread, label %search_refined_method.exit.thread268

bb.cl:                                            ; preds = %bb.cg
  %i.pv = getelementptr i8, ptr %.val55.i, i64 8
  %i.pw = load i64, ptr %i.pv, align 8, !tbaa !200
  %i.px = inttoptr i64 %i.pw to ptr               ; 7 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !77
  %i.pz = and i64 %i.py, 65536
  %.not.i.i67.i = icmp eq i64 %i.pz, 0
  br i1 %.not.i.i67.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %bb.cl
  %i.qa = getelementptr i8, ptr %i.px, i64 160    ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !192
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.cm

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %bb.cl
  %i.qd = getelementptr i8, ptr %i.px, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.cm:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.qe = tail call ptr @rb_current_box() #23, !inline_history !699 ; 3 uses
  %.not.i68.i = icmp eq ptr %i.qe, null
  br i1 %.not.i68.i, label %.split.i.i, label %bb.cn

.split.i.i:                                       ; preds = %bb.cm
  %i.qf = getelementptr i8, ptr %i.px, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.qg = getelementptr i8, ptr %i.qe, i64 128
  %i.qh = load i8, ptr %i.qg, align 8, !tbaa !111, !range !114, !noundef !64
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %.split7.i.i, label %bb.cq

.split7.i.i:                                      ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.qj = load i64, ptr %i.px, align 8, !tbaa !77
  %i.qk = and i64 %i.qj, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.qk, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.ql = load ptr, ptr %i.qa, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.ql, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.co

bb.co:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.qm = load i64, ptr %i.qe, align 8, !tbaa !196
  %i.qn = call i32 @rb_st_lookup(ptr noundef nonnull %i.ql, i64 noundef %i.qm, ptr noundef nonnull %i.a) #23, !inline_history !699
  %.not5.i.i13.i.i = icmp eq i32 %i.qn, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qo = load i64, ptr %i.a, align 8, !tbaa !11
  %i.qp = inttoptr i64 %i.qo to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.cp, %bb.co, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.qp, %bb.cp ], [ null, %bb.co ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.qq = getelementptr i8, ptr %i.px, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.qq, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.cq:                                            ; preds = %bb.cn
  %i.qr = getelementptr i8, ptr %i.px, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.cq, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i69.i = phi ptr [ %i.qd, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.qr, %bb.cq ], [ %i.qf, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.qs = getelementptr i8, ptr %.0.i69.i, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !197 ; 2 uses
  %.not46.i = icmp eq i64 %i.qt, 0
  br i1 %.not46.i, label %search_refined_method.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %RCLASS_EXT_READABLE.exit.i
  %i.qu = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.qt, i64 noundef %.0.i.i, ptr noundef null), !inline_history !699 ; 3 uses
  %.not.i.i70.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i70.i, label %search_refined_method.exit.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qv = getelementptr i8, ptr %i.qu, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i71.i = icmp eq ptr %i.qw, null
  br i1 %.not7.i.i71.i, label %search_refined_method.exit.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qx = load i8, ptr %i.qw, align 8
  %i.qy = and i8 %i.qx, 15
  %i.qz = icmp eq i8 %i.qy, 7
  br i1 %i.qz, label %search_refined_method.exit.thread, label %search_refined_method.exit.thread268

search_refined_method.exit:                       ; preds = %.thread.i
  %.not.i230 = icmp eq ptr %.136.i, null
  br i1 %.not.i230, label %search_refined_method.exit.thread, label %search_refined_method.exit.thread268

search_refined_method.exit.thread268:             ; preds = %bb.ck, %bb.ct, %search_refined_method.exit
  %.3.i271 = phi ptr [ %.136.i, %search_refined_method.exit ], [ %i.pm, %bb.ck ], [ %i.qu, %bb.ct ] ; 3 uses
  %i.ra = load ptr, ptr %2, align 8, !tbaa !226
  %i.rb = getelementptr i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !182
  %.not24.i = icmp eq ptr %i.rc, null
  br i1 %.not24.i, label %bb.db, label %bb.cu

bb.cu:                                            ; preds = %search_refined_method.exit.thread268
  %i.rd = load ptr, ptr %i.g, align 8, !tbaa !233
  %i.re = getelementptr i8, ptr %i.rd, i64 16
  %.val.i231 = load ptr, ptr %i.re, align 8, !tbaa !187
  %i.rf = getelementptr i8, ptr %.val.i231, i64 8
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !200
  %i.rh = call i64 @rb_imemo_new(i32 noundef 11, i64 noundef %i.rg, i64 noundef 40, i1 noundef zeroext true) #23 ; 6 uses
  %i.ri = inttoptr i64 %i.rh to ptr               ; 8 uses
  %i.rj = getelementptr i8, ptr %i.ri, i64 16
  store ptr %.3.i271, ptr %i.rj, align 8, !tbaa !171
  %i.rk = getelementptr i8, ptr %i.ri, i64 24
  store ptr @vm_call_general, ptr %i.rk, align 8, !tbaa !176
  %i.rl = load i64, ptr %i.ri, align 8, !tbaa !11
  %i.rm = or i64 %i.rl, 524288
end_hunk_10
begin_hunk_11_@vm_call_symbol:bb.a
  %i.ao = and i32 %.0.i88, 12
  %i.ap = call i64 @rb_make_no_method_exception(i64 noundef %i.ag, i64 noundef 0, i64 noundef %i.g, i32 noundef %i.ah, ptr noundef %.0.i89, i32 noundef %i.ao)
  call void @rb_exc_raise(i64 noundef %i.ap) #42
  unreachable

bb.o:                                             ; preds = %bb.i
  %i.aq = call i64 @rb_str_intern(i64 noundef %i.y) #23
  %i.ar = call i64 @rb_ary_unshift(i64 noundef %i.w, i64 noundef %i.aq) #23 ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %bb.h
  %i.as = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !73 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 64
  %.not81 = icmp ugt ptr %1, %i.au
  br i1 %.not81, label %rbimpl_size_mul_or_raise.exit, label %bb.q, !prof !72

bb.q:                                             ; preds = %bb.p
  call fastcc void @vm_stackoverflow() #58
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.p
  %i.av = getelementptr i8, ptr %i.at, i64 8      ; 3 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !73
  %i.aw = zext nneg i32 %i.d to i64               ; 2 uses
  %i.ax = sub nsw i64 0, %i.aw                    ; 3 uses
  %i.ay = shl nuw nsw i64 %i.aw, 3
  %i.az = getelementptr [8 x i8], ptr %i.av, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = add nsw i32 %i.d, -1
  %i.bc = sext i32 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.av, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bf, ptr noundef nonnull align 1 %i.ba, i64 noundef %i.ay, i1 noundef false) #23
  %i.bg = load i32, ptr %i.c, align 8, !tbaa !230
  %i.bh = add i32 %i.bg, 1                        ; 4 uses
  store i32 %i.bh, ptr %i.c, align 8, !tbaa !230
  %i.bi = call i32 @rb_method_basic_definition_p(i64 noundef %.0.i, i64 noundef 2913)
  %.not82 = icmp eq i32 %i.bi, 0
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !11  ; 2 uses
  br i1 %.not82, label %bb.u, label %bb.r

bb.r:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !73 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.ax
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !11
  %i.bn = ptrtoint ptr %3 to i64                  ; 2 uses
  %.not.i.i90 = trunc i64 %i.bn to i1
  br i1 %.not.i.i90, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = lshr i32 %i.bo, 16
  br label %vm_ci_flag.exit92

bb.t:                                             ; preds = %bb.r
  %i.bq = getelementptr i8, ptr %3, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !173
  %i.bs = trunc i64 %i.br to i32
  br label %vm_ci_flag.exit92

vm_ci_flag.exit92:                                ; preds = %bb.s, %bb.t
  %.0.i91 = phi i32 [ %i.bp, %bb.s ], [ %i.bs, %bb.t ]
  %i.bt = and i32 %.0.i91, 12
  %i.bu = sext i32 %i.bh to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr [8 x i8], ptr %i.bk, i64 %i.bv
  %i.bx = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !11
  %i.by = call i64 @rb_make_no_method_exception(i64 noundef %i.bx, i64 noundef 0, i64 noundef %i.g, i32 noundef %i.bh, ptr noundef %i.bw, i32 noundef %i.bt)
  call void @rb_exc_raise(i64 noundef %i.by) #42
  unreachable

bb.u:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bz = call i64 @rb_str_intern(i64 noundef %i.bj) #23
  %i.ca = load ptr, ptr %i.as, align 8, !tbaa !73
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.ax
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  store i64 %i.bz, ptr %i.cc, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.u, %rb_class_of.exit
  %.078 = phi i64 [ %i.q, %rb_class_of.exit ], [ 2913, %bb.u ], [ 2913, %bb.o ] ; 4 uses
  %.177 = phi i32 [ %i.d, %rb_class_of.exit ], [ %i.bh, %bb.u ], [ %i.d, %bb.o ]
  %.075 = phi i32 [ 0, %rb_class_of.exit ], [ %i.s, %bb.u ], [ %i.s, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 106522, ptr %7, align 8, !tbaa !445
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ce = ptrtoint ptr %3 to i64                  ; 2 uses
  %.not.i.i93 = trunc i64 %i.ce to i1             ; 2 uses
  br i1 %.not.i.i93, label %vm_ci_kwarg.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = getelementptr i8, ptr %3, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !238
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %bb.v, %bb.w
  %.0.i94 = phi ptr [ %i.cg, %bb.w ], [ null, %bb.v ]
  store ptr %.0.i94, ptr %i.cd, align 8, !tbaa !238
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.078, ptr %i.ch, align 8, !tbaa !163
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cj = sext i32 %i.r to i64
  store i64 %i.cj, ptr %i.ci, align 8, !tbaa !173
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cl = sext i32 %.177 to i64
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !174
  store ptr %7, ptr %6, align 8, !tbaa !225
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  br i1 %.not.i.i93, label %bb.x, label %bb.y

bb.x:                                             ; preds = %vm_ci_kwarg.exit
  %i.co = trunc i64 %i.ce to i32
  %i.cp = lshr i32 %i.co, 16
  br label %vm_ci_flag.exit97

bb.y:                                             ; preds = %vm_ci_kwarg.exit
  %i.cq = getelementptr i8, ptr %3, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !173
  %i.cs = trunc i64 %i.cr to i32
  br label %vm_ci_flag.exit97

vm_ci_flag.exit97:                                ; preds = %bb.x, %bb.y
  %.0.i96 = phi i32 [ %i.cp, %bb.x ], [ %i.cs, %bb.y ]
  %i.ct = and i32 %.0.i96, 8192
  %.not84 = icmp eq i32 %i.ct, 0
  br i1 %.not84, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %vm_ci_flag.exit97
  %i.cu = load ptr, ptr %2, align 8, !tbaa !226
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !284
  store ptr %i.cw, ptr %i.cn, align 8, !tbaa !284
  br label %bb.aa

bb.aa:                                            ; preds = %vm_ci_flag.exit97, %bb.z
  store ptr %6, ptr %2, align 8, !tbaa !226
  store i64 3190810, ptr %8, align 8, !tbaa !442
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.i, ptr %i.cx, align 8, !tbaa !185
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cz = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i, i64 noundef %.078, ptr noundef null) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i, label %rb_callable_method_entry_with_refinements.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not7.i.i.i, label %rb_callable_method_entry_with_refinements.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i8, ptr %i.db, align 8
  %i.dd = and i8 %i.dc, 15
  switch i8 %i.dd, label %callable_method_entry_refinements0.exit.fold.split.i.i [
    i8 7, label %rb_callable_method_entry_with_refinements.exit
    i8 11, label %bb.ad
  ], !prof !219

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.de = call fastcc ptr @method_entry_resolve_refinement(i64 noundef %.0.i, i64 noundef %.078, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.df = load i64, ptr %i.a, align 8, !tbaa !11
  %i.dg = call fastcc ptr @prepare_callable_method_entry(i64 noundef %i.df, i64 noundef %.078, ptr noundef %i.de, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %rb_callable_method_entry_with_refinements.exit

callable_method_entry_refinements0.exit.fold.split.i.i: ; preds = %bb.ac
  br label %rb_callable_method_entry_with_refinements.exit

rb_callable_method_entry_with_refinements.exit:   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad, %callable_method_entry_refinements0.exit.fold.split.i.i
  %.0.i.i.i = phi ptr [ %i.dg, %bb.ad ], [ null, %bb.ac ], [ null, %bb.aa ], [ null, %bb.ab ], [ %i.cz, %callable_method_entry_refinements0.exit.fold.split.i.i ] ; 3 uses
  store ptr %.0.i.i.i, ptr %i.cy, align 8, !tbaa !187
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @vm_call_general, ptr %i.dh, align 8, !tbaa !234
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i32 %.075, ptr %i.di, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 0, ptr %i.dj, align 4
  %i.dk = getelementptr i8, ptr %2, i64 8
  store ptr %8, ptr %i.dk, align 8, !tbaa !233
  %i.dl = and i32 %5, 4
  %.not85 = icmp eq i32 %i.dl, 0
  br i1 %.not85, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %rb_callable_method_entry_with_refinements.exit
  %i.dm = call fastcc i64 @vm_call_method(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.am

bb.af:                                            ; preds = %rb_callable_method_entry_with_refinements.exit
  %.not86 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not86, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = load i64, ptr %.0.i.i.i, align 8, !tbaa !170
  %i.do = trunc i64 %i.dn to i32
  %9 = lshr i32 %i.do, 16
  %i.dp = and i32 %9, 3
  switch i32 %i.dp, label %bb.aj [
    i32 1, label %bb.ah
    i32 2, label %bb.ak
    i32 3, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dq = call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  unreachable

bb.ak:                                            ; preds = %bb.ag, %bb.ai
  %storemerge = phi i32 [ 2, %bb.ai ], [ 1, %bb.ag ] ; 2 uses
  store i32 %storemerge, ptr %i.di, align 8, !tbaa !27
  %i.dr = load ptr, ptr %2, align 8, !tbaa !226
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !225
  %i.dt = call fastcc i64 @vm_call_method_missing_body(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.ds, i32 noundef %storemerge), !inline_history !691
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.du = call fastcc i64 @vm_call_method_nome(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.ak, %bb.al, %bb.ae
  %.1 = phi i64 [ %i.dm, %bb.ae ], [ %i.dq, %bb.ah ], [ %i.dt, %bb.ak ], [ %i.du, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i64 %.1
}

declare i64 @rb_check_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 32) i32 @ci_missing_reason(ptr noundef %0) unnamed_addr #12 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %.not.i.i = trunc i64 %i.a to i1
  br i1 %.not.i.i, label %vm_ci_flag.exit, label %vm_ci_flag.exit.thread

vm_ci_flag.exit:                                  ; preds = %bb.a
  %i.b = and i64 %i.a, 524288
  %.not = icmp eq i64 %i.b, 0
  %i.c = trunc i64 %i.a to i32
  %i.d = lshr i32 %i.c, 26
  %i.e = and i32 %i.d, 8
  %spec.select37 = xor i32 %i.e, 8
  %.034 = select i1 %.not, i32 0, i32 %spec.select37
  %i.f = trunc i64 %i.a to i32
  %i.g = lshr i32 %i.f, 16                        ; 2 uses
  %i.h = and i32 %i.g, 4
  %spec.select1029 = or disjoint i32 %.034, %i.h
  br label %vm_ci_flag.exit19

vm_ci_flag.exit.thread:                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !173  ; 3 uses
  %i.k = and i64 %i.j, 8
  %.not21 = icmp eq i64 %i.k, 0
  br i1 %.not21, label %.thread22, label %..thread22_crit_edge

..thread22_crit_edge:                             ; preds = %vm_ci_flag.exit.thread
  %i.l = trunc i64 %i.j to i32
  %i.m = lshr i32 %i.l, 10
  %i.n = and i32 %i.m, 8
  %spec.select = xor i32 %i.n, 8
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !173
  br label %.thread22

.thread22:                                        ; preds = %..thread22_crit_edge, %vm_ci_flag.exit.thread
  %i.o = phi i64 [ %.pre, %..thread22_crit_edge ], [ %i.j, %vm_ci_flag.exit.thread ]
  %.025 = phi i32 [ %spec.select, %..thread22_crit_edge ], [ 0, %vm_ci_flag.exit.thread ]
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = and i32 %i.p, 4
  %spec.select10 = or disjoint i32 %i.q, %.025
  br label %vm_ci_flag.exit19

vm_ci_flag.exit19:                                ; preds = %vm_ci_flag.exit, %.thread22
  %spec.select1030 = phi i32 [ %spec.select1029, %vm_ci_flag.exit ], [ %spec.select10, %.thread22 ]
  %.0.i18 = phi i32 [ %i.g, %vm_ci_flag.exit ], [ %i.p, %.thread22 ]
  %i.r = lshr i32 %.0.i18, 4
  %i.s = and i32 %i.r, 16
  %.2 = or i32 %i.s, %spec.select1030
  ret i32 %.2
}

declare i64 @rb_str_intern(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @vm_invoke_block_opt_call(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #30 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !230  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %rbimpl_size_mul_or_raise.exit, label %bb.b

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %i.h = add nsw i32 %i.b, -1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr [8 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = sub nsw i64 0, %i.d
  %i.n = getelementptr [8 x i8], ptr %i.g, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.o, ptr noundef nonnull align 1 %i.l, i64 noundef %i.e, i1 noundef false) #23
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_size_mul_or_raise.exit, %bb.a
  %i.p = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  store ptr %i.r, ptr %i.p, align 8, !tbaa !73
  %i.s = and i64 %4, 3
  switch i64 %i.s, label %bb.c [
    i64 1, label %vm_block_handler_type.exit.thread8.i
    i64 3, label %vm_invoke_block.exit
  ]

vm_block_handler_type.exit.thread8.i:             ; preds = %bb.b
  br label %vm_invoke_block.exit

bb.c:                                             ; preds = %bb.b
  %i.t = and i64 %4, 255
  %i.u = icmp eq i64 %i.t, 12
  br i1 %i.u, label %vm_block_handler_type.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %4, 0
  %i.w = and i64 %4, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %vm_invoke_block.exit, label %RB_SYMBOL_P.exit.i.i

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.d
  %i.z = inttoptr i64 %4 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %.fr10.i.i = freeze i64 %i.aa
  %i.ab = and i64 %.fr10.i.i, 31
  %i.ac = icmp eq i64 %i.ab, 20
  br i1 %i.ac, label %vm_block_handler_type.exit.i, label %vm_invoke_block.exit

vm_block_handler_type.exit.i:                     ; preds = %RB_SYMBOL_P.exit.i.i, %bb.c
  br label %vm_invoke_block.exit

vm_invoke_block.exit:                             ; preds = %bb.b, %vm_block_handler_type.exit.thread8.i, %bb.d, %RB_SYMBOL_P.exit.i.i, %vm_block_handler_type.exit.i
  %.0.i = phi ptr [ @vm_invoke_symbol_block, %vm_block_handler_type.exit.i ], [ @vm_invoke_iseq_block, %vm_block_handler_type.exit.thread8.i ], [ @vm_invoke_ifunc_block, %bb.b ], [ @vm_invoke_proc_block, %bb.d ], [ @vm_invoke_proc_block, %RB_SYMBOL_P.exit.i.i ]
  %i.ad = tail call i64 %.0.i(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i1 noundef zeroext false, i64 noundef %4) #23, !callees !260, !inline_history !819
  ret i64 %i.ad
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_invoke_iseq_block(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i1 noundef zeroext %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %5, -4
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.g = getelementptr i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191  ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !230
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr [8 x i8], ptr %i.j, i64 %i.n ; 3 uses
  %not. = xor i1 %4, true
  %i.p = zext i1 %not. to i32
  %i.q = tail call fastcc i32 @vm_callee_setup_block_arg(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %i.d, ptr noundef %i.o, i32 noundef %i.p)
  store ptr %i.o, ptr %i.i, align 8, !tbaa !73
  %i.r = load i64, ptr %i.b, align 8, !tbaa !208
  %i.s = getelementptr i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !210
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !147
  %i.x = sext i32 %i.h to i64
  %i.y = getelementptr [8 x i8], ptr %i.o, i64 %i.x ; 5 uses
  %i.z = getelementptr i8, ptr %i.u, i64 240
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !190
  %i.ab = sub i32 %i.aa, %i.h                     ; 5 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 264
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !355
  %i.ae = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 6 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -56    ; 3 uses
  %i.ah = add i32 %i.ad, %i.ab
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr %i.y, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 56
  %.not.i = icmp ugt ptr %i.ag, %i.ak
  br i1 %.not.i, label %.preheader.i, label %bb.b, !prof !72

end_hunk_11
begin_hunk_12_@rb_call0:bb.a
  %i.ch = getelementptr i8, ptr %i.cd, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !61
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.ah, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.ag
  %.026.i = phi i64 [ %i.ci, %bb.ah ], [ %i.by, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.by, %bb.ag ]
  %i.cj = icmp eq i64 %6, 36
  br i1 %i.cj, label %callable_method_entry_refinements0.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ck = call i64 @rb_obj_is_kind_of(i64 noundef %6, i64 noundef %.026.i) #23
  %.not38.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not38.not.i, label %callable_method_entry_refinements0.exit.thread, label %rb_method_call_status.exit

callable_method_entry_refinements0.exit.thread:   ; preds = %bb.af, %rb_class_of.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %bb.ai, %bb.ac, %bb.ab, %bb.aa, %callable_method_entry_refinements0.exit.thread109.thread, %callable_method_entry_refinements0.exit.thread109, %callable_method_entry_refinements0.exit
  %.1.i77.ph = phi i32 [ 0, %callable_method_entry_refinements0.exit ], [ 0, %callable_method_entry_refinements0.exit.thread109 ], [ 0, %callable_method_entry_refinements0.exit.thread109.thread ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.ac ], [ 2, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ 1, %bb.af ], [ 2, %bb.ai ], [ 0, %rb_class_of.exit ]
  %i.cl = call fastcc i64 @method_missing(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %.1.i77.ph, i32 noundef %.06097)
  br label %.thread117

rb_method_call_status.exit:                       ; preds = %bb.af, %bb.ad, %bb.ai, %bb.ae
  %.not69 = icmp eq ptr %i.as, %.0.i73112144
  br i1 %.not69, label %rb_method_call_status.exit91.thread, label %bb.aj, !prof !72

bb.aj:                                            ; preds = %rb_method_call_status.exit
  call fastcc void @stack_check(ptr noundef nonnull %0)
  %i.cm = call i64 @rb_vm_call_kw(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %.0.i73112144, i32 noundef %.06097)
  br label %.thread117

bb.ak:                                            ; preds = %gccct_method_search.exit
  br i1 %.not67, label %rb_method_call_status.exit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr i8, ptr %.1.i, i64 16
  %.val = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 3 uses
  %.not.i79 = icmp eq ptr %.val, null
  br i1 %.not.i79, label %rb_method_call_status.exit91, label %bb.am, !prof !110

bb.am:                                            ; preds = %bb.al
  %i.co = getelementptr i8, ptr %.val, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !83 ; 2 uses
  %.not34.i80 = icmp eq ptr %i.cp, null
  br i1 %.not34.i80, label %rb_method_call_status.exit91, label %bb.an, !prof !177

bb.an:                                            ; preds = %bb.am
  %i.cq = load i8, ptr %i.cp, align 8
  %i.cr = and i8 %i.cq, 15
  switch i8 %i.cr, label %rb_method_call_status.exit91.thread [
    i8 7, label %rb_method_call_status.exit91
    i8 11, label %bb.ao
  ], !prof !477

bb.ao:                                            ; preds = %bb.an
  %i.cs = call ptr @rb_resolve_refined_method_callable(i64 noundef 4, ptr noundef nonnull %.val) ; 2 uses
  %.not35.i81 = icmp eq ptr %i.cs, null
  br i1 %.not35.i81, label %rb_method_call_status.exit91, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !83 ; 2 uses
  %.not36.i82 = icmp eq ptr %i.cu, null
  br i1 %.not36.i82, label %rb_method_call_status.exit91, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cv = load i8, ptr %i.cu, align 8
  %i.cw = and i8 %i.cv, 15
  %i.cx = icmp eq i8 %i.cw, 7
  br i1 %i.cx, label %rb_method_call_status.exit91, label %rb_method_call_status.exit91.thread

rb_method_call_status.exit91:                     ; preds = %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq
  %i.cy = call fastcc i64 @method_missing(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %i.f, i32 noundef %.06097)
  br label %.thread117

rb_method_call_status.exit91.thread:              ; preds = %bb.an, %bb.aq, %rb_method_call_status.exit
  %i.cz = getelementptr i8, ptr %0, i64 144       ; 3 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !63
  %i.db = and i8 %i.da, 2
  %.not.i92 = icmp eq i8 %i.db, 0
  br i1 %.not.i92, label %bb.ar, label %stack_check.exit

bb.ar:                                            ; preds = %rb_method_call_status.exit91.thread
  %i.dc = call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.dc, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dd = load i8, ptr %i.cz, align 8, !tbaa !63
  %i.de = or i8 %i.dd, 2
  store i8 %i.de, ptr %i.cz, align 8, !tbaa !63
  call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %rb_method_call_status.exit91.thread, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.df = select i1 %i.g, i32 64, i32 0           ; 2 uses
  store i32 %i.df, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.dg = getelementptr i8, ptr %.1.i, i64 16
  %.val.i93 = load ptr, ptr %i.dg, align 8, !tbaa !187
  %i.dh = getelementptr i8, ptr %.val.i93, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !83
  %i.dj = load i8, ptr %i.di, align 8
  %i.dk = and i8 %i.dj, 15
  %i.dl = icmp eq i8 %i.dk, 0
  %i.dm = icmp sgt i32 %3, 128
  %i.dn = and i1 %i.dm, %i.dl
  br i1 %i.dn, label %bb.at, label %vm_call0_cc.exit, !prof !177

bb.at:                                            ; preds = %stack_check.exit
  %i.do = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %.06097), !inline_history !461 ; 0 uses
  %.pre124 = load i32, ptr %i.b, align 4, !tbaa !7
  %.pre125 = load i32, ptr %i.a, align 4, !tbaa !7 ; 2 uses
  %.pre126 = sext i32 %.pre125 to i64
  br label %vm_call0_cc.exit

vm_call0_cc.exit:                                 ; preds = %stack_check.exit, %bb.at
  %.pre-phi = phi i64 [ %i.h, %stack_check.exit ], [ %.pre126, %bb.at ]
  %i.dp = phi i32 [ %3, %stack_check.exit ], [ %.pre125, %bb.at ]
  %i.dq = phi i32 [ %i.df, %stack_check.exit ], [ %.pre124, %bb.at ]
  %.0.i94 = phi ptr [ %4, %stack_check.exit ], [ %i.c, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 106522, ptr %9, align 8, !tbaa !445
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.dr, align 8, !tbaa !238
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %2, ptr %i.ds, align 8, !tbaa !163
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.du = sext i32 %i.dq to i64
  store i64 %i.du, ptr %i.dt, align 8, !tbaa !173
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %.pre-phi, ptr %i.dv, align 8, !tbaa !174
  store ptr %9, ptr %8, align 8, !tbaa !225
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !182
  store ptr %8, ptr %7, align 8, !tbaa !226
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.1.i, ptr %i.dx, align 8, !tbaa !233
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dz = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !441
  store i64 0, ptr %i.dz, align 8, !tbaa !441
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !228
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %1, ptr %i.eb, align 8, !tbaa !229
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.dp, ptr %i.ec, align 8, !tbaa !230
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ee = zext i1 %i.g to i8
  store i8 %i.ee, ptr %i.ed, align 4, !tbaa !231
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ef, i8 0, i64 11, i1 false)
  %i.eg = call fastcc i64 @vm_call0_body(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %.0.i94), !inline_history !461
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.thread117

.thread117:                                       ; preds = %bb.aj, %callable_method_entry_refinements0.exit.thread, %vm_call0_cc.exit, %rb_method_call_status.exit91
  %.1 = phi i64 [ %i.eg, %vm_call0_cc.exit ], [ %i.cy, %rb_method_call_status.exit91 ], [ %i.cm, %bb.aj ], [ %i.cl, %callable_method_entry_refinements0.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  ret i64 %.1
}

declare i32 @rb_ec_stack_check(ptr noundef) local_unnamed_addr #4

declare i64 @rb_rescue2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @check_funcall_exec(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !466  ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !468
  %i.f = getelementptr i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !469
  %i.h = getelementptr i8, ptr %i.a, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !471
  %i.j = getelementptr i8, ptr %i.a, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !472
  %i.l = getelementptr i8, ptr %i.a, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !473
  %i.n = getelementptr i8, ptr %i.c, i64 136      ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !441
  store i64 0, ptr %i.n, align 8, !tbaa !441
  %i.p = tail call i64 @rb_vm_call0(ptr noundef %i.c, i64 noundef %i.e, i64 noundef 2913, i32 noundef %i.i, ptr noundef %i.k, ptr noundef %i.g, i32 noundef %i.m), !inline_history !854
  store i64 %i.o, ptr %i.n, align 8, !tbaa !441
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @check_funcall_failed(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 40       ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !855
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !470
  %2 = tail call fastcc i32 @method_boundp(i64 noundef %i.e, i64 noundef %i.g, i32 noundef 3)
  switch i32 %2, label %.critedge10 [
    i32 2, label %.critedge
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 8
  %i.i = and i8 %i.h, 2
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.critedge10, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.b, %bb.c
  tail call void @rb_exc_raise(i64 noundef %1) #42
  unreachable

.critedge10:                                      ; preds = %bb.b, %bb.c
  ret i64 36
}

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #10

declare i32 @rb_block_given_p() local_unnamed_addr #4

declare i64 @rb_block_proc() local_unnamed_addr #4

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #4

declare void @rb_zjit_invalidate_no_ep_escape(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @eval_make_iseq(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.pm_parse_result_t, align 8  ; 14 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = tail call i32 @rb_ruby_default_parser() #23
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %tailrecurse.i.i, label %bb.am

tailrecurse.i.i:                                  ; preds = %bb.a, %bb.c
  %.tr.i.i = phi ptr [ %i.s, %bb.c ], [ %3, %bb.a ] ; 3 uses
  %i.m = getelementptr i8, ptr %.tr.i.i, i64 24
  %.val.i.i = load i32, ptr %i.m, align 8, !tbaa !458
  switch i32 %.val.i.i, label %bb.d [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 1, label %vm_block_iseq.exit.i
    i32 2, label %vm_block_iseq.exit.i
  ]

bb.b:                                             ; preds = %tailrecurse.i.i
  %i.n = getelementptr i8, ptr %.tr.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  br label %vm_block_iseq.exit.i

bb.c:                                             ; preds = %tailrecurse.i.i
  %i.p = load i64, ptr %.tr.i.i, align 8, !tbaa !27
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !456
  br label %tailrecurse.i.i

bb.d:                                             ; preds = %tailrecurse.i.i
  unreachable

vm_block_iseq.exit.i:                             ; preds = %tailrecurse.i.i, %tailrecurse.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.o, %bb.b ], [ null, %tailrecurse.i.i ], [ null, %tailrecurse.i.i ] ; 4 uses
  %i.t = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.237, i64 noundef 10) #23
  %i.u = tail call i32 @rb_get_coverage_mode() #23
  %i.v = lshr i32 %i.u, 4
  %.lobit.i = and i32 %i.v, 1                     ; 4 uses
  %i.w = getelementptr i8, ptr %3, i64 24
  %.val.i1.i.i = load i32, ptr %i.w, align 8, !tbaa !458
  %i.x = icmp eq i32 %.val.i1.i.i, 3
  br i1 %i.x, label %tailrecurse.i.i.i, label %vm_block_ep.exit.i.i

vm_block_ep.exit.i.i:                             ; preds = %tailrecurse.i.i.i, %vm_block_iseq.exit.i
  %.tr.i.lcssa.i.i = phi ptr [ %3, %vm_block_iseq.exit.i ], [ %i.ae, %tailrecurse.i.i.i ]
  %i.y = getelementptr i8, ptr %.tr.i.lcssa.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %.05.val10.i.i.i = load i64, ptr %i.z, align 8, !tbaa !11 ; 2 uses
  %i.aa = and i64 %.05.val10.i.i.i, 16
  %.not11.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %compute_isolated_depth_from_block.exit.i

tailrecurse.i.i.i:                                ; preds = %vm_block_iseq.exit.i, %tailrecurse.i.i.i
  %.tr.i2.i.i = phi ptr [ %i.ae, %tailrecurse.i.i.i ], [ %3, %vm_block_iseq.exit.i ]
  %i.ab = load i64, ptr %.tr.i2.i.i, align 8, !tbaa !27
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !456 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %.val.i.i.i = load i32, ptr %i.af, align 8, !tbaa !458
  %i.ag = icmp eq i32 %.val.i.i.i, 3
  br i1 %i.ag, label %tailrecurse.i.i.i, label %vm_block_ep.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %vm_block_ep.exit.i.i, %bb.e
  %.05.val14.i.i.i = phi i64 [ %.05.val.i.i.i, %bb.e ], [ %.05.val10.i.i.i, %vm_block_ep.exit.i.i ]
  %.013.i.i.i = phi i32 [ %i.al, %bb.e ], [ 1, %vm_block_ep.exit.i.i ]
  %.0512.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.z, %vm_block_ep.exit.i.i ]
  %i.ah = and i64 %.05.val14.i.i.i, 2
  %.not7.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not7.i.i.i, label %bb.e, label %compute_isolated_depth_from_block.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr i8, ptr %.0512.i.i.i, i64 -8
  %.05.val9.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.aj = and i64 %.05.val9.i.i.i, -4
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = add i32 %.013.i.i.i, 1                  ; 2 uses
  %.05.val.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %i.am = and i64 %.05.val.i.i.i, 16
  %.not.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %compute_isolated_depth_from_block.exit.i

compute_isolated_depth_from_block.exit.i:         ; preds = %bb.e, %.lr.ph.i.i.i, %vm_block_ep.exit.i.i
  %.06.i.i.i = phi i32 [ 1, %vm_block_ep.exit.i.i ], [ %i.al, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %rb_source_location.exit.i

bb.f:                                             ; preds = %compute_isolated_depth_from_block.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  store volatile ptr %i.ao, ptr %i.d, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ap = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70 ; 2 uses
  %.val.i.i146.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, align 8, !tbaa !121
  %i.ar = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 8
  %.val8.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !122
  %i.as = getelementptr [8 x i8], ptr %.val.i.i146.i, i64 %.val8.i.i.i ; 2 uses
  %.not910.i.i.i = icmp ugt ptr %i.as, %i.aq
  br i1 %.not910.i.i.i, label %.lr.ph.i.i148.i, label %.thread.i

.lr.ph.i.i148.i:                                  ; preds = %bb.f, %bb.g
  %.011.i.i.i = phi ptr [ %i.av, %bb.g ], [ %i.aq, %bb.f ] ; 4 uses
  %i.at = getelementptr i8, ptr %.011.i.i.i, i64 32
  %.0.val.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !15
  %.0.val.val.i.i.i = load i64, ptr %.0.val.i.i.i, align 8, !tbaa !11
  %i.au = and i64 %.0.val.val.i.i.i, 128
  %.not7.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not7.not.i.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i148.i
  %i.av = getelementptr i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i = icmp ugt ptr %i.as, %i.av
  br i1 %.not9.i.i.i, label %.lr.ph.i.i148.i, label %.thread.i, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit.i.i:           ; preds = %.lr.ph.i.i148.i
  %i.aw = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i.i.i) #23
  %i.ax = getelementptr i8, ptr %.011.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !123
  %i.az = tail call i64 @rb_iseq_path(ptr noundef %i.ay) #23
  br label %rb_source_location.exit.i

rb_source_location.exit.i:                        ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i.i, %compute_isolated_depth_from_block.exit.i
  %.0152.i = phi i32 [ %2, %compute_isolated_depth_from_block.exit.i ], [ %i.aw, %rb_vm_get_ruby_level_next_cfp.exit.i.i ] ; 3 uses
  %.0.i = phi i64 [ %1, %compute_isolated_depth_from_block.exit.i ], [ %i.az, %rb_vm_get_ruby_level_next_cfp.exit.i.i ] ; 3 uses
  switch i64 %.0.i, label %bb.h [
    i64 36, label %bb.i
    i64 4, label %.thread.i
  ]

bb.h:                                             ; preds = %rb_source_location.exit.i
  %i.ba = tail call i64 @rb_fstring(i64 noundef %.0.i) #23
  br label %.thread.i

bb.i:                                             ; preds = %rb_source_location.exit.i
  %i.bb = tail call fastcc i64 @get_eval_default_path()
  br label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.i, %bb.h, %rb_source_location.exit.i, %bb.f
  %.0152156.i = phi i32 [ %.0152.i, %bb.i ], [ %.0152.i, %rb_source_location.exit.i ], [ %.0152.i, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %.0119.i = phi i32 [ 0, %bb.i ], [ %.lobit.i, %rb_source_location.exit.i ], [ %.lobit.i, %bb.h ], [ %.lobit.i, %bb.f ], [ %.lobit.i, %bb.g ] ; 2 uses
  %.1.i = phi i64 [ %i.bb, %bb.i ], [ %.0.i, %rb_source_location.exit.i ], [ %i.ba, %bb.h ], [ 4, %bb.f ], [ 4, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %6, i8 0, i64 1000, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 712 ; 2 uses
  call void @pm_options_line_set(ptr noundef nonnull %i.bc, i32 noundef %.0152156.i) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 976
  store i32 %.0119.i, ptr %i.bd, align 8, !tbaa !856
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i
  %indvars.iv193.i = phi i32 [ %indvars.iv.next194.i, %bb.j ], [ 1, %.thread.i ] ; 3 uses
  %.0122.i = phi i32 [ %i.be, %bb.j ], [ 0, %.thread.i ] ; 5 uses
  %.0117.i = phi ptr [ %i.bi, %bb.j ], [ %.0.i.i, %.thread.i ]
  %i.be = add i32 %.0122.i, 1                     ; 2 uses
  %i.bf = getelementptr i8, ptr %.0117.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.bh = getelementptr i8, ptr %i.bg, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !143 ; 2 uses
  %.not140.i = icmp eq ptr %i.bi, null
  %indvars.iv.next194.i = add i32 %indvars.iv193.i, 1
  br i1 %.not140.i, label %bb.k, label %bb.j, !llvm.loop !881

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 840 ; 2 uses
  %i.bk = add i32 %.0122.i, 2
  %i.bl = sext i32 %i.bk to i64
end_hunk_12
begin_hunk_13_@hook_before_rewind:bb.a
  store i32 16, ptr %11, align 8, !tbaa !528
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.aq, align 8, !tbaa !530
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !531
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !532
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store i64 %i.ap, ptr %i.au, align 8, !tbaa !534
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i64 36, ptr %i.av, align 8, !tbaa !535
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.aw, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %11, ptr noundef nonnull %.0, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.j, %bb.i
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = icmp eq ptr %3, null
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %THROW_DATA_CONSUMED_SET.exit, label %imemo_throw_data_p.exit.i

imemo_throw_data_p.exit.i:                        ; preds = %.critedge
  %i.bc = load i64, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bd = and i64 %i.bc, 31
  %i.be = icmp eq i64 %i.bd, 26
  br i1 %i.be, label %bb.k, label %THROW_DATA_CONSUMED_SET.exit

bb.k:                                             ; preds = %imemo_throw_data_p.exit.i
  %i.bf = getelementptr i8, ptr %3, i64 32
  %.val.i = load i32, ptr %i.bf, align 8, !tbaa !161
  %i.bg = icmp eq i32 %.val.i, 2
  br i1 %i.bg, label %bb.l, label %THROW_DATA_CONSUMED_SET.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = or i64 %i.bc, 65536
  store i64 %i.bh, ptr %3, align 8, !tbaa !920
  br label %THROW_DATA_CONSUMED_SET.exit

bb.m:                                             ; preds = %bb.f
  %i.bi = and i64 %.val103.val, 64
  %.not81 = icmp eq i64 %i.bi, 0
  br i1 %.not81, label %rb_ec_hooks.exit124, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = ptrtoint ptr %3 to i64
  %i.bk = icmp eq ptr %3, null
  %i.bl = and i64 %i.bj, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm                      ; 2 uses
  br i1 %i.bn, label %frame_return_value.exit, label %imemo_throw_data_p.exit.i105

imemo_throw_data_p.exit.i105:                     ; preds = %bb.n
  %i.bo = load i64, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bp = and i64 %i.bo, 31
  %i.bq = icmp eq i64 %i.bp, 26
  br i1 %i.bq, label %bb.o, label %frame_return_value.exit

bb.o:                                             ; preds = %imemo_throw_data_p.exit.i105
  %i.br = getelementptr i8, ptr %3, i64 32
  %.val.i107 = load i32, ptr %i.br, align 8, !tbaa !161
  %i.bs = icmp eq i32 %.val.i107, 2
  %i.bt = and i64 %i.bo, 65536
  %i.bu = icmp eq i64 %i.bt, 0
  %or.cond.i = and i1 %i.bu, %i.bs
  br i1 %or.cond.i, label %bb.p, label %frame_return_value.exit

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr i8, ptr %3, i64 16
  %.val5.i = load i64, ptr %i.bv, align 8, !tbaa !492
  br label %frame_return_value.exit

frame_return_value.exit:                          ; preds = %bb.n, %imemo_throw_data_p.exit.i105, %bb.o, %bb.p
  %.0.i106 = phi i64 [ %.val5.i, %bb.p ], [ 4, %bb.n ], [ 4, %bb.o ], [ 4, %imemo_throw_data_p.exit.i105 ]
  br i1 %1, label %bb.q, label %rb_ec_hooks.exit110

bb.q:                                             ; preds = %frame_return_value.exit
  %i.bw = getelementptr i8, ptr %3, i64 16
  %.val104 = load i64, ptr %i.bw, align 8, !tbaa !492
  br label %rb_ec_hooks.exit110

rb_ec_hooks.exit110:                              ; preds = %frame_return_value.exit, %bb.q
  %.078 = phi i64 [ %.val104, %bb.q ], [ %.0.i106, %frame_return_value.exit ] ; 4 uses
  %i.bx = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.val100 = load ptr, ptr %i.bx, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.by = getelementptr i8, ptr %.val100, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !264 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !527
  %i.cc = and i32 %i.cb, 512
  %.not84 = icmp eq i32 %i.cc, 0
  br i1 %.not84, label %bb.s, label %bb.r, !prof !72

bb.r:                                             ; preds = %rb_ec_hooks.exit110
  %i.cd = getelementptr i8, ptr %i.bz, i64 16
  %i.ce = getelementptr i8, ptr %i.p, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 512, ptr %10, align 8, !tbaa !528
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.cg, align 8, !tbaa !530
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.p, ptr %i.ch, align 8, !tbaa !531
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !532
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  store i64 %.078, ptr %i.ck, align 8, !tbaa !534
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i64 36, ptr %i.cl, align 8, !tbaa !535
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %i.cm, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %10, ptr noundef %i.cd, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rb_ec_hooks.exit110
  %.not85 = icmp eq ptr %.0, null
  br i1 %.not85, label %.critedge93, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr i8, ptr %.0, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !527
  %i.cp = and i32 %i.co, 512
  %.not131 = icmp eq i32 %i.cp, 0
  br i1 %.not131, label %.critedge93, label %bb.u, !prof !72

bb.u:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !70  ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 512, ptr %9, align 8, !tbaa !528
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.ct, align 8, !tbaa !530
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.cq, ptr %i.cu, align 8, !tbaa !531
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.cs, ptr %i.cv, align 8, !tbaa !532
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  store i64 %.078, ptr %i.cx, align 8, !tbaa !534
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 36, ptr %i.cy, align 8, !tbaa !535
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.cz, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %9, ptr noundef nonnull %.0, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.critedge93

.critedge93:                                      ; preds = %bb.s, %bb.u, %bb.t
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !70  ; 4 uses
  %i.db = getelementptr i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15 ; 3 uses
  %.07.val16.i = load i64, ptr %i.dc, align 8, !tbaa !11
  %i.dd = and i64 %.07.val16.i, 2
  %.not17.i = icmp eq i64 %i.dd, 0
  br i1 %.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.critedge93, %bb.w
  %.0718.i = phi ptr [ %i.dm, %bb.w ], [ %i.dc, %.critedge93 ] ; 2 uses
  %i.de = getelementptr i8, ptr %.0718.i, i64 -16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !11 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.dh = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !77
  %i.dj = and i64 %i.di, 61440
  %cond.i = icmp eq i64 %i.dj, 24576
  br i1 %cond.i, label %rb_vm_frame_method_entry.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i
  %i.dk = getelementptr i8, ptr %.0718.i, i64 -8
  %.07.val10.i = load i64, ptr %i.dk, align 8, !tbaa !11
  %i.dl = and i64 %.07.val10.i, -4
  %i.dm = inttoptr i64 %i.dl to ptr               ; 3 uses
  %.07.val.i = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.dn = and i64 %.07.val.i, 2
  %.not.i112 = icmp eq i64 %i.dn, 0
  br i1 %.not.i112, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.w, %.critedge93
  %.07.lcssa.i = phi ptr [ %i.dc, %.critedge93 ], [ %i.dm, %bb.w ]
  %i.do = getelementptr i8, ptr %.07.lcssa.i, i64 -16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %rb_vm_frame_method_entry.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.dr = inttoptr i64 %i.dp to ptr               ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !77
  %13 = trunc i64 %i.ds to i32
  %14 = lshr i32 %13, 12
  %15 = and i32 %14, 15
  switch i32 %15, label %rb_vm_frame_method_entry.exit [
    i32 6, label %bb.y
    i32 2, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  br label %rb_vm_frame_method_entry.exit

bb.z:                                             ; preds = %bb.x
  %i.dt = getelementptr i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !80
  %i.dv = inttoptr i64 %i.du to ptr
  br label %rb_vm_frame_method_entry.exit

rb_vm_frame_method_entry.exit:                    ; preds = %bb.v, %bb.z, %._crit_edge.i, %bb.x, %bb.y
  %.0.i111 = phi ptr [ %i.dv, %bb.z ], [ null, %bb.x ], [ null, %._crit_edge.i ], [ %i.dr, %bb.y ], [ %i.dh, %bb.v ]
  %.val99 = load ptr, ptr %i.bx, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.dw = getelementptr i8, ptr %.val99, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !264 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !527
  %i.ea = and i32 %i.dz, 16
  %.not86 = icmp eq i32 %i.ea, 0
  br i1 %.not86, label %bb.ab, label %bb.aa, !prof !72

bb.aa:                                            ; preds = %rb_vm_frame_method_entry.exit
  %i.eb = getelementptr i8, ptr %i.dx, i64 16
  %i.ec = getelementptr i8, ptr %i.da, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !74
  %i.ee = call ptr @rb_vm_frame_method_entry(ptr noundef %i.da) ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !83
  %i.eh = getelementptr i8, ptr %i.eg, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !205
  %i.ej = getelementptr i8, ptr %i.ee, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ep = load <2 x i64>, ptr %i.ej, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i32 16, ptr %8, align 8, !tbaa !528
  store ptr %0, ptr %i.ek, align 8, !tbaa !530
  store ptr %i.da, ptr %i.el, align 8, !tbaa !531
  store i64 %i.ed, ptr %i.em, align 8, !tbaa !532
  store i64 %i.ei, ptr %i.en, align 8, !tbaa !533
  store <2 x i64> %i.ep, ptr %i.eo, align 8, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i64 %.078, ptr %i.eq, align 8, !tbaa !534
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 36, ptr %i.er, align 8, !tbaa !535
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 0, ptr %i.es, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %8, ptr noundef %i.eb, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %rb_vm_frame_method_entry.exit
  %i.et = getelementptr i8, ptr %.0.i111, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !83 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !27
  %.not87 = icmp eq i32 %i.ew, 0
  br i1 %.not87, label %bb.ag, label %bb.ac, !prof !72

bb.ac:                                            ; preds = %bb.ab
  %.val = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %.not.i116 = icmp eq ptr %.val, null
  br i1 %.not.i116, label %rb_ec_ractor_ptr.exit118, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = getelementptr i8, ptr %.val, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit118

rb_ec_ractor_ptr.exit118:                         ; preds = %bb.ac, %bb.ad
  %.0.i117 = phi ptr [ %i.ey, %bb.ad ], [ null, %bb.ac ]
  %i.ez = call ptr @rb_method_def_local_hooks(ptr noundef nonnull %i.eu, ptr noundef %.0.i117, i1 noundef zeroext false) #23 ; 3 uses
  %.not88 = icmp eq ptr %i.ez, null
  br i1 %.not88, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %rb_ec_ractor_ptr.exit118
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !527
  %i.fc = and i32 %i.fb, 16
  %.not89 = icmp eq i32 %i.fc, 0
  br i1 %.not89, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = load ptr, ptr %i.f, align 8, !tbaa !70  ; 3 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !74
  %i.fg = call ptr @rb_vm_frame_method_entry(ptr noundef %i.fd) ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !83
  %i.fj = getelementptr i8, ptr %i.fi, i64 32
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !205
  %i.fl = getelementptr i8, ptr %i.fg, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.fr = load <2 x i64>, ptr %i.fl, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 16, ptr %7, align 8, !tbaa !528
  store ptr %0, ptr %i.fm, align 8, !tbaa !530
  store ptr %i.fd, ptr %i.fn, align 8, !tbaa !531
  store i64 %i.ff, ptr %i.fo, align 8, !tbaa !532
  store i64 %i.fk, ptr %i.fp, align 8, !tbaa !533
  store <2 x i64> %i.fr, ptr %i.fq, align 8, !tbaa !11
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %.078, ptr %i.fs, align 8, !tbaa !534
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 36, ptr %i.ft, align 8, !tbaa !535
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.fu, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %7, ptr noundef nonnull %i.ez, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.ag:                                            ; preds = %rb_ec_ractor_ptr.exit118, %bb.ae, %bb.af, %bb.ab
  br i1 %i.bn, label %THROW_DATA_CONSUMED_SET.exit, label %imemo_throw_data_p.exit.i119

imemo_throw_data_p.exit.i119:                     ; preds = %bb.ag
  %i.fv = load i64, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.fw = and i64 %i.fv, 31
  %i.fx = icmp eq i64 %i.fw, 26
  br i1 %i.fx, label %bb.ah, label %THROW_DATA_CONSUMED_SET.exit

bb.ah:                                            ; preds = %imemo_throw_data_p.exit.i119
  %i.fy = getelementptr i8, ptr %3, i64 32
  %.val.i120 = load i32, ptr %i.fy, align 8, !tbaa !161
  %i.fz = icmp eq i32 %.val.i120, 2
  br i1 %i.fz, label %bb.ai, label %THROW_DATA_CONSUMED_SET.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ga = or i64 %i.fv, 65536
  store i64 %i.ga, ptr %3, align 8, !tbaa !920
  br label %THROW_DATA_CONSUMED_SET.exit

rb_ec_hooks.exit124:                              ; preds = %bb.m
  %i.gb = getelementptr i8, ptr %0, i64 48
  %.val98 = load ptr, ptr %i.gb, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.gc = getelementptr i8, ptr %.val98, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !264 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 24
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !527
  %i.gg = and i32 %i.gf, 512
  %.not82 = icmp eq i32 %i.gg, 0
  br i1 %.not82, label %bb.ak, label %bb.aj, !prof !72

bb.aj:                                            ; preds = %rb_ec_hooks.exit124
  %i.gh = getelementptr i8, ptr %i.gd, i64 16
  %i.gi = getelementptr i8, ptr %i.p, i64 24
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !74
  %i.gk = tail call fastcc i64 @frame_return_value(ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 512, ptr %6, align 8, !tbaa !528
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.gl, align 8, !tbaa !530
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.p, ptr %i.gm, align 8, !tbaa !531
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.gj, ptr %i.gn, align 8, !tbaa !532
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, i8 0, i64 24, i1 false)
  store i64 %i.gk, ptr %i.gp, align 8, !tbaa !534
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 36, ptr %i.gq, align 8, !tbaa !535
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.gr, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %6, ptr noundef %i.gh, i32 noundef 1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %rb_ec_hooks.exit124
  %.not83 = icmp eq ptr %.0, null
  br i1 %.not83, label %.critedge95, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gs = getelementptr i8, ptr %.0, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !527
  %i.gu = and i32 %i.gt, 512
  %.not132 = icmp eq i32 %i.gu, 0
  br i1 %.not132, label %.critedge95, label %bb.am, !prof !72

bb.am:                                            ; preds = %bb.al
  %i.gv = load ptr, ptr %i.f, align 8, !tbaa !70  ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 24
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !74
  %i.gy = call fastcc i64 @frame_return_value(ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 512, ptr %5, align 8, !tbaa !528
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.gz, align 8, !tbaa !530
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.gv, ptr %i.ha, align 8, !tbaa !531
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.gx, ptr %i.hb, align 8, !tbaa !532
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 32
end_hunk_13
