inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_mark_roots:bb.a
  %i.w = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 176
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !281  ; 3 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !282  ; 2 uses
  %.not.i.i.i26 = icmp ugt ptr %i.z, %i.y
  br i1 %.not.i.i.i26, label %bb.g, label %.thread7

bb.g:                                             ; preds = %.critedge23
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  tail call fastcc void @each_location(ptr noundef %i.y, i64 noundef %i.ad, ptr noundef nonnull @gc_mark_machine_stack_location_maybe)
  br label %.thread7

.thread7:                                         ; preds = %bb.g, %.critedge23
  %i.ae = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 200
  tail call fastcc void @each_location(ptr noundef readonly %i.ae, i64 noundef 25, ptr noundef nonnull @gc_mark_machine_stack_location_maybe)
  tail call void @rb_sym_global_symbols_mark_and_move() #46
  br label %bb.i

bb.h:                                             ; preds = %.thread6, %bb.f
  %i.af = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 200
  tail call fastcc void @each_location(ptr noundef readonly %i.af, i64 noundef 25, ptr noundef nonnull @gc_mark_machine_stack_location_maybe)
  store ptr @.str.271, ptr %0, align 8, !tbaa !398
  tail call void @rb_sym_global_symbols_mark_and_move() #46
  store ptr @.str.272, ptr %0, align 8, !tbaa !398
  br label %bb.i

bb.i:                                             ; preds = %.thread7, %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef nonnull ptr @rb_method_type_name(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 12
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.24, i32 noundef %0) #61
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_method_type_name, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef ptr @rb_raw_obj_info(ptr noundef returned %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.d = icmp eq i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i64 @rb_raw_obj_info_common(ptr noundef %0, i64 noundef %1, i64 noundef %2), !inline_history !399
  tail call fastcc void @rb_raw_obj_info_buitin_type(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.h)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.j = getelementptr i8, ptr %i.c, i64 896
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.c, i64 904
  %i.n = load i64, ptr %i.m, align 8, !tbaa !59
  %i.o = icmp uge i64 %i.n, %2
  %i.p = urem i64 %2, 40
  %.not.i.i = icmp eq i64 %i.p, 0
  %or.cond.i.i = and i1 %.not.i.i, %i.o
  br i1 %or.cond.i.i, label %bb.e, label %rb_gc_impl_pointer_to_heap_p.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.c, i64 872
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80   ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %rb_darray_size.exit.i.i.i

rb_darray_size.exit.i.i.i:                        ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !96   ; 2 uses
  %.not24.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not24.i.i.i.i, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %rb_darray_size.exit.i.i.i, %bb.h
  %.01621.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ 0, %rb_darray_size.exit.i.i.i ] ; 2 uses
  %.01720.i.i.i.i = phi i64 [ %.118.i.i.i.i, %bb.h ], [ %i.t, %rb_darray_size.exit.i.i.i ] ; 2 uses
  %i.u = add i64 %.01720.i.i.i.i, %.01621.i.i.i.i
  %i.v = lshr i64 %i.u, 1                         ; 3 uses
  %i.w = shl i64 %i.v, 3
  %i.x = getelementptr i8, ptr %i.s, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !99   ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !185 ; 2 uses
  %.not.i12.i.i.i = icmp ugt ptr %i.aa, %i.i
  br i1 %.not.i12.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, 65536
  %.not17.i.i.i = icmp ugt i64 %i.ac, %2
  br i1 %.not17.i.i.i, label %heap_page_for_ptr.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nuw i64 %i.v, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.118.i.i.i.i = phi i64 [ %.01720.i.i.i.i, %bb.g ], [ %i.v, %.lr.ph.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %.01621.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ae = icmp ult i64 %.1.i.i.i.i, %.118.i.i.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i, label %rb_gc_impl_pointer_to_heap_p.exit.thread, !llvm.loop !241

heap_page_for_ptr.exit.i.i:                       ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.y, i64 2
  %.val.i.i = load i16, ptr %i.af, align 2, !tbaa !108 ; 2 uses
  %i.ag = icmp eq i16 %.val.i.i, 0
  br i1 %i.ag, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %bb.i

bb.i:                                             ; preds = %heap_page_for_ptr.exit.i.i
  %i.ah = getelementptr i8, ptr %i.y, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !107 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, %2
  br i1 %i.aj, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = zext i16 %.val.i.i to i64
  %i.al = load i16, ptr %i.y, align 8, !tbaa !100 ; 2 uses
  %i.am = zext i16 %i.al to i64
  %i.an = shl nuw nsw i64 %i.ak, 32
  %sext.i.i = mul nuw i64 %i.an, %i.am
  %i.ao = ashr exact i64 %sext.i.i, 32
  %i.ap = add i64 %i.ao, %i.ai
  %.not23.i.i = icmp ugt i64 %i.ap, %2
  br i1 %.not23.i.i, label %rb_gc_impl_pointer_to_heap_p.exit, label %rb_gc_impl_pointer_to_heap_p.exit.thread

rb_gc_impl_pointer_to_heap_p.exit:                ; preds = %bb.j
  %i.aq = trunc i64 %2 to i16                     ; 2 uses
  %i.ar = urem i16 %i.aq, 40
  %.lhs.trunc27.i.i = sub nuw i16 %i.aq, %i.ar
  %i.as = urem i16 %.lhs.trunc27.i.i, %i.al
  %.not24.i.i = icmp eq i16 %i.as, 0
  br i1 %.not24.i.i, label %.preheader, label %rb_gc_impl_pointer_to_heap_p.exit.thread

rb_gc_impl_pointer_to_heap_p.exit.thread:         ; preds = %bb.h, %bb.e, %rb_darray_size.exit.i.i.i, %bb.i, %heap_page_for_ptr.exit.i.i, %bb.j, %bb.c, %bb.d, %rb_gc_impl_pointer_to_heap_p.exit
  %i.at = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.25, ptr noundef %i.i) #46 ; 0 uses
  br label %bb.k

.preheader:                                       ; preds = %rb_gc_impl_pointer_to_heap_p.exit
  %i.au = tail call fastcc i64 @rb_raw_obj_info_common(ptr noundef %0, i64 noundef %1, i64 noundef %2), !inline_history !399
  tail call fastcc void @rb_raw_obj_info_buitin_type(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.au)
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %rb_gc_impl_pointer_to_heap_p.exit.thread, %bb.b
  ret ptr %0
}

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: cold noreturn nounwind optsize sspstrong uwtable
define dso_local void @rb_memerror() local_unnamed_addr #25 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i32 @ruby_thread_has_gvl_p() #46
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !60

bb.b:                                             ; preds = %bb.a
  tail call void @rb_assert_failure(ptr noundef nonnull @.str.1, i32 noundef 5127, ptr noundef nonnull @__func__.rb_memerror, ptr noundef nonnull @.str.26) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.f = getelementptr i8, ptr %i.e, i64 536
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.not11 = icmp eq i64 %i.g, 0
  br i1 %.not11, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 144 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !400   ; 2 uses
  %i.j = and i8 %i.i, 4
  %.not12 = icmp eq i8 %i.j, 0
  br i1 %.not12, label %rb_ec_ractor_ptr.exit.i, label %bb.f

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.d
  %0 = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val = load ptr, ptr %0, align 8, !tbaa !16, !nonnull !29, !noundef !29 ; 2 uses
  %1 = getelementptr i8, ptr %.val, i64 32
  %2 = load ptr, ptr %1, align 8, !tbaa !225      ; 2 uses
  %3 = getelementptr i8, ptr %.val, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %i.k = getelementptr i8, ptr %2, i64 88
  %.val5.i = load ptr, ptr %i.k, align 8, !tbaa !401
  %i.l = icmp eq ptr %.val5.i, %4
  br i1 %i.l, label %bb.e, label %rb_ec_vm_lock_rec.exit

bb.e:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.m = getelementptr i8, ptr %2, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !402
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.e ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !403
  %i.q = getelementptr i8, ptr %i.p, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !404
  %.not13 = icmp eq i32 %.0.i, %i.r
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit, %bb.d, %bb.c
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.t = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @.str.27) #46 ; 0 uses
  tail call void @exit(i32 noundef 1) #61
  unreachable

bb.g:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %i.u = or disjoint i8 %i.i, 4
  store i8 %i.u, ptr %i.h, align 8, !tbaa !400
  %i.v = tail call i64 @ruby_vm_special_exception_copy(i64 noundef %i.g) #46
  %i.w = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128
  store i64 %i.v, ptr %i.w, align 8, !tbaa !406
  %.val15 = load ptr, ptr %i.o, align 8, !tbaa !403 ; 2 uses
  %i.x = getelementptr i8, ptr %.val15, i64 64
  store i32 6, ptr %i.x, align 8, !tbaa !407
  %i.y = getelementptr i8, ptr %.val15, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.y)
  unreachable
}

declare i32 @ruby_thread_has_gvl_p() local_unnamed_addr #11

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #26

declare i64 @ruby_vm_special_exception_copy(i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @ruby_malloc_size_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #27 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.28, i64 noundef %0, i64 noundef %1) #58
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @ruby_malloc_add_size_overflow(i64 noundef %0, i64 noundef %1) local_unnamed_addr #27 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.29, i64 noundef %0, i64 noundef %1) #58
  unreachable
}

; Function Attrs: nounwind sspstrong allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @ruby_xmalloc2(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.c = getelementptr i8, ptr %i.b, i64 1248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %rb_during_gc.exit.i.i.i.i, label %xmalloc2_size.exit.i, !prof !60

rb_during_gc.exit.i.i.i.i:                        ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 28
  %.val.i.i.i.i.i = load i16, ptr %i.h, align 4
  %i.i = and i16 %.val.i.i.i.i.i, 32
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i.i, label %rb_during_gc.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %rb_during_gc.exit.i.i.i.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i.i.i.i:                 ; preds = %rb_during_gc.exit.i.i.i.i
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.e, ptr noundef nonnull @.str.60, i64 noundef %0, i64 noundef %1, i64 noundef -1) #63
  unreachable

xmalloc2_size.exit.i:                             ; preds = %bb.a
  %i.j = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.c, label %rb_current_ractor_raw.exit.thread3.i.i

bb.c:                                             ; preds = %xmalloc2_size.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  store volatile ptr %i.l, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, null
  br i1 %.not.i.i, label %ruby_xmalloc2_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i2.i, label %ruby_xmalloc2_body.exit, label %rb_current_ractor_raw.exit.i.i

rb_current_ractor_raw.exit.i.i:                   ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %ruby_xmalloc2_body.exit, label %rb_current_ractor_raw.exit.thread3.i.i

rb_current_ractor_raw.exit.thread3.i.i:           ; preds = %rb_current_ractor_raw.exit.i.i, %xmalloc2_size.exit.i
  %.0.i5.i.i = phi ptr [ %i.o, %rb_current_ractor_raw.exit.i.i ], [ %i.j, %xmalloc2_size.exit.i ]
  %i.q = getelementptr i8, ptr %.0.i5.i.i, i64 448
  %i.r = load i8, ptr %i.q, align 8, !tbaa !202, !range !203, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = xor i1 %i.s, true
  br label %ruby_xmalloc2_body.exit

ruby_xmalloc2_body.exit:                          ; preds = %bb.c, %bb.d, %rb_current_ractor_raw.exit.i.i, %rb_current_ractor_raw.exit.thread3.i.i
  %i.u = phi i1 [ true, %rb_current_ractor_raw.exit.i.i ], [ %i.t, %rb_current_ractor_raw.exit.thread3.i.i ], [ true, %bb.c ], [ true, %bb.d ]
  %i.v = extractvalue { i64, i1 } %i.f, 0
  %i.w = tail call fastcc noalias noundef ptr @rb_gc_impl_malloc(ptr noundef %i.d, i64 noundef %i.v, i1 noundef zeroext %i.u) ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %handle_malloc_failure.exit, !prof !60

bb.e:                                             ; preds = %ruby_xmalloc2_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_xmalloc2_body.exit
  ret ptr %i.w
}

; Function Attrs: nounwind sspstrong allocsize(1) uwtable
define dso_local noalias nonnull ptr @ruby_sized_xrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @negative_size_allocation_error() #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %i.c, i64 1248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_current_ractor_raw.exit.thread3.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, null
  br i1 %.not.i.i, label %ruby_sized_xrealloc_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %ruby_sized_xrealloc_body.exit, label %rb_current_ractor_raw.exit.i.i

rb_current_ractor_raw.exit.i.i:                   ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ruby_sized_xrealloc_body.exit, label %rb_current_ractor_raw.exit.thread3.i.i

rb_current_ractor_raw.exit.thread3.i.i:           ; preds = %rb_current_ractor_raw.exit.i.i, %bb.c
  %.0.i5.i.i = phi ptr [ %i.k, %rb_current_ractor_raw.exit.i.i ], [ %i.f, %bb.c ]
  %i.m = getelementptr i8, ptr %.0.i5.i.i, i64 448
  %i.n = load i8, ptr %i.m, align 8, !tbaa !202, !range !203, !noundef !29
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i1 %i.o, true
  br label %ruby_sized_xrealloc_body.exit

ruby_sized_xrealloc_body.exit:                    ; preds = %bb.d, %bb.e, %rb_current_ractor_raw.exit.i.i, %rb_current_ractor_raw.exit.thread3.i.i
  %i.q = phi i1 [ true, %rb_current_ractor_raw.exit.i.i ], [ %i.p, %rb_current_ractor_raw.exit.thread3.i.i ], [ true, %bb.d ], [ true, %bb.e ]
  %i.r = tail call fastcc noalias noundef ptr @rb_gc_impl_realloc(ptr noundef %i.e, ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %i.q) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %handle_malloc_failure.exit, !prof !60

bb.f:                                             ; preds = %ruby_sized_xrealloc_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_sized_xrealloc_body.exit
  ret ptr %i.r
}

; Function Attrs: nounwind sspstrong allocsize(1) uwtable
define dso_local noalias nonnull ptr @ruby_xrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #28 {
bb.a:
end_hunk_0
begin_hunk_1_@finalize_deferred_heap_pages:bb.a
  %i.x = and i64 %i.w, 128
  %.not9.i.i = icmp eq i64 %i.x, 0
  br i1 %.not9.i.i, label %run_final.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %.017.i, 7
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %RB_FL_UNSET.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = and i64 %i.w, -129
  store i64 %i.aa, ptr %i.l, align 8, !tbaa !109
  br label %RB_FL_UNSET.exit.i.i

RB_FL_UNSET.exit.i.i:                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.ac = call i32 @rb_st_delete(ptr noundef %i.ab, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #46
  %.not10.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not10.i.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %RB_FL_UNSET.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.r, ptr %i.c, align 4, !tbaa !7
  %i.ad = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %rb_gc_vm_unlock.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #46
  br label %rb_gc_vm_unlock.exit.i.i

rb_gc_vm_unlock.exit.i.i:                         ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !59
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !109 ; 2 uses
  %i.ah = and i64 %i.ag, 8192
  %.not.i.i.i15.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i15.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_gc_vm_unlock.exit.i.i
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = lshr i64 %i.ag, 15
  %i.ak = and i64 %i.aj, 127
  br label %rb_array_len.exit.i.i

bb.l:                                             ; preds = %rb_gc_vm_unlock.exit.i.i
  %i.al = getelementptr i8, ptr %i.af, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !214
  %i.an = getelementptr i8, ptr %i.af, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !214
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.l, %bb.k
  %.in.i.i = phi ptr [ %i.ai, %bb.k ], [ %i.am, %bb.l ]
  %.0.i.i.i = phi i64 [ %i.ak, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = load i64, ptr %.in.i.i, align 8, !tbaa !59
  %i.aq = add i64 %.0.i.i.i, -1
  call fastcc void @rb_gc_run_obj_finalizer(i64 noundef %i.ap, i64 noundef %i.aq, ptr noundef nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.ar = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i11.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i11.i.i, label %bb.m, label %rb_gc_vm_lock.exit.i.i

bb.m:                                             ; preds = %rb_array_len.exit.i.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #46
  %.pre.i.i.i = load i32, ptr %i.b, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i.i

rb_gc_vm_lock.exit.i.i:                           ; preds = %bb.m, %rb_array_len.exit.i.i
  %i.as = phi i32 [ 0, %rb_array_len.exit.i.i ], [ %.pre.i.i.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  br label %run_final.exit.i

bb.n:                                             ; preds = %RB_FL_UNSET.exit.i.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.100) #61
  unreachable

run_final.exit.i:                                 ; preds = %rb_gc_vm_lock.exit.i.i, %bb.f
  %.0.i.i = phi i32 [ %i.as, %rb_gc_vm_lock.exit.i.i ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.at = getelementptr i8, ptr %i.q, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !431 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 56     ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !154
  %i.ax = add i64 %i.aw, -1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !154
  %i.ay = getelementptr i8, ptr %i.q, i64 4       ; 2 uses
  %i.az = load <2 x i16>, ptr %i.ay, align 4, !tbaa !276
  %i.ba = add <2 x i16> %i.az, <i16 1, i16 -1>
  store <2 x i16> %i.ba, ptr %i.ay, align 4, !tbaa !276
  %i.bb = load ptr, ptr %i.p, align 65536, !tbaa !113
  %i.bc = getelementptr i8, ptr %i.bb, i64 1320
  %.lhs.trunc.i.i = trunc i64 %.017.i to i16      ; 2 uses
  %i.bd = udiv i16 %.lhs.trunc.i.i, 40
  %i.be = shl nuw nsw i16 %i.bd, 1
  %i.bf = and i16 %i.be, 62
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = shl nuw i64 3, %i.bg
  %i.bi = xor i64 %i.bh, -1
  %i.bj = udiv i16 %.lhs.trunc.i.i, 1280
  %.zext8.i.i = zext nneg i16 %i.bj to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bc, i64 %.zext8.i.i ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !59
  %i.bm = and i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !59
  store i64 0, ptr %i.l, align 8, !tbaa !432
  %i.bn = getelementptr i8, ptr %i.q, i64 48      ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !433
  store ptr %i.bo, ptr %i.m, align 8, !tbaa !196
  store ptr %i.l, ptr %i.bn, align 8, !tbaa !433
  %i.bp = getelementptr i8, ptr %i.au, i64 48     ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !153
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.0.i.i, ptr %i.a, align 4, !tbaa !7
  %i.bs = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i16.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i16.i, label %bb.o, label %rb_gc_vm_unlock.exit.i

bb.o:                                             ; preds = %run_final.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46
  %.pre.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  br label %rb_gc_vm_unlock.exit.i

rb_gc_vm_unlock.exit.i:                           ; preds = %bb.o, %run_final.exit.i
  %i.bt = phi ptr [ %i.bs, %run_final.exit.i ], [ %.pre.i, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %finalize_list.exit, label %bb.c, !llvm.loop !434

finalize_list.exit:                               ; preds = %rb_gc_vm_unlock.exit.i
  %i.bu = atomicrmw volatile xchg ptr %i.g, i64 0 seq_cst, align 8 ; 2 uses
  %.not = icmp eq i64 %i.bu, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !435

._crit_edge:                                      ; preds = %finalize_list.exit, %bb.a
  ret void
}

declare i32 @rb_st_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_run_obj_finalizer(i64 noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %.sroa.0 = alloca i64, align 8                  ; 5 uses
  %.sroa.4 = alloca i64, align 8                  ; 7 uses
  %.sroa.9 = alloca ptr, align 8                  ; 5 uses
  %.sroa.11 = alloca ptr, align 8                 ; 5 uses
  %.sroa.13 = alloca i64, align 8                 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  store volatile ptr %i.f, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store volatile ptr %.0..0..0..0..0..0..i, ptr %i.c, align 8, !tbaa !14
  %.0..0..0..0.10 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %.0..0..0..0.10, i64 128
  %i.h = load i64, ptr %i.g, align 8, !tbaa !406
  store volatile i64 %i.h, ptr %.sroa.0, align 8, !tbaa !436
  %.0..0..0..0.11 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %.0..0..0..0.11, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224
  store volatile ptr %i.j, ptr %.sroa.9, align 8, !tbaa !438
  %.0..0..0..0.12 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.k = getelementptr i8, ptr %.0..0..0..0.12, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !224
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !439
  store volatile ptr %i.n, ptr %.sroa.11, align 8, !tbaa !440
  store volatile i64 0, ptr %.sroa.13, align 8, !tbaa !441
  store volatile i64 36, ptr %.sroa.4, align 8, !tbaa !442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.13 = load volatile ptr, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  store ptr %.0..0..0..0.13, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.o, align 8, !tbaa !407
  store i64 36, ptr %3, align 8, !tbaa !443
  %i.p = getelementptr i8, ptr %.0..0..0..0.13, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !403
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !444
  %4 = getelementptr i8, ptr %.0..0..0..0.13, i64 48
  %.0.6.val = load ptr, ptr %4, align 8, !tbaa !16, !nonnull !29, !noundef !29 ; 2 uses
  %5 = getelementptr i8, ptr %.0.6.val, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !225      ; 2 uses
  %7 = getelementptr i8, ptr %.0.6.val, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %i.s = getelementptr i8, ptr %6, i64 88
  %.0.6.val.a = load ptr, ptr %i.s, align 8, !tbaa !401
  %.not.i.i = icmp eq ptr %.0.6.val.a, %8
  br i1 %.not.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %6, i64 96
  %i.u = load i32, ptr %i.t, align 8, !tbaa !402
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.u, %bb.b ], [ 0, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.v, align 4, !tbaa !404
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.x, ptr %i.w, align 8
  %i.y = tail call ptr @llvm.stacksave.p0()
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.w)
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %.thread, label %bb.c, !prof !189

.thread:                                          ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.p, align 8, !tbaa !403
  br label %bb.f

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.7 = load volatile ptr, ptr %i.d, align 8, !tbaa !14
  call fastcc void @rb_ec_tag_state(ptr noundef %.0..0..0..0.7)
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32. = load volatile i64, ptr %.sroa.13, align 8, !tbaa !441
  %i.ab = add i64 %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32., 1
  store volatile i64 %i.ab, ptr %.sroa.13, align 8, !tbaa !441
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load volatile i64, ptr %.sroa.4, align 8, !tbaa !442 ; 2 uses
  store volatile i64 36, ptr %.sroa.4, align 8, !tbaa !442
  %i.ac = icmp eq i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., 36
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = call ptr @rb_ruby_verbose_ptr() #46
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !59
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.101, i64 noundef %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.) #66
  %.0..0..0..0.14 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %.0..0..0..0.15 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.ag = getelementptr i8, ptr %.0..0..0..0.15, i64 128
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !406
  call void @rb_ec_error_print(ptr noundef %.0..0..0..0.14, i64 noundef %i.ah) #46
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.c, %bb.d, %bb.e
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32.20 = load volatile i64, ptr %.sroa.13, align 8, !tbaa !441 ; 2 uses
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16.1 = load volatile ptr, ptr %.sroa.9, align 8, !tbaa !438
  %.0..0..0..0.162 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.ai = getelementptr i8, ptr %.0..0..0..0.162, i64 16
  store ptr %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16.1, ptr %i.ai, align 8, !tbaa !224
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24.3 = load volatile ptr, ptr %.sroa.11, align 8, !tbaa !440
  %.0..0..0..0.174 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.aj = getelementptr i8, ptr %.0..0..0..0.174, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !224
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24.3, ptr %i.al, align 8, !tbaa !439
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.5 = load volatile i64, ptr %.sroa.0, align 8, !tbaa !436
  %.0..0..0..0.186 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.am = getelementptr i8, ptr %.0..0..0..0.186, i64 128
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.5, ptr %i.am, align 8, !tbaa !406
  %i.an = icmp slt i64 %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32.20, %1
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %2, i64 16
  %i.ap = getelementptr i8, ptr %2, i64 32
  br label %bb.g

._crit_edge:                                      ; preds = %get_final.exit, %bb.f
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !444
  %.0..0..0..0.9 = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.ar = getelementptr i8, ptr %.0..0..0..0.9, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !403
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  ret void

bb.g:                                             ; preds = %.lr.ph, %get_final.exit
  %.07 = phi i64 [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.32.20, %.lr.ph ], [ %i.az, %get_final.exit ] ; 2 uses
  %i.as = load i64, ptr %2, align 8, !tbaa !109
  %i.at = and i64 %i.as, 8192
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %bb.h, label %get_final.exit

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !214
  br label %get_final.exit

get_final.exit:                                   ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi ptr [ %i.au, %bb.h ], [ %i.ao, %bb.g ]
  %i.av = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.07
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !59
  store volatile i64 %i.ax, ptr %.sroa.4, align 8, !tbaa !442
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.19 = load volatile i64, ptr %.sroa.4, align 8, !tbaa !442
  %i.ay = call i64 @rb_check_funcall(i64 noundef %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8.19, i64 noundef 3473, i32 noundef 1, ptr noundef nonnull %i.b) #46 ; 0 uses
  %i.az = add i64 %.07, 1                         ; 3 uses
  store volatile i64 %i.az, ptr %.sroa.13, align 8, !tbaa !441
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16. = load volatile ptr, ptr %.sroa.9, align 8, !tbaa !438
  %.0..0..0..0.16 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.ba = getelementptr i8, ptr %.0..0..0..0.16, i64 16
  store ptr %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.16., ptr %i.ba, align 8, !tbaa !224
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24. = load volatile ptr, ptr %.sroa.11, align 8, !tbaa !440
  %.0..0..0..0.17 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.bb = getelementptr i8, ptr %.0..0..0..0.17, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !224
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store ptr %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.24., ptr %i.bd, align 8, !tbaa !439
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load volatile i64, ptr %.sroa.0, align 8, !tbaa !436
  %.0..0..0..0.18 = load volatile ptr, ptr %i.c, align 8, !tbaa !14
  %i.be = getelementptr i8, ptr %.0..0..0..0.18, i64 128
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.be, align 8, !tbaa !406
  %exitcond.not = icmp eq i64 %i.az, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !445
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #45

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #40

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #46

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @rb_ec_tag_state(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !403  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64
  store i32 0, ptr %i.c, align 8, !tbaa !407
  %i.d = getelementptr i8, ptr %i.b, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !404  ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !16, !nonnull !29, !noundef !29 ; 2 uses
  %1 = getelementptr i8, ptr %.val.i, i64 32
  %2 = load ptr, ptr %1, align 8, !tbaa !225      ; 2 uses
  %3 = getelementptr i8, ptr %.val.i, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = getelementptr i8, ptr %2, i64 88
  %.val.i.a = load ptr, ptr %5, align 8, !tbaa !401
  %.not.i.i.i = icmp eq ptr %.val.i.a, %4
  br i1 %.not.i.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %2, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !402
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.e
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %.0.i.i) #46
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  ret void
}

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #11

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #47

declare void @rb_ec_error_print(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_check_funcall(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #48

declare void @rb_ec_vm_lock_rec_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #37

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #36

; Function Attrs: nounwind
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @heap_page_body_free(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %.b = load i1, ptr @heap_page_alloc_use_mmap, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @munmap(ptr noundef %0, i64 noundef 65536) #46
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.104) #61
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_event_hook(i64 noundef %0, i32 noundef range(i32 1048576, 67108865) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !7
  %i.c = and i32 %i.b, %1
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %bb.d, label %bb.b, !prof !189

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !224  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %rb_ec_hooks.exit

rb_ec_hooks.exit:                                 ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val = load ptr, ptr %i.h, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.i = getelementptr i8, ptr %.val, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !225  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 1120
  %i.l = load i32, ptr %i.k, align 8, !tbaa !226
  %i.m = and i32 %i.l, %1
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.d, label %bb.c, !prof !189

bb.c:                                             ; preds = %rb_ec_hooks.exit
  %i.n = getelementptr i8, ptr %i.j, i64 1112
  %i.o = getelementptr i8, ptr %i.g, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store i32 %1, ptr %2, align 8, !tbaa !230
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0..0..0..0..0..0..i, ptr %i.q, align 8, !tbaa !232
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.g, ptr %i.r, align 8, !tbaa !233
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.p, ptr %i.s, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store i64 %0, ptr %i.u, align 8, !tbaa !446
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.v, align 8, !tbaa !235
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.w, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef %i.n, i32 noundef 0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %rb_ec_hooks.exit, %bb.a
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @newobj_slowpath_wb_protected(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef captures(none) %3, i64 noundef range(i64 0, 5) %4) unnamed_addr #18 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_gc_cr_lock.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  store volatile ptr %i.h, ptr %i.d, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %rb_gc_cr_lock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  br label %rb_gc_cr_lock.exit

rb_gc_cr_lock.exit:                               ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.f, %bb.a ], [ null, %bb.b ], [ %i.k, %bb.c ]
  call void @rb_vm_lock_enter_body_cr(ptr noundef %.0.i.i.i, ptr noundef nonnull %i.e) #46
  %i.l = load i32, ptr %i.e, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.m = getelementptr i8, ptr %2, i64 28         ; 3 uses
  %i.n = load i16, ptr %i.m, align 4              ; 6 uses
  %i.o = and i16 %i.n, 256
  %i.p = and i16 %i.n, 288
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %newobj_slowpath.exit, label %bb.d, !prof !189

bb.d:                                             ; preds = %rb_gc_cr_lock.exit
  %i.q = and i16 %i.n, 32
  %.not.i.not = icmp eq i16 %i.q, 0
  br i1 %.not.i.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i16 %i.n, -41
  %i.s = or disjoint i16 %i.r, 8
  store i16 %i.s, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  store volatile ptr %i.u, ptr %i.c, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i4 = icmp eq ptr %.0..0..0..0..0..0..0..0..i.i, null
  br i1 %.not.i4, label %rb_memerror_reentered.exit.thread, label %rb_memerror_reentered.exit

rb_memerror_reentered.exit:                       ; preds = %bb.e
  %i.v = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 144
  %i.w = load i8, ptr %i.v, align 8, !tbaa !400
  %i.x = and i8 %i.w, 4
  %.not7 = icmp eq i8 %i.x, 0
  br i1 %.not7, label %rb_memerror_reentered.exit.thread, label %bb.f

bb.f:                                             ; preds = %rb_memerror_reentered.exit
  call void @rb_memerror() #62
  unreachable

rb_memerror_reentered.exit.thread:                ; preds = %bb.e, %rb_memerror_reentered.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.157) #61
  unreachable

bb.g:                                             ; preds = %bb.d
end_hunk_1
