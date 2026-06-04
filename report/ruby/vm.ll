inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@rb_vm_cref_new_toplevel:bb.a
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.e = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef 4, i64 noundef 40, i1 noundef zeroext true) #23 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.f, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %i.f, i64 32
  store i8 2, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %.val.i, i64 240
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %vm_cref_new_toplevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.e, 2
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.f, i64 8
  %.val28.i.i.i = load i64, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %i.o = icmp eq i64 %.val28.i.i.i, 4
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !24
  %i.q = or i64 %i.p, 262144
  store i64 %i.q, ptr %i.f, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not26.i.i.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  %.0.i.i.i = phi i64 [ 4, %bb.c ], [ %.val28.i.i.i, %bb.d ], [ 4, %bb.b ]
  %i.r = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i.i, i64 noundef 40, i1 noundef zeroext true) #23
  %i.s = inttoptr i64 %i.r to ptr                 ; 7 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.s, i64 24
  store ptr %i.f, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr i8, ptr %i.s, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !27
  br i1 %.not26.i.i.i, label %vm_cref_new_toplevel.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.s, align 8, !tbaa !24
  %i.x = or i64 %i.w, 262144
  store i64 %i.x, ptr %i.s, align 8, !tbaa !24
  br label %vm_cref_new_toplevel.exit

vm_cref_new_toplevel.exit:                        ; preds = %bb.a, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.f, %bb.a ], [ %i.s, %bb.e ], [ %i.s, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_block_ep_update(i64 noundef %0, ptr noundef writeonly captures(none) initializes((8, 16)) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.c = icmp eq i64 %.val, 0
  %i.d = and i64 %.val, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.val) #23
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @ruby_vm_special_exception_copy(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61
  %i.d = tail call i64 @rb_class_real(i64 noundef %i.c) #56
  %i.e = tail call i64 @rb_obj_alloc(i64 noundef %i.d) #23 ; 2 uses
  tail call void @rb_obj_copy_ivar(i64 noundef %i.e, i64 noundef %0) #23
  ret i64 %i.e
}

declare i64 @rb_obj_alloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_real(i64 noundef) local_unnamed_addr #5

declare void @rb_obj_copy_ivar(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define hidden void @rb_ec_stack_overflow(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @rb_during_gc() #56
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.1) #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 1
  br i1 %i.b, label %rb_ec_vm_ptr.exit, label %bb.d

rb_ec_vm_ptr.exit:                                ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 144
  store i8 2, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.e = getelementptr i8, ptr %.val, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = getelementptr i8, ptr %i.f, i64 552
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %0, i64 128
  store i64 %i.h, ptr %i.i, align 8, !tbaa !66
  %i.j = getelementptr i8, ptr %0, i64 24
  %.val6 = load ptr, ptr %i.j, align 8, !tbaa !67 ; 2 uses
  %i.k = getelementptr i8, ptr %.val6, i64 64
  store i32 6, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr i8, ptr %.val6, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.l)
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = xor i32 %1, 1
  tail call fastcc void @ec_stack_overflow(ptr noundef %0, i32 noundef %i.m) #58
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_during_gc() local_unnamed_addr #5

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @ec_stack_overflow(ptr noundef initializes((144, 145)) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #6 {
rb_ec_vm_ptr.exit:
  %i.a = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.b = getelementptr i8, ptr %.val, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65
  %i.d = getelementptr i8, ptr %i.c, i64 544
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 144
  store i8 2, ptr %i.f, align 8, !tbaa !63
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %rb_ec_vm_ptr.exit
  %i.g = tail call i64 @rb_ec_backtrace_object(ptr noundef nonnull %0) #23 ; 2 uses
  %i.h = inttoptr i64 %i.e to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !61
  %i.k = tail call i64 @rb_class_real(i64 noundef %i.j) #56
  %i.l = tail call i64 @rb_obj_alloc(i64 noundef %i.k) #23 ; 4 uses
  tail call void @rb_obj_copy_ivar(i64 noundef %i.l, i64 noundef %i.e) #23
  %i.m = tail call i64 @rb_ivar_set(i64 noundef %i.l, i64 noundef 3441, i64 noundef %i.g) #23 ; 0 uses
  %i.n = tail call i64 @rb_ivar_set(i64 noundef %i.l, i64 noundef 3457, i64 noundef %i.g) #23 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %rb_ec_vm_ptr.exit
  %.0 = phi i64 [ %i.l, %bb.a ], [ %i.e, %rb_ec_vm_ptr.exit ]
  %i.o = getelementptr i8, ptr %0, i64 128
  store i64 %.0, ptr %i.o, align 8, !tbaa !66
  %i.p = getelementptr i8, ptr %0, i64 24
  %.val11 = load ptr, ptr %i.p, align 8, !tbaa !67 ; 2 uses
  %i.q = getelementptr i8, ptr %.val11, i64 64
  store i32 6, ptr %i.q, align 8, !tbaa !68
  %i.r = getelementptr i8, ptr %.val11, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.r)
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef i64 @rb_vm_stack_canary() local_unnamed_addr #8 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define hidden void @rb_vm_pop_frame_no_int(ptr noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %i.b, i64 56
  store ptr %i.c, ptr %i.a, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_pop_frame(ptr noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 8
  %i.e = getelementptr i8, ptr %0, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71
  %i.g = xor i32 %i.f, -1
  %i.h = and i32 %i.d, %i.g
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %vm_pop_frame.exit, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.j = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit

vm_pop_frame.exit:                                ; preds = %bb.a, %bb.b
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
end_hunk_0
begin_hunk_1_@vm_get_ev_const:bb.a
  %spec.select.i.i85 = select i1 %i.cc, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %CREF_CLASS.exit86

.critedge3.thread175:                             ; preds = %bb.d, %CREF_CLASS.exit80.thread177, %CREF_CLASS.exit80.thread, %CREF_CLASS.exit80
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ce = getelementptr i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !74 ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 0
  %i.ch = and i64 %i.cf, 7
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = or i1 %i.cg, %i.ci
  br i1 %i.cj, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.critedge3.thread175
  %i.ck = inttoptr i64 %i.cf to ptr
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  br label %CREF_CLASS.exit86

bb.ap:                                            ; preds = %.critedge3.thread175
  switch i64 %i.cf, label %bb.as [
    i64 0, label %CREF_CLASS.exit86
    i64 4, label %bb.aq
    i64 20, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.al, %bb.ap
  br label %CREF_CLASS.exit86

bb.ar:                                            ; preds = %bb.al, %bb.ap
  br label %CREF_CLASS.exit86

bb.as:                                            ; preds = %bb.ap
  %i.cm = trunc i64 %i.cf to i1
  br i1 %i.cm, label %CREF_CLASS.exit86, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cn = and i64 %i.cf, 254
  %i.co = icmp eq i64 %i.cn, 12
  %spec.select.i = select i1 %i.co, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %CREF_CLASS.exit86

CREF_CLASS.exit86:                                ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %.thread180, %CREF_CLASS.exit80.thread
  %.156.in = phi ptr [ %i.bl, %CREF_CLASS.exit80.thread ], [ %spec.select.i.i85, %bb.an ], [ %i.bz, %.thread180 ], [ %spec.select.i, %bb.at ], [ @rb_cInteger, %bb.as ], [ @rb_cFalseClass, %bb.al ], [ @rb_cInteger, %bb.am ], [ %i.cl, %bb.ao ], [ @rb_cNilClass, %bb.aq ], [ @rb_cTrueClass, %bb.ar ], [ @rb_cFalseClass, %bb.ap ]
  %.156 = load i64, ptr %.156.in, align 8, !tbaa !11 ; 2 uses
  %.not69 = icmp eq i32 %4, 0
  br i1 %.not69, label %bb.av, label %bb.au

bb.au:                                            ; preds = %CREF_CLASS.exit86
  %i.cp = call i32 @rb_const_defined(i64 noundef %.156, i64 noundef %2) #23
  %i.cq = sext i32 %i.cp to i64
  br label %bb.az

bb.av:                                            ; preds = %CREF_CLASS.exit86
  %i.cr = call i64 @rb_const_get(i64 noundef %.156, i64 noundef %2) #23
  br label %bb.az

bb.aw:                                            ; preds = %bb.a
  %i.cs = icmp eq i64 %1, 0
  %i.ct = and i64 %1, 7
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = or i1 %i.cs, %i.cu
  br i1 %i.cv, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit4.i

rbimpl_RB_TYPE_P_fastpath.exit4.i:                ; preds = %bb.aw
  %i.cw = inttoptr i64 %1 to ptr
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !77
  %i.cy = and i64 %i.cx, 30
  %switch.i = icmp eq i64 %i.cy, 2
  br i1 %switch.i, label %vm_check_if_namespace.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit4.i, %bb.aw
  %i.cz = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cz, ptr noundef nonnull @.str.133, i64 noundef %1) #42
  unreachable

vm_check_if_namespace.exit:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit4.i
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %vm_check_if_namespace.exit
  %i.da = tail call i32 @rb_public_const_defined_from(i64 noundef %1, i64 noundef %2) #23
  %i.db = sext i32 %i.da to i64
  br label %bb.az

bb.ay:                                            ; preds = %vm_check_if_namespace.exit
  %i.dc = tail call i64 @rb_public_const_get_from(i64 noundef %1, i64 noundef %2) #23
  br label %bb.az

bb.az:                                            ; preds = %.thread91, %bb.au, %bb.av, %bb.ay, %bb.ax
  %.4 = phi i64 [ %i.dc, %bb.ay ], [ %i.db, %bb.ax ], [ %.1.ph, %.thread91 ], [ %i.cq, %bb.au ], [ %i.cr, %bb.av ]
  ret i64 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_getclassvariable(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = tail call fastcc ptr @vm_get_cref(ptr noundef readonly %.val) ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !92     ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95
  %i.f = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !97
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.d
  %i.l = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.l, label %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, label %bb.e, !prof !99

rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i: ; preds = %rb_ractor_main_p.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !92
  br label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, %bb.d
  %i.m = phi ptr [ %.pre.i, %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i ], [ %i.c, %bb.d ]
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !100
  %i.p = tail call i64 @rb_ivar_lookup(i64 noundef %i.o, i64 noundef %2, i64 noundef 36) #23
  br label %vm_getclassvariable.exit

bb.e:                                             ; preds = %rb_ractor_main_p.exit.i, %bb.c, %bb.b, %bb.a
  %i.q = tail call fastcc i64 @vm_get_cvar_base(ptr noundef %i.b, i32 noundef 1)
  %i.r = tail call fastcc i64 @update_classvariable_cache(ptr noundef %0, i64 noundef %i.q, i64 noundef %2, ptr noundef %i.b, ptr noundef nonnull %3)
  br label %vm_getclassvariable.exit

vm_getclassvariable.exit:                         ; preds = %rb_ractor_main_p.exit.thread.i, %bb.e
  %.0.i = phi i64 [ %i.p, %rb_ractor_main_p.exit.thread.i ], [ %i.r, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_setclassvariable(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = tail call fastcc ptr @vm_get_cref(ptr noundef readonly %.val) ; 3 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !92     ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95
  %i.f = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !97
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.d
  %i.l = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.l, label %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, label %bb.e, !prof !99

rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i: ; preds = %rb_ractor_main_p.exit.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !92
  br label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, %bb.d
  %i.m = phi ptr [ %.pre.i, %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i ], [ %i.c, %bb.d ]
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !100
  %i.p = tail call zeroext i1 @rb_class_ivar_set(i64 noundef %i.o, i64 noundef %2, i64 noundef %3) #23 ; 0 uses
  br label %vm_setclassvariable.exit

bb.e:                                             ; preds = %rb_ractor_main_p.exit.i, %bb.c, %bb.b, %bb.a
  %i.q = tail call fastcc i64 @vm_get_cvar_base(ptr noundef %i.b, i32 noundef 1) ; 2 uses
  tail call void @rb_cvar_set(i64 noundef %i.q, i64 noundef %2, i64 noundef %3) #23
  %i.r = tail call fastcc i64 @update_classvariable_cache(ptr noundef %0, i64 noundef %i.q, i64 noundef %2, ptr noundef %i.b, ptr noundef nonnull %4) ; 0 uses
  br label %vm_setclassvariable.exit

vm_setclassvariable.exit:                         ; preds = %rb_ractor_main_p.exit.thread.i, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_setinstancevariable(ptr noundef readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(address) %4) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @vm_setinstancevariable(i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @vm_setinstancevariable(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef captures(address) %3) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic volatile i64, ptr %3 monotonic, align 8 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.e to i32 ; 6 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.e, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16
  %i.f = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 3 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77   ; 10 uses
  %i.i = and i64 %i.h, 31
  %cond.i = icmp eq i64 %i.i, 1
  br i1 %cond.i, label %bb.d, label %vm_setivar.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %i.h, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 4 uses
  %i.l = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %i.k
  br i1 %i.l, label %bb.j, label %bb.e, !prof !72

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, -1
  br i1 %.not.i, label %vm_setivar.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = xor i32 %i.k, %.sroa.0.0.extract.trunc.i.i
  %i.n = and i32 %i.m, 264241152
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %RSHAPE_DIRECT_CHILD_P.exit.i, label %vm_setivar.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.i:                     ; preds = %bb.f
  %i.p = and i64 %i.e, 524287
  %i.q = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.r = getelementptr [40 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !106
  %i.u = and i32 %i.k, 524287
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %vm_setivar.exit.thread

bb.g:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit.i
  %i.w = getelementptr i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !109
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %bb.h, label %vm_setivar.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %i.k)
  %i.aa = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %.sroa.0.0.extract.trunc.i.i)
  %i.ab = icmp eq i16 %i.z, %i.aa
  br i1 %i.ab, label %bb.i, label %vm_setivar.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = and i64 %i.h, 4294967265
  %i.ad = shl i64 %i.e, 32
  %i.ae = or disjoint i64 %i.ac, %i.ad            ; 2 uses
  store i64 %i.ae, ptr %i.g, align 8, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.af = phi i64 [ %i.h, %bb.d ], [ %i.ae, %bb.i ]
  %i.ag = and i64 %i.af, 65536
  %.not.i.i = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.k, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  br label %ROBJECT_FIELDS.exit.i

ROBJECT_FIELDS.exit.i:                            ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.ai, %bb.k ], [ %i.ah, %bb.j ]
  %i.aj = zext i16 %i.f to i64
  %i.ak = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.aj
  store i64 %2, ptr %i.ak, align 8, !tbaa !11
  %i.al = icmp eq i64 %2, 0
  %i.am = and i64 %2, 7
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = or i1 %i.al, %i.an
  br i1 %i.ao, label %vm_setivar.exit, label %bb.l

bb.l:                                             ; preds = %ROBJECT_FIELDS.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #23
  br label %vm_setivar.exit

vm_setivar.exit:                                  ; preds = %ROBJECT_FIELDS.exit.i, %bb.l
  %i.ap = icmp eq i64 %2, 36
  br i1 %i.ap, label %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, label %bb.p, !prof !110

vm_setivar.exit.vm_setivar.exit.thread_crit_edge: ; preds = %vm_setivar.exit
  %.pre = load i64, ptr %i.g, align 8, !tbaa !77
  br label %vm_setivar.exit.thread

vm_setivar.exit.thread:                           ; preds = %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, %bb.f, %bb.e, %bb.g, %bb.h, %RSHAPE_DIRECT_CHILD_P.exit.i, %bb.c
  %i.aq = phi i64 [ %.pre, %vm_setivar.exit.vm_setivar.exit.thread_crit_edge ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.g ], [ %i.h, %bb.h ], [ %i.h, %RSHAPE_DIRECT_CHILD_P.exit.i ], [ %i.h, %bb.c ]
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 31
  switch i32 %i.as, label %bb.n [
    i32 1, label %bb.o
    i32 2, label %bb.m
    i32 3, label %bb.m
  ]

bb.m:                                             ; preds = %vm_setivar.exit.thread, %vm_setivar.exit.thread
  %i.at = tail call fastcc i64 @vm_setivar_class(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.f)
  %i.au = icmp eq i64 %i.at, 36
  br i1 %i.au, label %bb.o, label %bb.p

bb.n:                                             ; preds = %vm_setivar.exit.thread
  %i.av = tail call fastcc i64 @vm_setivar_default(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.f)
  %i.aw = icmp eq i64 %i.av, 36
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %vm_setivar.exit.thread
  %i.ax = tail call fastcc i64 @vm_setivar_slowpath_ivar(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %vm_setivar.exit, %bb.o, %bb.n, %bb.m
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_getinstancevariable(ptr noundef readnone captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef captures(address) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %vm_getivar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77   ; 3 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 31
  switch i32 %i.k, label %bb.h [
    i32 1, label %.thread
    i32 2, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit:                            ; preds = %bb.c
  %i.m = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.m, label %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, label %bb.d, !prof !91

rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge: ; preds = %rb_ractor_main_p.exit
  %.pre = load i64, ptr %i.h, align 8, !tbaa !77
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

bb.d:                                             ; preds = %rb_ractor_main_p.exit
  %i.n = tail call i64 @rb_ivar_get(i64 noundef %1, i64 noundef %2) #23
  br label %vm_getivar.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, %bb.c
  %i.o = phi i64 [ %.pre, %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge ], [ %i.i, %bb.c ]
  %i.p = and i64 %i.o, 16384
  %.not10.i.i = icmp eq i64 %i.p, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.e, !prof !110

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.q = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.r = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.f

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.s = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.t = getelementptr i8, ptr %i.r, i64 128
  %i.u = load i8, ptr %i.t, align 8, !tbaa !111, !range !114, !noundef !64
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.split7.i.i, label %bb.g

.split7.i.i:                                      ; preds = %bb.f
  %i.w = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.r)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.e, %.split.i.i, %.split7.i.i, %bb.g
  %.0.i.i = phi ptr [ %i.q, %bb.e ], [ %i.x, %bb.g ], [ %i.s, %.split.i.i ], [ %i.w, %.split7.i.i ]
  %i.y = getelementptr i8, ptr %.0.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !115
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.aa = tail call i64 @rb_obj_fields(i64 noundef %1, i64 noundef %2) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %.046.i = phi i64 [ %i.aa, %bb.h ], [ %i.z, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 2 uses
  %.not50.i = icmp eq i64 %.046.i, 0
  br i1 %.not50.i, label %vm_getivar.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.i
  %.phi.trans.insert = inttoptr i64 %.046.i to ptr ; 2 uses
  %.pre11 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %.pre-phi = phi ptr [ %.phi.trans.insert, %..thread_crit_edge ], [ %i.h, %bb.b ]
  %i.ab = phi i64 [ %.pre11, %..thread_crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  store i64 36, ptr %i.a, align 8, !tbaa !11
  %i.ac = lshr i64 %i.ab, 32                      ; 2 uses
  %i.ad = trunc nuw i64 %i.ac to i32              ; 2 uses
  %i.ae = and i32 %i.ad, -62914561                ; 2 uses
  %i.af = and i64 %i.ab, 65536
  %.not5.i = icmp eq i64 %i.af, 0
  %i.ag = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.j, !prof !72

bb.j:                                             ; preds = %.thread
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %.thread, %bb.j
  %.0.i5 = phi ptr [ %i.ah, %bb.j ], [ %i.ag, %.thread ] ; 3 uses
  %i.ai = load atomic volatile i64, ptr %3 monotonic, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ai to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.ai, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.b, align 4, !tbaa !7
  %i.aj = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 2 uses
  store i16 %i.aj, ptr %i.c, align 2, !tbaa !120
  %i.ak = icmp eq i32 %i.ae, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.ak, label %bb.k, label %bb.m, !prof !72

bb.k:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.al = icmp eq i16 %.sroa.4.0.extract.trunc.i.i, 0
  br i1 %i.al, label %vm_getivar.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = zext i16 %i.aj to i64
  %i.an = getelementptr [8 x i8], ptr %.0.i5, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.m:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.ap = and i32 %i.ad, 134217728
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.o, label %bb.n, !prof !72

bb.n:                                             ; preds = %bb.m
  %i.aq = call i32 @rb_st_lookup(ptr noundef %.0.i5, i64 noundef %2, ptr noundef nonnull %i.a) #23
  %.not53.i = icmp eq i32 %i.aq, 0
  %.pre13 = load i64, ptr %i.a, align 8
  %spec.select = select i1 %.not53.i, i64 4, i64 %.pre13
  br label %vm_getivar.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = call zeroext i1 @rb_shape_get_iv_index_with_hint(i32 noundef %i.ae, i64 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #23
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %.not52.i = icmp eq i32 %i.as, %.sroa.0.0.extract.trunc.i.i
  %.pre12 = load i16, ptr %i.c, align 2, !tbaa !120 ; 3 uses
  br i1 %.not52.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = add i16 %.pre12, 1
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.at to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.as to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store atomic volatile i64 %.sroa.0.0.insert.insert.i.i, ptr %3 monotonic, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = icmp eq i16 %.pre12, -1
  br i1 %i.au, label %vm_getivar.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = zext i16 %.pre12 to i64
  %i.aw = getelementptr [8 x i8], ptr %.0.i5, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.t:                                             ; preds = %bb.o
  %.sroa.0.0.insert.ext.i.i6 = and i64 %i.ac, 4232052735
  store atomic volatile i64 %.sroa.0.0.insert.ext.i.i6, ptr %3 monotonic, align 8
  br label %vm_getivar.exit

vm_getivar.exit:                                  ; preds = %bb.n, %bb.r, %bb.l, %bb.s, %bb.t, %bb.a, %bb.i, %bb.k, %bb.d
  %.0.i = phi i64 [ %i.n, %bb.d ], [ 4, %bb.i ], [ 4, %bb.k ], [ 4, %bb.a ], [ 4, %bb.r ], [ 4, %bb.t ], [ %i.ax, %bb.s ], [ %spec.select, %bb.n ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_throw(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_throw(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_throw(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = and i32 %i.a, 255                        ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.aj, label %bb.b
end_hunk_1
begin_hunk_2_@rb_find_defined_class_by_owner:bb.a
  %i.bo = load i64, ptr %i.bg, align 8, !tbaa !196
  %i.bp = call i32 @rb_st_lookup(ptr noundef nonnull %i.bn, i64 noundef %i.bo, ptr noundef nonnull %i.a) #23
  %.not5.i.i13.i34 = icmp eq i32 %i.bp, 0
  br i1 %.not5.i.i13.i34, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i35, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !11
  %i.br = inttoptr i64 %i.bq to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i35

RCLASS_EXT_READABLE_LOOKUP.exit17.i35:            ; preds = %bb.n, %bb.m, %RCLASS_CLASSEXT_TBL.exit.i.i11.i32, %.split7.i30
  %.0.i.i14.i36 = phi ptr [ %i.br, %bb.n ], [ null, %bb.m ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i32 ], [ null, %.split7.i30 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i37 = icmp eq ptr %.0.i.i14.i36, null
  %i.bs = getelementptr i8, ptr %i.az, i64 24
  %.0.i16.i38 = select i1 %.not.i15.i37, ptr %i.bs, ptr %.0.i.i14.i36
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bt = getelementptr i8, ptr %i.az, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %RCLASS_EXT_READABLE_LOOKUP.exit17.i35, %.split.i39, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i44
  %.0.i29 = phi ptr [ %i.bf, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i44 ], [ %i.bt, %bb.o ], [ %i.bh, %.split.i39 ], [ %.0.i16.i38, %RCLASS_EXT_READABLE_LOOKUP.exit17.i35 ]
  %i.bu = getelementptr i8, ptr %.0.i29, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !197 ; 2 uses
  %i.bw = and i64 %i.bv, -5
  %.not53 = icmp eq i64 %i.bw, 0
  br i1 %.not53, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit24.thread
  %.2 = phi i64 [ %0, %rbimpl_RB_TYPE_P_fastpath.exit24.thread ], [ %.11856, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %0, %bb.p ]
  ret i64 %.2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_READABLE(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77
  %i.d = and i64 %i.c, 65536
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit

RCLASS_PRIME_CLASSEXT_READABLE_P.exit:            ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 160      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread:     ; preds = %bb.a, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit
  %i.i = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.split, label %bb.c

.split:                                           ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !111, !range !114, !noundef !64
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7, label %bb.f

.split7:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.n = load i64, ptr %i.b, align 8, !tbaa !77
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %RCLASS_CLASSEXT_TBL.exit.i.i11

RCLASS_CLASSEXT_TBL.exit.i.i11:                   ; preds = %.split7
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !192  ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i12, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11
  %i.q = load i64, ptr %i.i, align 8, !tbaa !196
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #23
  %.not5.i.i13 = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13, label %RCLASS_EXT_READABLE_LOOKUP.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17

RCLASS_EXT_READABLE_LOOKUP.exit17:                ; preds = %.split7, %RCLASS_CLASSEXT_TBL.exit.i.i11, %bb.d, %bb.e
  %.0.i.i14 = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11 ], [ null, %.split7 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15 = icmp eq ptr %.0.i.i14, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16 = select i1 %.not.i15, ptr %i.u, ptr %.0.i.i14
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.split, %RCLASS_EXT_READABLE_LOOKUP.exit17, %bb.f, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread
  %.0 = phi ptr [ %i.h, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread ], [ %i.v, %bb.f ], [ %i.j, %.split ], [ %.0.i16, %RCLASS_EXT_READABLE_LOOKUP.exit17 ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_aliased_callable_method_entry(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @aliased_callable_method_entry(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @aliased_callable_method_entry(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !198
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %rb_obj_write.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !200
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !201
  %i.l = tail call i64 @rb_find_defined_class_by_owner(i64 noundef %i.i, i64 noundef %i.k)
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !202
  %i.o = tail call ptr @rb_method_entry_complement_defined_class(ptr noundef nonnull %i.d, i64 noundef %i.n, i64 noundef %i.l) ; 6 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !83   ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !203
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.p, i64 8
  %i.u = ptrtoint ptr %i.o to i64                 ; 3 uses
  store i64 %i.u, ptr %i.t, align 8, !tbaa !11
  %i.v = icmp eq ptr %i.o, null
  %i.w = and i64 %i.u, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rb_obj_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.z, i64 noundef %i.u) #23
  br label %rb_obj_write.exit

bb.e:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.p, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205
  %i.ac = tail call noalias nonnull dereferenceable(56) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 56) #61 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, -16
  %i.af = or disjoint i8 %i.ae, 6
  store i8 %i.af, ptr %i.ac, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !205
  %i.ah = atomicrmw volatile add ptr @method_serial, i32 1 seq_cst, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !206
  %i.ak = tail call ptr @rb_current_box() #23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !207
  tail call void @rb_method_definition_set(ptr noundef nonnull %0, ptr noundef nonnull %i.ac, ptr noundef %i.o)
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.o, %bb.e ], [ %i.o, %bb.c ], [ %i.o, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @rb_vm_cc_general(ptr noundef writeonly captures(none) initializes((24, 32)) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  store ptr @vm_call_general, ptr %i.a, align 8, !tbaa !176
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_general(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_call_method(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_yield_with_cfunc(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !208
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ %i.e, %bb.b ], [ 4, %bb.a ]
  %i.f = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 7 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 5 uses
  %i.j = getelementptr i8, ptr %i.g, i64 -56      ; 3 uses
  %i.k = getelementptr i8, ptr %i.i, i64 56
  %.not.i27.i = icmp ugt ptr %i.j, %i.k
  br i1 %.not.i27.i, label %vm_push_frame.exit.i, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit.i:                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !210
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = or i64 %i.n, 1
  %i.p = getelementptr i8, ptr %i.i, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !11
  %i.q = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr i8, ptr %i.i, i64 24
  store i64 1717960833, ptr %i.q, align 8, !tbaa !11
  store ptr null, ptr %i.j, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -48
  store ptr %i.r, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -40
  store ptr %i.c, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -32
  store i64 %i.a, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -24
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.g, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.j, ptr %i.f, align 8, !tbaa !70
  %i.s = getelementptr i8, ptr %i.c, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !211
  %i.u = getelementptr i8, ptr %i.c, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !214
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = tail call i64 %i.t(i64 noundef %.0.i, i64 noundef %i.w, i32 noundef %2, ptr noundef %3, i64 noundef 4) #23, !inline_history !215
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load atomic volatile i32, ptr %i.z monotonic, align 8
  %i.ab = getelementptr i8, ptr %0, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = xor i32 %i.ac, -1
  %i.ae = and i32 %i.aa, %i.ad
  %.not.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i, label %vm_yield_with_cfunc.exit, label %bb.e, !prof !72

bb.e:                                             ; preds = %vm_push_frame.exit.i
  %i.af = getelementptr i8, ptr %0, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ag = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_yield_with_cfunc.exit

vm_yield_with_cfunc.exit:                         ; preds = %vm_push_frame.exit.i, %bb.e
  %i.ah = getelementptr i8, ptr %i.y, i64 56
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !70
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_yield_with_cfunc(ptr noundef captures(address) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %4, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ 4, %bb.a ]
  %i.e = icmp eq i64 %6, 0
  br i1 %i.e, label %rb_vm_bh_to_procval.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i64 %6, 3
  switch i64 %i.f, label %bb.e [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = and i64 %6, 255
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %vm_block_handler_type.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = and i64 %6, 7
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %RB_SYMBOL_P.exit.i.i, label %rb_vm_bh_to_procval.exit

RB_SYMBOL_P.exit.i.i:                             ; preds = %bb.f
  %i.j = inttoptr i64 %6 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77
  %.fr10.i.i = freeze i64 %i.k
  %i.l = and i64 %.fr10.i.i, 31
  %i.m = icmp eq i64 %i.l, 20
  br i1 %i.m, label %vm_block_handler_type.exit.i, label %rb_vm_bh_to_procval.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i:          ; preds = %bb.d, %bb.d
  %i.n = and i64 %6, -4
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.q = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.o, i64 noundef %i.p, i8 noundef signext 0), !inline_history !78
  br label %rb_vm_bh_to_procval.exit

vm_block_handler_type.exit.i:                     ; preds = %RB_SYMBOL_P.exit.i.i, %bb.e
  %i.r = tail call i64 @rb_sym_to_proc(i64 noundef %6) #23
  br label %rb_vm_bh_to_procval.exit

rb_vm_bh_to_procval.exit:                         ; preds = %bb.c, %bb.f, %RB_SYMBOL_P.exit.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i, %vm_block_handler_type.exit.i
  %.0.i = phi i64 [ 4, %bb.c ], [ %i.q, %RB_SYMBOL_P.exit.thread7.fold.split.i.i ], [ %i.r, %vm_block_handler_type.exit.i ], [ %6, %bb.f ], [ %6, %RB_SYMBOL_P.exit.i.i ]
  %i.s = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 7 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73   ; 5 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -56      ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 56
  %.not.i27 = icmp ugt ptr %i.w, %i.x
  br i1 %.not.i27, label %vm_push_frame.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %rb_vm_bh_to_procval.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %rb_vm_bh_to_procval.exit
  %i.y = ptrtoint ptr %7 to i64
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !210
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, 1
  %.not26 = icmp eq i32 %5, 0
  %.not = icmp eq ptr %7, null
  %i.ad = select i1 %.not, i32 1717960833, i32 1717960897 ; 2 uses
  %i.ae = or disjoint i32 %i.ad, 1024
  %spec.select = select i1 %.not26, i32 %i.ad, i32 %i.ae
  %i.af = zext nneg i32 %spec.select to i64
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ah = getelementptr i8, ptr %i.v, i64 8
  store i64 %i.y, ptr %i.v, align 8, !tbaa !11
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
end_hunk_2
begin_hunk_3_@vm_sendish:bb.a
  br i1 %i.hb, label %bb.av, label %vm_search_method_fastpath.exit.thread.i

bb.av:                                            ; preds = %vm_search_method_fastpath.exit.i
  store ptr @vm_empty_cc_for_super, ptr %i.gt, align 8, !tbaa !182
  br label %vm_search_super_method.exit

vm_search_method_fastpath.exit.thread.i:          ; preds = %vm_search_method_fastpath.exit.i, %bb.au
  %.0.i65125.i = phi ptr [ %i.ha, %vm_search_method_fastpath.exit.i ], [ %i.gu, %bb.au ] ; 3 uses
  %.0.i65.val124.i = phi ptr [ %.0.i65.val.pre.i, %vm_search_method_fastpath.exit.i ], [ %.val66.i, %bb.au ] ; 2 uses
  %i.hc = getelementptr i8, ptr %.0.i65.val124.i, i64 24
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !202
  %.not63.i = icmp eq i64 %i.hd, %i.du
  br i1 %.not63.i, label %bb.bd, label %bb.aw

bb.aw:                                            ; preds = %vm_search_method_fastpath.exit.thread.i
  %i.he = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %i.gb, i64 noundef %i.du, ptr noundef null), !inline_history !236 ; 3 uses
  %.not.i.i85.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i85.i, label %select.unfold104.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hf = getelementptr i8, ptr %i.he, i64 16     ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !83 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not7.i.i.i, label %select.unfold104.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hh = load i8, ptr %i.hg, align 8
  %i.hi = and i8 %i.hh, 15
  %i.hj = icmp eq i8 %i.hi, 7
  br i1 %i.hj, label %select.unfold104.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hk = call i64 @rb_imemo_new(i32 noundef 11, i64 noundef %i.gb, i64 noundef 40, i1 noundef zeroext true) #23, !inline_history !236 ; 5 uses
  %i.hl = inttoptr i64 %i.hk to ptr               ; 8 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  store ptr %i.he, ptr %i.hm, align 8, !tbaa !171
  %i.hn = getelementptr i8, ptr %i.hl, i64 24
  store ptr @vm_call_super_method, ptr %i.hn, align 8, !tbaa !176
  %i.ho = load i64, ptr %i.hl, align 8, !tbaa !11 ; 3 uses
  %i.hp = or i64 %i.ho, 262144
  store i64 %i.hp, ptr %i.hl, align 8, !tbaa !11
  %i.hq = load ptr, ptr %i.hf, align 8, !tbaa !83
  %i.hr = load i8, ptr %i.hq, align 8
  %i.hs = and i8 %i.hr, 14
  %switch.i.i = icmp eq i8 %i.hs, 2
  br i1 %switch.i.i, label %bb.ba, label %vm_cc_new.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.ht = and i64 %i.ho, 1048576
  %.not.i.i.i88.i = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i88.i, label %bb.bb, label %vm_cc_attr_index_initialize.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.hu = or i64 %i.ho, 327680
  store i64 %i.hu, ptr %i.hl, align 8, !tbaa !11
  br label %vm_cc_attr_index_initialize.exit.i.i

vm_cc_attr_index_initialize.exit.i.i:             ; preds = %bb.bb, %bb.ba
  %i.hv = getelementptr i8, ptr %i.hl, i64 32
  store i64 4294967295, ptr %i.hv, align 8, !tbaa !11
  br label %vm_cc_new.exit.i

vm_cc_new.exit.i:                                 ; preds = %vm_cc_attr_index_initialize.exit.i.i, %bb.az
  %i.hw = load ptr, ptr %i.gq, align 8, !tbaa !123
  store i64 %i.hk, ptr %i.gt, align 8, !tbaa !11
  %i.hx = icmp eq i64 %i.hk, 0
  %i.hy = and i64 %i.hk, 7
  %i.hz = icmp ne i64 %i.hy, 0
  %i.ia = or i1 %i.hx, %i.hz
  br i1 %i.ia, label %vm_search_super_method.exit, label %bb.bc

bb.bc:                                            ; preds = %vm_cc_new.exit.i
  %i.ib = ptrtoint ptr %i.hw to i64
  call void @rb_gc_writebarrier(i64 noundef %i.ib, i64 noundef %i.hk) #23, !inline_history !236
  br label %vm_search_super_method.exit

select.unfold104.i:                               ; preds = %bb.ay, %bb.ax, %bb.aw
  store ptr @vm_empty_cc_for_super, ptr %i.gt, align 8, !tbaa !182
  br label %vm_search_super_method.exit

bb.bd:                                            ; preds = %vm_search_method_fastpath.exit.thread.i
  %i.ic = getelementptr i8, ptr %.0.i65.val124.i, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !83
  %i.ie = load i8, ptr %i.id, align 8
  %i.if = and i8 %i.ie, 15
  switch i8 %i.if, label %vm_search_super_method.exit [
    i8 11, label %bb.be
    i8 2, label %bb.be
    i8 3, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd, %bb.bd
  %i.ig = getelementptr i8, ptr %.0.i65125.i, i64 24
  store ptr @vm_call_super_method, ptr %i.ig, align 8, !tbaa !176
  br label %vm_search_super_method.exit

vm_search_super_method.exit:                      ; preds = %bb.ar, %bb.as, %bb.av, %vm_cc_new.exit.i, %bb.bc, %select.unfold104.i, %bb.bd, %bb.be
  %.2.i = phi ptr [ @vm_empty_cc_for_super, %select.unfold104.i ], [ %i.ha, %bb.av ], [ %.0.i65125.i, %bb.be ], [ %.0.i65125.i, %bb.bd ], [ %i.gd, %bb.as ], [ %i.gd, %bb.ar ], [ %i.hl, %vm_cc_new.exit.i ], [ %i.hl, %bb.bc ] ; 2 uses
  store ptr %.2.i, ptr %i.r, align 8, !tbaa !233
  %i.ih = getelementptr i8, ptr %.2.i, i64 24
  %.val25 = load ptr, ptr %i.ih, align 8, !tbaa !234
  %i.ii = call i64 %.val25(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #23
  br label %bb.bk

bb.bf:                                            ; preds = %vm_ci_flag.exit
  %i.ij = getelementptr i8, ptr %1, i64 32
  %.val.i31 = load ptr, ptr %i.ij, align 8, !tbaa !15 ; 3 uses
  %.val.i.i = load i64, ptr %.val.i31, align 8, !tbaa !11 ; 2 uses
  %i.ik = and i64 %.val.i.i, 2147418113           ; 2 uses
  switch i64 %i.ik, label %bb.bg [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.il = and i64 %.val.i.i, 2
  %.not5.i.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.not5.i.i.i.i, label %.lr.ph.i.i.i.i, label %VM_CF_LEP.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bg, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i ], [ %.val.i31, %bb.bg ]
  %i.im = getelementptr i8, ptr %.06.i.i.i.i, i64 -8
  %.0.val3.i.i.i.i = load i64, ptr %i.im, align 8, !tbaa !11
  %i.in = and i64 %.0.val3.i.i.i.i, -4
  %i.io = inttoptr i64 %i.in to ptr               ; 3 uses
  %.0.val.i.i.i.i = load i64, ptr %i.io, align 8, !tbaa !11 ; 2 uses
  %i.ip = and i64 %.0.val.i.i.i.i, 2
  %.not.i.i.i.i33 = icmp eq i64 %i.ip, 0
  br i1 %.not.i.i.i.i33, label %.lr.ph.i.i.i.i, label %VM_CF_LEP.exit.loopexit.i.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i.i:                      ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i = and i64 %.0.val.i.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i.i

VM_CF_LEP.exit.i.i:                               ; preds = %VM_CF_LEP.exit.loopexit.i.i, %bb.bg
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %VM_CF_LEP.exit.loopexit.i.i ], [ %i.ik, %bb.bg ]
  %.0.lcssa.i.i.i.i = phi ptr [ %i.io, %VM_CF_LEP.exit.loopexit.i.i ], [ %.val.i31, %bb.bg ]
  switch i64 %.pre-phi.i.i, label %VM_CF_BLOCK_HANDLER.exit.i [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i
  ]

VM_CF_BLOCK_HANDLER.exit.i:                       ; preds = %VM_CF_LEP.exit.i.i
  %i.iq = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 -8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !11 ; 6 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %VM_CF_BLOCK_HANDLER.exit.thread.i, label %bb.bh

VM_CF_BLOCK_HANDLER.exit.thread.i:                ; preds = %VM_CF_BLOCK_HANDLER.exit.i, %VM_CF_LEP.exit.i.i, %VM_CF_LEP.exit.i.i, %bb.bf, %bb.bf
  tail call void @rb_vm_localjump_error(ptr noundef nonnull @.str.183, i64 noundef 4, i32 noundef 0) #58, !inline_history !259
  unreachable

bb.bh:                                            ; preds = %VM_CF_BLOCK_HANDLER.exit.i
  %i.it = and i64 %i.ir, 3
  switch i64 %i.it, label %bb.bi [
    i64 1, label %vm_block_handler_type.exit.thread8.i.i
    i64 3, label %vm_invokeblock_i.exit
  ]

vm_block_handler_type.exit.thread8.i.i:           ; preds = %bb.bh
  br label %vm_invokeblock_i.exit

bb.bi:                                            ; preds = %bb.bh
  %i.iu = and i64 %i.ir, 255
  %i.iv = icmp eq i64 %i.iu, 12
  br i1 %i.iv, label %vm_block_handler_type.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iw = and i64 %i.ir, 7
  %.not.i32 = icmp eq i64 %i.iw, 0
  br i1 %.not.i32, label %RB_SYMBOL_P.exit.i.i.i, label %vm_invokeblock_i.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.bj
  %i.ix = inttoptr i64 %i.ir to ptr
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.iy
  %i.iz = and i64 %.fr10.i.i.i, 31
  %i.ja = icmp eq i64 %i.iz, 20
  br i1 %i.ja, label %vm_block_handler_type.exit.i.i, label %vm_invokeblock_i.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.bi
  br label %vm_invokeblock_i.exit

vm_invokeblock_i.exit:                            ; preds = %bb.bh, %vm_block_handler_type.exit.thread8.i.i, %bb.bj, %RB_SYMBOL_P.exit.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i7.i = phi ptr [ @vm_invoke_symbol_block, %vm_block_handler_type.exit.i.i ], [ @vm_invoke_iseq_block, %vm_block_handler_type.exit.thread8.i.i ], [ @vm_invoke_ifunc_block, %bb.bh ], [ @vm_invoke_proc_block, %bb.bj ], [ @vm_invoke_proc_block, %RB_SYMBOL_P.exit.i.i.i ]
  %i.jb = call i64 %.0.i7.i(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %i.c, i1 noundef zeroext false, i64 noundef %i.ir) #23, !callees !260, !inline_history !261
  br label %bb.bk

default.unreachable54:                            ; preds = %vm_ci_flag.exit
  unreachable

bb.bk:                                            ; preds = %vm_invokeblock_i.exit, %vm_search_super_method.exit, %vm_search_method_fastpath.exit
  %.0 = phi i64 [ %i.jb, %vm_invokeblock_i.exit ], [ %i.ba, %vm_search_method_fastpath.exit ], [ %i.ii, %vm_search_super_method.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_exec(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !68
  store i64 36, ptr %1, align 8, !tbaa !262
  %i.c = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !263
  %i.f = getelementptr i8, ptr %0, i64 48
  %.0.1.val = load ptr, ptr %i.f, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.1.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr i8, ptr %.0.1.val, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  %i.k = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.k, align 8, !tbaa !265
  %i.l = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.l, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.m = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.n, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %.0.i, ptr %i.o, align 4, !tbaa !267
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.q, align 8, !tbaa !268
  %i.r = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.r, ptr %i.p, align 8
  %i.s = tail call ptr @llvm.stacksave.p0()
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.s, ptr %i.t, align 8
  %i.u = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.p)
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.d, label %bb.ad, !prof !72

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %1, ptr %i.c, align 8, !tbaa !67
  %i.v = load i8, ptr @rb_yjit_enabled_p, align 1, !tbaa !269, !range !114, !noundef !64
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !123 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 304    ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !270 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %yjit_compile.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.ac, i64 312    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !271 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !271
  %i.aj = load i64, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  store i64 %i.ak, ptr @yjit_total_entry_hits, align 8, !tbaa !11
  %i.al = add i64 %i.ah, 21
  %i.am = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11 ; 2 uses
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.ac, i64 344
  store i64 %i.ak, ptr %i.ao, align 8, !tbaa !272
  %.pr.i.i.i = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i64 [ %.pr.i.i.i, %bb.g ], [ %i.am, %bb.f ]
  %i.aq = icmp eq i64 %i.ai, %i.ap
  br i1 %i.aq, label %bb.i, label %yjit_compile.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp ult i64 %i.ai, 20
  br i1 %i.ar, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ac, i64 344
  %i.at = load i64, ptr %i.as, align 8, !tbaa !272
  %i.au = sub i64 %i.ak, %i.at
  %i.av = load i64, ptr @rb_yjit_cold_threshold, align 8, !tbaa !11
  %.not.i.i.i = icmp ugt i64 %i.au, %i.av
  br i1 %.not.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @rb_yjit_incr_counter(ptr noundef nonnull @.str.195) #23
  br label %yjit_compile.exit.i

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.aa, ptr noundef nonnull %0, i1 noundef zeroext false) #23
  br label %yjit_compile.exit.i

yjit_compile.exit.i:                              ; preds = %bb.l, %bb.k, %bb.h
  %.pr.i = load ptr, ptr %i.ad, align 8, !tbaa !270 ; 2 uses
  %.not18.i = icmp eq ptr %.pr.i, null
  br i1 %.not18.i, label %jit_exec.exit.thread, label %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i

yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i: ; preds = %yjit_compile.exit.i
  %.pre26.i = load ptr, ptr %i.x, align 8, !tbaa !70
  br label %yjit_compile.exit.thread.i

yjit_compile.exit.thread.i:                       ; preds = %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i, %bb.e
  %i.aw = phi ptr [ %.pre26.i, %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i ], [ %i.y, %bb.e ]
  %i.ax = phi ptr [ %.pr.i, %yjit_compile.exit.yjit_compile.exit.thread_crit_edge.i ], [ %i.ae, %bb.e ]
  %i.ay = call i64 %i.ax(ptr noundef nonnull %0, ptr noundef %i.aw) #23, !inline_history !273
  br label %jit_exec.exit

bb.m:                                             ; preds = %bb.d
  %i.az = load ptr, ptr @rb_zjit_entry, align 8, !tbaa !176 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %jit_exec.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !70 ; 2 uses
  %i.bb = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.bb, align 8, !tbaa !123 ; 3 uses
  %i.bc = getelementptr i8, ptr %.val.val.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !124 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 304    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !270 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %zjit_compile.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr i8, ptr %i.bd, i64 312    ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !271
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !271
  %i.bk = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @rb_zjit_profile_enable(ptr noundef nonnull %.val.val.i) #23
  %.pre.i.i = load i64, ptr %i.bh, align 8, !tbaa !271
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bm = phi i64 [ %.pre.i.i, %bb.p ], [ %i.bj, %bb.o ]
  %i.bn = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.r, label %zjit_compile.exit.i

bb.r:                                             ; preds = %bb.q
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %.val.val.i, i1 noundef zeroext false) #23
  br label %zjit_compile.exit.i

zjit_compile.exit.i:                              ; preds = %bb.r, %bb.q
  %.pr20.i = load ptr, ptr %i.be, align 8, !tbaa !270 ; 2 uses
  %.not17.i = icmp eq ptr %.pr20.i, null
  br i1 %.not17.i, label %jit_exec.exit.thread, label %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i

zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i: ; preds = %zjit_compile.exit.i
  %.pre.i = load ptr, ptr %i.ba, align 8, !tbaa !70
  br label %zjit_compile.exit.thread.i

zjit_compile.exit.thread.i:                       ; preds = %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i, %bb.n
  %i.bp = phi ptr [ %.pre.i, %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i ], [ %.val.i, %bb.n ]
  %i.bq = phi ptr [ %.pr20.i, %zjit_compile.exit.zjit_compile.exit.thread_crit_edge.i ], [ %i.bf, %bb.n ]
  %i.br = call i64 %i.az(ptr noundef nonnull %0, ptr noundef %i.bp, ptr noundef nonnull %i.bq) #23, !inline_history !273
  br label %jit_exec.exit

jit_exec.exit:                                    ; preds = %yjit_compile.exit.thread.i, %zjit_compile.exit.thread.i
  %.3.i = phi i64 [ %i.br, %zjit_compile.exit.thread.i ], [ %i.ay, %yjit_compile.exit.thread.i ] ; 2 uses
  %i.bs = icmp eq i64 %.3.i, 36
  br i1 %i.bs, label %jit_exec.exit.thread, label %bb.s

jit_exec.exit.thread:                             ; preds = %zjit_compile.exit.i, %bb.m, %yjit_compile.exit.i, %jit_exec.exit
  %i.bt = call fastcc i64 @vm_exec_core(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %jit_exec.exit.thread, %jit_exec.exit
  %.0 = phi i64 [ %i.bt, %jit_exec.exit.thread ], [ %.3.i, %jit_exec.exit ] ; 2 uses
  %i.bu = load i32, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %vm_exec_loop.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.s
  %i.bw = getelementptr i8, ptr %0, i64 16        ; 2 uses
  br label %bb.ac

bb.t:                                             ; preds = %bb.ac
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123 ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !124 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 320    ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !274
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = load ptr, ptr @rb_zjit_entry, align 8
  %i.cg = icmp ne ptr %i.cf, null
  %or.cond.i.i = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond.i.i, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr i8, ptr %i.cb, i64 328    ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !275
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !275
  %i.ck = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.cl = icmp eq i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @rb_zjit_profile_enable(ptr noundef nonnull %i.bz) #23
  %.pre.i.i23 = load i64, ptr %i.ch, align 8, !tbaa !275
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cm = phi i64 [ %.pre.i.i23, %bb.v ], [ %i.cj, %bb.u ]
  %i.cn = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %i.bz, i1 noundef zeroext true) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.t
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !274 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  %i.cr = load i8, ptr @rb_yjit_enabled_p, align 1, !range !114
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond3.i.i = select i1 %i.cq, i1 %i.cs, i1 false
  br i1 %or.cond3.i.i, label %bb.z, label %jit_compile_exception.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ct = getelementptr i8, ptr %i.cb, i64 328    ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !275
  %i.cv = add i64 %i.cu, 1                        ; 2 uses
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !275
  %i.cw = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.aa, label %jit_exec_exception.exit.thread

bb.aa:                                            ; preds = %bb.z
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.bz, ptr noundef nonnull %0, i1 noundef zeroext true) #23
  %.pre17.i.i = load ptr, ptr %i.cc, align 8, !tbaa !274
  br label %jit_compile_exception.exit.i

jit_compile_exception.exit.i:                     ; preds = %bb.aa, %bb.y
  %i.cy = phi ptr [ %i.cp, %bb.y ], [ %.pre17.i.i, %bb.aa ] ; 2 uses
  %.not.i21 = icmp eq ptr %i.cy, null
  br i1 %.not.i21, label %jit_exec_exception.exit.thread, label %jit_exec_exception.exit

jit_exec_exception.exit:                          ; preds = %jit_compile_exception.exit.i
  %i.cz = load ptr, ptr %i.bw, align 8, !tbaa !70
  %i.da = call i64 %i.cy(ptr noundef nonnull %0, ptr noundef %i.cz) #23, !inline_history !276 ; 2 uses
  %i.db = icmp eq i64 %i.da, 36
  br i1 %i.db, label %jit_exec_exception.exit.thread, label %bb.ab

jit_exec_exception.exit.thread:                   ; preds = %bb.z, %jit_compile_exception.exit.i, %jit_exec_exception.exit
  %i.dc = call fastcc i64 @vm_exec_core(ptr noundef nonnull %0), !inline_history !277
  br label %bb.ab

bb.ab:                                            ; preds = %jit_exec_exception.exit.thread, %jit_exec_exception.exit
  %.1.i = phi i64 [ %i.dc, %jit_exec_exception.exit.thread ], [ %i.da, %jit_exec_exception.exit ] ; 2 uses
  %i.dd = load i32, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %vm_exec_loop.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph40, %bb.ab
  %i.df = phi i32 [ %i.bu, %.lr.ph40 ], [ %i.dd, %bb.ab ]
  %.2.i39 = phi i64 [ %.0, %.lr.ph40 ], [ %.1.i, %bb.ab ]
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.dg = call fastcc i64 @vm_exec_handle_exception(ptr noundef nonnull %0, i32 noundef %i.df, i64 noundef %.2.i39), !inline_history !277 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 36
  br i1 %i.dh, label %bb.t, label %vm_exec_loop.exit

bb.ad:                                            ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  %i.di = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.dj = getelementptr i8, ptr %0, i64 128
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !66
  %i.dl = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !63
  %i.dn = and i8 %i.dm, -7
  store i8 %i.dn, ptr %i.dl, align 8, !tbaa !63
  %i.do = call fastcc i64 @vm_exec_handle_exception(ptr noundef nonnull %0, i32 noundef %i.di, i64 noundef %i.dk), !inline_history !277 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 36
  br i1 %i.dp, label %.lr.ph, label %vm_exec_loop.exit

.lr.ph:                                           ; preds = %bb.ad
  %i.dq = getelementptr i8, ptr %0, i64 16        ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.an
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !70
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !123 ; 4 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !124 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 320    ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !274
  %i.dy = icmp eq ptr %i.dx, null
  %i.dz = load ptr, ptr @rb_zjit_entry, align 8
  %i.ea = icmp ne ptr %i.dz, null
  %or.cond.i.i24 = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond.i.i24, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.eb = getelementptr i8, ptr %i.dv, i64 328    ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !275
  %i.ed = add i64 %i.ec, 1                        ; 3 uses
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !275
  %i.ee = load i64, ptr @rb_zjit_profile_threshold, align 8, !tbaa !11
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @rb_zjit_profile_enable(ptr noundef nonnull %i.dt) #23
  %.pre.i.i30 = load i64, ptr %i.eb, align 8, !tbaa !275
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eg = phi i64 [ %.pre.i.i30, %bb.ag ], [ %i.ed, %bb.af ]
  %i.eh = load i64, ptr @rb_zjit_call_threshold, align 8, !tbaa !11
  %i.ei = icmp eq i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @rb_zjit_compile_iseq(ptr noundef nonnull %i.dt, i1 noundef zeroext true) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !274 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  %i.el = load i8, ptr @rb_yjit_enabled_p, align 1, !range !114
  %i.em = trunc nuw i8 %i.el to i1
  %or.cond3.i.i25 = select i1 %i.ek, i1 %i.em, i1 false
  br i1 %or.cond3.i.i25, label %bb.ak, label %jit_compile_exception.exit.i26

bb.ak:                                            ; preds = %bb.aj
  %i.en = getelementptr i8, ptr %i.dv, i64 328    ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !275
  %i.ep = add i64 %i.eo, 1                        ; 2 uses
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !275
  %i.eq = load i64, ptr @rb_yjit_call_threshold, align 8, !tbaa !11
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.al, label %jit_exec_exception.exit31.thread

bb.al:                                            ; preds = %bb.ak
  call void @rb_yjit_compile_iseq(ptr noundef nonnull %i.dt, ptr noundef nonnull %0, i1 noundef zeroext true) #23
  %.pre17.i.i29 = load ptr, ptr %i.dw, align 8, !tbaa !274
  br label %jit_compile_exception.exit.i26

jit_compile_exception.exit.i26:                   ; preds = %bb.al, %bb.aj
  %i.es = phi ptr [ %i.ej, %bb.aj ], [ %.pre17.i.i29, %bb.al ] ; 2 uses
  %.not.i27 = icmp eq ptr %i.es, null
  br i1 %.not.i27, label %jit_exec_exception.exit31.thread, label %jit_exec_exception.exit31

jit_exec_exception.exit31:                        ; preds = %jit_compile_exception.exit.i26
  %i.et = load ptr, ptr %i.dq, align 8, !tbaa !70
  %i.eu = call i64 %i.es(ptr noundef nonnull %0, ptr noundef %i.et) #23, !inline_history !276 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 36
  br i1 %i.ev, label %jit_exec_exception.exit31.thread, label %bb.am

jit_exec_exception.exit31.thread:                 ; preds = %bb.ak, %jit_compile_exception.exit.i26, %jit_exec_exception.exit31
  %i.ew = call fastcc i64 @vm_exec_core(ptr noundef nonnull %0), !inline_history !277
  br label %bb.am

bb.am:                                            ; preds = %jit_exec_exception.exit31, %jit_exec_exception.exit31.thread
  %.1.i18 = phi i64 [ %i.ew, %jit_exec_exception.exit31.thread ], [ %i.eu, %jit_exec_exception.exit31 ] ; 2 uses
  %i.ex = load i32, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %vm_exec_loop.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.ez = call fastcc i64 @vm_exec_handle_exception(ptr noundef nonnull %0, i32 noundef %i.ex, i64 noundef %.1.i18), !inline_history !277 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 36
  br i1 %i.fa, label %bb.ae, label %vm_exec_loop.exit, !llvm.loop !278

vm_exec_loop.exit:                                ; preds = %bb.an, %bb.am, %bb.ac, %bb.ab, %bb.ad, %bb.s
  %.1 = phi i64 [ %i.do, %bb.ad ], [ %.1.i, %bb.ab ], [ %.0, %bb.s ], [ %i.dg, %bb.ac ], [ %i.ez, %bb.an ], [ %.1.i18, %bb.am ]
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !263
  store ptr %i.fb, ptr %i.c, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_sendforward(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_forwarding_call_data, align 8 ; 7 uses
  %6 = alloca %struct.rb_callinfo, align 8        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !63
  %i.d = and i8 %i.c, 2
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.b, align 8, !tbaa !63
  %i.g = or i8 %i.f, 2
  store i8 %i.g, ptr %i.b, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call fastcc i64 @vm_caller_setup_fwd_args(ptr noundef %.0..0..0..0..0..0..i, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %5, ptr noundef %6)
  %i.k = load ptr, ptr %5, align 8, !tbaa !225    ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 3 uses
  %.not.i.i.i = trunc i64 %i.l to i1              ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stack_check.exit
  %i.m = trunc i64 %i.l to i32
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, 32767
  br label %vm_ci_argc.exit.i

bb.e:                                             ; preds = %stack_check.exit
  %i.p = getelementptr i8, ptr %i.k, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !174
  %i.r = trunc i64 %i.q to i32
  br label %vm_ci_argc.exit.i

vm_ci_argc.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i26.i = phi i32 [ %i.o, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73
  %i.u = sext i32 %.0.i26.i to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !226
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.j, ptr %i.aa, align 8, !tbaa !228
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !229
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.0.i26.i, ptr %i.ac, align 8, !tbaa !230
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 36
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %vm_ci_argc.exit.i
  %i.ae = trunc i64 %i.l to i32
  %i.af = lshr i32 %i.ae, 16
  br label %vm_ci_flag.exit.i

bb.g:                                             ; preds = %vm_ci_argc.exit.i
  %i.ag = getelementptr i8, ptr %i.k, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !173
  %i.ai = trunc i64 %i.ah to i32
  br label %vm_ci_flag.exit.i

vm_ci_flag.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i28.i = phi i32 [ %i.af, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = trunc i32 %.0.i28.i to i8
  %i.ak = lshr i8 %i.aj, 6
  %i.al = and i8 %i.ak, 1
  store i8 %i.al, ptr %i.ad, align 4, !tbaa !231
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.am, i8 0, i64 11, i1 false)
  %i.an = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = icmp eq i64 %i.y, 0
  %i.ar = and i64 %i.y, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vm_ci_flag.exit.i
  %i.au = inttoptr i64 %i.y to ptr
  %i.av = getelementptr i8, ptr %i.au, i64 8
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %vm_ci_flag.exit.i
  switch i64 %i.y, label %bb.l [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.l:                                             ; preds = %bb.i
  %i.aw = trunc i64 %i.y to i1
  br i1 %i.aw, label %rb_class_of.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = and i64 %i.y, 254
  %i.ay = icmp eq i64 %i.ax, 12
  %spec.select.i.i = select i1 %i.ay, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.in.i.i = phi ptr [ %i.av, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i.i, %bb.m ]
  %.0.i29.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !182 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val24.i = load i64, ptr %i.bb, align 8, !tbaa !185
  %i.bc = icmp eq i64 %.val24.i, %.0.i29.i
  br i1 %i.bc, label %bb.n, label %bb.o, !prof !72

bb.n:                                             ; preds = %rb_class_of.exit.i
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val.i = load ptr, ptr %i.bd, align 8, !tbaa !187
  %i.be = load i64, ptr %.val.i, align 8, !tbaa !170
  %i.bf = and i64 %i.be, 2097152
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %vm_sendish.exit, label %bb.o, !prof !72

bb.o:                                             ; preds = %bb.n, %rb_class_of.exit.i
  %i.bg = call fastcc ptr @vm_search_method_slowpath0(i64 noundef %i.ap, ptr noundef nonnull %5, i64 noundef %.0.i29.i), !inline_history !232
  br label %vm_sendish.exit

vm_sendish.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.bg, %bb.o ], [ %i.ba, %bb.n ] ; 2 uses
  store ptr %.0.i.i, ptr %i.z, align 8, !tbaa !233
  %i.bh = getelementptr i8, ptr %.0.i.i, i64 24
  %.0.i.val.i = load ptr, ptr %i.bh, align 8, !tbaa !234
  %i.bi = call i64 %.0.i.val.i(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #23, !inline_history !232 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bj = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !182
  %i.bl = load ptr, ptr %i.az, align 8, !tbaa !279 ; 3 uses
  %.not = icmp eq ptr %i.bk, %i.bl
  br i1 %.not, label %rb_obj_write.exit, label %bb.p

bb.p:                                             ; preds = %vm_sendish.exit
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !77
  %i.bn = and i64 %i.bm, 1048576
  %.not15 = icmp eq i64 %i.bn, 0
  br i1 %.not15, label %bb.q, label %rb_obj_write.exit

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.bp = ptrtoint ptr %i.bl to i64               ; 2 uses
  store i64 %i.bp, ptr %i.bj, align 8, !tbaa !11
  %i.bq = ptrtoint ptr %i.bo to i64
  call void @rb_gc_writebarrier(i64 noundef %i.bq, i64 noundef %i.bp) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.q, %vm_sendish.exit, %bb.p
  %i.br = icmp eq i64 %i.bi, 36
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_obj_write.exit
  %i.bs = getelementptr i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11
  %i.bx = or i64 %i.bw, 32
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !11
  %i.by = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rb_obj_write.exit
  %.0 = phi i64 [ %i.by, %bb.r ], [ %i.bi, %rb_obj_write.exit ]
end_hunk_3
begin_hunk_4_@rb_add_method_cfunc:bb.a
  store i32 %3, ptr %i.c, align 8, !tbaa !411
  call void @rb_add_method(i64 noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef nonnull %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @rb_add_method(i64 noundef %0, i64 noundef %1, i32 noundef 8, ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_add_method(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #23
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  %i.d = call fastcc ptr @rb_method_entry_make(i64 noundef %0, i64 noundef %1, i64 noundef %0, i32 noundef %4, i32 noundef %2, ptr noundef null, i64 noundef %1, ptr noundef %3) ; 0 uses
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i12 = icmp eq ptr %i.e, null
  br i1 %.not.i.i12, label %bb.c, label %rb_vm_lock_leave.exit

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #23
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  switch i32 %2, label %bb.d [
    i32 11, label %method_added.exit
    i32 7, label %method_added.exit
  ]

bb.d:                                             ; preds = %rb_vm_lock_leave.exit
  %i.f = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.g = getelementptr i8, ptr %i.f, i64 508
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 1
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %method_added.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.j = call i64 @rb_id2sym(i64 noundef %1) #23, !inline_history !412
  store i64 %i.j, ptr %i.a, align 8, !tbaa !11
  %i.k = icmp eq i64 %0, 0
  %i.l = and i64 %0, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %.split13.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.e
  %i.o = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !77
  %i.q = and i64 %i.p, 8223
  %or.cond = icmp eq i64 %i.q, 8194
  br i1 %or.cond, label %.split.i, label %.split13.i

.split13.i:                                       ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.r = call fastcc i64 @rb_funcallv_scope(i64 noundef %0, i64 noundef 2929, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !413 ; 0 uses
  br label %bb.f

.split.i:                                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.s = getelementptr i8, ptr %i.o, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27
  %i.u = call fastcc i64 @rb_funcallv_scope(i64 noundef %i.t, i64 noundef 2945, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !413 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.split.i, %.split13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %method_added.exit

method_added.exit:                                ; preds = %bb.f, %bb.d, %rb_vm_lock_leave.exit, %rb_vm_lock_leave.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_add_method_optimized(i64 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.rb_method_optimized, align 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 %2, ptr %5, align 4, !tbaa !414
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %3, ptr %i.a, align 4, !tbaa !416
  call void @rb_add_method(i64 noundef %0, i64 noundef %1, i32 noundef 9, ptr noundef nonnull %5, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_method_definition_release(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %method_definition_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = atomicrmw volatile sub ptr %i.a, i32 1 seq_cst, align 4
  switch i32 %i.b, label %method_definition_release.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ], !prof !417

bb.c:                                             ; preds = %bb.b
  tail call void @rb_assert_failure(ptr noundef nonnull @.str.4, i32 noundef 846, ptr noundef nonnull @__func__.method_definition_release, ptr noundef nonnull @.str.209) #57
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @ruby_xfree(ptr noundef nonnull %0) #23
  br label %method_definition_release.exit

method_definition_release.exit:                   ; preds = %bb.a, %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_method_entry_vm_weak_references(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !418  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 16
  %.not3 = icmp eq i8 %i.e, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %i.a, align 8, !tbaa !11
  %i.g = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.h = getelementptr i8, ptr %i.g, i64 1296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !407
  %i.j = call i32 @rb_st_delete(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef null) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_method_entry(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !217
  %i.b = and i64 %i.a, 1048576
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_zjit_cme_free(ptr noundef nonnull %0) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %method_definition_release.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = atomicrmw volatile sub ptr %i.e, i32 1 seq_cst, align 4
  switch i32 %i.f, label %method_definition_release.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ], !prof !417

bb.e:                                             ; preds = %bb.d
  tail call void @rb_assert_failure(ptr noundef nonnull @.str.4, i32 noundef 846, ptr noundef nonnull @__func__.method_definition_release, ptr noundef nonnull @.str.209) #57
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #23
  br label %method_definition_release.exit

method_definition_release.exit:                   ; preds = %bb.c, %bb.d, %bb.f
  ret void
}

declare void @rb_zjit_cme_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: norecurse nounwind sspstrong uwtable
define hidden void @rb_method_definition_addref(ptr noundef captures(address) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = atomicrmw volatile add ptr %i.a, i32 1 seq_cst, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %method_definition_addref.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8
  %i.e = or i8 %i.d, 64
  store i8 %i.e, ptr %0, align 8
  br label %method_definition_addref.exit

method_definition_addref.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_method_definition_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !418  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %method_definition_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %i.h = atomicrmw volatile sub ptr %i.g, i32 1 seq_cst, align 4
  switch i32 %i.h, label %method_definition_release.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ], !prof !417

bb.c:                                             ; preds = %bb.b
  tail call void @rb_assert_failure(ptr noundef nonnull @.str.4, i32 noundef 846, ptr noundef nonnull @__func__.method_definition_release, ptr noundef nonnull @.str.209) #57
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #23
  br label %method_definition_release.exit

method_definition_release.exit:                   ; preds = %bb.a, %bb.b, %bb.d
  %i.i = load i64, ptr %0, align 8, !tbaa !217
  %i.j = and i64 %i.i, 524288
  %i.k = icmp ne i64 %i.j, 0
  %i.l = getelementptr i8, ptr %1, i64 4
  %i.m = atomicrmw volatile add ptr %i.l, i32 1 seq_cst, align 4
  %i.n = icmp eq i32 %i.m, 0
  %or.cond.not.i = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond.not.i, label %method_definition_addref.exit, label %bb.e

bb.e:                                             ; preds = %method_definition_release.exit
  %i.o = load i8, ptr %1, align 8
  %i.p = or i8 %i.o, 64
  store i8 %i.p, ptr %1, align 8
  br label %method_definition_addref.exit

method_definition_addref.exit:                    ; preds = %method_definition_release.exit, %bb.e
  store ptr %1, ptr %i.e, align 8, !tbaa !419
  %i.q = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.r = getelementptr i8, ptr %i.q, i64 508
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.f, label %add_opt_method_entry.exit

bb.f:                                             ; preds = %method_definition_addref.exit
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !420  ; 3 uses
  %i.w = getelementptr i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !205
  %.not.i.i = icmp eq i64 %i.v, %i.x
  br i1 %.not.i.i, label %bb.g, label %add_opt_method_entry.exit

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %0, align 8, !tbaa !217
  %i.z = and i64 %i.y, 262144
  %.not5.i.i = icmp eq i64 %i.z, 0
  br i1 %.not5.i.i, label %vm_redefinition_check_method_type.exit.i, label %vm_redefinition_check_method_type.exit.thread11.i

vm_redefinition_check_method_type.exit.i:         ; preds = %bb.g
  %i.aa = load i8, ptr %1, align 8
  %i.ab = and i8 %i.aa, 15
  %i.ac = add nsw i8 %i.ab, -1
  %switch.and.i.i = and i8 %i.ac, -9
  %switch.selectcmp.i.not.i = icmp eq i8 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.not.i, label %vm_redefinition_check_method_type.exit.thread11.i, label %add_opt_method_entry.exit

vm_redefinition_check_method_type.exit.thread11.i: ; preds = %vm_redefinition_check_method_type.exit.i, %bb.g
  switch i64 %i.v, label %add_opt_method_entry.exit [
    i64 43, label %bb.al
    i64 45, label %bb.h
    i64 42, label %bb.i
    i64 47, label %bb.j
    i64 37, label %bb.k
    i64 140, label %bb.l
    i64 141, label %bb.m
    i64 60, label %bb.n
    i64 138, label %bb.o
    i64 62, label %bb.p
    i64 139, label %bb.q
    i64 136, label %bb.r
    i64 145, label %bb.s
    i64 146, label %bb.t
    i64 3025, label %bb.u
    i64 3041, label %bb.v
    i64 155, label %bb.w
    i64 3073, label %bb.x
    i64 143, label %bb.y
    i64 2801, label %bb.z
    i64 133, label %bb.aa
    i64 2753, label %bb.ab
    i64 2769, label %bb.ac
    i64 2785, label %bb.ad
    i64 3473, label %bb.ae
    i64 38, label %bb.af
    i64 124, label %bb.ag
    i64 151, label %bb.ah
    i64 135, label %bb.ai
    i64 3937, label %bb.aj
    i64 3697, label %bb.ak
  ]

bb.h:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.i:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.j:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.k:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.l:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.m:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.n:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.o:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.p:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.q:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.r:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.s:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.t:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.u:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.v:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.w:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.x:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.y:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.z:                                             ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.aa:                                            ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.ab:                                            ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.ac:                                            ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.ad:                                            ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.ae:                                            ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al

bb.af:                                            ; preds = %vm_redefinition_check_method_type.exit.thread11.i
  br label %bb.al
end_hunk_4
begin_hunk_5_@rb_method_entry_make:bb.a
  %.0.i.i14.i.i180 = phi ptr [ %i.fz, %bb.at ], [ null, %bb.as ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i176 ], [ null, %.split7.i.i174 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %.not.i15.i.i181 = icmp eq ptr %.0.i.i14.i.i180, null
  %i.ga = getelementptr i8, ptr %i.fh, i64 24
  %.0.i16.i.i182 = select i1 %.not.i15.i.i181, ptr %i.ga, ptr %.0.i.i14.i.i180
  br label %lookup_method_table.exit189

bb.au:                                            ; preds = %bb.ar
  %i.gb = getelementptr i8, ptr %i.fh, i64 24
  br label %lookup_method_table.exit189

lookup_method_table.exit189:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i188, %.split.i.i183, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i179, %bb.au
  %.0.i.i171 = phi ptr [ %i.fn, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i188 ], [ %i.gb, %bb.au ], [ %i.fp, %.split.i.i183 ], [ %.0.i16.i.i182, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i179 ]
  %i.gc = getelementptr i8, ptr %.0.i.i171, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !388
  %i.ge = call i32 @rb_id_table_lookup(ptr noundef %i.gd, i64 noundef %1, ptr noundef nonnull %i.j) #23
  %.not.i172 = icmp eq i32 %i.ge, 0
  %i.gf = load i64, ptr %i.j, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  %.not122292 = icmp eq i64 %i.gf, 0
  %.not122 = select i1 %.not.i172, i1 true, i1 %.not122292
  br i1 %.not122, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %lookup_method_table.exit189
  %i.gg = inttoptr i64 %i.gf to ptr
  call fastcc void @rb_vm_check_redefinition_opt_method(ptr noundef nonnull %i.gg, i64 noundef %spec.select)
  br label %bb.bd

bb.aw:                                            ; preds = %rb_add_refined_method_entry.exit162
  br i1 %.not.i.i163, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i208, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i191

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i191:       ; preds = %bb.aw
  %i.gh = getelementptr i8, ptr %i.ek, i64 160    ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !192
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i208, label %bb.ax

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i208: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i191, %bb.aw
  %i.gk = getelementptr i8, ptr %i.ek, i64 24
  br label %RCLASS_EXT_READABLE.exit209

bb.ax:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i191
  %i.gl = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i192 = icmp eq ptr %i.gl, null
  br i1 %.not.i192, label %.split.i203, label %bb.ay

.split.i203:                                      ; preds = %bb.ax
  %i.gm = getelementptr i8, ptr %i.ek, i64 24
  br label %RCLASS_EXT_READABLE.exit209

bb.ay:                                            ; preds = %bb.ax
  %i.gn = getelementptr i8, ptr %i.gl, i64 128
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !111, !range !114, !noundef !64
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %.split7.i194, label %bb.bb

.split7.i194:                                     ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %i.gq = load i64, ptr %i.ek, align 8, !tbaa !77
  %i.gr = and i64 %i.gq, 65536
  %.not.i.i.i10.i195 = icmp eq i64 %i.gr, 0
  br i1 %.not.i.i.i10.i195, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i199, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i196

RCLASS_CLASSEXT_TBL.exit.i.i11.i196:              ; preds = %.split7.i194
  %i.gs = load ptr, ptr %i.gh, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i197 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i12.i197, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i199, label %bb.az

bb.az:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i196
  %i.gt = load i64, ptr %i.gl, align 8, !tbaa !196
  %i.gu = call i32 @rb_st_lookup(ptr noundef nonnull %i.gs, i64 noundef %i.gt, ptr noundef nonnull %i.h) #23
  %.not5.i.i13.i198 = icmp eq i32 %i.gu, 0
  br i1 %.not5.i.i13.i198, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i199, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = load i64, ptr %i.h, align 8, !tbaa !11
  %i.gw = inttoptr i64 %i.gv to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i199

RCLASS_EXT_READABLE_LOOKUP.exit17.i199:           ; preds = %bb.ba, %bb.az, %RCLASS_CLASSEXT_TBL.exit.i.i11.i196, %.split7.i194
  %.0.i.i14.i200 = phi ptr [ %i.gw, %bb.ba ], [ null, %bb.az ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i196 ], [ null, %.split7.i194 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %.not.i15.i201 = icmp eq ptr %.0.i.i14.i200, null
  %i.gx = getelementptr i8, ptr %i.ek, i64 24
  %.0.i16.i202 = select i1 %.not.i15.i201, ptr %i.gx, ptr %.0.i.i14.i200
  br label %RCLASS_EXT_READABLE.exit209

bb.bb:                                            ; preds = %bb.ay
  %i.gy = getelementptr i8, ptr %i.ek, i64 24
  br label %RCLASS_EXT_READABLE.exit209

RCLASS_EXT_READABLE.exit209:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i208, %.split.i203, %RCLASS_EXT_READABLE_LOOKUP.exit17.i199, %bb.bb
  %.0.i193 = phi ptr [ %i.gk, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i208 ], [ %i.gy, %bb.bb ], [ %i.gm, %.split.i203 ], [ %.0.i16.i202, %RCLASS_EXT_READABLE_LOOKUP.exit17.i199 ]
  %i.gz = getelementptr i8, ptr %.0.i193, i64 96
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !406 ; 2 uses
  %.not121 = icmp eq i64 %i.ha, %spec.select
  br i1 %.not121, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %RCLASS_EXT_READABLE.exit209
  call void @rb_clear_method_cache(i64 noundef %spec.select, i64 noundef %1)
  br label %bb.bd

bb.bd:                                            ; preds = %lookup_method_table.exit189, %bb.av, %RCLASS_EXT_READABLE.exit209, %bb.bc
  %.1108 = phi i64 [ %spec.select, %RCLASS_EXT_READABLE.exit209 ], [ %i.ha, %bb.bc ], [ %spec.select, %bb.av ], [ %spec.select, %lookup_method_table.exit189 ] ; 12 uses
  %i.hb = icmp ne i64 %.1108, 0
  %i.hc = and i64 %.1108, 7
  %i.hd = icmp eq i64 %i.hc, 0
  %.not5.i.i.i = and i1 %i.hb, %i.hd
  br i1 %.not5.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i:          ; preds = %bb.bd
  %i.he = inttoptr i64 %.1108 to ptr              ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !77
  %i.hg = and i64 %i.hf, 16384
  %.not10.i = icmp eq i64 %i.hg, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %bb.be, !prof !110

bb.be:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i
  %i.hh = getelementptr i8, ptr %i.he, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i, %bb.bd
  %i.hi = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i210 = icmp eq ptr %i.hi, null
  br i1 %.not.i210, label %.split.i213, label %bb.bf

.split.i213:                                      ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.hj = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %.1108, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit

bb.bf:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.hk = getelementptr i8, ptr %i.hi, i64 128
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !111, !range !114, !noundef !64
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %.split7.i212, label %bb.bg

.split7.i212:                                     ; preds = %bb.bf
  %i.hn = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %.1108, ptr noundef nonnull %i.hi)
  br label %RCLASS_EXT_WRITABLE.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ho = inttoptr i64 %.1108 to ptr
  %i.hp = getelementptr i8, ptr %i.ho, i64 24
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %bb.be, %.split.i213, %.split7.i212, %bb.bg
  %.0.i211 = phi ptr [ %i.hh, %bb.be ], [ %i.hp, %bb.bg ], [ %i.hj, %.split.i213 ], [ %i.hn, %.split7.i212 ]
  %i.hq = getelementptr i8, ptr %.0.i211, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !388 ; 2 uses
  %i.hs = call i32 @rb_id_table_lookup(ptr noundef %i.hr, i64 noundef %1, ptr noundef nonnull %i.p) #23
  %.not123 = icmp eq i32 %i.hs, 0
  br i1 %.not123, label %bb.br, label %bb.bh

bb.bh:                                            ; preds = %RCLASS_EXT_WRITABLE.exit
  %i.ht = load i64, ptr %i.p, align 8, !tbaa !11
  %i.hu = inttoptr i64 %i.ht to ptr               ; 3 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !418 ; 5 uses
  %i.hx = call i32 @rb_method_definition_eq(ptr noundef %i.hw, ptr noundef %5)
  %.not124 = icmp eq i32 %i.hx, 0
  br i1 %.not124, label %bb.bi, label %.critedge133

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @rb_vm_check_redefinition_opt_method(ptr noundef nonnull %i.hu, i64 noundef %.1108)
  %i.hy = load i8, ptr %i.hw, align 8             ; 3 uses
  %i.hz = and i8 %i.hy, 15                        ; 2 uses
  %i.ia = icmp eq i8 %i.hz, 11                    ; 3 uses
  %i.ib = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i214, label %bb.bj, label %rb_ruby_verbose_ptr.exit

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ic = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !28
  store volatile ptr %i.id, ptr %i.g, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.g, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ie = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.ie, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.if = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !264
  br label %rb_ruby_verbose_ptr.exit

rb_ruby_verbose_ptr.exit:                         ; preds = %bb.bi, %bb.bj
  %.0.i.i.i = phi ptr [ %i.ib, %bb.bi ], [ %i.ig, %bb.bj ]
  %i.ih = getelementptr i8, ptr %.0.i.i.i, i64 432
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !11
  %i.ij = and i64 %i.ii, -5
  %i.ik = icmp ne i64 %i.ij, 0
  %i.il = icmp ne i32 %4, 7
  %or.cond5 = and i1 %i.il, %i.ik
  %i.im = and i8 %i.hy, 64
  %i.in = icmp eq i8 %i.im, 0
  %or.cond317 = select i1 %or.cond5, i1 %i.in, i1 false
  br i1 %or.cond317, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %rb_ruby_verbose_ptr.exit
  %i.io = and i8 %i.hy, 32
  %i.ip = icmp ne i8 %i.io, 0
  %or.cond7 = or i1 %i.ip, %i.ia
  br i1 %or.cond7, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  switch i8 %i.hz, label %.thread283 [
    i8 7, label %bb.br
    i8 5, label %bb.br
    i8 6, label %bb.br
    i8 0, label %bb.bm
    i8 4, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.iq = getelementptr i8, ptr %i.hw, i64 8
  %.val = load ptr, ptr %i.iq, align 8, !tbaa !27
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.ir = getelementptr i8, ptr %i.hw, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !27
  %i.it = call ptr @rb_proc_get_iseq(i64 noundef %i.is, ptr noundef null) #23
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0 = phi ptr [ %i.it, %bb.bn ], [ %.val, %bb.bm ] ; 3 uses
  %.not128 = icmp eq ptr %.0, null
  br i1 %.not128, label %.thread283, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iu = call i64 @rb_id2str(i64 noundef %1) #23
  %i.iv = call i64 @rb_iseq_path(ptr noundef nonnull %.0) #23
  %i.iw = inttoptr i64 %i.iv to ptr               ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !77
  %i.iy = and i64 %i.ix, 8192
  %.not.i216 = icmp eq i64 %i.iy, 0
  %i.iz = getelementptr i8, ptr %i.iw, i64 24     ; 2 uses
  br i1 %.not.i216, label %RSTRING_PTR.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !27
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.bp, %bb.bq
  %i.jb = phi ptr [ %i.ja, %bb.bq ], [ %i.iz, %bb.bp ]
  %i.jc = getelementptr i8, ptr %.0, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !124
  %i.je = getelementptr i8, ptr %i.jd, i64 88
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !433
  %i.jg = getelementptr i8, ptr %i.hw, i64 32
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !205
  %i.ji = call i64 @rb_id2str(i64 noundef %i.jh) #23
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.214, i64 noundef %i.iu, ptr noundef %i.jb, i32 noundef %i.jf, i64 noundef %i.ji) #23
  br label %bb.br

.thread283:                                       ; preds = %bb.bl, %bb.bo
  %i.jj = call i64 @rb_id2str(i64 noundef %1) #23
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.215, i64 noundef %i.jj) #23
  br label %bb.br

bb.br:                                            ; preds = %RSTRING_PTR.exit, %.thread283, %bb.bl, %bb.bl, %bb.bl, %bb.bk, %rb_ruby_verbose_ptr.exit, %RCLASS_EXT_WRITABLE.exit
  %.2.shrunk = phi i1 [ false, %RCLASS_EXT_WRITABLE.exit ], [ %i.ia, %rb_ruby_verbose_ptr.exit ], [ false, %RSTRING_PTR.exit ], [ %i.ia, %bb.bk ], [ false, %bb.bl ], [ false, %bb.bl ], [ false, %bb.bl ], [ false, %.thread283 ]
  %i.jk = inttoptr i64 %2 to ptr
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !77
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = and i32 %i.jm, 31
  switch i32 %i.jn, label %bb.bt [
    i32 2, label %rb_method_entry_create.exit
    i32 3, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  br label %rb_method_entry_create.exit

bb.bt:                                            ; preds = %bb.br
  %i.jo = call ptr @rb_obj_info(i64 noundef %2) #23
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.212, ptr noundef %i.jo) #57
  unreachable

rb_method_entry_create.exit:                      ; preds = %bb.br, %bb.bs
  %.0.i.i217 = phi i64 [ 0, %bb.bs ], [ %2, %bb.br ]
  %i.jp = call i64 @rb_imemo_new(i32 noundef 6, i64 noundef %.0.i.i217, i64 noundef 40, i1 noundef zeroext true) #23
  %i.jq = inttoptr i64 %i.jp to ptr               ; 13 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 16
  store ptr null, ptr %i.jr, align 8, !tbaa !419
  %i.js = getelementptr i8, ptr %i.jq, i64 24
  store i64 %1, ptr %i.js, align 8, !tbaa !420
  %i.jt = getelementptr i8, ptr %i.jq, i64 32
  store i64 %2, ptr %i.jt, align 8, !tbaa !201
  %i.ju = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !239
  %i.jv = getelementptr i8, ptr %i.ju, i64 508
  %i.jw = load i8, ptr %i.jv, align 4
  %i.jx = and i8 %i.jw, 1
  %i.jy = xor i8 %i.jx, 1
  %i.jz = zext nneg i8 %i.jy to i32
  %i.ka = load i64, ptr %i.jq, align 8, !tbaa !217
  %i.kb = and i64 %i.ka, -458753
  %i.kc = shl i32 %.0109277, 16
  %i.kd = shl nuw nsw i32 %i.jz, 18
  %i.ke = or i32 %i.kd, %i.kc
  %i.kf = zext i32 %i.ke to i64
  %i.kg = or i64 %i.kb, %i.kf
  store i64 %i.kg, ptr %i.jq, align 8, !tbaa !217
  %i.kh = icmp eq ptr %5, null
  br i1 %i.kh, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %rb_method_entry_create.exit
  %i.ki = call noalias nonnull dereferenceable(56) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 56) #61 ; 6 uses
  %i.kj = trunc i32 %4 to i8
  %i.kk = load i8, ptr %i.ki, align 8
  %i.kl = and i8 %i.kj, 15
  %i.km = and i8 %i.kk, -16
  %i.kn = or disjoint i8 %i.km, %i.kl
  store i8 %i.kn, ptr %i.ki, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  store i64 %6, ptr %i.ko, align 8, !tbaa !205
  %i.kp = atomicrmw volatile add ptr @method_serial, i32 1 seq_cst, align 4
  %i.kq = zext i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !206
  %i.ks = call ptr @rb_current_box() #23
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  store ptr %i.ks, ptr %i.kt, align 8, !tbaa !207
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %rb_method_entry_create.exit
  %.0110 = phi ptr [ %i.ki, %bb.bu ], [ %5, %rb_method_entry_create.exit ]
  call void @rb_method_definition_set(ptr noundef nonnull %i.jq, ptr noundef nonnull %.0110, ptr noundef %7)
  call void @rb_clear_method_cache(i64 noundef %.1108, i64 noundef %1)
  %i.ku = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.kv = icmp eq i64 %.1108, %i.ku
  br i1 %i.kv, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  switch i64 %1, label %bb.by [
    i64 3185, label %bb.bx
    i64 158, label %bb.bx
    i64 2913, label %bb.bx
    i64 157, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %i.kw = call ptr @rb_id2name(i64 noundef %1) #23
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.216, ptr noundef %i.kw) #63
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.bv
  %i.kx = and i64 %1, -17
  %or.cond9 = icmp eq i64 %i.kx, 2849
  %i.ky = icmp eq i64 %1, 3153
  %or.cond11 = or i1 %i.ky, %or.cond9
  %i.kz = icmp ne i32 %4, 1
  %or.cond13 = and i1 %or.cond11, %i.kz
  br i1 %or.cond13, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.la = call fastcc ptr @search_method0(i64 noundef %.1108, i64 noundef %1, ptr noundef null, i1 noundef zeroext false)
  %.not129 = icmp eq ptr %i.la, null
  br i1 %.not129, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lb = call ptr @rb_id2name(i64 noundef %1) #23
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.217, ptr noundef %i.lb) #63
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %bb.by
  br i1 %.2.shrunk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @make_method_entry_refined(ptr noundef nonnull %i.jq)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @rb_method_table_insert(i64 noundef %.1108, ptr noundef %i.hr, i64 noundef %1, ptr noundef nonnull %i.jq)
  br i1 %i.v, label %.critedge133, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.cd
  %i.lc = inttoptr i64 %spec.select to ptr
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !77
  %i.le = and i64 %i.ld, 31
  %i.lf = icmp eq i64 %i.le, 3
  br i1 %i.lf, label %bb.ce, label %.critedge133

bb.ce:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.lg = load ptr, ptr @vm_opt_mid_table, align 8, !tbaa !421 ; 2 uses
  %.not.i.i218 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i218, label %.critedge133, label %rb_vm_check_optimizable_mid.exit.i

rb_vm_check_optimizable_mid.exit.i:               ; preds = %bb.ce
  %i.lh = call i32 @rb_st_lookup(ptr noundef nonnull %i.lg, i64 noundef %1, ptr noundef null) #23
  %.not.i219 = icmp eq i32 %i.lh, 0
  br i1 %.not.i219, label %.critedge133, label %bb.cf

bb.cf:                                            ; preds = %rb_vm_check_optimizable_mid.exit.i
  call void @check_override_opt_method_i(i64 noundef %.1108, i64 noundef %1)
  br label %.critedge133

.critedge133:                                     ; preds = %bb.cd, %bb.cf, %rb_vm_check_optimizable_mid.exit.i, %bb.ce, %bb.bh, %rbimpl_RB_TYPE_P_fastpath.exit
  %.1 = phi ptr [ %i.jq, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.hu, %bb.bh ], [ %i.jq, %bb.cf ], [ %i.jq, %bb.ce ], [ %i.jq, %rb_vm_check_optimizable_mid.exit.i ], [ %i.jq, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  ret ptr %.1
}
end_hunk_5
begin_hunk_6_@rb_yield_block:bb.a
VM_CF_LEP.exit.i.i.i:                             ; preds = %VM_CF_LEP.exit.loopexit.i.i.i, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %i.g, %bb.b ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.k, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %.val.val.i, %bb.b ]
  switch i64 %.pre-phi.i.i.i, label %VM_CF_BLOCK_HANDLER.exit.i.i [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i
  ]

VM_CF_BLOCK_HANDLER.exit.i.i:                     ; preds = %VM_CF_LEP.exit.i.i.i
  %i.m = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %VM_CF_BLOCK_HANDLER.exit.thread.i.i, label %vm_yield_with_block.exit, !prof !110

VM_CF_BLOCK_HANDLER.exit.thread.i.i:              ; preds = %VM_CF_BLOCK_HANDLER.exit.i.i, %VM_CF_LEP.exit.i.i.i, %VM_CF_LEP.exit.i.i.i, %bb.a, %bb.a
  tail call void @rb_vm_localjump_error(ptr noundef nonnull @.str.253, i64 noundef 4, i32 noundef 0) #58
  unreachable

vm_yield_with_block.exit:                         ; preds = %VM_CF_BLOCK_HANDLER.exit.i.i
  %i.p = icmp eq i64 %4, 4
  %i.q = select i1 %i.p, i64 0, i64 %4
  %i.r = tail call fastcc i64 @invoke_block_from_c_bh(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %i.n, i32 noundef %2, ptr noundef %3, i32 noundef %i.d, i64 noundef %i.q, ptr noundef null, i32 noundef 0, i32 noundef 0)
  ret i64 %i.r
}

declare i32 @rb_keyword_given_p() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_iterate(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %rb_iterate_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %3 to ptr
  %i.c = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef 0, i32 noundef -1) #23
  br label %rb_iterate_internal.exit

rb_iterate_internal.exit:                         ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = tail call fastcc i64 @rb_iterate0(ptr noundef readonly %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_block_call(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %0, ptr %6, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !488
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %rb_block_call_kw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %5 to ptr
  %i.g = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.f, i32 noundef 0, i32 noundef -1) #23
  br label %rb_block_call_kw.exit

rb_block_call_kw.exit:                            ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = ptrtoint ptr %6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_block_call_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %0, ptr %7, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %6, ptr %i.e, align 8, !tbaa !488
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %rb_iterate_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %5 to ptr
  %i.g = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.f, i32 noundef 0, i32 noundef -1) #23
  br label %rb_iterate_internal.exit

rb_iterate_internal.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iterate_method(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !483
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !485
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !486
  %i.h = getelementptr i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !488
  %.not = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not, i32 1, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  store volatile ptr %i.n, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !74
  %i.s = tail call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.c, i64 noundef %i.e, i32 noundef %i.g, ptr noundef %i.i, i32 noundef range(i32 0, 5) %i.l, i64 noundef %i.r)
  ret i64 %i.s
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_block_call2(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 %0, ptr %7, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !487
  %i.e = trunc i64 %6 to i32
  %i.f = and i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.f, ptr %i.g, align 8, !tbaa !488
  %i.h = inttoptr i64 %5 to ptr
  %i.i = tail call ptr @rb_vm_ifunc_new(ptr noundef %4, ptr noundef %i.h, i32 noundef 0, i32 noundef -1) #23 ; 3 uses
  %i.j = and i64 %6, 2
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !489
  %i.l = or i64 %i.k, 65536
  store i64 %i.l, ptr %i.i, align 8, !tbaa !489
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = ptrtoint ptr %7 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.m, ptr noundef %i.i, ptr noundef %.0..0..0..0..0..0..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_iterate0(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i64 4, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %3, i64 16         ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.e, align 8, !tbaa !68
  store i64 36, ptr %4, align 8, !tbaa !262
  %i.f = getelementptr i8, ptr %3, i64 24         ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !263
  %i.i = getelementptr i8, ptr %3, i64 48         ; 2 uses
  %.0.8.val = load ptr, ptr %i.i, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.8.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.0.8.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr i8, ptr %.0.8.val, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %i.n = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.n, align 8, !tbaa !265
  %i.o = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.o, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.p = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i, ptr %i.r, align 4, !tbaa !267
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.t, ptr %i.s, align 8
  %i.u = tail call ptr @llvm.stacksave.p0()
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.u, ptr %i.v, align 8
  %i.w = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.s)
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.thread, label %bb.d, !prof !72

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.f, align 8, !tbaa !67
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.f, label %bb.e

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.9 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.x = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.9) ; 2 uses
  switch i32 %i.x, label %bb.p [
    i32 2, label %bb.i
    i32 4, label %bb.i
  ]

bb.e:                                             ; preds = %.thread
  %i.y = getelementptr i8, ptr %i.d, i64 24
  %i.z = getelementptr i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.z, align 8, !tbaa !27
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = or i64 %i.aa, 3
  br label %VM_CF_BLOCK_HANDLER.exit

bb.f:                                             ; preds = %.thread
  %i.ac = getelementptr i8, ptr %i.d, i64 32
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 3 uses
  %.val.i = load i64, ptr %.val, align 8, !tbaa !11 ; 2 uses
  %i.ad = and i64 %.val.i, 2147418113             ; 2 uses
  switch i64 %i.ad, label %bb.g [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = and i64 %.val.i, 2
  %.not5.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.val, %bb.g ]
  %i.af = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ag = and i64 %.0.val3.i.i.i, -4
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.ai = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.loopexit.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i:                        ; preds = %.lr.ph.i.i.i
  %.pre.i = and i64 %.0.val.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i

VM_CF_LEP.exit.i:                                 ; preds = %VM_CF_LEP.exit.loopexit.i, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %VM_CF_LEP.exit.loopexit.i ], [ %i.ad, %bb.g ]
  %.0.lcssa.i.i.i = phi ptr [ %i.ah, %VM_CF_LEP.exit.loopexit.i ], [ %.val, %bb.g ]
  switch i64 %.pre-phi.i, label %bb.h [
    i64 1145307137, label %VM_CF_BLOCK_HANDLER.exit
    i64 858980353, label %VM_CF_BLOCK_HANDLER.exit
  ]

bb.h:                                             ; preds = %VM_CF_LEP.exit.i
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  br label %VM_CF_BLOCK_HANDLER.exit

VM_CF_BLOCK_HANDLER.exit:                         ; preds = %bb.h, %VM_CF_LEP.exit.i, %VM_CF_LEP.exit.i, %bb.f, %bb.f, %bb.e
  %.036 = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.f ], [ %i.ak, %bb.h ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %VM_CF_LEP.exit.i ], [ 0, %bb.f ]
  %i.al = getelementptr i8, ptr %3, i64 136
  store i64 %.036, ptr %i.al, align 8, !tbaa !441
  %i.am = call i64 %0(i64 noundef %1) #23
  br label %bb.q

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.an = getelementptr i8, ptr %3, i64 128       ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !66
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %.val44 = load ptr, ptr %i.aq, align 8, !tbaa !490
  %i.ar = icmp eq ptr %i.d, %.val44
  br i1 %i.ar, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !70  ; 2 uses
  %.not5.i = icmp eq ptr %i.as, %i.d
  br i1 %.not5.i, label %rb_vm_rewind_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.at = getelementptr i8, ptr %3, i64 32
  %i.au = getelementptr i8, ptr %3, i64 36
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %i.av = phi ptr [ %i.as, %.lr.ph.i ], [ %i.be, %bb.o ] ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  %.val.i47 = load ptr, ptr %i.aw, align 8, !tbaa !15
  %.val.val.i = load i64, ptr %.val.i47, align 8, !tbaa !11
  %i.ax = and i64 %.val.val.i, 2147418113
  %.not4.i = icmp eq i64 %i.ax, 1431633921
  br i1 %.not4.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load atomic volatile i32, ptr %i.at monotonic, align 8
  %i.az = load i32, ptr %i.au, align 4, !tbaa !71
  %i.ba = xor i32 %i.az, -1
  %i.bb = and i32 %i.ay, %i.ba
  %.not.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i, label %rb_vm_pop_frame.exit.i, label %bb.m, !prof !72

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.bc = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i

rb_vm_pop_frame.exit.i:                           ; preds = %bb.m, %bb.l
  %i.bd = getelementptr i8, ptr %i.av, i64 56     ; 2 uses
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !70
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @rb_vm_pop_cfunc_frame()
  %.pre.i48 = load ptr, ptr %i.c, align 8, !tbaa !70
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %rb_vm_pop_frame.exit.i
  %i.be = phi ptr [ %.pre.i48, %bb.n ], [ %i.bd, %rb_vm_pop_frame.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.d
  br i1 %.not.i, label %rb_vm_rewind_cfp.exit, label %bb.k, !llvm.loop !491

rb_vm_rewind_cfp.exit:                            ; preds = %bb.o, %bb.j
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.bg = getelementptr i8, ptr %i.bf, i64 64
  store i32 0, ptr %i.bg, align 8, !tbaa !68
  store i64 4, ptr %i.an, align 8, !tbaa !66
  %i.bh = getelementptr i8, ptr %i.ap, i64 16
  %.val45 = load i64, ptr %i.bh, align 8, !tbaa !492
  br label %bb.q

bb.p:                                             ; preds = %bb.i, %bb.d
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !263 ; 3 uses
  store ptr %i.bi, ptr %i.f, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bj = getelementptr i8, ptr %i.bi, i64 64
  store i32 %i.x, ptr %i.bj, align 8, !tbaa !68
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.bk)
  unreachable

bb.q:                                             ; preds = %VM_CF_BLOCK_HANDLER.exit, %rb_vm_rewind_cfp.exit
  %.sink = phi i64 [ %i.am, %VM_CF_BLOCK_HANDLER.exit ], [ %.val45, %rb_vm_rewind_cfp.exit ]
  store volatile i64 %.sink, ptr %i.a, align 8, !tbaa !11
  %5 = load ptr, ptr %i.h, align 8, !tbaa !263
  store ptr %5, ptr %i.f, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.0..0..0..0.16 = load volatile i64, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.0..0..0..0.16
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_lambda_call(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.59) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  store i64 %0, ptr %8, align 8, !tbaa !483
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %i.c, align 8, !tbaa !485
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %2, ptr %i.d, align 8, !tbaa !486
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %3, ptr %i.e, align 8, !tbaa !487
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !488
  %i.g = inttoptr i64 %7 to ptr
  %i.h = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.g, i32 noundef %5, i32 noundef %6) #23
  %i.i = ptrtoint ptr %8 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret i64 %i.l
}

declare ptr @rb_vm_ifunc_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_check_block_call(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.iter_method_arg, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 %0, ptr %6, align 8, !tbaa !483
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !485
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %2, ptr %i.c, align 8, !tbaa !486
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !488
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %rb_iterate_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %5 to ptr
  %i.g = tail call ptr @rb_vm_ifunc_new(ptr noundef nonnull %4, ptr noundef %i.f, i32 noundef 0, i32 noundef -1) #23
  br label %rb_iterate_internal.exit

rb_iterate_internal.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = ptrtoint ptr %6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  store volatile ptr %i.k, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call fastcc i64 @rb_iterate0(ptr noundef nonnull @iterate_check_method, i64 noundef %i.i, ptr noundef %i.h, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iterate_check_method(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !483
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !485
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !486
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !487
  %i.i = tail call fastcc i64 @rb_check_funcall_default_kw(i64 noundef %i.b, i64 noundef %i.d, i32 noundef %i.f, ptr noundef %i.h, i64 noundef 36, i32 noundef 0), !inline_history !493
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_each(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = tail call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef 3089, i32 noundef 0, ptr noundef null, i32 noundef 1, i64 noundef %i.g)
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_f_eval(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.d = icmp slt i32 %0, 1
  br i1 %i.d, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.e, ptr %i.b, align 8, !tbaa !11
  %.not38 = icmp eq i32 %0, 1
  br i1 %.not38, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.h = phi i64 [ %i.g, %bb.b ], [ 4, %.preheader ] ; 4 uses
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  %i.i = icmp samesign ult i32 %.286.i, %0
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 4, ptr %i.c, align 8, !tbaa !11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %.286.i to i64
  %i.k = getelementptr [8 x i8], ptr %1, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  store i64 %i.l, ptr %i.c, align 8, !tbaa !11
  %i.m = add nuw nsw i32 %.286.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.286.i.1 = phi i32 [ %i.m, %bb.e ], [ %.286.i, %bb.d ] ; 4 uses
  %i.n = icmp samesign ult i32 %.286.i.1, %0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %.286.i.1 to i64
  %i.p = getelementptr [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = add nuw nsw i32 %.286.i.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = phi i64 [ %i.q, %bb.g ], [ 4, %bb.f ]    ; 3 uses
  %.286.i.2 = phi i32 [ %i.r, %bb.g ], [ %.286.i.1, %bb.f ]
  %i.t = icmp eq i32 %.286.i.2, %0
  br i1 %i.t, label %rb_scan_args_set.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 4) #58
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.h
  %i.u = call i64 @rb_string_value(ptr noundef nonnull %i.b) #23 ; 0 uses
  %i.v = icmp samesign ugt i32 %0, 2
  br i1 %i.v, label %bb.j, label %.thread

bb.j:                                             ; preds = %rb_scan_args_set.exit
  %i.w = call i64 @rb_string_value(ptr noundef nonnull %i.c) #23 ; 0 uses
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = trunc i64 %i.s to i1
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = call i64 @rb_fix2int(i64 noundef %i.s) #23
  br label %rb_num2int_inline.exit

bb.m:                                             ; preds = %bb.k
  %i.z = call i64 @rb_num2int(i64 noundef %i.s) #23
  br label %rb_num2int_inline.exit
end_hunk_6
begin_hunk_7_@rb_eval_string_wrap:bb.a
  %i.j = load <2 x i64>, ptr %i.f, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = tail call i64 @rb_module_new() #23
  store i64 %i.k, ptr %i.g, align 8, !tbaa !41
  %i.l = tail call ptr @rb_current_box() #23
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !448
  %i.o = tail call i64 @rb_obj_clone(i64 noundef %i.n) #23 ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !tbaa !503
  %i.p = load i64, ptr %i.g, align 8, !tbaa !41
  tail call void @rb_extend_object(i64 noundef %i.o, i64 noundef %i.p) #23
  %i.q = load <2 x i64>, ptr %i.f, align 8, !tbaa !11
  store <2 x i64> %i.q, ptr %2, align 16, !tbaa !11
  store ptr %0, ptr %i.h, align 16, !tbaa !504
  %i.r = call i64 @rb_protect(ptr noundef nonnull @eval_string_wrap_protect, i64 noundef %i.i, ptr noundef nonnull %i.b) #23
  store <2 x i64> %i.j, ptr %i.f, align 8, !tbaa !11
  %.not = icmp eq ptr %1, null
  %i.s = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.s, ptr %1, align 4, !tbaa !7
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i32 %i.s, 0
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %.val.i, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !506
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val = load ptr, ptr %i.v, align 8, !tbaa !67  ; 2 uses
  %i.w = getelementptr i8, ptr %.val, i64 64
  store i32 %i.s, ptr %i.w, align 8, !tbaa !68
  %i.x = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.x)
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.r
}

declare i64 @rb_module_new() local_unnamed_addr #4

declare i64 @rb_obj_clone(i64 noundef) local_unnamed_addr #4

declare void @rb_extend_object(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @eval_string_wrap_protect(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.e = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef 4, i64 noundef 40, i1 noundef zeroext true) #23 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.f, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %i.f, i64 32
  store i8 2, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i.i = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %.val.i.i, i64 240
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %rb_vm_cref_new_toplevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.e, 2
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.f, i64 8
  %.val28.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %i.o = icmp eq i64 %.val28.i.i.i.i, 4
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.f, align 8, !tbaa !24
  %i.q = or i64 %i.p, 262144
  store i64 %i.q, ptr %i.f, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not26.i.i.i.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  %.0.i.i.i.i = phi i64 [ 4, %bb.c ], [ %.val28.i.i.i.i, %bb.d ], [ 4, %bb.b ]
  %i.r = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i.i.i, i64 noundef 40, i1 noundef zeroext true) #23
  %i.s = inttoptr i64 %i.r to ptr                 ; 7 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.s, i64 24
  store ptr %i.f, ptr %i.u, align 8, !tbaa !20
  %i.v = getelementptr i8, ptr %i.s, i64 32
  store i8 2, ptr %i.v, align 8, !tbaa !27
  br i1 %.not26.i.i.i.i, label %rb_vm_cref_new_toplevel.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.s, align 8, !tbaa !24
  %i.x = or i64 %i.w, 262144
  store i64 %i.x, ptr %i.s, align 8, !tbaa !24
  br label %rb_vm_cref_new_toplevel.exit

rb_vm_cref_new_toplevel.exit:                     ; preds = %bb.a, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.f, %bb.a ], [ %i.s, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.y = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !507
  %i.ab = getelementptr i8, ptr %.0.i.i, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !25
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !508
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !504
  %i.af = tail call i64 @rb_str_new_cstr(ptr noundef %i.ae) #23
  %i.ag = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.61, i64 noundef 4) #23
  %i.ah = tail call fastcc i64 @eval_string_with_cref(i64 noundef %i.ac, i64 noundef %i.af, ptr noundef nonnull %.0.i.i, i64 noundef %i.ag, i32 noundef 1)
  ret i64 %i.ah
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_eval_cmd_kw(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.b, !prof !353

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !77   ; 3 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 7
  br i1 %i.j, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !354

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 7) #57
  unreachable

Check_Type.exit:                                  ; preds = %bb.b
  %i.k = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %rb_array_len.exit.i, label %rb_array_len.exit.i.thread

rb_array_len.exit.i:                              ; preds = %Check_Type.exit
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = add i64 %i.m, 2147483648
  %.not.i1.i = icmp ult i64 %i.n, 4294967296
  br i1 %.not.i1.i, label %bb.d, label %bb.c

rb_array_len.exit.i.thread:                       ; preds = %Check_Type.exit
  %i.o = trunc i64 %i.h to i32
  %i.p = lshr i32 %i.o, 15
  %i.q = and i32 %i.p, 127
  %i.r = getelementptr i8, ptr %i.g, i64 16
  br label %rb_array_const_ptr.exit

bb.c:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %i.m) #57
  unreachable

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.s = trunc nsw i64 %i.m to i32
  %i.t = getelementptr i8, ptr %i.g, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %rb_array_len.exit.i.thread, %bb.d
  %i.v = phi i32 [ %i.q, %rb_array_len.exit.i.thread ], [ %i.s, %bb.d ]
  %.0.i = phi ptr [ %i.r, %rb_array_len.exit.i.thread ], [ %i.u, %bb.d ]
  %i.w = tail call i64 @rb_eval_cmd_call_kw(i64 noundef %0, i32 noundef %i.v, ptr noundef %.0.i, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !75
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !509
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !11 ; 0 uses
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_eval_cmd_call_kw(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i64 4, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  store volatile ptr %i.g, ptr %i.b, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.d, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.0..0..0..0.5 = load volatile ptr, ptr %i.d, align 8, !tbaa !28 ; 3 uses
  store ptr %.0..0..0..0.5, ptr %i.e, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.h, align 8, !tbaa !68
  store i64 36, ptr %4, align 8, !tbaa !262
  %i.i = getelementptr i8, ptr %.0..0..0..0.5, i64 24 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !263
  %i.l = getelementptr i8, ptr %.0..0..0..0.5, i64 48
  %.0.1.val = load ptr, ptr %i.l, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %.0.1.val, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  %i.o = getelementptr i8, ptr %.0.1.val, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  %i.q = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.q, align 8, !tbaa !265
  %i.r = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.r, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.s = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i16 = phi i32 [ %i.t, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i16, ptr %i.u, align 4, !tbaa !267
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.w, ptr %i.v, align 8
  %i.x = tail call ptr @llvm.stacksave.p0()
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.x, ptr %i.y, align 8
  %i.z = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.v)
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.f, !prof !72

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.i, align 8, !tbaa !67
  %i.aa = icmp eq i64 %0, 0
  %i.ab = and i64 %0, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.d
  %i.ae = inttoptr i64 %0 to ptr
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !77
  %i.ag = and i64 %i.af, 31
  %i.ah = icmp eq i64 %i.ag, 5
  br i1 %i.ah, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %.not.i = icmp eq i32 %3, 0
  %i.ai = select i1 %.not.i, i32 1, i32 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !28
  store volatile ptr %i.aj, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !70
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !74
  %i.ao = call fastcc i64 @rb_call0(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %0, i64 noundef 3473, i32 noundef %1, ptr noundef %2, i32 noundef range(i32 0, 5) %i.ai, i64 noundef %i.an)
  br label %bb.g

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ap = call ptr @rb_current_box() #23
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !448
  %i.as = call fastcc i64 @eval_string_with_cref(i64 noundef %i.ar, i64 noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0)
  br label %bb.g

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.e, align 8, !tbaa !28
  %i.at = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !263
  store ptr %i.au, ptr %i.i, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0..0..0..0.6 = load volatile ptr, ptr %i.d, align 8, !tbaa !28
  %i.av = getelementptr i8, ptr %.0..0..0..0.6, i64 24
  %.0.6.val = load ptr, ptr %i.av, align 8, !tbaa !67 ; 2 uses
  %i.aw = getelementptr i8, ptr %.0.6.val, i64 64
  store i32 %i.at, ptr %i.aw, align 8, !tbaa !68
  %i.ax = getelementptr i8, ptr %.0.6.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.ax)
  unreachable

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.e
  %.sink = phi i64 [ %i.ao, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.as, %bb.e ]
  store volatile i64 %.sink, ptr %i.c, align 8, !tbaa !11
  %i.ay = load ptr, ptr %i.k, align 8, !tbaa !263
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0..0..0..0.7 = load volatile i64, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.0..0..0..0.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #21

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #23

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68   ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !267  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !30 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !265
  %i.m = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.m, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.n = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit.i

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
end_hunk_7
begin_hunk_8_@yield_under:bb.a
  %.028 = phi i64 [ %i.bk, %vm_yield_with_cref.exit ], [ %i.ak, %vm_block_handler_type.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i64 %.028
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_mod_module_eval(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @specific_eval(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_mod_module_exec(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @yield_under(i64 noundef %2, i32 noundef 0, i32 noundef %0, ptr noundef %1, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_throw_obj(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [3 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 2 uses
  %.013 = load ptr, ptr %i.e, align 8, !tbaa !511 ; 2 uses
  %.not14 = icmp eq ptr %.013, null
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.015 = phi ptr [ %.0, %bb.b ], [ %.013, %bb.a ] ; 3 uses
  %i.f = load i64, ptr %.015, align 8, !tbaa !262
  %i.g = icmp eq i64 %i.f, %0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.015, i64 56
  %.0 = load ptr, ptr %i.h, align 8, !tbaa !511   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !512

.critedge:                                        ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %0, ptr %i.b, align 16, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.i, align 8, !tbaa !11
  %i.j = tail call fastcc i64 @rbimpl_str_new_cstr(ptr noundef @.str.63)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.j, ptr %i.k, align 16, !tbaa !11
  %i.l = load i64, ptr @rb_eUncaughtThrow, align 8, !tbaa !11
  %i.m = call i64 @rb_class_new_instance(i32 noundef 3, ptr noundef nonnull %i.b, i64 noundef %i.l) #23
  call void @rb_exc_raise(i64 noundef %i.m) #42
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr i8, ptr %.015, i64 8
  store i64 %1, ptr %i.n, align 8, !tbaa !268
  %i.o = tail call fastcc ptr @THROW_DATA_NEW(i64 noundef %0, ptr noundef null, i32 noundef 7)
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128
  store i64 %i.p, ptr %i.q, align 8, !tbaa !66
  %.val = load ptr, ptr %i.e, align 8, !tbaa !67  ; 2 uses
  %i.r = getelementptr i8, ptr %.val, i64 64
  store i32 7, ptr %i.r, align 8, !tbaa !68
  %i.s = getelementptr i8, ptr %.val, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable
}

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @THROW_DATA_NEW(i64 noundef %0, ptr noundef %1, i32 noundef range(i32 1, 256) %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @rb_imemo_new(i32 noundef 3, i64 noundef 0, i64 noundef 40, i1 noundef zeroext false) #23
  %i.b = inttoptr i64 %i.a to ptr                 ; 4 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  store i64 %0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !160
  %i.e = getelementptr i8, ptr %i.b, i64 32
  store i32 %2, ptr %i.e, align 8, !tbaa !161
  ret ptr %i.b
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_throw(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_sym_intern_ascii_cstr(ptr noundef %0) #23
  tail call void @rb_throw_obj(i64 noundef %i.a, i64 noundef %1) #58
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

declare i64 @rb_sym_intern_ascii_cstr(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_catch(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_sym_intern_ascii_cstr(ptr noundef nonnull %0) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.e = tail call i64 @rb_obj_alloc(i64 noundef %i.d) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = call fastcc i64 @vm_catch_protect(i64 noundef %i.f, ptr noundef readonly %1, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef %.0..0..0..0..0..0..0..0..i.i)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %rb_catch_obj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !67 ; 2 uses
  %i.l = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.j, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr i8, ptr %.val.i, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.m)
  unreachable

rb_catch_obj.exit:                                ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_catch_obj(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = call fastcc i64 @vm_catch_protect(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef %.0..0..0..0..0..0..i)
  %i.f = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24
  %.val = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.h = getelementptr i8, ptr %.val, i64 64
  store i32 %i.f, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.i)
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_catch_protect(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call fastcc i64 @vm_catch_protect(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %.0..0..0..0..0..0..i)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_catch_protect(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  store volatile ptr %4, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0.8 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.e = getelementptr i8, ptr %.0..0..0..0.8, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  store volatile ptr %i.f, ptr %i.c, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.9 = load volatile ptr, ptr %i.b, align 8, !tbaa !28 ; 3 uses
  store ptr %.0..0..0..0.9, ptr %i.d, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr i8, ptr %.0..0..0..0.9, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !263
  %i.k = getelementptr i8, ptr %.0..0..0..0.9, i64 48
  %.0.1.val = load ptr, ptr %i.k, align 8, !tbaa !30 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %.0.1.val, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = getelementptr i8, ptr %.0.1.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !264
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  %i.p = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.p, align 8, !tbaa !265
  %i.q = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.q, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.r = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !266
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.s, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %.0.i, ptr %i.t, align 4, !tbaa !267
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %0, ptr %5, align 8, !tbaa !262
  %i.v = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.v, ptr %i.u, align 8
  %i.w = tail call ptr @llvm.stacksave.p0()
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.w, ptr %i.x, align 8
  %i.y = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.u)
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %bb.d, !prof !72

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %5, ptr %i.h, align 8, !tbaa !67
  %i.z = call i64 %1(i64 noundef %0, i64 noundef %2, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef 4) #23
  br label %bb.l

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !28
  %i.aa = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2) ; 2 uses
  %cond = icmp eq i32 %i.aa, 7
  br i1 %cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %.0..0..0..0.10 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.ab = getelementptr i8, ptr %.0..0..0..0.10, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !66
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val = load i64, ptr %i.ae, align 8, !tbaa !492
  %i.af = icmp eq i64 %.val, %0
  br i1 %i.af, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %.0..0..0..0.11 = load volatile ptr, ptr %i.b, align 8, !tbaa !28 ; 4 uses
  %.0..0..0..0.5 = load volatile ptr, ptr %i.c, align 8, !tbaa !160 ; 2 uses
  %i.ag = getelementptr i8, ptr %.0..0..0..0.11, i64 16 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %.not5.i = icmp eq ptr %i.ah, %.0..0..0..0.5
  br i1 %.not5.i, label %rb_vm_rewind_cfp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %.0..0..0..0.11, i64 32
  %i.aj = getelementptr i8, ptr %.0..0..0..0.11, i64 36
  %i.ak = getelementptr i8, ptr %.0..0..0..0.11, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i
  %i.al = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.au, %bb.k ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %.val.i = load ptr, ptr %i.am, align 8, !tbaa !15
  %.val.val.i = load i64, ptr %.val.i, align 8, !tbaa !11
  %i.an = and i64 %.val.val.i, 2147418113
  %.not4.i = icmp eq i64 %i.an, 1431633921
  br i1 %.not4.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load atomic volatile i32, ptr %i.ai monotonic, align 8
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !71
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.ao, %i.aq
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %rb_vm_pop_frame.exit.i, label %bb.i, !prof !72

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.as = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i

rb_vm_pop_frame.exit.i:                           ; preds = %bb.i, %bb.h
  %i.at = getelementptr i8, ptr %i.al, i64 56     ; 2 uses
  store ptr %i.at, ptr %i.ag, align 8, !tbaa !70
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @rb_vm_pop_cfunc_frame()
  %.pre.i = load ptr, ptr %i.ag, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %rb_vm_pop_frame.exit.i
  %i.au = phi ptr [ %.pre.i, %bb.j ], [ %i.at, %rb_vm_pop_frame.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.au, %.0..0..0..0.5
  br i1 %.not.i, label %rb_vm_rewind_cfp.exit, label %bb.g, !llvm.loop !491

rb_vm_rewind_cfp.exit:                            ; preds = %bb.k, %bb.f
  %.0..0..0..0.12 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.av = getelementptr i8, ptr %.0..0..0..0.12, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !67
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !268
  %.0..0..0..0.13 = load volatile ptr, ptr %i.b, align 8, !tbaa !28
  %i.az = getelementptr i8, ptr %.0..0..0..0.13, i64 128
  store i64 4, ptr %i.az, align 8, !tbaa !66
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.e, %rb_vm_rewind_cfp.exit, %.thread
  %.018 = phi i32 [ 0, %.thread ], [ 0, %rb_vm_rewind_cfp.exit ], [ 7, %bb.e ], [ %i.aa, %bb.d ]
  %.0 = phi i64 [ %i.z, %.thread ], [ %i.ay, %rb_vm_rewind_cfp.exit ], [ 4, %bb.e ], [ 4, %bb.d ]
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !263
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %.018, ptr %3, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_current_realfilepath() local_unnamed_addr #2 {
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
  %i.f = getelementptr i8, ptr %i.e, i64 56       ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 88
  %.val13.i = load ptr, ptr %i.g, align 8, !tbaa !15
  %.val13.val.i = load i64, ptr %.val13.i, align 8, !tbaa !11
  %i.h = and i64 %.val13.val.i, 128
  %.not.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.not.i, label %vm_get_ruby_level_caller_cfp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.val14.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val15.i = load i64, ptr %i.i, align 8, !tbaa !122
  %i.j = getelementptr [8 x i8], ptr %.val14.i, i64 %.val15.i
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %.pn.i = phi ptr [ %.0.i, %bb.d ], [ %i.f, %.preheader.i ] ; 2 uses
  %.0.i = getelementptr i8, ptr %.pn.i, i64 56    ; 3 uses
  %.not.i = icmp ugt ptr %i.j, %.0.i
  br i1 %.not.i, label %bb.c, label %vm_get_ruby_level_caller_cfp.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.pn.i, i64 88
  %.0.val.i = load ptr, ptr %i.k, align 8, !tbaa !15
  %.0.val.val.i = load i64, ptr %.0.val.i, align 8, !tbaa !11 ; 2 uses
  %i.l = and i64 %.0.val.val.i, 128
  %.not12.not.i = icmp eq i64 %i.l, 0
  br i1 %.not12.not.i, label %vm_get_ruby_level_caller_cfp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = and i64 %.0.val.val.i, 2048
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %vm_get_ruby_level_caller_cfp.exit.thread, label %bb.b, !llvm.loop !510

vm_get_ruby_level_caller_cfp.exit:                ; preds = %bb.c, %bb.a
  %.010.i = phi ptr [ %i.f, %bb.a ], [ %.0.i, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.010.i, null
  br i1 %.not, label %vm_get_ruby_level_caller_cfp.exit.thread, label %bb.e

bb.e:                                             ; preds = %vm_get_ruby_level_caller_cfp.exit
  %i.o = getelementptr i8, ptr %.010.i, i64 16    ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.q = tail call i64 @rb_iseq_realpath(ptr noundef %i.p) #23 ; 2 uses
  %i.r = and i64 %i.q, -5
  %.not23 = icmp eq i64 %i.r, 0
  br i1 %.not23, label %bb.f, label %vm_get_ruby_level_caller_cfp.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !123
  %i.t = tail call i64 @rb_iseq_path(ptr noundef %i.s) #23 ; 4 uses
  %i.u = load i64, ptr @eval_default_path, align 8, !tbaa !11
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %vm_get_ruby_level_caller_cfp.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !513  ; 2 uses
  %i.z = icmp sgt i64 %i.y, 9
  br i1 %i.z, label %bb.h, label %vm_get_ruby_level_caller_cfp.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !77
  %i.ab = and i64 %i.aa, 8192
  %.not.i20 = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  br i1 %.not.i20, label %RSTRING_PTR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.y
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27
  %i.ai = icmp eq i8 %i.ah, 41
  br i1 %i.ai, label %bb.j, label %.critedge

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.aj = load i64, ptr %i.ae, align 1
  %i.ak = xor i64 %i.aj, 8386019631004280104
  %i.al = getelementptr i8, ptr %i.ae, i64 8
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = xor i64 %i.an, 32
  %i.ap = or i64 %i.ak, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %vm_get_ruby_level_caller_cfp.exit.thread, label %.critedge

.critedge:                                        ; preds = %bb.j, %RSTRING_PTR.exit
  br label %vm_get_ruby_level_caller_cfp.exit.thread

vm_get_ruby_level_caller_cfp.exit.thread:         ; preds = %bb.d, %bb.b, %vm_get_ruby_level_caller_cfp.exit, %bb.e, %bb.f, %bb.g, %.critedge, %bb.j
  %.3 = phi i64 [ %i.t, %bb.g ], [ 4, %bb.f ], [ %i.q, %bb.e ], [ 4, %bb.j ], [ %i.t, %.critedge ], [ 4, %vm_get_ruby_level_caller_cfp.exit ], [ 4, %bb.b ], [ 4, %bb.d ]
  ret i64 %.3
}

declare i64 @rb_iseq_realpath(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @rb_current_ifunc() local_unnamed_addr #2 {
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
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 4 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = icmp eq ptr %i.g, null
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %imemo_type_p.exit.thread, label %imemo_type_p.exit, !prof !177

imemo_type_p.exit:                                ; preds = %bb.a
  %i.m = load i64, ptr %i.g, align 8, !tbaa !77
  %i.n = and i64 %i.m, 61471
  %.not = icmp eq i64 %i.n, 16410
  br i1 %.not, label %bb.b, label %imemo_type_p.exit.thread, !prof !369

imemo_type_p.exit.thread:                         ; preds = %bb.a, %imemo_type_p.exit
  tail call void @rb_assert_failure(ptr noundef nonnull @.str.65, i32 noundef 2870, ptr noundef nonnull @__func__.rb_current_ifunc, ptr noundef nonnull @.str.66) #57
  unreachable

bb.b:                                             ; preds = %imemo_type_p.exit
  ret ptr %i.g
}

; Function Attrs: cold noreturn
declare void @rb_assert_failure(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_vm_eval() local_unnamed_addr #2 {
bb.a:
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.61, ptr noundef nonnull @rb_f_eval, i32 noundef -1) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.67, ptr noundef nonnull @rb_f_local_variables, i32 noundef 0) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.68, ptr noundef nonnull @rb_f_iterator_p, i32 noundef 0) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.69, ptr noundef nonnull @rb_f_block_given_p, i32 noundef 0) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.70, ptr noundef nonnull @rb_f_catch, i32 noundef -1) #23
  tail call void @rb_define_global_function(ptr noundef nonnull @.str.71, ptr noundef nonnull @rb_f_throw, i32 noundef -1) #23
  %i.a = load i64, ptr @rb_cBasicObject, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.a, ptr noundef nonnull @.str.72, ptr noundef nonnull @rb_obj_instance_eval_internal, i32 noundef -1) #23
  %i.b = load i64, ptr @rb_cBasicObject, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.73, ptr noundef nonnull @rb_obj_instance_exec_internal, i32 noundef -1) #23
  %i.c = load i64, ptr @rb_cBasicObject, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.c, ptr noundef nonnull @.str.74, ptr noundef nonnull @rb_method_missing, i32 noundef -1) #23
  %i.d = load i64, ptr @rb_cBasicObject, align 8, !tbaa !11
  tail call void @rb_add_method(i64 noundef %i.d, i64 noundef 3153, i32 noundef 9, ptr noundef null, i32 noundef 1)
  %i.e = load i64, ptr @rb_mKernel, align 8, !tbaa !11
  tail call void @rb_add_method(i64 noundef %i.e, i64 noundef 3137, i32 noundef 9, ptr noundef null, i32 noundef 1)
  %i.f = load i64, ptr @rb_mKernel, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.75, ptr noundef nonnull @rb_f_public_send, i32 noundef -1) #23
  %i.g = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.76, ptr noundef nonnull @rb_mod_module_exec_internal, i32 noundef -1) #23
  %i.h = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.77, ptr noundef nonnull @rb_mod_module_exec_internal, i32 noundef -1) #23
  %i.i = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @rb_mod_module_eval_internal, i32 noundef -1) #23
  %i.j = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.j, ptr noundef nonnull @.str.79, ptr noundef nonnull @rb_mod_module_eval_internal, i32 noundef -1) #23
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  %i.l = tail call i64 @rb_define_class(ptr noundef nonnull @.str.80, i64 noundef %i.k) #23 ; 2 uses
  store i64 %i.l, ptr @rb_eUncaughtThrow, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.81, ptr noundef nonnull @uncaught_throw_init, i32 noundef -1) #23
end_hunk_8
begin_hunk_9_@rb_f_catch:bb.a
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %rb_catch_obj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !67 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.l, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr i8, ptr %.val.i, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.o)
  unreachable

rb_catch_obj.exit:                                ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.k
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @rb_f_throw(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #6 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !11
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.f = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i1 [ %i.e, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #58
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  tail call void @rb_throw_obj(i64 noundef %i.b, i64 noundef %i.f) #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_obj_instance_eval_internal(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #23
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %i.d = tail call fastcc i64 @specific_eval(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_obj_instance_exec_internal(i32 noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call i32 @rb_keyword_given_p() #23
  %i.b = icmp ne i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  %i.d = tail call fastcc i64 @yield_under(i64 noundef %2, i32 noundef 1, i32 noundef %0, ptr noundef %1, i32 noundef %i.c)
  ret i64 %i.d
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
define hidden range(i32 0, 2) i32 @rb_dtrace_setup(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr noundef captures(address) %3) local_unnamed_addr #30 {
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
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 15
  switch i32 %i.ab, label %rb_ec_frame_method_id_and_class.exit.thread [
    i32 6, label %rb_ec_frame_method_id_and_class.exit
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %rb_ec_frame_method_id_and_class.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ah = and i64 %i.ag, 61440
  %cond.i.i.i.i = icmp eq i64 %i.ah, 24576
  br i1 %cond.i.i.i.i, label %rb_ec_frame_method_id_and_class.exit, label %rb_ec_frame_method_id_and_class.exit.thread

rb_ec_frame_method_id_and_class.exit:             ; preds = %bb.e, %bb.g, %bb.i
  %.0.i.i.i = phi ptr [ %i.af, %bb.i ], [ %i.x, %bb.g ], [ %i.n, %bb.e ] ; 2 uses
  %i.ai = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !205
  %i.am = getelementptr i8, ptr %.0.i.i.i, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !405 ; 2 uses
  %.not51 = icmp eq i64 %i.an, 0
  br i1 %.not51, label %rb_ec_frame_method_id_and_class.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.a, %rb_ec_frame_method_id_and_class.exit
  %.040 = phi i64 [ %i.an, %rb_ec_frame_method_id_and_class.exit ], [ %1, %bb.a ] ; 4 uses
  %.0 = phi i64 [ %i.al, %rb_ec_frame_method_id_and_class.exit ], [ %2, %bb.a ]
  %i.ao = and i64 %.040, 7
  %.not52 = icmp eq i64 %i.ao, 0
  br i1 %.not52, label %rbimpl_RB_TYPE_P_fastpath.exit, label %RCLASS_SINGLETON_P.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.j
  %i.ap = inttoptr i64 %.040 to ptr               ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77 ; 2 uses
  %i.ar = and i64 %i.aq, 31
  %i.as = icmp eq i64 %i.ar, 28
  br i1 %i.as, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit.i

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !61
  br label %RCLASS_SINGLETON_P.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.av = and i64 %i.aq, 8223
  %or.cond50 = icmp eq i64 %i.av, 8194
  br i1 %or.cond50, label %bb.l, label %RCLASS_SINGLETON_P.exit.thread

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aw = getelementptr i8, ptr %i.ap, i64 136
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !27 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4
  br i1 %i.ay, label %rb_ec_frame_method_id_and_class.exit.thread, label %RCLASS_SINGLETON_P.exit.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.l, %bb.k
  %.141 = phi i64 [ %i.au, %bb.k ], [ %i.ax, %bb.l ], [ %.040, %bb.j ], [ %.040, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 3 uses
  %i.az = inttoptr i64 %.141 to ptr
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = and i32 %i.bb, 31
  %i.bd = icmp eq i32 %i.bc, 28
  %i.be = and i32 %i.bb, 30
  %i.bf = icmp eq i32 %i.be, 2
  %or.cond5 = or i1 %i.bf, %i.bd
  br i1 %or.cond5, label %bb.m, label %rb_ec_frame_method_id_and_class.exit.thread

bb.m:                                             ; preds = %RCLASS_SINGLETON_P.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.bg = tail call i64 @rb_class_path(i64 noundef %.141) #23 ; 2 uses
  store i64 %i.bg, ptr %i.c, align 8, !tbaa !11
  %i.bh = tail call ptr @rb_id2name(i64 noundef %.0) #23 ; 2 uses
  %.not28 = icmp eq ptr %i.bh, null
  br i1 %.not28, label %rb_ec_frame_method_id_and_class.exit.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr i8, ptr %3, i64 24        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !28
  store volatile ptr %i.bk, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !70 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, align 8, !tbaa !121
  %i.bn = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 8
  %.val8.i.i.i = load i64, ptr %i.bn, align 8, !tbaa !122
  %i.bo = getelementptr [8 x i8], ptr %.val.i.i.i, i64 %.val8.i.i.i ; 2 uses
  %.not910.i.i.i = icmp ugt ptr %i.bo, %i.bm
  br i1 %.not910.i.i.i, label %.lr.ph.i.i.i32, label %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i

.lr.ph.i.i.i32:                                   ; preds = %bb.n, %bb.o
  %.011.i.i.i = phi ptr [ %i.br, %bb.o ], [ %i.bm, %bb.n ] ; 4 uses
  %i.bp = getelementptr i8, ptr %.011.i.i.i, i64 32
  %.0.val.i.i.i = load ptr, ptr %i.bp, align 8, !tbaa !15
  %.0.val.val.i.i.i = load i64, ptr %.0.val.i.i.i, align 8, !tbaa !11
  %i.bq = and i64 %.0.val.val.i.i.i, 128
  %.not7.not.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not7.not.i.i.i, label %rb_vm_get_ruby_level_next_cfp.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i32
  %i.br = getelementptr i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not9.i.i.i = icmp ugt ptr %i.bo, %i.br
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i32, label %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i, !llvm.loop !360

rb_vm_get_ruby_level_next_cfp.exit.i.i:           ; preds = %.lr.ph.i.i.i32
  %.not14.i.i = icmp eq ptr %i.bi, null
  br i1 %.not14.i.i, label %rb_source_location.exit.i, label %bb.p

bb.p:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.i.i
  %i.bs = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i.i.i) #23
  store i32 %i.bs, ptr %i.bi, align 4, !tbaa !7
  br label %rb_source_location.exit.i

rb_vm_get_ruby_level_next_cfp.exit.thread.i.i:    ; preds = %bb.o, %bb.n
  %.not13.i.i = icmp eq ptr %i.bi, null
  br i1 %.not13.i.i, label %rb_ec_frame_method_id_and_class.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %rb_vm_get_ruby_level_next_cfp.exit.thread.i.i
  store i32 0, ptr %i.bi, align 4, !tbaa !7
  br label %rb_ec_frame_method_id_and_class.exit.thread.sink.split

rb_source_location.exit.i:                        ; preds = %bb.p, %rb_vm_get_ruby_level_next_cfp.exit.i.i
  %i.bt = getelementptr i8, ptr %.011.i.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !123
  %i.bv = tail call i64 @rb_iseq_path(ptr noundef %i.bu) #23 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4
end_hunk_9
begin_hunk_10_@rb_source_location_cstr:bb.a
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
  %i.x = trunc i64 %i.w to i32
  %i.y = lshr i32 %i.x, 12
  %i.z = and i32 %i.y, 15
  switch i32 %i.z, label %rb_vm_frame_method_entry.exit [
    i32 6, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %rb_vm_frame_method_entry.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %rb_vm_frame_method_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77
  %i.af = and i64 %i.ae, 61440
  %cond.i.i = icmp eq i64 %i.af, 24576
  %spec.select.i.i = select i1 %cond.i.i, ptr %i.ad, ptr null
  br label %rb_vm_frame_method_entry.exit

rb_vm_frame_method_entry.exit:                    ; preds = %bb.b, %._crit_edge.i, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %spec.select.i.i, %bb.g ], [ null, %bb.d ], [ null, %._crit_edge.i ], [ %i.v, %bb.e ], [ null, %bb.f ], [ %i.l, %bb.b ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ah = getelementptr i8, ptr %.val, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !264 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !527
  %i.al = and i32 %i.ak, 64
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %bb.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %rb_vm_frame_method_entry.exit
  %i.am = getelementptr i8, ptr %i.ai, i64 16
  %i.an = getelementptr i8, ptr %i.e, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !74
  %i.ap = getelementptr i8, ptr %.0.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !205
  %i.at = getelementptr i8, ptr %.0.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load <2 x i64>, ptr %i.at, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  store i32 64, ptr %0, align 8, !tbaa !528
  store ptr %.0..0..0..0..0..0..i, ptr %i.au, align 8, !tbaa !530
  store ptr %i.e, ptr %i.av, align 8, !tbaa !531
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !532
  store i64 %i.as, ptr %i.ax, align 8, !tbaa !533
  store <2 x i64> %i.az, ptr %i.ay, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 4, ptr %i.ba, align 8, !tbaa !534
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 36, ptr %i.bb, align 8, !tbaa !535
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.bc, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %0, ptr noundef %i.am, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_vm_frame_method_entry.exit
  %i.bd = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.be = load atomic volatile i32, ptr %i.bd monotonic, align 8
  %i.bf = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !71
  %i.bh = xor i32 %i.bg, -1
  %i.bi = and i32 %i.be, %i.bh
  %.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i, label %vm_pop_frame.exit, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.bj = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit

vm_pop_frame.exit:                                ; preds = %bb.i, %bb.j
  %i.bk = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.bk, ptr %i.d, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_rewind_cfp(ptr noundef captures(address) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #2 {
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
  %i.i = load atomic volatile i32, ptr %i.c monotonic, align 8
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
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499  ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !11
  %i.c = and i64 %.val, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 -8
  %.val5 = load i64, ptr %i.d, align 8, !tbaa !11
  %i.e = and i64 %.val5, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val6 = load i64, ptr %i.g, align 8, !tbaa !11
  %i.h = inttoptr i64 %.val6 to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_env_local_variables(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.local_var_list, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = tail call i64 @rb_ident_hash_new() #23   ; 4 uses
  store i64 %i.a, ptr %1, align 8, !tbaa !515
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !11
  call fastcc void @collect_local_variables_in_env(ptr noundef %0, ptr noundef %1)
  %i.d = tail call i64 @rb_hash_keys(i64 noundef %i.a) #23
  %i.e = tail call i64 @rb_hash_clear(i64 noundef %i.a) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @collect_local_variables_in_env(ptr noundef readonly captures(none) %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %rb_vm_env_prev_env.exit, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.ae, %rb_vm_env_prev_env.exit ] ; 2 uses
  %i.a = getelementptr i8, ptr %.0, i64 16        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !499  ; 3 uses
  %.val = load i64, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.c = and i64 %.val, 16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %rb_vm_env_prev_env.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !497  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %collect_local_variables_in_iseq.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 240
  %i.i = load i32, ptr %i.h, align 8, !tbaa !190
  %.not10.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i, label %collect_local_variables_in_iseq.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %local_var_list_add.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %local_var_list_add.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.j = phi ptr [ %i.t, %local_var_list_add.exit.i ], [ %i.g, %.preheader.i ]
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !518
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 4 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %local_var_list_add.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = tail call i32 @rb_is_local_id(i64 noundef %i.n) #66
  %.not11.i.i = icmp eq i32 %i.o, 0
  br i1 %.not11.i.i, label %local_var_list_add.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @rb_numparam_id_p(i64 noundef %i.n) #23
  %.not12.i.i = icmp eq i32 %i.p, 0
end_hunk_10
begin_hunk_11_@vm_setivar_class:bb.a
  br label %RSHAPE_CAPACITY.exit36

RSHAPE_CAPACITY.exit36:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i35, %RSHAPE_EMBEDDED_CAPACITY.exit.i32
  %.0.i34 = phi i16 [ %spec.select.i33, %RSHAPE_EMBEDDED_CAPACITY.exit.i32 ], [ %i.bg, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i35 ]
  %i.bp = icmp eq i16 %.0.i30, %.0.i34
  br i1 %i.bp, label %bb.j, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.j:                                             ; preds = %bb.e, %RSHAPE_CAPACITY.exit36
  %i.bq = and i64 %i.u, 65536
  %.not5.i = icmp eq i64 %i.bq, 0
  %i.br = getelementptr i8, ptr %i.t, i64 16      ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.k, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.j, %bb.k
  %.0.i38 = phi ptr [ %i.bs, %bb.k ], [ %i.br, %bb.j ]
  %i.bt = zext i16 %4 to i64
  %i.bu = getelementptr [8 x i8], ptr %.0.i38, i64 %i.bt
  store i64 %2, ptr %i.bu, align 8, !tbaa !11
  %i.bv = icmp eq i64 %2, 0
  %i.bw = and i64 %2, 7
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = or i1 %i.bv, %i.bx
  br i1 %i.by, label %rb_obj_write.exit, label %bb.l

bb.l:                                             ; preds = %rb_imemo_fields_ptr.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.s, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_imemo_fields_ptr.exit, %bb.l
  br i1 %i.x, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.m

bb.m:                                             ; preds = %rb_obj_write.exit
  %i.bz = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !77
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = zext i32 %3 to i64
  %i.cd = shl nuw i64 %i.cc, 32                   ; 2 uses
  %i.ce = or disjoint i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.bz, align 8, !tbaa !77
  %i.cf = load i64, ptr %i.t, align 8, !tbaa !77
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = or disjoint i64 %i.cg, %i.cd
  store i64 %i.ch, ptr %i.t, align 8, !tbaa !77
  br label %RSHAPE_DIRECT_CHILD_P.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.thread:                ; preds = %bb.g, %RCLASS_WRITABLE_FIELDS_OBJ.exit, %rb_obj_write.exit, %bb.m, %bb.f, %RSHAPE_DIRECT_CHILD_P.exit, %bb.h, %RSHAPE_CAPACITY.exit36, %rb_ractor_main_p.exit
  %.2 = phi i64 [ 36, %rb_ractor_main_p.exit ], [ 36, %RCLASS_WRITABLE_FIELDS_OBJ.exit ], [ 36, %bb.f ], [ 36, %RSHAPE_DIRECT_CHILD_P.exit ], [ 36, %RSHAPE_CAPACITY.exit36 ], [ 36, %bb.h ], [ %2, %bb.m ], [ %2, %rb_obj_write.exit ], [ 36, %bb.g ]
  ret i64 %.2
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_setivar_default(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #30 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.c = lshr i64 %i.b, 32                        ; 3 uses
  %i.d = trunc nuw i64 %i.c to i32                ; 3 uses
  %i.e = icmp eq i32 %3, %i.d                     ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, -1
  br i1 %.not, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = xor i32 %3, %i.d
  %i.g = and i32 %i.f, 264241152
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %RSHAPE_DIRECT_CHILD_P.exit, label %RSHAPE_DIRECT_CHILD_P.exit.thread

RSHAPE_DIRECT_CHILD_P.exit:                       ; preds = %bb.c
  %i.i = and i32 %3, 524287
  %i.j = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101 ; 3 uses
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr [40 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !106
  %i.o = and i32 %i.d, 524287
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.d:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit
  %i.q = getelementptr i8, ptr %i.l, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !109
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %i.b, 126100789566373888
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.e
  %i.u = and i64 %i.c, 524287
  %i.v = getelementptr [40 x i8], ptr %i.j, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 30
  %i.x = load i16, ptr %i.w, align 2, !tbaa !684
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.e
  %i.y = lshr i64 %i.b, 54
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %i.aa = and i64 %i.y, 7
  %i.ab = add nuw nsw i64 %i.aa, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr [2 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !120
  %i.af = and i64 %i.c, 524287
  %i.ag = getelementptr [40 x i8], ptr %i.j, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 30
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !684
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.ae, i16 %i.ai)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.x, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.aj = lshr i32 %3, 22
  %i.ak = trunc i32 %i.aj to i8
  %i.al = and i8 %i.ak, 7                         ; 2 uses
  %.not.i.i27 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i27, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31, label %RSHAPE_EMBEDDED_CAPACITY.exit.i28

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31:         ; preds = %RSHAPE_CAPACITY.exit
  %i.am = getelementptr i8, ptr %i.l, i64 30
  %i.an = load i16, ptr %i.am, align 2, !tbaa !684
  br label %RSHAPE_CAPACITY.exit32

RSHAPE_EMBEDDED_CAPACITY.exit.i28:                ; preds = %RSHAPE_CAPACITY.exit
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %i.ap = zext nneg i8 %i.al to i64
  %i.aq = add nuw nsw i64 %i.ap, 4294967295
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = getelementptr [2 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !120
  %i.au = getelementptr i8, ptr %i.l, i64 30
  %i.av = load i16, ptr %i.au, align 2, !tbaa !684
  %spec.select.i29 = tail call i16 @llvm.umax.i16(i16 %i.at, i16 %i.av)
  br label %RSHAPE_CAPACITY.exit32

RSHAPE_CAPACITY.exit32:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31, %RSHAPE_EMBEDDED_CAPACITY.exit.i28
  %.0.i30 = phi i16 [ %spec.select.i29, %RSHAPE_EMBEDDED_CAPACITY.exit.i28 ], [ %i.an, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31 ]
  %i.aw = icmp eq i16 %.0.i, %.0.i30
  br i1 %i.aw, label %bb.f, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.f:                                             ; preds = %RSHAPE_CAPACITY.exit32, %bb.a
  %i.ax = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %1) #23 ; 3 uses
  %.not.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.ay = inttoptr i64 %i.ax to ptr               ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !77
  %i.ba = and i64 %i.az, 65536
  %.not5.i = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr i8, ptr %i.ay, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.f, %bb.g
  %.0.i33 = phi ptr [ %i.bc, %bb.g ], [ %i.bb, %bb.f ]
  %i.bd = zext i16 %4 to i64
  %i.be = getelementptr [8 x i8], ptr %.0.i33, i64 %i.bd
  store i64 %2, ptr %i.be, align 8, !tbaa !11
  %i.bf = icmp eq i64 %2, 0
  %i.bg = and i64 %2, 7
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = or i1 %i.bf, %i.bh
  br i1 %i.bi, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %rb_imemo_fields_ptr.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.ax, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_imemo_fields_ptr.exit, %bb.h
  br i1 %i.e, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.i

bb.i:                                             ; preds = %rb_obj_write.exit
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !77
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = zext i32 %3 to i64
  %i.bm = shl nuw i64 %i.bl, 32                   ; 2 uses
  %i.bn = or disjoint i64 %i.bk, %i.bm
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !77
  %i.bo = load i64, ptr %i.ay, align 8, !tbaa !77
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = or disjoint i64 %i.bp, %i.bm
  store i64 %i.bq, ptr %i.ay, align 8, !tbaa !77
  br label %RSHAPE_DIRECT_CHILD_P.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.thread:                ; preds = %bb.c, %rb_obj_write.exit, %bb.i, %bb.b, %RSHAPE_DIRECT_CHILD_P.exit, %bb.d, %RSHAPE_CAPACITY.exit32
  %.0 = phi i64 [ 36, %bb.b ], [ 36, %RSHAPE_DIRECT_CHILD_P.exit ], [ 36, %RSHAPE_CAPACITY.exit32 ], [ 36, %bb.d ], [ %2, %bb.i ], [ %2, %rb_obj_write.exit ], [ 36, %bb.c ]
  ret i64 %.0
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_setivar_slowpath_ivar(i64 noundef %0, i64 noundef %1, i64 noundef returned %2, ptr noundef captures(address) %3) unnamed_addr #30 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !168

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !455

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #23
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.j = tail call zeroext i16 @rb_ivar_set_index(i64 noundef %0, i64 noundef %1, i64 noundef %2) #23
  %i.k = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.l = and i64 %i.k, 576460752303423488
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %vm_setivar_slowpath.exit

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.m = add i16 %i.j, 1
  %.sroa.4.0.insert.ext.i.i7.i = zext i16 %i.m to i64
  %.sroa.0.0.insert.insert.i.i10.i = tail call i64 @llvm.fshl.i64(i64 %.sroa.4.0.insert.ext.i.i7.i, i64 %i.k, i64 32)
  store atomic volatile i64 %.sroa.0.0.insert.insert.i.i10.i, ptr %3 monotonic, align 8
  br label %vm_setivar_slowpath.exit

vm_setivar_slowpath.exit:                         ; preds = %rb_check_frozen_inline.exit, %bb.c
  ret i64 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = lshr i32 %0, 22
  %i.b = trunc i32 %i.a to i8
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread, label %RSHAPE_EMBEDDED_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.thread:             ; preds = %bb.a
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 30
  %i.i = load i16, ptr %i.h, align 2, !tbaa !684
  br label %bb.b

RSHAPE_EMBEDDED_CAPACITY.exit:                    ; preds = %bb.a
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr [2 x i8], ptr %i.j, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !120
  %i.p = and i32 %0, 524287
  %i.q = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr [40 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 30
  %i.u = load i16, ptr %i.t, align 2, !tbaa !684
  %spec.select = tail call i16 @llvm.umax.i16(i16 %i.o, i16 %i.u)
  br label %bb.b

bb.b:                                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit, %RSHAPE_EMBEDDED_CAPACITY.exit.thread
  %.0 = phi i16 [ %spec.select, %RSHAPE_EMBEDDED_CAPACITY.exit ], [ %i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread ]
  ret i16 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit:            ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = and i64 %i.e, 16384
  %.not10 = icmp eq i64 %i.f, 0
  br i1 %.not10, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread, label %bb.b, !prof !110

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit
  %i.g = getelementptr i8, ptr %i.d, i64 24
  br label %bb.e

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread:     ; preds = %bb.a, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit
  %i.h = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.split, label %bb.c

.split:                                           ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread
  %i.i = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %bb.e

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread
  %i.j = getelementptr i8, ptr %i.h, i64 128
  %i.k = load i8, ptr %i.j, align 8, !tbaa !111, !range !114, !noundef !64
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.split7, label %bb.d

.split7:                                          ; preds = %bb.c
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %0 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.split, %.split7, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.i, %.split ], [ %i.m, %.split7 ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_CLASSEXT_TBL.exit.i

RCLASS_CLASSEXT_TBL.exit.i:                       ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !192  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i
  %i.i = load i64, ptr %1, align 8, !tbaa !196
  %i.j = call i32 @rb_st_lookup(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull %i.b) #23
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread:     ; preds = %bb.b, %RCLASS_CLASSEXT_TBL.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.c

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit:            ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.m = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i25 = icmp eq ptr %i.m, null
  br i1 %.not.i.i25, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #23
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.c, %bb.d
  %i.n = getelementptr i8, ptr %i.d, i64 160      ; 6 uses
  %i.o = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  %i.p = icmp ne i64 %0, 0
  %i.q = and i64 %0, 7
  %i.r = icmp eq i64 %i.q, 0
  %.not4.i.i = and i1 %i.p, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = load i64, ptr %i.d, align 8, !tbaa !77
  %i.t = and i64 %i.s, 65536
  %.not.i.i26.us = icmp eq i64 %i.t, 0            ; 2 uses
  br i1 %.not4.i.i, label %rb_vm_lock_enter.exit.split.us, label %rb_vm_lock_enter.exit.split

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit
  br i1 %.not.i.i26.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, label %RCLASS_CLASSEXT_TBL.exit.i27.us

RCLASS_CLASSEXT_TBL.exit.i27.us:                  ; preds = %rb_vm_lock_enter.exit.split.us
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !192  ; 2 uses
end_hunk_11
begin_hunk_12_@CALLER_SETUP_ARG:bb.a
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %rbimpl_RB_TYPE_P_fastpath.exit79

rbimpl_RB_TYPE_P_fastpath.exit79:                 ; preds = %bb.u
  %i.bp = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !77
  %i.br = and i64 %i.bq, 8223
  %or.cond.not = icmp eq i64 %i.br, 8200
  br i1 %or.cond.not, label %bb.v, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit79
  %i.bs = tail call i64 @rb_ary_pop(i64 noundef %i.av) #23 ; 0 uses
  %i.bt = load i64, ptr %i.bp, align 8, !tbaa !77 ; 2 uses
  %i.bu = and i64 %i.bt, 32768
  %.not.i.i.i88 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i88, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = lshr i64 %i.bt, 16
  %i.bw = and i64 %i.bv, 15
  br label %RHASH_EMPTY_P.exit90

bb.x:                                             ; preds = %bb.v
  %i.bx = add i64 %i.bk, 24
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit90

RHASH_EMPTY_P.exit90:                             ; preds = %bb.w, %bb.x
  %.0.i.i89 = phi i64 [ %i.bw, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i64 %.0.i.i89, 0
  br i1 %i.cb, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %bb.y

bb.y:                                             ; preds = %RHASH_EMPTY_P.exit90
  %i.cc = tail call i64 @rb_hash_dup(i64 noundef %i.bk) #23
  %i.cd = tail call i64 @rb_ary_push(i64 noundef %i.av, i64 noundef %i.cc) #23 ; 0 uses
  %i.ce = getelementptr i8, ptr %1, i64 36
  store i8 1, ptr %i.ce, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.z:                                             ; preds = %bb.n, %bb.m
  br i1 %.not.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = trunc i64 %i.a to i32
  %i.cg = lshr i32 %i.cf, 16
  br label %vm_ci_flag.exit93

bb.ab:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %2, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !173
  %i.cj = trunc i64 %i.ci to i32
  br label %vm_ci_flag.exit93

vm_ci_flag.exit93:                                ; preds = %bb.aa, %bb.ab
  %.0.i92 = phi i32 [ %i.cg, %bb.aa ], [ %i.cj, %bb.ab ]
  %i.ck = and i32 %.0.i92, 32
  %.not73 = icmp eq i32 %i.ck, 0
  br i1 %.not73, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ac:                                            ; preds = %vm_ci_flag.exit93
  %i.cl = load i32, ptr %i.l, align 8, !tbaa !230 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.co = getelementptr i8, ptr %i.cn, i64 -8     ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11 ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = and i64 %i.cp, 7
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.ad
  %i.cu = inttoptr i64 %i.cp to ptr
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !77 ; 3 uses
  %i.cw = and i64 %i.cv, 8223
  %or.cond120.not = icmp eq i64 %i.cw, 8200
  br i1 %or.cond120.not, label %bb.ae, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ae:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cx = and i64 %i.cv, 32768
  %.not.i.i.i94 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i94, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cy = lshr i64 %i.cv, 16
  %i.cz = and i64 %i.cy, 15
  br label %RHASH_EMPTY_P.exit96

bb.ag:                                            ; preds = %bb.ae
  %i.da = add i64 %i.cp, 24
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit96

RHASH_EMPTY_P.exit96:                             ; preds = %bb.af, %bb.ag
  %.0.i.i95 = phi i64 [ %i.cz, %bb.af ], [ %i.dd, %bb.ag ]
  %i.de = icmp eq i64 %.0.i.i95, 0
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %RHASH_EMPTY_P.exit96
  %i.df = add nsw i32 %i.cl, -1
  store i32 %i.df, ptr %i.l, align 8, !tbaa !230
  store ptr %i.co, ptr %i.j, align 8, !tbaa !73
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ai:                                            ; preds = %RHASH_EMPTY_P.exit96
  %i.dg = tail call i64 @rb_hash_dup(i64 noundef %i.cp) #23
  store i64 %i.dg, ptr %i.co, align 8, !tbaa !11
  %i.dh = getelementptr i8, ptr %1, i64 36
  store i8 1, ptr %i.dh, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

vm_ci_flag.exit99:                                ; preds = %vm_ci_flag.exit
  %i.di = and i64 %i.a, 4194304
  %.not67 = icmp eq i64 %i.di, 0
  br i1 %.not67, label %bb.ap, label %bb.aj, !prof !72

vm_ci_flag.exit99.thread:                         ; preds = %vm_ci_flag.exit.thread
  %i.dj = and i64 %i.d, 64
  %.not67112 = icmp eq i64 %i.dj, 0
  br i1 %.not67112, label %.thread113, label %bb.aj, !prof !72

bb.aj:                                            ; preds = %vm_ci_flag.exit99.thread, %vm_ci_flag.exit99
  %i.dk = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8     ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = tail call fastcc i64 @vm_caller_setup_keyword_hash(ptr noundef %2, i64 noundef %i.dn) ; 4 uses
  %i.dp = icmp eq i64 %i.do, 4
  br i1 %i.dp, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = inttoptr i64 %i.do to ptr
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !77 ; 2 uses
  %i.ds = and i64 %i.dr, 32768
  %.not.i.i.i100 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i100, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dt = lshr i64 %i.dr, 16
  %i.du = and i64 %i.dt, 15
  br label %RHASH_EMPTY_P.exit102

bb.am:                                            ; preds = %bb.ak
  %i.dv = add i64 %i.do, 24
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit102

RHASH_EMPTY_P.exit102:                            ; preds = %bb.al, %bb.am
  %.0.i.i101 = phi i64 [ %i.du, %bb.al ], [ %i.dy, %bb.am ]
  %i.dz = icmp eq i64 %.0.i.i101, 0
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %RHASH_EMPTY_P.exit102, %bb.aj
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !73
  %i.ea = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !230
  %i.ec = add i32 %i.eb, -1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !230
  %i.ed = getelementptr i8, ptr %1, i64 36
  store i8 0, ptr %i.ed, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ao:                                            ; preds = %RHASH_EMPTY_P.exit102
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !11
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ap:                                            ; preds = %vm_ci_flag.exit99
  %i.ee = trunc i64 %i.a to i32
  %i.ef = lshr i32 %i.ee, 16
  br label %vm_ci_flag.exit105

.thread113:                                       ; preds = %vm_ci_flag.exit99.thread
  %i.eg = trunc i64 %i.d to i32
  br label %vm_ci_flag.exit105

vm_ci_flag.exit105:                               ; preds = %bb.ap, %.thread113
  %.0.i104 = phi i32 [ %i.ef, %bb.ap ], [ %i.eg, %.thread113 ]
  %i.eh = and i32 %.0.i104, 32
  %.not68 = icmp eq i32 %i.eh, 0
  br i1 %.not68, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %bb.aq, !prof !72

bb.aq:                                            ; preds = %vm_ci_flag.exit105
  tail call fastcc void @vm_caller_setup_arg_kw(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

rbimpl_RB_TYPE_P_fastpath.exit79.thread:          ; preds = %bb.ad, %bb.u, %bb.an, %bb.ao, %RHASH_EMPTY_P.exit90, %bb.y, %rbimpl_RB_TYPE_P_fastpath.exit79, %rb_array_len.exit, %vm_ci_flag.exit86, %bb.ah, %bb.ai, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.ac, %vm_ci_flag.exit93, %bb.c, %bb.k, %bb.j, %bb.i, %bb.l, %bb.aq, %vm_ci_flag.exit105
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_attrset_direct(ptr noundef captures(none) %0, ptr noundef captures(address) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 10 uses
  %i.e = getelementptr i8, ptr %i.b, i64 -16
  store ptr %i.e, ptr %i.a, align 8, !tbaa !73
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.g to i32 ; 6 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.g, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16
  %i.h = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.j = getelementptr i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %i.n = icmp ne i64 %2, 0
  %i.o = and i64 %2, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not3.i.i = and i1 %i.n, %i.p
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !168

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.q = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 4 uses
  %i.s = and i64 %i.r, 2048
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.t = and i64 %i.r, 31
  %i.u = icmp ne i64 %i.t, 5
  %i.v = and i64 %i.r, 49152
  %.not8.i = icmp eq i64 %i.v, 0
  %or.cond.i = or i1 %i.u, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !455

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %2) #23
  %.pre = load i64, ptr %i.q, align 8, !tbaa !77
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.w = phi i64 [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ] ; 10 uses
  %i.x = and i64 %i.w, 31
  %cond.i = icmp eq i64 %i.x, 1
  br i1 %cond.i, label %bb.c, label %vm_setivar.exit.thread

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.y = lshr i64 %i.w, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 4 uses
  %i.aa = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %i.z
  br i1 %i.aa, label %bb.i, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %.not.i26 = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, -1
  br i1 %.not.i26, label %vm_setivar.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = xor i32 %i.z, %.sroa.0.0.extract.trunc.i.i
  %i.ac = and i32 %i.ab, 264241152
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %RSHAPE_DIRECT_CHILD_P.exit.i, label %vm_setivar.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.i:                     ; preds = %bb.e
  %i.ae = and i64 %i.g, 524287
  %i.af = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.ag = getelementptr [40 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !106
  %i.aj = and i32 %i.z, 524287
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %vm_setivar.exit.thread

bb.f:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit.i
  %i.al = getelementptr i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !109
  %i.an = icmp eq i64 %i.am, %i.m
  br i1 %i.an, label %bb.g, label %vm_setivar.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %i.z)
  %i.ap = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %.sroa.0.0.extract.trunc.i.i)
  %i.aq = icmp eq i16 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %vm_setivar.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ar = and i64 %i.w, 4294967265
  %i.as = shl i64 %i.g, 32
  %i.at = or disjoint i64 %i.ar, %i.as            ; 2 uses
  store i64 %i.at, ptr %i.q, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.au = phi i64 [ %i.w, %bb.c ], [ %i.at, %bb.h ]
  %i.av = and i64 %i.au, 65536
  %.not.i.i = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.q, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27
  br label %ROBJECT_FIELDS.exit.i

ROBJECT_FIELDS.exit.i:                            ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.ax, %bb.j ], [ %i.aw, %bb.i ]
  %i.ay = zext i16 %i.h to i64
  %i.az = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ay
  store i64 %i.d, ptr %i.az, align 8, !tbaa !11
  %i.ba = icmp eq i64 %i.d, 0
  %i.bb = and i64 %i.d, 7
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %vm_setivar.exit, label %bb.k

bb.k:                                             ; preds = %ROBJECT_FIELDS.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.d) #23
  br label %vm_setivar.exit

vm_setivar.exit:                                  ; preds = %ROBJECT_FIELDS.exit.i, %bb.k
  %i.be = icmp eq i64 %i.d, 36
  br i1 %i.be, label %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, label %bb.o

vm_setivar.exit.vm_setivar.exit.thread_crit_edge: ; preds = %vm_setivar.exit
  %.pre7 = load i64, ptr %i.q, align 8, !tbaa !77
  br label %vm_setivar.exit.thread

vm_setivar.exit.thread:                           ; preds = %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, %bb.e, %bb.d, %bb.f, %bb.g, %RSHAPE_DIRECT_CHILD_P.exit.i, %rb_check_frozen_inline.exit
  %i.bf = phi i64 [ %.pre7, %vm_setivar.exit.vm_setivar.exit.thread_crit_edge ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %i.w, %RSHAPE_DIRECT_CHILD_P.exit.i ], [ %i.w, %rb_check_frozen_inline.exit ]
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 31
  switch i32 %i.bh, label %bb.m [
    i32 1, label %bb.n
    i32 2, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %vm_setivar.exit.thread, %vm_setivar.exit.thread
  %i.bi = tail call fastcc i64 @vm_setivar_class(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.h) ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 36
  br i1 %i.bj, label %bb.n, label %bb.o

bb.m:                                             ; preds = %vm_setivar.exit.thread
  %i.bk = tail call fastcc i64 @vm_setivar_default(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.h) ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 36
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %vm_setivar.exit.thread
  %i.bm = tail call fastcc i64 @vm_setivar_slowpath_attr(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, ptr noundef nonnull %1) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %vm_setivar.exit, %bb.n, %bb.m, %bb.l
  %.025 = phi i64 [ %i.bk, %bb.m ], [ %i.bi, %bb.l ], [ %i.d, %bb.n ], [ %i.d, %vm_setivar.exit ]
  ret i64 %.025
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_attrset(ptr readnone captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !229
  %i.e = tail call fastcc i64 @vm_call_attrset_direct(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_ivar(ptr readnone captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233  ; 6 uses
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  store ptr %i.h, ptr %i.f, align 8, !tbaa !73
  %i.i = getelementptr i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !229  ; 7 uses
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %.val = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.l = getelementptr i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = icmp eq i64 %i.j, 0
  %i.q = and i64 %i.j, 7
  %i.r = icmp ne i64 %i.q, 0
end_hunk_12
begin_hunk_13_@argument_arity_error:bb.a
  %i.ad = tail call i64 @rb_str_cat(i64 noundef %i.u, ptr noundef nonnull @.str.151, i64 noundef 1) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.024 = phi i32 [ %i.q, %bb.f ], [ %i.ak, %bb.g ]
  %.0 = phi ptr [ %i.t, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  %i.ae = tail call i64 @rb_str_cat(i64 noundef %i.u, ptr noundef nonnull @.str.152, i64 noundef 1) #23 ; 0 uses
  %i.af = getelementptr i8, ptr %.0, i64 8
  %i.ag = load i64, ptr %.0, align 8, !tbaa !11
  %i.ah = tail call i64 @rb_id2str(i64 noundef %i.ag) #23
  %i.ai = tail call i64 @rb_str_append(i64 noundef %i.u, i64 noundef %i.ah) #23 ; 0 uses
  %i.aj = tail call i64 @rb_str_cat(i64 noundef %i.u, ptr noundef nonnull @.str.153, i64 noundef 1) #23 ; 0 uses
  %i.ak = add i32 %.024, -1                       ; 2 uses
  %.not26 = icmp eq i32 %i.ak, 0
  br i1 %.not26, label %bb.h, label %bb.g, !llvm.loop !727

bb.h:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.v, align 8, !tbaa !77
  %i.am = and i64 %i.al, 8192
  %.not.i = icmp eq i64 %i.am, 0
  %i.an = getelementptr i8, ptr %i.v, i64 24      ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.h, %bb.i
  %i.ap = phi ptr [ %i.ao, %bb.i ], [ %i.an, %bb.h ]
  %i.aq = load i64, ptr %i.w, align 8, !tbaa !513
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  store i8 41, ptr %i.as, align 1, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %RSTRING_PTR.exit, %rb_arity_error_new.exit
  tail call fastcc void @raise_argument_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.h) #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_single_noarg_leaf_builtin(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !230
  %i.g = add i32 %i.f, 1
  %i.h = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k
  store ptr %i.l, ptr %i.h, align 8, !tbaa !73
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !377
  %i.n = getelementptr i8, ptr %2, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !229
  %i.p = tail call i64 %i.m(ptr noundef %0, i64 noundef %i.o) #23, !inline_history !728
  ret i64 %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_opt_start(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val19 = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val19, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val21 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.g = getelementptr i8, ptr %.val21, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 7 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !175
  %i.k = getelementptr i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !230  ; 2 uses
  %i.m = sub i32 %i.l, %i.j                       ; 2 uses
  %i.n = getelementptr i8, ptr %i.h, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !714
  %i.p = getelementptr i8, ptr %i.h, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !718
  %i.r = sext i32 %i.m to i64
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr i8, ptr %i.h, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !191
  %i.w = getelementptr i8, ptr %i.h, i64 240
  %i.x = load i32, ptr %i.w, align 8, !tbaa !190
  %.neg = sub i32 %i.m, %i.o
  %i.y = add i32 %i.v, %.neg                      ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = sext i32 %i.l to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = sext i32 %i.y to i64
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae ; 5 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 -8
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !73
  %i.ah = getelementptr i8, ptr %2, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !229
  %i.aj = getelementptr i8, ptr %2, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !228
  %i.al = getelementptr i8, ptr %i.h, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.an = sub i32 %i.x, %i.y                      ; 5 uses
  %i.ao = getelementptr i8, ptr %i.h, i64 264
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !355
  %i.aq = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70 ; 6 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -56    ; 3 uses
  %i.at = add i32 %i.ap, %i.an
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 56
  %.not.i = icmp ugt ptr %i.as, %i.aw
  br i1 %.not.i, label %.preheader.i, label %bb.b, !prof !72

.preheader.i:                                     ; preds = %bb.a
  %i.ax = icmp sgt i32 %i.an, 0
  br i1 %i.ax, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ay = zext nneg i32 %i.an to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ay, 2147483644              ; 4 uses
  %i.az = shl nuw nsw i64 %n.vec, 3
  %i.ba = getelementptr i8, ptr %i.af, i64 %i.az  ; 2 uses
  %i.bb = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.bd, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !729

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ay
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader24

.lr.ph.i.preheader24:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.af, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader24, %.lr.ph.i
  %.026.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader24 ] ; 2 uses
  %.02325.i = phi i32 [ %i.bg, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader24 ]
  %i.bf = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.bg = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bg, %i.an
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !730

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.af, %.preheader.i ], [ %i.ba, %middle.block ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %sext = shl i64 %i.t, 32
  %i.bh = ashr exact i64 %sext, 29
  %i.bi = getelementptr i8, ptr %i.am, i64 %i.bh
  %i.bj = ptrtoint ptr %.val19 to i64
  %i.bk = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.bj, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.bl = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.ak, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.bl, align 8, !tbaa !11
  store ptr %i.bi, ptr %i.as, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -48
  store ptr %i.bm, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -40
  store ptr %.val21, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -32
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -24
  store ptr %i.bl, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.ar, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_tailcall_opt_start(ptr noundef captures(address) %0, ptr noundef %1, ptr noundef captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val10 = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %.val10, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !175
  %i.k = getelementptr i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !230
  %i.m = sub i32 %i.l, %i.j
  %i.n = getelementptr i8, ptr %i.h, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !718
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = trunc i64 %i.r to i32
  tail call fastcc void @vm_call_iseq_setup_tailcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.s)
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, i32 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef writeonly captures(none) %6) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !726  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !725  ; 3 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !723  ; 4 uses
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !731
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.m = icmp sgt i32 %4, 0
  %wide.trip.count.i = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.0128 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.g ] ; 3 uses
  %.086126 = phi i32 [ 0, %.lr.ph ], [ %.187, %bb.g ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %6, i64 %indvars.iv
  %i.q = tail call i64 @rb_id2sym(i64 noundef %i.o) #23
  br i1 %i.m, label %.lr.ph.i, label %.loopexit123

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit123, label %.lr.ph.i, !llvm.loop !732

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  store i64 %i.v, ptr %i.p, align 8, !tbaa !11
  store i64 36, ptr %i.u, align 8, !tbaa !11
  %i.w = add i32 %.086126, 1
  br label %bb.g

.loopexit123:                                     ; preds = %bb.c, %bb.b
  %.not102 = icmp eq i64 %.0128, 0
  br i1 %.not102, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit123
  %i.x = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23
  br label %bb.f

bb.f:                                             ; preds = %.loopexit123, %bb.e
  %.1 = phi i64 [ %.0128, %.loopexit123 ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = tail call i64 @rb_id2sym(i64 noundef %i.o) #23
  %i.z = tail call i64 @rb_ary_push(i64 noundef %.1, i64 noundef %i.y) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.187 = phi i32 [ %i.w, %bb.d ], [ %.086126, %bb.f ] ; 2 uses
  %.2 = phi i64 [ %.0128, %bb.d ], [ %.1, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !733

._crit_edge:                                      ; preds = %bb.g
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.082.lcssa164 = phi i32 [ %i.h, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.086.lcssa163 = phi i32 [ %.187, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.aa = icmp slt i32 %.082.lcssa164, %i.i
  br i1 %i.aa, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %.preheader
  %i.ab = icmp sgt i32 %4, 0
  %wide.trip.count.i105 = zext nneg i32 %4 to i64
  %i.ac = zext nneg i32 %.082.lcssa164 to i64
  %i.ad = sub nsw i32 %i.i, %.082.lcssa164
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.154, i64 noundef %.2) #58
  unreachable

bb.i:                                             ; preds = %.lr.ph137, %bb.t
  %indvars.iv149 = phi i64 [ %i.ac, %.lr.ph137 ], [ %indvars.iv.next150, %bb.t ] ; 4 uses
  %.085135 = phi i32 [ 0, %.lr.ph137 ], [ %i.bg, %bb.t ] ; 3 uses
  %.288134 = phi i32 [ %.086.lcssa163, %.lr.ph137 ], [ %.3, %bb.t ] ; 4 uses
  %.089133 = phi i64 [ 4, %.lr.ph137 ], [ %.291, %bb.t ] ; 5 uses
  %.093132 = phi i32 [ 0, %.lr.ph137 ], [ %.194, %bb.t ] ; 5 uses
  %i.ae = getelementptr [8 x i8], ptr %6, i64 %indvars.iv149 ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv149
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %i.ag) #23
  br i1 %i.ab, label %.lr.ph.i106, label %.loopexit122

bb.j:                                             ; preds = %.lr.ph.i106
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i105
  br i1 %exitcond.not.i109, label %.loopexit122, label %.lr.ph.i106, !llvm.loop !732

.lr.ph.i106:                                      ; preds = %bb.i, %bb.j
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i107
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph.i106
  %i.al = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i107 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !11
  store i64 36, ptr %i.al, align 8, !tbaa !11
  %i.an = add i32 %.288134, 1
  br label %bb.t

.loopexit122:                                     ; preds = %bb.j, %bb.i
  %i.ao = sext i32 %.085135 to i64                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.k, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 36
  br i1 %i.ar, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.loopexit122
  store i64 4, ptr %i.ae, align 8, !tbaa !11
  %i.as = icmp samesign ult i64 %indvars.iv149, 31
  br i1 %i.as, label %bb.m, label %bb.n, !prof !72

bb.m:                                             ; preds = %bb.l
  %i.at = shl nuw i32 1, %.085135
  %i.au = or i32 %i.at, %.093132
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.av = icmp eq i64 %.089133, 4
  br i1 %i.av, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call i64 @rb_hash_new() #23        ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.r
  %indvars.iv145 = phi i64 [ 0, %bb.o ], [ %indvars.iv.next146, %bb.r ] ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv145 to i32
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = and i32 %i.ay, %.093132
  %.not100 = icmp eq i32 %i.az, 0
  br i1 %.not100, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = shl nuw nsw i64 %indvars.iv145, 1
  %i.bb = or disjoint i64 %i.ba, 1
  %i.bc = tail call i64 @rb_hash_aset(i64 noundef %i.aw, i64 noundef %i.bb, i64 noundef 20) #23 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, 31
  br i1 %exitcond148.not, label %.loopexit, label %bb.p, !llvm.loop !734

.loopexit:                                        ; preds = %bb.r, %bb.n
  %.190 = phi i64 [ %.089133, %bb.n ], [ %i.aw, %bb.r ] ; 2 uses
  %i.bd = shl nsw i64 %i.ao, 1
end_hunk_13
begin_hunk_14_@setup_parameters_complex:bb.a
  br i1 %.not.i.i613, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.ahv = lshr i64 %i.aht, 16
  %i.ahw = and i64 %i.ahv, 15
  br label %RHASH_SIZE.exit

bb.ha:                                            ; preds = %bb.gy
  %i.ahx = add i64 %.5341731, 24
  %i.ahy = inttoptr i64 %i.ahx to ptr
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 16
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.gz, %bb.ha
  %.0.i614 = phi i64 [ %i.ahw, %bb.gz ], [ %i.aia, %bb.ha ]
  %i.aib = icmp ne i64 %.0.i614, 0
  %or.cond16 = and i1 %cond.not, %i.aib
  br i1 %or.cond16, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %RHASH_SIZE.exit
  %i.aic = call i64 @rb_hash_keys(i64 noundef %.5341731) #23
  call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef nonnull @.str.155, i64 noundef %i.aic) #58
  unreachable

bb.hc:                                            ; preds = %bb.gm, %bb.gq, %check_kwrestarg.exit610, %args_setup_kw_rest_parameter.exit, %RHASH_SIZE.exit, %bb.gx
  %i.aid = load ptr, ptr %i.c, align 8, !tbaa !124 ; 3 uses
  %i.aie = getelementptr i8, ptr %i.aid, i64 16
  %i.aif = load i16, ptr %i.aie, align 8
  %i.aig = and i16 %i.aif, 64
  %.not444 = icmp eq i16 %i.aig, 0
  br i1 %.not444, label %bb.hi, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aih = getelementptr i8, ptr %i.aid, i64 176
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !700
  %i.aij = icmp eq ptr %i.aii, %1
  br i1 %i.aij, label %bb.hi, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aik = getelementptr i8, ptr %i.aid, i64 44
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !777
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr [8 x i8], ptr %4, i64 %i.aim
  %i.aio = getelementptr i8, ptr %2, i64 16
  %.val467 = load i64, ptr %i.aio, align 8, !tbaa !228 ; 9 uses
  %i.aip = icmp eq i64 %.val467, 0
  br i1 %i.aip, label %args_setup_block_parameter.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aiq = and i64 %.val467, 3
  switch i64 %i.aiq, label %bb.hg [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.hg:                                            ; preds = %bb.hf
  %i.air = and i64 %.val467, 255
  %i.ais = icmp eq i64 %i.air, 12
  br i1 %i.ais, label %vm_block_handler_type.exit.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ait = and i64 %.val467, 7
  %.not.i.i616 = icmp eq i64 %i.ait, 0
  br i1 %.not.i.i616, label %RB_SYMBOL_P.exit.i.i.i, label %args_setup_block_parameter.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.hh
  %i.aiu = inttoptr i64 %.val467 to ptr
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.aiv
  %i.aiw = and i64 %.fr10.i.i.i, 31
  %i.aix = icmp eq i64 %i.aiw, 20
  br i1 %i.aix, label %vm_block_handler_type.exit.i.i, label %args_setup_block_parameter.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.hf, %bb.hf
  %i.aiy = and i64 %.val467, -4
  %i.aiz = inttoptr i64 %i.aiy to ptr
  %i.aja = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.ajb = call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.aiz, i64 noundef %i.aja, i8 noundef signext 0), !inline_history !78
  br label %args_setup_block_parameter.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.hg
  %i.ajc = call i64 @rb_sym_to_proc(i64 noundef %.val467) #23
  br label %args_setup_block_parameter.exit

args_setup_block_parameter.exit:                  ; preds = %bb.he, %bb.hh, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i615 = phi i64 [ 4, %bb.he ], [ %i.ajb, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.ajc, %vm_block_handler_type.exit.i.i ], [ %.val467, %bb.hh ], [ %.val467, %RB_SYMBOL_P.exit.i.i.i ]
  store i64 %.0.i.i615, ptr %i.ain, align 8, !tbaa !11
  br label %bb.hi

bb.hi:                                            ; preds = %args_setup_block_parameter.exit, %bb.hd, %bb.hc
  %i.ajd = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aje = getelementptr i8, ptr %i.ajd, i64 8
  store ptr %i.ab, ptr %i.aje, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %.0335
}

declare zeroext i1 @rb_warning_category_enabled_p(i32 noundef) local_unnamed_addr #4

declare i32 @rb_set_table_lookup(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_method_entry_location(ptr noundef) local_unnamed_addr #4

declare i64 @rb_gen_method_name(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @raise_argument_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 5 uses
  %i.e = getelementptr i8, ptr %i.b, i64 -56      ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 56
  %.not.i = icmp ugt ptr %i.e, %i.f
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.d, align 8, !tbaa !11
  %i.m = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr i8, ptr %i.d, i64 24
  store i64 2040070147, ptr %i.m, align 8, !tbaa !11
  store ptr %i.j, ptr %i.e, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -48
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -40
  store ptr %1, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -32
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -24
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.e, ptr %i.a, align 8, !tbaa !70
  %i.o = tail call i64 @rb_ec_backtrace_object(ptr noundef nonnull %0) #23
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 8
  %i.s = getelementptr i8, ptr %0, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !71
  %i.u = xor i32 %i.t, -1
  %i.v = and i32 %i.r, %i.u
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %vm_push_frame.exit
  %i.w = getelementptr i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.x = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %vm_push_frame.exit, %bb.d
  %i.y = getelementptr i8, ptr %i.p, i64 56
  store ptr %i.y, ptr %i.a, align 8, !tbaa !70
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.z = tail call i64 @rb_ec_backtrace_object(ptr noundef %0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rb_vm_pop_frame.exit
  %.0 = phi i64 [ %i.o, %rb_vm_pop_frame.exit ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = tail call i64 @rb_ivar_set(i64 noundef %3, i64 noundef 3457, i64 noundef %.0) #23 ; 0 uses
  %i.ab = tail call i64 @rb_exc_set_backtrace(i64 noundef %3, i64 noundef %.0) #23 ; 0 uses
  tail call void @rb_exc_raise(i64 noundef %3) #42
  unreachable
}

declare i64 @rb_exc_set_backtrace(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_invoker0(ptr noundef %0, i64 noundef %1, ptr readnone captures(none) %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = tail call i64 %3(ptr noundef %0, i64 noundef %1) #23
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_tailcall_0start(ptr noundef captures(address) %0, ptr noundef %1, ptr noundef captures(none) %2) #2 {
bb.a:
  tail call fastcc void @vm_call_iseq_setup_tailcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val9, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val11 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.g = getelementptr i8, ptr %.val11, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191  ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 240
  %i.l = load i32, ptr %i.k, align 8, !tbaa !190
  %i.m = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !230
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %i.r ; 2 uses
  %i.t = sext i32 %i.j to i64
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.t ; 5 uses
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  store ptr %i.v, ptr %i.m, align 8, !tbaa !73
  %i.w = getelementptr i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !229
  %i.y = getelementptr i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !228
  %i.aa = getelementptr i8, ptr %i.h, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = sub i32 %i.l, %i.j                      ; 5 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 264
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !355
  %i.af = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70 ; 6 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -56    ; 3 uses
  %i.ai = add i32 %i.ae, %i.ac
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.u, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 56
  %.not.i = icmp ugt ptr %i.ah, %i.al
  br i1 %.not.i, label %.preheader.i, label %bb.b, !prof !72

.preheader.i:                                     ; preds = %bb.a
  %i.am = icmp sgt i32 %i.ac, 0
  br i1 %i.am, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.an = zext nneg i32 %i.ac to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.an, 2147483644              ; 4 uses
  %i.ao = shl nuw nsw i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %i.u, i64 %i.ao   ; 2 uses
  %i.aq = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.as, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader14

.lr.ph.i.preheader14:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader14, %.lr.ph.i
  %.026.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader14 ] ; 2 uses
  %.02325.i = phi i32 [ %i.av, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader14 ]
  %i.au = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.av = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.av, %i.ac
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !779

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.u, %.preheader.i ], [ %i.ap, %middle.block ], [ %i.au, %.lr.ph.i ] ; 4 uses
  %i.aw = ptrtoint ptr %.val9 to i64
  %i.ax = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.aw, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.ay = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.ay, align 8, !tbaa !11
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -48
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -40
  store ptr %.val11, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -32
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -24
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @vm_call_iseq_setup_tailcall(ptr noundef captures(address) %0, ptr noundef %1, ptr noundef captures(none) %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr i8, ptr %2, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !230
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr [8 x i8], ptr %i.d, i64 %i.i ; 10 uses
  %i.k = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.k, align 8, !tbaa !187 ; 2 uses
  %i.l = getelementptr i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val49 = load ptr, ptr %i.n, align 8, !tbaa !27 ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.val50 = load ptr, ptr %i.o, align 8, !tbaa !15
  %.val50.val = load i64, ptr %.val50, align 8, !tbaa !11
  %i.p = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !228
  %i.r = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.s = and i64 %i.q, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.not51 = icmp eq ptr %i.r, %i.t
  br i1 %.not51, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %1, i64 80
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr i8, ptr %1, i64 96
  store i64 %i.w, ptr %i.x, align 8, !tbaa !27
  %i.y = load i64, ptr %i.p, align 8, !tbaa !228
  %i.z = and i64 %i.y, 3
  %.not52 = icmp eq i64 %i.z, 1
  %i.aa = ptrtoint ptr %i.u to i64
  %storemerge.v = select i1 %.not52, i64 1, i64 3
  %storemerge = or i64 %storemerge.v, %i.aa
  store i64 %storemerge, ptr %i.p, align 8, !tbaa !228
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = getelementptr i8, ptr %0, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !71
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.ac, %i.af
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %vm_pop_frame.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ai = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit

vm_pop_frame.exit:                                ; preds = %bb.c, %bb.d
  %i.aj = getelementptr i8, ptr %1, i64 56
  %i.ak = getelementptr i8, ptr %0, i64 16        ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !70
  %i.al = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 4 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !229 ; 2 uses
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !11
  %i.aq = getelementptr i8, ptr %.val49, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !124 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !191 ; 4 uses
  %.04555 = getelementptr i8, ptr %i.am, i64 8    ; 5 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vm_pop_frame.exit
  %wide.trip.count = zext i32 %i.at to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.at, 14
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.au = shl nsw i64 %i.h, 3
  %i.av = add i64 %i.au, %i.an
  %i.aw = add i64 %i.av, 8
  %i.ax = sub i64 %i.aw, %i.e
  %diff.check = icmp ult i64 %i.ax, 32
  br i1 %diff.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.ay = shl nuw nsw i64 %n.vec, 3
  %i.az = getelementptr i8, ptr %.04555, i64 %i.ay ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.04555, i64 %i.ba ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %wide.load = load <2 x i64>, ptr %i.bb, align 8, !tbaa !11
  %wide.load2 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !11
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> %wide.load2, ptr %i.bd, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.04557.ph = phi ptr [ %.04555, %vector.memcheck ], [ %.04555, %.lr.ph.preheader ], [ %i.az, %middle.block ] ; 2 uses
  %i.bf = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader18, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.04557.prol = phi ptr [ %.045.prol, %.lr.ph.prol ], [ %.04557.ph, %.lr.ph.preheader18 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader18 ]
  %i.bg = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.prol
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  store i64 %i.bh, ptr %.04557.prol, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %.045.prol = getelementptr i8, ptr %.04557.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !781

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.045.lcssa19.unr = phi ptr [ poison, %.lr.ph.preheader18 ], [ %.045.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader18 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.04557.unr = phi ptr [ %.04557.ph, %.lr.ph.preheader18 ], [ %.045.prol, %.lr.ph.prol ]
  %i.bi = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bj = icmp ugt i64 %i.bi, -8
  br i1 %i.bj, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04557 = phi ptr [ %.045.7, %.lr.ph ], [ %.04557.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bk = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  store i64 %i.bl, ptr %.04557, align 8, !tbaa !11
  %.045 = getelementptr i8, ptr %.04557, i64 8
  %i.bm = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  store i64 %i.bo, ptr %.045, align 8, !tbaa !11
  %.045.1 = getelementptr i8, ptr %.04557, i64 16
  %i.bp = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  store i64 %i.br, ptr %.045.1, align 8, !tbaa !11
  %.045.2 = getelementptr i8, ptr %.04557, i64 24
  %i.bs = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %i.bs, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  store i64 %i.bu, ptr %.045.2, align 8, !tbaa !11
  %.045.3 = getelementptr i8, ptr %.04557, i64 32
  %i.bv = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  store i64 %i.bx, ptr %.045.3, align 8, !tbaa !11
  %.045.4 = getelementptr i8, ptr %.04557, i64 40
  %i.by = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !11
  store i64 %i.ca, ptr %.045.4, align 8, !tbaa !11
  %.045.5 = getelementptr i8, ptr %.04557, i64 48
  %i.cb = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.cc = getelementptr i8, ptr %i.cb, i64 48
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11
  store i64 %i.cd, ptr %.045.5, align 8, !tbaa !11
  %.045.6 = getelementptr i8, ptr %.04557, i64 56
  %i.ce = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.cf = getelementptr i8, ptr %i.ce, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11
  store i64 %i.cg, ptr %.045.6, align 8, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.045.7 = getelementptr i8, ptr %.04557, i64 64 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !782

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.045.lcssa1 = phi ptr [ %i.az, %middle.block ], [ %.045.lcssa19.unr, %.lr.ph.prol.loopexit ], [ %.045.7, %.lr.ph ]
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !229
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %vm_pop_frame.exit
  %i.ch = phi i64 [ %i.ap, %vm_pop_frame.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.045.lcssa = phi ptr [ %.04555, %vm_pop_frame.exit ], [ %.045.lcssa1, %._crit_edge.loopexit ] ; 5 uses
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !228
  %i.cj = getelementptr i8, ptr %i.ar, i64 8
end_hunk_14
begin_hunk_15_@ci_missing_reason:bb.a
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

.preheader.i:                                     ; preds = %bb.a
  %i.al = icmp sgt i32 %i.ab, 0
  br i1 %i.al, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.am = zext nneg i32 %i.ab to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ab, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.am, 2147483644              ; 4 uses
  %i.an = shl nuw nsw i64 %n.vec, 3
  %i.ao = getelementptr i8, ptr %i.y, i64 %i.an   ; 2 uses
  %i.ap = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.ar, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !820

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.am
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader28

.lr.ph.i.preheader28:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.ao, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader28, %.lr.ph.i
  %.026.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader28 ] ; 2 uses
  %.02325.i = phi i32 [ %i.au, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader28 ]
  %i.at = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.au = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.au, %i.ab
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !821

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.y, %.preheader.i ], [ %i.ao, %middle.block ], [ %i.at, %.lr.ph.i ] ; 4 uses
  %i.av = sext i32 %i.q to i64
  %i.aw = getelementptr [8 x i8], ptr %i.w, i64 %i.av
  %i.ax = ptrtoint ptr %i.t to i64
  %i.ay = or i64 %i.ax, 1
  %i.az = select i1 %4, i64 572653825, i64 572653569
  %i.ba = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 0, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.bb = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !11
  store ptr %i.aw, ptr %i.ag, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -48
  store ptr %i.bc, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -40
  store ptr %i.d, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -32
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -24
  store ptr %i.bb, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_invoke_ifunc_block(ptr noundef captures(address) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef %3, i1 zeroext %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %5, -4
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %i.d, ptr noundef %2, ptr noundef %3, i32 noundef -3)
  %i.e = getelementptr i8, ptr %2, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !230  ; 3 uses
  %i.g = load i64, ptr %i.b, align 8, !tbaa !208
  %i.h = getelementptr i8, ptr %2, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !573  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = and i64 %i.k, 8192
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %rb_array_len.exit.i, label %rb_array_len.exit.i.thread

rb_array_len.exit.i:                              ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.j, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = add i64 %i.n, 2147483648
  %.not.i1.i = icmp ult i64 %i.o, 4294967296
  br i1 %.not.i1.i, label %bb.d, label %bb.c

rb_array_len.exit.i.thread:                       ; preds = %bb.b
  %i.p = trunc i64 %i.k to i32
  %i.q = lshr i32 %i.p, 15
  %i.r = and i32 %i.q, 127
  %i.s = getelementptr i8, ptr %i.j, i64 16
  br label %rb_array_const_ptr.exit

bb.c:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %i.n) #57
  unreachable

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.t = trunc nsw i64 %i.n to i32
  %i.u = getelementptr i8, ptr %i.j, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  %i.y = sext i32 %i.f to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %i.z
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.d, %rb_array_len.exit.i.thread, %bb.e
  %i.ab = phi i32 [ %i.f, %bb.e ], [ %i.r, %rb_array_len.exit.i.thread ], [ %i.t, %bb.d ]
  %i.ac = phi ptr [ %i.aa, %bb.e ], [ %i.s, %rb_array_len.exit.i.thread ], [ %i.v, %bb.d ]
  %i.ad = getelementptr i8, ptr %2, i64 36
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !231, !range !114, !noundef !64
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !228
  %i.ai = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.g, i32 noundef %i.ab, ptr noundef %i.ac, i32 noundef %i.af, i64 noundef %i.ah, ptr noundef null)
  %i.aj = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73
  %i.al = sext i32 %i.f to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.am
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !73
  ret i64 %i.ai
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_invoke_proc_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  br label %vm_proc_to_block_handler.exit

vm_proc_to_block_handler.exit:                    ; preds = %vm_proc_to_block_handler.exit.backedge, %bb.a
  %.09 = phi i64 [ %5, %bb.a ], [ %.09.be, %vm_proc_to_block_handler.exit.backedge ] ; 8 uses
  %.0.in = phi i1 [ %4, %bb.a ], [ %i.r, %vm_proc_to_block_handler.exit.backedge ]
  %i.a = and i64 %.09, 3
  switch i64 %i.a, label %bb.b [
    i64 1, label %vm_invoke_block.exit
    i64 3, label %vm_invoke_block.exit.loopexit
  ]

bb.b:                                             ; preds = %vm_proc_to_block_handler.exit
  %i.b = and i64 %.09, 255
  %i.c = icmp eq i64 %i.b, 12
  br i1 %i.c, label %vm_block_handler_type.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %.09, 0                      ; 2 uses
  %i.e = and i64 %.09, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %vm_block_handler_type.exit, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.c
  %i.h = inttoptr i64 %.09 to ptr                 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %.fr10.i = freeze i64 %i.i
  %i.j = and i64 %.fr10.i, 31
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %RB_SYMBOL_P.exit.i.i, label %vm_block_handler_type.exit.thread14

vm_block_handler_type.exit:                       ; preds = %bb.c
  %i.l = xor i1 %i.d, true
  tail call void @llvm.assume(i1 %i.l)
  %.pre43 = inttoptr i64 %.09 to ptr
  br label %vm_block_handler_type.exit.thread14

vm_block_handler_type.exit.thread14:              ; preds = %vm_block_handler_type.exit, %RB_SYMBOL_P.exit.i
  %.pre-phi44 = phi ptr [ %.pre43, %vm_block_handler_type.exit ], [ %i.h, %RB_SYMBOL_P.exit.i ]
  %i.m = getelementptr i8, ptr %.pre-phi44, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !546  ; 6 uses
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 2
  %i.r = icmp ne i8 %i.q, 0
  %i.s = getelementptr i8, ptr %i.n, i64 24
  %.val.i = load i32, ptr %i.s, align 8, !tbaa !458
  switch i32 %.val.i, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %vm_block_handler_type.exit.thread14
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = or i64 %i.t, 1
  br label %vm_proc_to_block_handler.exit.backedge

vm_proc_to_block_handler.exit.backedge:           ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.09.be = phi i64 [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.y, %bb.g ]
  br label %vm_proc_to_block_handler.exit, !llvm.loop !822

bb.e:                                             ; preds = %vm_block_handler_type.exit.thread14
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = or i64 %i.v, 3
  br label %vm_proc_to_block_handler.exit.backedge

bb.f:                                             ; preds = %vm_block_handler_type.exit.thread14
  %i.x = load i64, ptr %i.n, align 8, !tbaa !27
  br label %vm_proc_to_block_handler.exit.backedge

bb.g:                                             ; preds = %vm_block_handler_type.exit.thread14
  %i.y = load i64, ptr %i.n, align 8, !tbaa !27
  br label %vm_proc_to_block_handler.exit.backedge

bb.h:                                             ; preds = %vm_block_handler_type.exit.thread14
  unreachable

RB_SYMBOL_P.exit.i.i:                             ; preds = %RB_SYMBOL_P.exit.i
  %i.z = inttoptr i64 %.09 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !77
  %.fr10.i.i = freeze i64 %i.aa
  %i.ab = and i64 %.fr10.i.i, 31
  %i.ac = icmp eq i64 %i.ab, 20
  br i1 %i.ac, label %vm_block_handler_type.exit.i, label %vm_invoke_block.exit

vm_block_handler_type.exit.i:                     ; preds = %bb.b, %RB_SYMBOL_P.exit.i.i
  br label %vm_invoke_block.exit

vm_invoke_block.exit.loopexit:                    ; preds = %vm_proc_to_block_handler.exit
  br label %vm_invoke_block.exit

vm_invoke_block.exit:                             ; preds = %vm_proc_to_block_handler.exit, %vm_invoke_block.exit.loopexit, %RB_SYMBOL_P.exit.i.i, %vm_block_handler_type.exit.i
  %.0.i12 = phi ptr [ @vm_invoke_symbol_block, %vm_block_handler_type.exit.i ], [ @vm_invoke_ifunc_block, %vm_invoke_block.exit.loopexit ], [ @vm_invoke_proc_block, %RB_SYMBOL_P.exit.i.i ], [ @vm_invoke_iseq_block, %vm_proc_to_block_handler.exit ]
  %i.ad = tail call i64 %.0.i12(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.0.in, i64 noundef %.09) #23, !callees !260, !inline_history !819
  ret i64 %i.ad
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_invoke_symbol_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.a to i1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 16
  br label %vm_ci_flag.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !173
  %i.f = trunc i64 %i.e to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = and i32 %.0.i, 16
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr i8, ptr %2, i64 32         ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !230  ; 5 uses
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %vm_ci_flag.exit
end_hunk_15
