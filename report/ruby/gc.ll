inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_object_metadata:bb.a
  %.not67.i = icmp eq i64 %i.cx, 0
  br i1 %.not67.i, label %rb_gc_impl_object_metadata.exit, label %bb.s

bb.s:                                             ; preds = %RB_FL_TEST.exit.i
  %i.cy = load i64, ptr @rb_gc_impl_object_metadata.names.9, align 8, !tbaa !310
  %i.cz = getelementptr [16 x i8], ptr @object_metadata_entries, i64 %.7.i ; 2 uses
  store i64 %i.cy, ptr %i.cz, align 16, !tbaa !311
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  store i64 20, ptr %i.da, align 8, !tbaa !313
  %i.db = add nuw nsw i64 %.7.i, 1
  br label %rb_gc_impl_object_metadata.exit

rb_gc_impl_object_metadata.exit:                  ; preds = %rb_obj_id_p.exit.thread.i, %RB_FL_TEST.exit.i, %bb.s
  %.8.i = phi i64 [ %i.db, %bb.s ], [ %.7.i, %RB_FL_TEST.exit.i ], [ %.7.i, %rb_obj_id_p.exit.thread.i ]
  %i.dc = getelementptr [16 x i8], ptr @object_metadata_entries, i64 %.8.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  ret ptr @object_metadata_entries
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @rb_gc_ractor_cache_alloc(ptr noundef readnone captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr i8, ptr %i.c, i64 2240     ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !314
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !314
  %i.g = tail call noalias noundef dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #64
  ret ptr %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_ractor_cache_free(ptr noundef captures(none) initializes((0, 8)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr i8, ptr %i.c, i64 2240     ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !314
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !314
  tail call fastcc void @gc_ractor_newobj_cache_clear(ptr noundef %0)
  tail call void @free(ptr noundef %0) #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_register_mark_object(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.d = inttoptr i64 %0 to ptr
  %i.e = getelementptr i8, ptr %i.c, i64 896
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59
  %i.g = icmp ugt i64 %i.f, %0
  br i1 %i.g, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 904
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = icmp uge i64 %i.i, %0
  %i.k = urem i64 %0, 40
  %.not.i.i = icmp eq i64 %i.k, 0
  %or.cond.i.i = and i1 %.not.i.i, %i.j
  br i1 %or.cond.i.i, label %bb.c, label %rb_gc_impl_pointer_to_heap_p.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.c, i64 872
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !80   ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %rb_darray_size.exit.i.i.i

rb_darray_size.exit.i.i.i:                        ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %.not24.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not24.i.i.i.i, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %rb_darray_size.exit.i.i.i, %bb.f
  %.01621.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ 0, %rb_darray_size.exit.i.i.i ] ; 2 uses
  %.01720.i.i.i.i = phi i64 [ %.118.i.i.i.i, %bb.f ], [ %i.o, %rb_darray_size.exit.i.i.i ] ; 2 uses
  %i.p = add i64 %.01720.i.i.i.i, %.01621.i.i.i.i
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99   ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !185  ; 2 uses
  %.not.i12.i.i.i = icmp ugt ptr %i.v, %i.d
  br i1 %.not.i12.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 65536
  %.not17.i.i.i = icmp ugt i64 %i.x, %0
  br i1 %.not17.i.i.i, label %heap_page_for_ptr.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nuw i64 %i.q, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.118.i.i.i.i = phi i64 [ %.01720.i.i.i.i, %bb.e ], [ %i.q, %.lr.ph.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %i.y, %bb.e ], [ %.01621.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.z = icmp ult i64 %.1.i.i.i.i, %.118.i.i.i.i
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %rb_gc_impl_pointer_to_heap_p.exit.thread, !llvm.loop !241

heap_page_for_ptr.exit.i.i:                       ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.t, i64 2
  %.val.i.i = load i16, ptr %i.aa, align 2, !tbaa !108 ; 2 uses
  %i.ab = icmp eq i16 %.val.i.i, 0
  br i1 %i.ab, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %bb.g

bb.g:                                             ; preds = %heap_page_for_ptr.exit.i.i
  %i.ac = getelementptr i8, ptr %i.t, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !107 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, %0
  br i1 %i.ae, label %rb_gc_impl_pointer_to_heap_p.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = zext i16 %.val.i.i to i64
  %i.ag = load i16, ptr %i.t, align 8, !tbaa !100 ; 2 uses
  %i.ah = zext i16 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.af, 32
  %sext.i.i = mul nuw i64 %i.ai, %i.ah
  %i.aj = ashr exact i64 %sext.i.i, 32
  %i.ak = add i64 %i.aj, %i.ad
  %.not23.i.i = icmp ugt i64 %i.ak, %0
  br i1 %.not23.i.i, label %rb_gc_impl_pointer_to_heap_p.exit, label %rb_gc_impl_pointer_to_heap_p.exit.thread

rb_gc_impl_pointer_to_heap_p.exit:                ; preds = %bb.h
  %i.al = trunc i64 %0 to i16
  %.lhs.trunc.i.i = and i16 %i.al, -8             ; 2 uses
  %i.am = urem i16 %.lhs.trunc.i.i, 40
  %.lhs.trunc27.i.i = sub nuw i16 %.lhs.trunc.i.i, %i.am
  %i.an = urem i16 %.lhs.trunc27.i.i, %i.ag
  %.not24.i.i = icmp eq i16 %i.an, 0
  br i1 %.not24.i.i, label %bb.i, label %rb_gc_impl_pointer_to_heap_p.exit.thread

bb.i:                                             ; preds = %rb_gc_impl_pointer_to_heap_p.exit
  tail call void @rb_vm_register_global_object(i64 noundef %0) #46
  br label %rb_gc_impl_pointer_to_heap_p.exit.thread

rb_gc_impl_pointer_to_heap_p.exit.thread:         ; preds = %bb.f, %bb.c, %rb_darray_size.exit.i.i.i, %bb.g, %heap_page_for_ptr.exit.i.i, %bb.h, %bb.a, %bb.b, %rb_gc_impl_pointer_to_heap_p.exit, %bb.i
  ret void
}

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_register_address(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.e = load i64, ptr %0, align 8, !tbaa !59
  store i64 %i.e, ptr %i.b, align 8, !tbaa !59
  %i.f = getelementptr i8, ptr %i.d, i64 1248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.b, label %rb_current_ractor_raw.exit.thread3.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, null
  br i1 %.not.i.i.i, label %ruby_xmalloc_body.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %ruby_xmalloc_body.exit.i, label %rb_current_ractor_raw.exit.i.i.i

rb_current_ractor_raw.exit.i.i.i:                 ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.val.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ruby_xmalloc_body.exit.i, label %rb_current_ractor_raw.exit.thread3.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i:         ; preds = %rb_current_ractor_raw.exit.i.i.i, %bb.a
  %.0.i5.i.i.i = phi ptr [ %i.m, %rb_current_ractor_raw.exit.i.i.i ], [ %i.h, %bb.a ]
  %i.o = getelementptr i8, ptr %.0.i5.i.i.i, i64 448
  %i.p = load i8, ptr %i.o, align 8, !tbaa !202, !range !203, !noundef !29
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = xor i1 %i.q, true
  br label %ruby_xmalloc_body.exit.i

ruby_xmalloc_body.exit.i:                         ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i, %rb_current_ractor_raw.exit.i.i.i, %bb.c, %bb.b
  %i.s = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i ], [ %i.r, %rb_current_ractor_raw.exit.thread3.i.i.i ], [ true, %bb.b ], [ true, %bb.c ]
  %i.t = tail call fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %i.g, i64 noundef 16, i1 noundef zeroext %i.s) ; 4 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.d, label %ruby_xmalloc.exit, !prof !60

bb.d:                                             ; preds = %ruby_xmalloc_body.exit.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

ruby_xmalloc.exit:                                ; preds = %ruby_xmalloc_body.exit.i
  %i.u = getelementptr i8, ptr %i.d, i64 520      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !316
  store ptr %0, ptr %i.t, align 8, !tbaa !318
  store ptr %i.t, ptr %i.u, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store ptr %i.b, ptr %i.c, align 8, !tbaa !216
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #46, !srcloc !319
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !59 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  ret void
}

; Function Attrs: nounwind sspstrong allocsize(0) uwtable
define dso_local noalias nonnull ptr @ruby_xmalloc(i64 noundef %0) local_unnamed_addr #21 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp slt i64 %0, 0
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
  br i1 %.not.i.i, label %ruby_xmalloc_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %ruby_xmalloc_body.exit, label %rb_current_ractor_raw.exit.i.i

rb_current_ractor_raw.exit.i.i:                   ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ruby_xmalloc_body.exit, label %rb_current_ractor_raw.exit.thread3.i.i

rb_current_ractor_raw.exit.thread3.i.i:           ; preds = %rb_current_ractor_raw.exit.i.i, %bb.c
  %.0.i5.i.i = phi ptr [ %i.k, %rb_current_ractor_raw.exit.i.i ], [ %i.f, %bb.c ]
  %i.m = getelementptr i8, ptr %.0.i5.i.i, i64 448
  %i.n = load i8, ptr %i.m, align 8, !tbaa !202, !range !203, !noundef !29
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i1 %i.o, true
  br label %ruby_xmalloc_body.exit

ruby_xmalloc_body.exit:                           ; preds = %bb.d, %bb.e, %rb_current_ractor_raw.exit.i.i, %rb_current_ractor_raw.exit.thread3.i.i
  %i.q = phi i1 [ true, %rb_current_ractor_raw.exit.i.i ], [ %i.p, %rb_current_ractor_raw.exit.thread3.i.i ], [ true, %bb.d ], [ true, %bb.e ]
  %i.r = tail call fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %i.e, i64 noundef %0, i1 noundef zeroext %i.q) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %handle_malloc_failure.exit, !prof !60

bb.f:                                             ; preds = %ruby_xmalloc_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_xmalloc_body.exit
  ret ptr %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_unregister_address(ptr noundef readnone captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 520      ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !315  ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %ruby_xfree.exit, label %.preheader

ruby_xfree.exit:                                  ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !316
  store ptr %i.g, ptr %i.b, align 8, !tbaa !315
  %i.h = getelementptr i8, ptr %i.a, i64 1248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  tail call fastcc void @rb_gc_impl_free(ptr noundef %i.i, ptr noundef nonnull %i.c, i64 noundef 0), !inline_history !320
  br label %ruby_xfree.exit17

.preheader:                                       ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %bb.a ]  ; 2 uses
  %i.j = getelementptr i8, ptr %.0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !316  ; 6 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %ruby_xfree.exit17, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !318
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %bb.c, label %.preheader, !llvm.loop !321

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %.0, i64 8
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !316
  store ptr %i.p, ptr %i.n, align 8, !tbaa !316
  %.not3.i.i16 = icmp eq ptr %i.a, null
  br i1 %.not3.i.i16, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.a, i64 1248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  tail call fastcc void @rb_gc_impl_free(ptr noundef %i.r, ptr noundef nonnull %i.k, i64 noundef 0), !inline_history !320
  br label %ruby_xfree.exit17

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.k) #46, !inline_history !322
  br label %ruby_xfree.exit17

ruby_xfree.exit17:                                ; preds = %.preheader, %bb.e, %bb.d, %ruby_xfree.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_xfree(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %ruby_sized_xfree.exit, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not3.i = icmp eq ptr %i.a, null
  br i1 %.not3.i, label %bb.d, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  tail call fastcc void @rb_gc_impl_free(ptr noundef %i.c, ptr noundef %0, i64 noundef 0), !inline_history !323
  br label %ruby_sized_xfree.exit

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #46
  br label %ruby_sized_xfree.exit

ruby_sized_xfree.exit:                            ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_global_variable(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.e = load i64, ptr %0, align 8, !tbaa !59
  store i64 %i.e, ptr %i.b, align 8, !tbaa !59
  %i.f = getelementptr i8, ptr %i.d, i64 1248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %rb_current_ractor_raw.exit.thread3.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %ruby_xmalloc_body.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %ruby_xmalloc_body.exit.i.i, label %rb_current_ractor_raw.exit.i.i.i.i

rb_current_ractor_raw.exit.i.i.i.i:               ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.val.i.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ruby_xmalloc_body.exit.i.i, label %rb_current_ractor_raw.exit.thread3.i.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i.i:       ; preds = %rb_current_ractor_raw.exit.i.i.i.i, %bb.a
  %.0.i5.i.i.i.i = phi ptr [ %i.m, %rb_current_ractor_raw.exit.i.i.i.i ], [ %i.h, %bb.a ]
  %i.o = getelementptr i8, ptr %.0.i5.i.i.i.i, i64 448
  %i.p = load i8, ptr %i.o, align 8, !tbaa !202, !range !203, !noundef !29
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = xor i1 %i.q, true
  br label %ruby_xmalloc_body.exit.i.i

ruby_xmalloc_body.exit.i.i:                       ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i.i, %rb_current_ractor_raw.exit.i.i.i.i, %bb.c, %bb.b
  %i.s = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i.i ], [ %i.r, %rb_current_ractor_raw.exit.thread3.i.i.i.i ], [ true, %bb.b ], [ true, %bb.c ]
  %i.t = tail call fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %i.g, i64 noundef 16, i1 noundef zeroext %i.s) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_gc_register_address.exit, !prof !60

bb.d:                                             ; preds = %ruby_xmalloc_body.exit.i.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

rb_gc_register_address.exit:                      ; preds = %ruby_xmalloc_body.exit.i.i
  %i.u = getelementptr i8, ptr %i.d, i64 520      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !316
  store ptr %0, ptr %i.t, align 8, !tbaa !318
  store ptr %i.t, ptr %i.u, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store ptr %i.b, ptr %i.c, align 8, !tbaa !216
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #46, !srcloc !319
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !59 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_objspace_each_objects(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.each_obj_data, align 8      ; 8 uses
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %2, align 8, !tbaa !324
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %i.f, align 8, !tbaa !327
  %i.g = getelementptr i8, ptr %i.c, i64 28       ; 3 uses
  %i.h = load i16, ptr %i.g, align 4
  tail call fastcc void @gc_rest(ptr noundef %i.c)
  %i.i = load i16, ptr %i.g, align 4
  %i.j = or i16 %i.i, 16
  store i16 %i.j, ptr %i.g, align 4
  %i.k = and i16 %i.h, 16
  %.not.i.i.i = icmp eq i16 %i.k, 0
  %i.l = zext i1 %.not.i.i.i to i8
  store i8 %i.l, ptr %i.d, align 8, !tbaa !328
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = ptrtoint ptr %2 to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, i8 0, i64 80, i1 false)
  %i.o = call i64 @rb_ensure(ptr noundef nonnull @objspace_each_objects_try, i64 noundef %i.n, ptr noundef nonnull @objspace_each_objects_ensure, i64 noundef %i.n) #46 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_ref_update_table_values_only(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %gc_ref_update_table_values_only.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %gc_ref_update_table_values_only.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @rb_st_foreach_with_replace(ptr noundef nonnull %0, ptr noundef nonnull @hash_foreach_replace_value, ptr noundef nonnull @hash_replace_ref_value, i64 noundef 0) #46
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %gc_ref_update_table_values_only.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.186) #58
  unreachable

gc_ref_update_table_values_only.exit:             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_update_tbl_refs(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %gc_update_table_refs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %gc_update_table_refs.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @rb_st_foreach_with_replace(ptr noundef nonnull %0, ptr noundef nonnull @hash_foreach_replace, ptr noundef nonnull @hash_replace_ref, i64 noundef 0) #46
  %.not3.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i, label %gc_update_table_refs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.186) #58
  unreachable

gc_update_table_refs.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rb_gc_update_values(i64 noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #22 {
bb.a:
  %i.a = icmp sgt i64 %0, 0
  br i1 %i.a, label %.lr.ph.i, label %gc_update_values.exit

.lr.ph.i:                                         ; preds = %bb.a, %gc_object_moved_p_internal.exit.thread.i
  %.02.i = phi i64 [ %i.n, %gc_object_moved_p_internal.exit.thread.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %1, i64 %.02.i ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  %i.e = and i64 %i.c, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %gc_object_moved_p_internal.exit.thread.i, label %gc_object_moved_p_internal.exit.i

gc_object_moved_p_internal.exit.i:                ; preds = %.lr.ph.i
  %i.h = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !109
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 30
  br i1 %i.k, label %gc_location_internal.exit.i, label %gc_object_moved_p_internal.exit.thread.i

gc_location_internal.exit.i:                      ; preds = %gc_object_moved_p_internal.exit.i
  %i.l = getelementptr i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !286
  store i64 %i.m, ptr %i.b, align 8, !tbaa !59
  br label %gc_object_moved_p_internal.exit.thread.i

gc_object_moved_p_internal.exit.thread.i:         ; preds = %gc_location_internal.exit.i, %gc_object_moved_p_internal.exit.i, %.lr.ph.i
  %i.n = add nuw nsw i64 %.02.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %0
  br i1 %exitcond.not.i, label %gc_update_values.exit, label %.lr.ph.i, !llvm.loop !329

gc_update_values.exit:                            ; preds = %gc_object_moved_p_internal.exit.thread.i, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_prepare_heap() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.each_obj_data, align 8      ; 8 uses
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 14 uses
  %i.d = getelementptr i8, ptr %i.c, i64 184      ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !330
  %i.f = getelementptr i8, ptr %i.c, i64 336      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !330
  %i.h = add i64 %i.g, %i.e
  %i.i = getelementptr i8, ptr %i.c, i64 488      ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !330
  %i.k = add i64 %i.h, %i.j
  %i.l = getelementptr i8, ptr %i.c, i64 640      ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !330
  %i.n = add i64 %i.k, %i.m
  %i.o = getelementptr i8, ptr %i.c, i64 792      ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !330
  %i.q = add i64 %i.n, %i.p                       ; 2 uses
  %i.r = getelementptr i8, ptr %i.c, i64 920      ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !331  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8, !tbaa !324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @gc_set_candidate_object_i, ptr %i.u, align 8, !tbaa !326
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.v, align 8, !tbaa !327
  %i.w = getelementptr i8, ptr %i.c, i64 28       ; 3 uses
  %i.x = load i16, ptr %i.w, align 4
  tail call fastcc void @gc_rest(ptr noundef %i.c)
  %i.y = load i16, ptr %i.w, align 4
  %i.z = or i16 %i.y, 16
  store i16 %i.z, ptr %i.w, align 4
  %i.aa = and i16 %i.x, 16
  %.not.i.i.i.i = icmp eq i16 %i.aa, 0
  %i.ab = zext i1 %.not.i.i.i.i to i8
  store i8 %i.ab, ptr %i.t, align 8, !tbaa !328
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = ptrtoint ptr %0 to i64                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i8 0, i64 80, i1 false)
  %i.ae = call i64 @rb_ensure(ptr noundef nonnull @objspace_each_objects_try, i64 noundef %i.ad, ptr noundef nonnull @objspace_each_objects_ensure, i64 noundef %i.ad) #46 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  %i.af = load double, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  call fastcc void @rb_gc_impl_start(ptr noundef %i.c, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  store double %i.af, ptr getelementptr inbounds nuw (i8, ptr @gc_params, i64 80), align 16, !tbaa !332
  store i64 0, ptr %i.r, align 8, !tbaa !331
  %i.ag = getelementptr i8, ptr %i.c, i64 800
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !333
end_hunk_0
begin_hunk_1_@rb_raw_obj_info:bb.a
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
  br i1 %.not11, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 144 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !400   ; 2 uses
  %i.j = and i8 %i.i, 4
  %.not12 = icmp eq i8 %i.j, 0
  br i1 %.not12, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.val = load ptr, ptr %i.k, align 8, !tbaa !16  ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.val, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !225
  %i.n = getelementptr i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.f, %bb.e
  %.0.i2.i = phi ptr [ %i.m, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.o, %bb.f ], [ null, %bb.e ]
  %i.p = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.p, align 8, !tbaa !401
  %i.q = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.q, label %bb.g, label %rb_ec_vm_lock_rec.exit

bb.g:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.r = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !402
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.g
  %.0.i = phi i32 [ %i.s, %bb.g ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.t = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !403
  %i.v = getelementptr i8, ptr %i.u, i64 68
  %i.w = load i32, ptr %i.v, align 4, !tbaa !404
  %.not13 = icmp eq i32 %.0.i, %i.w
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_ec_vm_lock_rec.exit, %bb.d, %bb.c
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.y = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.x, i32 noundef 1, ptr noundef nonnull @.str.27) #46 ; 0 uses
  tail call void @exit(i32 noundef 1) #61
  unreachable

bb.i:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %i.z = or disjoint i8 %i.i, 4
  store i8 %i.z, ptr %i.h, align 8, !tbaa !400
  %i.aa = tail call i64 @ruby_vm_special_exception_copy(i64 noundef %i.g) #46
  %i.ab = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !406
  %.val15 = load ptr, ptr %i.t, align 8, !tbaa !403 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val15, i64 64
  store i32 6, ptr %i.ac, align 8, !tbaa !407
  %i.ad = getelementptr i8, ptr %.val15, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.ad)
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
  %i.w = tail call fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %i.d, i64 noundef %i.v, i1 noundef zeroext %i.u) ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.e, label %handle_malloc_failure.exit, !prof !60

bb.e:                                             ; preds = %ruby_xmalloc2_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_xmalloc2_body.exit
  ret ptr %i.w
}

; Function Attrs: nounwind sspstrong allocsize(1) uwtable
define dso_local nonnull ptr @ruby_sized_xrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 {
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
  %i.r = tail call fastcc noundef ptr @rb_gc_impl_realloc(ptr noundef %i.e, ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %i.q) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %handle_malloc_failure.exit, !prof !60

bb.f:                                             ; preds = %ruby_sized_xrealloc_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_sized_xrealloc_body.exit
  ret ptr %i.r
}

; Function Attrs: nounwind sspstrong allocsize(1) uwtable
define dso_local nonnull ptr @ruby_xrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #28 {
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
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %rb_current_ractor_raw.exit.thread3.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, null
  br i1 %.not.i.i.i, label %ruby_sized_xrealloc_body.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %ruby_sized_xrealloc_body.exit.i, label %rb_current_ractor_raw.exit.i.i.i

rb_current_ractor_raw.exit.i.i.i:                 ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.val.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ruby_sized_xrealloc_body.exit.i, label %rb_current_ractor_raw.exit.thread3.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i:         ; preds = %rb_current_ractor_raw.exit.i.i.i, %bb.c
  %.0.i5.i.i.i = phi ptr [ %i.k, %rb_current_ractor_raw.exit.i.i.i ], [ %i.f, %bb.c ]
  %i.m = getelementptr i8, ptr %.0.i5.i.i.i, i64 448
  %i.n = load i8, ptr %i.m, align 8, !tbaa !202, !range !203, !noundef !29
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i1 %i.o, true
  br label %ruby_sized_xrealloc_body.exit.i

ruby_sized_xrealloc_body.exit.i:                  ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i, %rb_current_ractor_raw.exit.i.i.i, %bb.e, %bb.d
  %i.q = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i ], [ %i.p, %rb_current_ractor_raw.exit.thread3.i.i.i ], [ true, %bb.d ], [ true, %bb.e ]
  %i.r = tail call fastcc noundef ptr @rb_gc_impl_realloc(ptr noundef %i.e, ptr noundef %0, i64 noundef %1, i64 noundef 0, i1 noundef zeroext %i.q) ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.f, label %ruby_sized_xrealloc.exit, !prof !60

bb.f:                                             ; preds = %ruby_sized_xrealloc_body.exit.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

ruby_sized_xrealloc.exit:                         ; preds = %ruby_sized_xrealloc_body.exit.i
  ret ptr %i.r
}

; Function Attrs: nounwind sspstrong allocsize(1,2) uwtable
define dso_local nonnull ptr @ruby_sized_xrealloc2(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #29 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 3 uses
  br i1 %i.d, label %bb.b, label %xmalloc2_size.exit.i, !prof !60

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %rb_during_gc.exit.thread.i.i.i.i, label %rb_during_gc.exit.i.i.i.i

rb_during_gc.exit.i.i.i.i:                        ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 1248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = getelementptr i8, ptr %i.g, i64 28
  %.val.i.i.i.i.i = load i16, ptr %i.h, align 4
  %i.i = and i16 %.val.i.i.i.i.i, 32
  %.not.i.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i.i, label %rb_during_gc.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i.i.i.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i.i.i.i:                 ; preds = %rb_during_gc.exit.i.i.i.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.b, ptr noundef nonnull @.str.60, i64 noundef %1, i64 noundef %2, i64 noundef -1) #63
  unreachable

xmalloc2_size.exit.i:                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.e, i64 1248
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_current_ractor_raw.exit.thread3.i.i

bb.d:                                             ; preds = %xmalloc2_size.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  store volatile ptr %i.n, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, null
  br i1 %.not.i.i, label %ruby_sized_xrealloc2_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 48
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i5.i, label %ruby_sized_xrealloc2_body.exit, label %rb_current_ractor_raw.exit.i.i

rb_current_ractor_raw.exit.i.i:                   ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.val.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %ruby_sized_xrealloc2_body.exit, label %rb_current_ractor_raw.exit.thread3.i.i

rb_current_ractor_raw.exit.thread3.i.i:           ; preds = %rb_current_ractor_raw.exit.i.i, %xmalloc2_size.exit.i
  %.0.i5.i.i = phi ptr [ %i.q, %rb_current_ractor_raw.exit.i.i ], [ %i.l, %xmalloc2_size.exit.i ]
  %i.s = getelementptr i8, ptr %.0.i5.i.i, i64 448
  %i.t = load i8, ptr %i.s, align 8, !tbaa !202, !range !203, !noundef !29
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = xor i1 %i.u, true
  br label %ruby_sized_xrealloc2_body.exit

ruby_sized_xrealloc2_body.exit:                   ; preds = %bb.d, %bb.e, %rb_current_ractor_raw.exit.i.i, %rb_current_ractor_raw.exit.thread3.i.i
  %i.w = phi i1 [ true, %rb_current_ractor_raw.exit.i.i ], [ %i.v, %rb_current_ractor_raw.exit.thread3.i.i ], [ true, %bb.d ], [ true, %bb.e ]
  %i.x = mul i64 %3, %2
  %i.y = extractvalue { i64, i1 } %i.c, 0
  %i.z = tail call fastcc noundef ptr @rb_gc_impl_realloc(ptr noundef %i.k, ptr noundef %0, i64 noundef %i.y, i64 noundef %i.x, i1 noundef zeroext %i.w) ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.f, label %handle_malloc_failure.exit, !prof !60

bb.f:                                             ; preds = %ruby_sized_xrealloc2_body.exit
  tail call fastcc void @ruby_memerror() #63
  unreachable

handle_malloc_failure.exit:                       ; preds = %ruby_sized_xrealloc2_body.exit
  ret ptr %i.z
}

; Function Attrs: nounwind sspstrong allocsize(1,2) uwtable
define dso_local nonnull ptr @ruby_xrealloc2(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 {
bb.a:
  %i.a = tail call nonnull ptr @ruby_sized_xrealloc2(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0) #71
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @ruby_sized_xfree(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %rb_gc_impl_free.exit, label %bb.b, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not3 = icmp eq ptr %i.a, null
  br i1 %.not3, label %bb.e, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.d, label %objspace_malloc_size.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @malloc_usable_size(ptr noundef nonnull %0) #46
  br label %objspace_malloc_size.exit

objspace_malloc_size.exit:                        ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %1, %bb.c ], [ %i.d, %bb.d ]
  tail call void @free(ptr noundef nonnull %0) #46, !inline_history !408
  tail call fastcc void @objspace_malloc_increase_body(ptr noundef %i.c, i64 noundef 0, i64 noundef %.0.i, i32 noundef 1, i1 noundef zeroext true)
  br label %rb_gc_impl_free.exit

bb.e:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #46
  br label %rb_gc_impl_free.exit

rb_gc_impl_free.exit:                             ; preds = %objspace_malloc_size.exit, %bb.e, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_impl_free(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.b, label %objspace_malloc_size.exit

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @malloc_usable_size(ptr noundef nonnull %1) #46
  br label %objspace_malloc_size.exit

objspace_malloc_size.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %2, %bb.a ], [ %i.a, %bb.b ]  ; 4 uses
  %or.cond.i = icmp ult i64 %.0.i, 8192
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @malloc_increase_local) ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 8 uses
  br i1 %or.cond.i, label %objspace_malloc_size.exit.split.us, label %objspace_malloc_size.exit.split

objspace_malloc_size.exit.split.us:               ; preds = %objspace_malloc_size.exit
  %i.d = trunc nuw nsw i64 %.0.i to i32
  tail call void @free(ptr noundef nonnull %1) #46
  %i.e = load i32, ptr %i.b, align 4, !tbaa !7
  %i.f = sub i32 %i.e, %i.d                       ; 5 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !7
  %i.g = add i32 %i.f, -8192
  %or.cond4.i.us = icmp ult i32 %i.g, -16383
  br i1 %or.cond4.i.us, label %bb.c, label %.split.us

bb.c:                                             ; preds = %objspace_malloc_size.exit.split.us
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %malloc_increase_commit.exit.i21.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sub i32 0, %i.f
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  br label %.preheader.i.i.i14.us

.preheader.i.i.i14.us:                            ; preds = %.preheader.i.i.i14.us, %bb.d
  %.010.i.i.i15.us = phi i64 [ %spec.select.i.i.i16.us, %.preheader.i.i.i14.us ], [ %i.j, %bb.d ]
  %i.k = load i64, ptr %0, align 8, !tbaa !59     ; 3 uses
  %spec.select.i.i.i16.us = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %.010.i.i.i15.us) ; 2 uses
  %i.l = sub i64 %i.k, %spec.select.i.i.i16.us
  %i.m = cmpxchg volatile ptr %0, i64 %i.k, i64 %i.l seq_cst seq_cst, align 8
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %.preheader.i15.i.i18.us, label %.preheader.i.i.i14.us

.preheader.i15.i.i18.us:                          ; preds = %.preheader.i.i.i14.us, %.preheader.i15.i.i18.us
  %.010.i16.i.i19.us = phi i64 [ %spec.select.i17.i.i20.us, %.preheader.i15.i.i18.us ], [ %i.j, %.preheader.i.i.i14.us ]
  %i.o = load i64, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %spec.select.i17.i.i20.us = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %.010.i16.i.i19.us) ; 2 uses
  %i.p = sub i64 %i.o, %spec.select.i17.i.i20.us
  %i.q = cmpxchg volatile ptr %i.c, i64 %i.o, i64 %i.p seq_cst seq_cst, align 8
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.split.us, label %.preheader.i15.i.i18.us

malloc_increase_commit.exit.i21.us:               ; preds = %bb.c
  %i.s = zext nneg i32 %i.f to i64                ; 2 uses
  %i.t = atomicrmw volatile add ptr %0, i64 %i.s seq_cst, align 8 ; 0 uses
  %i.u = atomicrmw volatile add ptr %i.c, i64 %i.s seq_cst, align 8 ; 0 uses
  br label %.split.us

objspace_malloc_size.exit.split:                  ; preds = %objspace_malloc_size.exit
  tail call void @free(ptr noundef nonnull %1) #46
  %i.v = load i32, ptr %i.b, align 4, !tbaa !7    ; 4 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.preheader.i.i.preheader, label %bb.e

bb.e:                                             ; preds = %objspace_malloc_size.exit.split
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.x = icmp sgt i32 %i.v, 0
  br i1 %i.x, label %malloc_increase_commit.exit.i, label %bb.f

malloc_increase_commit.exit.i:                    ; preds = %bb.e
  %i.y = zext nneg i32 %i.v to i64                ; 2 uses
  %i.z = atomicrmw volatile add ptr %0, i64 %i.y seq_cst, align 8 ; 0 uses
  %i.aa = atomicrmw volatile add ptr %i.c, i64 %i.y seq_cst, align 8 ; 0 uses
  br label %.preheader.i.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.ab = sub i32 0, %i.v
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %bb.f
  %.010.i.i.i = phi i64 [ %spec.select.i.i.i, %.preheader.i.i.i ], [ %i.ac, %bb.f ]
  %i.ad = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 %.010.i.i.i) ; 2 uses
  %i.ae = sub i64 %i.ad, %spec.select.i.i.i
  %i.af = cmpxchg volatile ptr %0, i64 %i.ad, i64 %i.ae seq_cst seq_cst, align 8
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %.preheader.i15.i.i, label %.preheader.i.i.i

.preheader.i15.i.i:                               ; preds = %.preheader.i.i.i, %.preheader.i15.i.i
  %.010.i16.i.i = phi i64 [ %spec.select.i17.i.i, %.preheader.i15.i.i ], [ %i.ac, %.preheader.i.i.i ]
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !59  ; 3 uses
  %spec.select.i17.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.010.i16.i.i) ; 2 uses
  %i.ai = sub i64 %i.ah, %spec.select.i17.i.i
  %i.aj = cmpxchg volatile ptr %i.c, i64 %i.ah, i64 %i.ai seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %.preheader.i.i.preheader, label %.preheader.i15.i.i

.preheader.i.i.preheader:                         ; preds = %.preheader.i15.i.i, %objspace_malloc_size.exit.split, %malloc_increase_commit.exit.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.010.i.i = phi i64 [ %spec.select.i.i, %.preheader.i.i ], [ %.0.i, %.preheader.i.i.preheader ]
  %i.al = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %.010.i.i) ; 2 uses
  %i.am = sub i64 %i.al, %spec.select.i.i
  %i.an = cmpxchg volatile ptr %0, i64 %i.al, i64 %i.am seq_cst seq_cst, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %.preheader.i15.i, label %.preheader.i.i

.preheader.i15.i:                                 ; preds = %.preheader.i.i, %.preheader.i15.i
  %.010.i16.i = phi i64 [ %spec.select.i17.i, %.preheader.i15.i ], [ %.0.i, %.preheader.i.i ]
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !59  ; 3 uses
  %spec.select.i17.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 %.010.i16.i) ; 2 uses
  %i.aq = sub i64 %i.ap, %spec.select.i17.i
  %i.ar = cmpxchg volatile ptr %i.c, i64 %i.ap, i64 %i.aq seq_cst seq_cst, align 8
  %i.as = extractvalue { i64, i1 } %i.ar, 1
  br i1 %i.as, label %.split.us, label %.preheader.i15.i

.split.us:                                        ; preds = %.preheader.i15.i, %.preheader.i15.i.i18.us, %malloc_increase_commit.exit.i21.us, %objspace_malloc_size.exit.split.us
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @ruby_mimfree(ptr noundef captures(none) %0) local_unnamed_addr #30 {
bb.a:
  tail call void @free(ptr noundef %0) #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias nonnull ptr @rb_xmalloc_mul_add(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 %2) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %narrow.i.i = or i1 %i.d, %i.g
  br i1 %narrow.i.i, label %bb.b, label %size_mul_add_or_raise.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_during_gc.exit.thread.i, label %rb_during_gc.exit.i

rb_during_gc.exit.i:                              ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 1248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr i8, ptr %i.j, i64 28
  %.val.i.i = load i16, ptr %i.k, align 4
  %i.l = and i16 %.val.i.i, 32
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %rb_during_gc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i:                       ; preds = %rb_during_gc.exit.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.b, ptr noundef nonnull @.str.63, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef -1) #63
  unreachable

size_mul_add_or_raise.exit:                       ; preds = %bb.a
  %i.m = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %size_mul_add_or_raise.exit
  tail call fastcc void @negative_size_allocation_error() #63
  unreachable

bb.e:                                             ; preds = %size_mul_add_or_raise.exit
  %i.o = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %i.o, i64 1248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %bb.f, label %rb_current_ractor_raw.exit.thread3.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  store volatile ptr %i.t, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, null
  br i1 %.not.i.i.i, label %ruby_xmalloc_body.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %ruby_xmalloc_body.exit.i, label %rb_current_ractor_raw.exit.i.i.i

rb_current_ractor_raw.exit.i.i.i:                 ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.val.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %ruby_xmalloc_body.exit.i, label %rb_current_ractor_raw.exit.thread3.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i:         ; preds = %rb_current_ractor_raw.exit.i.i.i, %bb.e
  %.0.i5.i.i.i = phi ptr [ %i.w, %rb_current_ractor_raw.exit.i.i.i ], [ %i.r, %bb.e ]
  %i.y = getelementptr i8, ptr %.0.i5.i.i.i, i64 448
  %i.z = load i8, ptr %i.y, align 8, !tbaa !202, !range !203, !noundef !29
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = xor i1 %i.aa, true
  br label %ruby_xmalloc_body.exit.i

ruby_xmalloc_body.exit.i:                         ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i, %rb_current_ractor_raw.exit.i.i.i, %bb.g, %bb.f
  %i.ac = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i ], [ %i.ab, %rb_current_ractor_raw.exit.thread3.i.i.i ], [ true, %bb.f ], [ true, %bb.g ]
  %i.ad = tail call fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %i.q, i64 noundef %i.m, i1 noundef zeroext %i.ac) ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4, label %bb.h, label %ruby_xmalloc.exit, !prof !60

bb.h:                                             ; preds = %ruby_xmalloc_body.exit.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

ruby_xmalloc.exit:                                ; preds = %ruby_xmalloc_body.exit.i
  ret ptr %i.ad
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias noundef nonnull ptr @rb_xcalloc_mul_add(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  %i.d = extractvalue { i64, i1 } %i.b, 0
  %i.e = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.d, i64 %2) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %narrow.i.i = or i1 %i.c, %i.f
  br i1 %narrow.i.i, label %bb.b, label %size_mul_add_or_raise.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %rb_during_gc.exit.thread.i, label %rb_during_gc.exit.i

rb_during_gc.exit.i:                              ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 1248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = getelementptr i8, ptr %i.i, i64 28
  %.val.i.i = load i16, ptr %i.j, align 4
  %i.k = and i16 %.val.i.i, 32
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %rb_during_gc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i:                       ; preds = %rb_during_gc.exit.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.a, ptr noundef nonnull @.str.63, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef -1) #63
  unreachable

size_mul_add_or_raise.exit:                       ; preds = %bb.a
  %i.l = extractvalue { i64, i1 } %i.e, 0
  %i.m = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.l, i64 noundef 1) #67
  ret ptr %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @rb_xrealloc_mul_add(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %narrow.i.i = or i1 %i.d, %i.g
  br i1 %narrow.i.i, label %bb.b, label %size_mul_add_or_raise.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_during_gc.exit.thread.i, label %rb_during_gc.exit.i

rb_during_gc.exit.i:                              ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 1248
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = getelementptr i8, ptr %i.j, i64 28
  %.val.i.i = load i16, ptr %i.k, align 4
  %i.l = and i16 %.val.i.i, 32
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %rb_during_gc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i:                       ; preds = %rb_during_gc.exit.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.b, ptr noundef nonnull @.str.63, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef -1) #63
  unreachable

size_mul_add_or_raise.exit:                       ; preds = %bb.a
  %i.m = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %size_mul_add_or_raise.exit
  tail call fastcc void @negative_size_allocation_error() #63
  unreachable

bb.e:                                             ; preds = %size_mul_add_or_raise.exit
  %i.o = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %i.o, i64 1248
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %rb_current_ractor_raw.exit.thread3.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  store volatile ptr %i.t, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %ruby_sized_xrealloc_body.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %ruby_sized_xrealloc_body.exit.i.i, label %rb_current_ractor_raw.exit.i.i.i.i

rb_current_ractor_raw.exit.i.i.i.i:               ; preds = %bb.g
  %i.v = getelementptr i8, ptr %.val.i.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %ruby_sized_xrealloc_body.exit.i.i, label %rb_current_ractor_raw.exit.thread3.i.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i.i:       ; preds = %rb_current_ractor_raw.exit.i.i.i.i, %bb.e
  %.0.i5.i.i.i.i = phi ptr [ %i.w, %rb_current_ractor_raw.exit.i.i.i.i ], [ %i.r, %bb.e ]
  %i.y = getelementptr i8, ptr %.0.i5.i.i.i.i, i64 448
  %i.z = load i8, ptr %i.y, align 8, !tbaa !202, !range !203, !noundef !29
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = xor i1 %i.aa, true
  br label %ruby_sized_xrealloc_body.exit.i.i

ruby_sized_xrealloc_body.exit.i.i:                ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i.i, %rb_current_ractor_raw.exit.i.i.i.i, %bb.g, %bb.f
  %i.ac = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i.i ], [ %i.ab, %rb_current_ractor_raw.exit.thread3.i.i.i.i ], [ true, %bb.f ], [ true, %bb.g ]
  %i.ad = tail call fastcc noundef ptr @rb_gc_impl_realloc(ptr noundef %i.q, ptr noundef %0, i64 noundef %i.m, i64 noundef 0, i1 noundef zeroext %i.ac) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.h, label %ruby_xrealloc.exit, !prof !60

bb.h:                                             ; preds = %ruby_sized_xrealloc_body.exit.i.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

ruby_xrealloc.exit:                               ; preds = %ruby_sized_xrealloc_body.exit.i.i
  ret ptr %i.ad
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias nonnull ptr @rb_xmalloc_mul_add_mul(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %or.cond.i.i = or i1 %i.d, %i.g
  %narrow.i.i = or i1 %or.cond.i.i, %i.j
  br i1 %narrow.i.i, label %bb.b, label %size_mul_add_mul_or_raise.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %rb_during_gc.exit.thread.i, label %rb_during_gc.exit.i

rb_during_gc.exit.i:                              ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.k, i64 1248
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr i8, ptr %i.m, i64 28
  %.val.i.i = load i16, ptr %i.n, align 4
  %i.o = and i16 %.val.i.i, 32
  %.not.i = icmp eq i16 %i.o, 0
  br i1 %.not.i, label %rb_during_gc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i:                       ; preds = %rb_during_gc.exit.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.b, ptr noundef nonnull @.str.350, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef -1) #63
  unreachable

size_mul_add_mul_or_raise.exit:                   ; preds = %bb.a
  %i.p = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %size_mul_add_mul_or_raise.exit
  tail call fastcc void @negative_size_allocation_error() #63
  unreachable

bb.e:                                             ; preds = %size_mul_add_mul_or_raise.exit
  %i.r = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.s = getelementptr i8, ptr %i.r, i64 1248
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.u = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.f, label %rb_current_ractor_raw.exit.thread3.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14
  store volatile ptr %i.w, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, null
  br i1 %.not.i.i.i, label %ruby_xmalloc_body.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i, i64 48
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %ruby_xmalloc_body.exit.i, label %rb_current_ractor_raw.exit.i.i.i

rb_current_ractor_raw.exit.i.i.i:                 ; preds = %bb.g
  %i.y = getelementptr i8, ptr %.val.i.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %ruby_xmalloc_body.exit.i, label %rb_current_ractor_raw.exit.thread3.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i:         ; preds = %rb_current_ractor_raw.exit.i.i.i, %bb.e
  %.0.i5.i.i.i = phi ptr [ %i.z, %rb_current_ractor_raw.exit.i.i.i ], [ %i.u, %bb.e ]
  %i.ab = getelementptr i8, ptr %.0.i5.i.i.i, i64 448
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !202, !range !203, !noundef !29
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = xor i1 %i.ad, true
  br label %ruby_xmalloc_body.exit.i

ruby_xmalloc_body.exit.i:                         ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i, %rb_current_ractor_raw.exit.i.i.i, %bb.g, %bb.f
  %i.af = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i ], [ %i.ae, %rb_current_ractor_raw.exit.thread3.i.i.i ], [ true, %bb.f ], [ true, %bb.g ]
  %i.ag = tail call fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %i.t, i64 noundef %i.p, i1 noundef zeroext %i.af) ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i5, label %bb.h, label %ruby_xmalloc.exit, !prof !60

bb.h:                                             ; preds = %ruby_xmalloc_body.exit.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

ruby_xmalloc.exit:                                ; preds = %ruby_xmalloc_body.exit.i
  ret ptr %i.ag
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias noundef nonnull ptr @rb_xcalloc_mul_add_mul(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  %i.d = extractvalue { i64, i1 } %i.b, 0
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %i.h = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.d, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %or.cond.i.i = or i1 %i.c, %i.f
  %narrow.i.i = or i1 %or.cond.i.i, %i.i
  br i1 %narrow.i.i, label %bb.b, label %size_mul_add_mul_or_raise.exit, !prof !60

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %rb_during_gc.exit.thread.i, label %rb_during_gc.exit.i

rb_during_gc.exit.i:                              ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.j, i64 1248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = getelementptr i8, ptr %i.l, i64 28
  %.val.i.i = load i16, ptr %i.m, align 4
  %i.n = and i16 %.val.i.i, 32
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %rb_during_gc.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %rb_during_gc.exit.i
  tail call void @rb_memerror() #62
  unreachable

rb_during_gc.exit.thread.i:                       ; preds = %rb_during_gc.exit.i, %bb.b
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.a, ptr noundef nonnull @.str.350, i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef -1) #63
  unreachable

size_mul_add_mul_or_raise.exit:                   ; preds = %bb.a
  %i.o = extractvalue { i64, i1 } %i.h, 0
  %i.p = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.o, i64 noundef 1) #67
  ret ptr %i.p
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @ruby_mimmalloc(i64 noundef %0) local_unnamed_addr #31 {
bb.a:
  %i.a = tail call noalias ptr @malloc(i64 noundef %0) #65
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define hidden noalias noundef ptr @ruby_mimcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #64
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #34

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_gc_adjust_memory_usage(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %rb_gc_impl_adjust_memory_usage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = icmp sgt i64 %0, 0
  br i1 %i.d, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  tail call fastcc void @objspace_malloc_increase_body(ptr noundef %i.c, i64 noundef %0, i64 noundef 0, i32 noundef 2, i1 noundef zeroext true)
  br label %rb_gc_impl_adjust_memory_usage.exit

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %0, 0
  br i1 %i.e, label %.loopexit14.i, label %rb_gc_impl_adjust_memory_usage.exit

.loopexit14.i:                                    ; preds = %bb.c
  %i.f = sub i64 0, %0
  tail call fastcc void @objspace_malloc_increase_body(ptr noundef %i.c, i64 noundef 0, i64 noundef %i.f, i32 noundef 2, i1 noundef zeroext true)
  br label %rb_gc_impl_adjust_memory_usage.exit

rb_gc_impl_adjust_memory_usage.exit:              ; preds = %.loopexit14.i, %bb.c, %.preheader.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden nonnull ptr @rb_obj_info(i64 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc nonnull ptr @obj_type_name(i64 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_info_dump(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.c = call ptr @rb_raw_obj_info(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef %0) ; 0 uses
  %i.d = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.a) #46 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_obj_info_dump_loc(i64 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.c = call ptr @rb_raw_obj_info(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef %0) ; 0 uses
  %i.d = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef %3, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a) #46 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_before_fork() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.c = getelementptr i8, ptr %i.b, i64 1248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.b, label %rb_gc_impl_before_fork.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #46
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !7
  br label %rb_gc_impl_before_fork.exit

rb_gc_impl_before_fork.exit:                      ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.g = getelementptr i8, ptr %i.d, i64 2248
  store i32 %i.f, ptr %i.g, align 8, !tbaa !409
  call void @rb_vm_barrier() #46
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_gc_after_fork(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.c = getelementptr i8, ptr %i.b, i64 1248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr i8, ptr %i.d, i64 2248     ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.f, ptr %i.a, align 4, !tbaa !7
  %i.g = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.b, label %rb_gc_vm_unlock.exit.i

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46
  br label %rb_gc_vm_unlock.exit.i

rb_gc_vm_unlock.exit.i:                           ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.e, align 8, !tbaa !409
  %i.h = icmp eq i32 %0, 0
  br i1 %i.h, label %bb.c, label %rb_gc_impl_after_fork.exit

bb.c:                                             ; preds = %rb_gc_vm_unlock.exit.i
  %i.i = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 456
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  call fastcc void @gc_ractor_newobj_cache_clear(ptr noundef %i.k)
end_hunk_1
begin_hunk_2_@builtin_inline_class_503:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 5 uses
  %i.g = and i64 %i.f, 255
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  %i.j = and i64 %i.f, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.m = inttoptr i64 %i.f to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !109
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 20
  br i1 %i.p, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_SYMBOL_P.exit
  %i.q = inttoptr i64 %i.f to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !109
  %.fr6 = freeze i64 %i.r
  %i.s = and i64 %.fr6, 31
  %i.t = icmp eq i64 %i.s, 8
  %spec.select = select i1 %i.t, i64 0, i64 20
  br label %RB_SYMBOL_P.exit.thread

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.a, %RB_SYMBOL_P.exit
  %i.u = phi i64 [ 0, %RB_SYMBOL_P.exit ], [ 0, %bb.a ], [ %spec.select, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 20, %bb.b ]
  ret i64 %i.u
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 37, 36) i64 @builtin_inline_class_507(ptr noundef readonly captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 6 uses
  %i.g = and i64 %i.f, 255
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %RB_SYMBOL_P.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  %i.j = and i64 %i.f, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.b
  %i.m = inttoptr i64 %i.f to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !109
  %i.o = and i64 %i.n, 31
  switch i64 %i.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i64 20, label %RB_SYMBOL_P.exit.thread.i
    i64 8, label %RB_SYMBOL_P.exit.thread.i
  ]

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %RB_SYMBOL_P.exit.i, %bb.b
  %i.p = load i64, ptr @rb_eTypeError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.8) #58
  unreachable

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %RB_SYMBOL_P.exit.i, %bb.a
  %i.q = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.r = getelementptr i8, ptr %i.q, i64 1248
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62
  %i.t = tail call fastcc i64 @gc_info_decode(ptr noundef readonly %i.s, i64 noundef %i.f, i32 noundef 0) ; 2 uses
  %i.u = icmp eq i64 %i.t, 36
  br i1 %i.u, label %bb.c, label %rb_gc_latest_gc_info.exit

bb.c:                                             ; preds = %RB_SYMBOL_P.exit.thread.i
  %i.v = load i64, ptr @rb_eArgError, align 8, !tbaa !59
  %i.w = tail call i64 @rb_sym2str(i64 noundef %i.f) #46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.9, i64 noundef %i.w) #58
  unreachable

rb_gc_latest_gc_info.exit:                        ; preds = %RB_SYMBOL_P.exit.thread.i
  ret i64 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @builtin_inline_class_537(ptr noundef readonly captures(none) %0, i64 %1) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !411
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.h = getelementptr i8, ptr %i.g, i64 1248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = and i64 %i.f, -5
  %.not.i = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %i.i, i64 28       ; 2 uses
  %i.l = load i16, ptr %i.k, align 4
  %i.m = select i1 %.not.i, i16 0, i16 4096
  %i.n = and i16 %i.l, -4097
  %i.o = or disjoint i16 %i.n, %i.m
  store i16 %i.o, ptr %i.k, align 4
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_550(ptr readnone captures(none) %0, i64 %1) #5 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %.val = load i16, ptr %i.d, align 4
  %i.e = and i16 %.val, 4096
  %.not = icmp eq i16 %i.e, 0
  %i.f = select i1 %.not, i64 0, i64 20
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_586(ptr readnone captures(none) %0, i64 %1) #2 {
bb.a:
  %i.a = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61
  %i.b = getelementptr i8, ptr %i.a, i64 1248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1056
  %.val = load i64, ptr %i.d, align 8, !tbaa !337
  %i.e = getelementptr i8, ptr %i.c, i64 1080
  %.val1 = load i64, ptr %i.e, align 8, !tbaa !338
  %i.f = add i64 %.val1, %.val                    ; 3 uses
  %i.g = icmp ult i64 %i.f, 4611686018427387904
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl nuw nsw i64 %i.f, 1
  %i.i = or disjoint i64 %i.h, 1
  br label %rb_ull2num_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @rb_ull2inum(i64 noundef %i.f) #46
  br label %rb_ull2num_inline.exit

rb_ull2num_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret i64 %.0.i
}

declare void @rb_load_with_builtin_functions(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_GC() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.e = load i64, ptr @id2ref_value, align 8, !tbaa !59
  store i64 %i.e, ptr %i.b, align 8, !tbaa !59
  %i.f = getelementptr i8, ptr %i.d, i64 1248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %rb_current_ractor_raw.exit.thread3.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %ruby_xmalloc_body.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i.i.i, i64 48
  %.val.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %ruby_xmalloc_body.exit.i.i, label %rb_current_ractor_raw.exit.i.i.i.i

rb_current_ractor_raw.exit.i.i.i.i:               ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.val.i.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ruby_xmalloc_body.exit.i.i, label %rb_current_ractor_raw.exit.thread3.i.i.i.i

rb_current_ractor_raw.exit.thread3.i.i.i.i:       ; preds = %rb_current_ractor_raw.exit.i.i.i.i, %bb.a
  %.0.i5.i.i.i.i = phi ptr [ %i.m, %rb_current_ractor_raw.exit.i.i.i.i ], [ %i.h, %bb.a ]
  %i.o = getelementptr i8, ptr %.0.i5.i.i.i.i, i64 448
  %i.p = load i8, ptr %i.o, align 8, !tbaa !202, !range !203, !noundef !29
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = xor i1 %i.q, true
  br label %ruby_xmalloc_body.exit.i.i

ruby_xmalloc_body.exit.i.i:                       ; preds = %rb_current_ractor_raw.exit.thread3.i.i.i.i, %rb_current_ractor_raw.exit.i.i.i.i, %bb.c, %bb.b
  %i.s = phi i1 [ true, %rb_current_ractor_raw.exit.i.i.i.i ], [ %i.r, %rb_current_ractor_raw.exit.thread3.i.i.i.i ], [ true, %bb.b ], [ true, %bb.c ]
  %i.t = tail call fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %i.g, i64 noundef 16, i1 noundef zeroext %i.s) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %bb.d, label %rb_gc_register_address.exit, !prof !60

bb.d:                                             ; preds = %ruby_xmalloc_body.exit.i.i
  tail call fastcc void @ruby_memerror() #63
  unreachable

rb_gc_register_address.exit:                      ; preds = %ruby_xmalloc_body.exit.i.i
  %i.u = getelementptr i8, ptr %i.d, i64 520      ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !316
  store ptr @id2ref_value, ptr %i.t, align 8, !tbaa !318
  store ptr %i.t, ptr %i.u, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store ptr %i.b, ptr %i.c, align 8, !tbaa !216
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #46, !srcloc !319
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !59 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.z = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #65 ; 2 uses
  %i.aa = call i64 @malloc_usable_size(ptr noundef %i.z) #46
  call void @free(ptr noundef %i.z) #46
  %.not.i = icmp eq i64 %i.aa, 64
  br i1 %.not.i, label %gc_compute_malloc_offset.exit, label %bb.e

bb.e:                                             ; preds = %rb_gc_register_address.exit
  %i.ab = call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #65 ; 2 uses
  %i.ac = call i64 @malloc_usable_size(ptr noundef %i.ab) #46
  call void @free(ptr noundef %i.ab) #46
  %.not.1.i = icmp eq i64 %i.ac, 56
  br i1 %.not.1.i, label %gc_compute_malloc_offset.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #65 ; 2 uses
  %i.ae = call i64 @malloc_usable_size(ptr noundef %i.ad) #46
  call void @free(ptr noundef %i.ad) #46
  %.not.2.i = icmp eq i64 %i.ae, 48
  %spec.select.i = select i1 %.not.2.i, i64 16, i64 0
  br label %gc_compute_malloc_offset.exit

gc_compute_malloc_offset.exit:                    ; preds = %rb_gc_register_address.exit, %bb.e, %bb.f
  %.2.i = phi i64 [ 0, %rb_gc_register_address.exit ], [ %spec.select.i, %bb.f ], [ 8, %bb.e ]
  store i64 %.2.i, ptr @malloc_offset, align 8, !tbaa !59
  %i.af = call i64 @rb_define_module(ptr noundef nonnull @.str.50) #46
  store i64 %i.af, ptr @rb_mGC, align 8, !tbaa !59
  %i.ag = call i64 @rb_define_module(ptr noundef nonnull @.str.51) #46 ; 5 uses
  call void @rb_define_module_function(i64 noundef %i.ag, ptr noundef nonnull @.str.52, ptr noundef nonnull @os_each_obj, i32 noundef -1) #46
  call void @rb_define_module_function(i64 noundef %i.ag, ptr noundef nonnull @.str.53, ptr noundef nonnull @define_final, i32 noundef -1) #46
  call void @rb_define_module_function(i64 noundef %i.ag, ptr noundef nonnull @.str.54, ptr noundef nonnull @undefine_final, i32 noundef 1) #46
  call void @rb_define_module_function(i64 noundef %i.ag, ptr noundef nonnull @.str.55, ptr noundef nonnull @os_id2ref, i32 noundef 1) #46
  %i.ah = load i64, ptr @rb_eNoMemError, align 8, !tbaa !59
  %i.ai = call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.56, i64 noundef 25) #46
  call void @rb_vm_register_special_exception_str(i32 noundef 1, i64 noundef %i.ah, i64 noundef %i.ai) #46
  %i.aj = load i64, ptr @rb_cBasicObject, align 8, !tbaa !59
  call void @rb_define_method(i64 noundef %i.aj, ptr noundef nonnull @.str.57, ptr noundef nonnull @rb_obj_id, i32 noundef 0) #46
  %i.ak = load i64, ptr @rb_mKernel, align 8, !tbaa !59
  call void @rb_define_method(i64 noundef %i.ak, ptr noundef nonnull @.str.58, ptr noundef nonnull @rb_obj_id, i32 noundef 0) #46
  call void @rb_define_module_function(i64 noundef %i.ag, ptr noundef nonnull @.str.59, ptr noundef nonnull @count_objects, i32 noundef -1) #46
  %i.al = call i64 @rb_hash_new() #46             ; 12 uses
  %.pr.i.i = load i64, ptr @rb_gc_impl_init.rbimpl_id, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %gc_compute_malloc_offset.exit, %.lr.ph.i.i
  %i.am = call i64 @rb_intern2(ptr noundef nonnull @.str.407, i64 noundef 5) #46 ; 3 uses
  store i64 %i.am, ptr @rb_gc_impl_init.rbimpl_id, align 8, !tbaa !59
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !301

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %gc_compute_malloc_offset.exit
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %gc_compute_malloc_offset.exit ], [ %i.am, %.lr.ph.i.i ]
  %i.an = call i64 @rb_id2sym(i64 noundef %.lcssa.i.i) #46
  %i.ao = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.an, i64 noundef 0) #46 ; 0 uses
  %.pr.i46.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.408, align 8, !tbaa !59 ; 2 uses
  %.not4.i47.i = icmp eq i64 %.pr.i46.i, 0
  br i1 %.not4.i47.i, label %.lr.ph.i49.i, label %rbimpl_intern_const.exit51.i

.lr.ph.i49.i:                                     ; preds = %rbimpl_intern_const.exit.i, %.lr.ph.i49.i
  %i.ap = call i64 @rb_intern2(ptr noundef nonnull @.str.409, i64 noundef 14) #46 ; 3 uses
  store i64 %i.ap, ptr @rb_gc_impl_init.rbimpl_id.408, align 8, !tbaa !59
  %.not.i50.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i50.i, label %.lr.ph.i49.i, label %rbimpl_intern_const.exit51.i, !llvm.loop !301

rbimpl_intern_const.exit51.i:                     ; preds = %.lr.ph.i49.i, %rbimpl_intern_const.exit.i
  %.lcssa.i48.i = phi i64 [ %.pr.i46.i, %rbimpl_intern_const.exit.i ], [ %i.ap, %.lr.ph.i49.i ]
  %i.aq = call i64 @rb_id2sym(i64 noundef %.lcssa.i48.i) #46
  %i.ar = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.aq, i64 noundef 81) #46 ; 0 uses
  %.pr.i52.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.410, align 8, !tbaa !59 ; 2 uses
  %.not4.i53.i = icmp eq i64 %.pr.i52.i, 0
  br i1 %.not4.i53.i, label %.lr.ph.i55.i, label %rbimpl_intern_const.exit57.i

.lr.ph.i55.i:                                     ; preds = %rbimpl_intern_const.exit51.i, %.lr.ph.i55.i
  %i.as = call i64 @rb_intern2(ptr noundef nonnull @.str.411, i64 noundef 11) #46 ; 3 uses
  store i64 %i.as, ptr @rb_gc_impl_init.rbimpl_id.410, align 8, !tbaa !59
  %.not.i56.i = icmp eq i64 %i.as, 0
  br i1 %.not.i56.i, label %.lr.ph.i55.i, label %rbimpl_intern_const.exit57.i, !llvm.loop !301

rbimpl_intern_const.exit57.i:                     ; preds = %.lr.ph.i55.i, %rbimpl_intern_const.exit51.i
  %.lcssa.i54.i = phi i64 [ %.pr.i52.i, %rbimpl_intern_const.exit51.i ], [ %i.as, %.lr.ph.i55.i ]
  %i.at = call i64 @rb_id2sym(i64 noundef %.lcssa.i54.i) #46
  %i.au = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.at, i64 noundef 33) #46 ; 0 uses
  %.pr.i58.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.412, align 8, !tbaa !59 ; 2 uses
  %.not4.i59.i = icmp eq i64 %.pr.i58.i, 0
  br i1 %.not4.i59.i, label %.lr.ph.i61.i, label %rbimpl_intern_const.exit63.i

.lr.ph.i61.i:                                     ; preds = %rbimpl_intern_const.exit57.i, %.lr.ph.i61.i
  %i.av = call i64 @rb_intern2(ptr noundef nonnull @.str.413, i64 noundef 15) #46 ; 3 uses
  store i64 %i.av, ptr @rb_gc_impl_init.rbimpl_id.412, align 8, !tbaa !59
  %.not.i62.i = icmp eq i64 %i.av, 0
  br i1 %.not.i62.i, label %.lr.ph.i61.i, label %rbimpl_intern_const.exit63.i, !llvm.loop !301

rbimpl_intern_const.exit63.i:                     ; preds = %.lr.ph.i61.i, %rbimpl_intern_const.exit57.i
  %.lcssa.i60.i = phi i64 [ %.pr.i58.i, %rbimpl_intern_const.exit57.i ], [ %i.av, %.lr.ph.i61.i ]
  %i.aw = call i64 @rb_id2sym(i64 noundef %.lcssa.i60.i) #46
  %i.ax = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.aw, i64 noundef 1) #46 ; 0 uses
  %.pr.i64.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.414, align 8, !tbaa !59 ; 2 uses
  %.not4.i65.i = icmp eq i64 %.pr.i64.i, 0
  br i1 %.not4.i65.i, label %.lr.ph.i67.i, label %rbimpl_intern_const.exit69.i

.lr.ph.i67.i:                                     ; preds = %rbimpl_intern_const.exit63.i, %.lr.ph.i67.i
  %i.ay = call i64 @rb_intern2(ptr noundef nonnull @.str.415, i64 noundef 19) #46 ; 3 uses
  store i64 %i.ay, ptr @rb_gc_impl_init.rbimpl_id.414, align 8, !tbaa !59
  %.not.i68.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i68.i, label %.lr.ph.i67.i, label %rbimpl_intern_const.exit69.i, !llvm.loop !301

rbimpl_intern_const.exit69.i:                     ; preds = %.lr.ph.i67.i, %rbimpl_intern_const.exit63.i
  %.lcssa.i66.i = phi i64 [ %.pr.i64.i, %rbimpl_intern_const.exit63.i ], [ %i.ay, %.lr.ph.i67.i ]
  %i.az = call i64 @rb_id2sym(i64 noundef %.lcssa.i66.i) #46
  %i.ba = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.az, i64 noundef 3277) #46 ; 0 uses
  %.pr.i70.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.416, align 8, !tbaa !59 ; 2 uses
  %.not4.i71.i = icmp eq i64 %.pr.i70.i, 0
  br i1 %.not4.i71.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i

.lr.ph.i73.i:                                     ; preds = %rbimpl_intern_const.exit69.i, %.lr.ph.i73.i
  %i.bb = call i64 @rb_intern2(ptr noundef nonnull @.str.417, i64 noundef 21) #46 ; 3 uses
  store i64 %i.bb, ptr @rb_gc_impl_init.rbimpl_id.416, align 8, !tbaa !59
  %.not.i74.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i74.i, label %.lr.ph.i73.i, label %rbimpl_intern_const.exit75.i, !llvm.loop !301

rbimpl_intern_const.exit75.i:                     ; preds = %.lr.ph.i73.i, %rbimpl_intern_const.exit69.i
  %.lcssa.i72.i = phi i64 [ %.pr.i70.i, %rbimpl_intern_const.exit69.i ], [ %i.bb, %.lr.ph.i73.i ]
  %i.bc = call i64 @rb_id2sym(i64 noundef %.lcssa.i72.i) #46
  %i.bd = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.bc, i64 noundef 417) #46 ; 0 uses
  %.pr.i76.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.418, align 8, !tbaa !59 ; 2 uses
  %.not4.i77.i = icmp eq i64 %.pr.i76.i, 0
  br i1 %.not4.i77.i, label %.lr.ph.i79.i, label %rbimpl_intern_const.exit81.i

.lr.ph.i79.i:                                     ; preds = %rbimpl_intern_const.exit75.i, %.lr.ph.i79.i
  %i.be = call i64 @rb_intern2(ptr noundef nonnull @.str.419, i64 noundef 14) #46 ; 3 uses
  store i64 %i.be, ptr @rb_gc_impl_init.rbimpl_id.418, align 8, !tbaa !59
  %.not.i80.i = icmp eq i64 %i.be, 0
  br i1 %.not.i80.i, label %.lr.ph.i79.i, label %rbimpl_intern_const.exit81.i, !llvm.loop !301

rbimpl_intern_const.exit81.i:                     ; preds = %.lr.ph.i79.i, %rbimpl_intern_const.exit75.i
  %.lcssa.i78.i = phi i64 [ %.pr.i76.i, %rbimpl_intern_const.exit75.i ], [ %i.be, %.lr.ph.i79.i ]
  %i.bf = call i64 @rb_id2sym(i64 noundef %.lcssa.i78.i) #46
  %i.bg = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.bf, i64 noundef 131073) #46 ; 0 uses
  %.pr.i82.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.420, align 8, !tbaa !59 ; 2 uses
  %.not4.i83.i = icmp eq i64 %.pr.i82.i, 0
  br i1 %.not4.i83.i, label %.lr.ph.i85.i, label %rbimpl_intern_const.exit87.i

.lr.ph.i85.i:                                     ; preds = %rbimpl_intern_const.exit81.i, %.lr.ph.i85.i
  %i.bh = call i64 @rb_intern2(ptr noundef nonnull @.str.421, i64 noundef 10) #46 ; 3 uses
  store i64 %i.bh, ptr @rb_gc_impl_init.rbimpl_id.420, align 8, !tbaa !59
  %.not.i86.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i86.i, label %.lr.ph.i85.i, label %rbimpl_intern_const.exit87.i, !llvm.loop !301

rbimpl_intern_const.exit87.i:                     ; preds = %.lr.ph.i85.i, %rbimpl_intern_const.exit81.i
  %.lcssa.i84.i = phi i64 [ %.pr.i82.i, %rbimpl_intern_const.exit81.i ], [ %i.bh, %.lr.ph.i85.i ]
  %i.bi = call i64 @rb_id2sym(i64 noundef %.lcssa.i84.i) #46
  %i.bj = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.bi, i64 noundef 11) #46 ; 0 uses
  %.pr.i88.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.422, align 8, !tbaa !59 ; 2 uses
  %.not4.i89.i = icmp eq i64 %.pr.i88.i, 0
  br i1 %.not4.i89.i, label %.lr.ph.i91.i, label %rbimpl_intern_const.exit93.i

.lr.ph.i91.i:                                     ; preds = %rbimpl_intern_const.exit87.i, %.lr.ph.i91.i
  %i.bk = call i64 @rb_intern2(ptr noundef nonnull @.str.423, i64 noundef 24) #46 ; 3 uses
  store i64 %i.bk, ptr @rb_gc_impl_init.rbimpl_id.422, align 8, !tbaa !59
  %.not.i92.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i92.i, label %.lr.ph.i91.i, label %rbimpl_intern_const.exit93.i, !llvm.loop !301

rbimpl_intern_const.exit93.i:                     ; preds = %.lr.ph.i91.i, %rbimpl_intern_const.exit87.i
  %.lcssa.i90.i = phi i64 [ %.pr.i88.i, %rbimpl_intern_const.exit87.i ], [ %i.bk, %.lr.ph.i91.i ]
  %i.bl = call i64 @rb_id2sym(i64 noundef %.lcssa.i90.i) #46
  %i.bm = call i64 @rb_hash_aset(i64 noundef %i.al, i64 noundef %i.bl, i64 noundef 1281) #46 ; 0 uses
  %.pr.i94.i = load i64, ptr @rb_gc_impl_init.rbimpl_id.424, align 8, !tbaa !59 ; 2 uses
  %.not4.i95.i = icmp eq i64 %.pr.i94.i, 0
  br i1 %.not4.i95.i, label %.lr.ph.i97.i, label %rbimpl_intern_const.exit99.i

.lr.ph.i97.i:                                     ; preds = %rbimpl_intern_const.exit93.i, %.lr.ph.i97.i
  %i.bn = call i64 @rb_intern2(ptr noundef nonnull @.str.425, i64 noundef 14) #46 ; 3 uses
  store i64 %i.bn, ptr @rb_gc_impl_init.rbimpl_id.424, align 8, !tbaa !59
  %.not.i98.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i98.i, label %.lr.ph.i97.i, label %rbimpl_intern_const.exit99.i, !llvm.loop !301

rbimpl_intern_const.exit99.i:                     ; preds = %.lr.ph.i97.i, %rbimpl_intern_const.exit93.i
  %.lcssa.i96.i = phi i64 [ %.pr.i94.i, %rbimpl_intern_const.exit93.i ], [ %i.bn, %.lr.ph.i97.i ]
  %i.bo = call i64 @rb_id2sym(i64 noundef %.lcssa.i96.i) #46
end_hunk_2
begin_hunk_3_@obj_type_name:bb.a

bb.q:                                             ; preds = %rb_type.exit
  br label %type_name.exit

rb_type.exit.thread5:                             ; preds = %rb_type.exit
  br label %type_name.exit

rb_type.exit.thread7:                             ; preds = %rb_type.exit
  br label %type_name.exit

rb_type.exit.thread9:                             ; preds = %rb_type.exit
  br label %type_name.exit

rb_type.exit.thread11:                            ; preds = %bb.d, %rb_type.exit
  br label %type_name.exit

rb_type.exit.thread13:                            ; preds = %bb.c, %rb_type.exit
  br label %type_name.exit

rb_type.exit.thread15:                            ; preds = %rb_type.exit
  br label %type_name.exit

bb.r:                                             ; preds = %rb_type.exit
  br label %type_name.exit

bb.s:                                             ; preds = %rb_type.exit
  br label %type_name.exit

bb.t:                                             ; preds = %rb_type.exit
  br label %type_name.exit

bb.u:                                             ; preds = %rb_type.exit
  br label %type_name.exit

bb.v:                                             ; preds = %rb_type.exit
  %i.m = and i64 %i.j, 64
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %type_name.exit, label %rb_objspace_data_type_name.exit.i

rb_objspace_data_type_name.exit.i:                ; preds = %bb.v
  %i.n = getelementptr i8, ptr %i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !131
  %i.p = and i64 %i.o, -2
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !133  ; 2 uses
  %.not5.i = icmp eq ptr %i.r, null
  %spec.select.i2 = select i1 %.not5.i, ptr @.str.303, ptr %i.r
  br label %type_name.exit

bb.w:                                             ; preds = %rb_type.exit
  br label %type_name.exit

switch.lookup:                                    ; preds = %bb.b
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.obj_type_name, i64 %0
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %type_name.exit

type_name.exit:                                   ; preds = %switch.lookup, %rb_type.exit, %bb.e, %bb.f, %bb.g, %rb_type.exit.thread, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %rb_type.exit.thread5, %rb_type.exit.thread7, %rb_type.exit.thread9, %rb_type.exit.thread11, %rb_type.exit.thread13, %rb_type.exit.thread15, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %rb_objspace_data_type_name.exit.i, %bb.w
  %.0.i3 = phi ptr [ @.str.304, %bb.w ], [ @.str.278, %rb_type.exit ], [ @.str.279, %bb.e ], [ @.str.280, %bb.f ], [ @.str.281, %bb.g ], [ @.str.282, %rb_type.exit.thread ], [ @.str.283, %bb.h ], [ @.str.284, %bb.i ], [ @.str.285, %bb.j ], [ @.str.286, %bb.k ], [ @.str.287, %bb.l ], [ @.str.288, %bb.m ], [ @.str.289, %bb.n ], [ @.str.290, %bb.o ], [ @.str.291, %bb.p ], [ @.str.292, %bb.q ], [ @.str.293, %rb_type.exit.thread5 ], [ @.str.294, %rb_type.exit.thread7 ], [ @.str.295, %rb_type.exit.thread9 ], [ @.str.296, %rb_type.exit.thread11 ], [ @.str.297, %rb_type.exit.thread13 ], [ @.str.298, %rb_type.exit.thread15 ], [ @.str.299, %bb.r ], [ @.str.300, %bb.s ], [ @.str.301, %bb.t ], [ @.str.302, %bb.u ], [ @.str.303, %bb.v ], [ %spec.select.i2, %rb_objspace_data_type_name.exit.i ], [ %switch.load, %switch.lookup ]
  ret ptr %.0.i3
}

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #11

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #11

declare i64 @rb_class_path_cached(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_str_capacity(i64 noundef) local_unnamed_addr #14

declare i64 @rb_obj_is_proc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_raw_iseq_info(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !637  ; 3 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !640
  %.not12 = icmp eq i64 %i.d, 0
  br i1 %.not12, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %i.b, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !656  ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.d
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 30
  br i1 %i.n, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.o = tail call i64 @rb_iseq_path(ptr noundef nonnull %2) #46
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !637  ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !657
  %i.s = getelementptr i8, ptr %i.p, i64 80
  %i.t = load i64, ptr %i.s, align 8, !tbaa !640
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %i.w = and i64 %i.v, 8192
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.u, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !214
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.e
  %i.z = phi ptr [ %i.y, %bb.e ], [ %i.x, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.aa = inttoptr i64 %i.o to ptr                ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109
  %i.ac = and i64 %i.ab, 8192
  %.not.i13 = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr i8, ptr %i.aa, i64 24     ; 2 uses
  br i1 %.not.i13, label %RSTRING_PTR.exit14, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !214
  br label %RSTRING_PTR.exit14

RSTRING_PTR.exit14:                               ; preds = %RSTRING_PTR.exit, %bb.f
  %i.af = phi ptr [ %i.ae, %bb.f ], [ %i.ad, %RSTRING_PTR.exit ]
  %i.ag = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.345, ptr noundef %i.z, ptr noundef %i.af, i32 noundef %i.r) #46 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit14, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @rb_imemo_name(i32 noundef) local_unnamed_addr #11

declare i64 @rb_iseq_path(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @llvm.eh.sjlj.longjmp(ptr) #58

; Function Attrs: cold noreturn nounwind sspstrong uwtable
define internal fastcc void @ruby_memerror() unnamed_addr #59 {
bb.a:
  %i.a = tail call i32 @ruby_thread_has_gvl_p() #46
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_memerror() #62
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @ruby_native_thread_p() #46
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @ruby_memerror_body, ptr noundef null) #46 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.27) #46 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @exit(i32 noundef 1) #61
  unreachable
}

; Function Attrs: cold noreturn nounwind sspstrong uwtable
define internal noalias noundef nonnull ptr @ruby_memerror_body(ptr readnone captures(none) %0) #59 {
bb.a:
  tail call void @rb_memerror() #62
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @negative_size_allocation_error() unnamed_addr #27 {
bb.a:
  %i.a = load i64, ptr @rb_eNoMemError, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @gc_raise(i64 noundef %i.a, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.346) #63
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_gc_impl_malloc(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28         ; 3 uses
  %.val.i = load i16, ptr %i.a, align 4           ; 2 uses
  %i.b = and i16 %.val.i, 40
  %or.cond.i.i = icmp ne i16 %i.b, 32
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond1.i.i, label %check_malloc_not_in_gc.exit, label %malloc_during_gc_p.exit.i

malloc_during_gc_p.exit.i:                        ; preds = %bb.a
  %i.d = tail call i32 @ruby_thread_has_gvl_p() #46
  %.not.i = icmp eq i32 %i.d, 0
  %.pre = load i16, ptr %i.a, align 4             ; 2 uses
  br i1 %.not.i, label %check_malloc_not_in_gc.exit, label %bb.b, !prof !204

bb.b:                                             ; preds = %malloc_during_gc_p.exit.i
  %i.e = and i16 %.pre, -41
  %i.f = or disjoint i16 %i.e, 8
  store i16 %i.f, ptr %i.a, align 4
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.201) #61
  unreachable

check_malloc_not_in_gc.exit:                      ; preds = %bb.a, %malloc_during_gc_p.exit.i
  %i.g = phi i16 [ %.val.i, %bb.a ], [ %.pre, %malloc_during_gc_p.exit.i ]
  %spec.store.select.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %1, i64 1) ; 3 uses
  %i.h = and i16 %i.g, 256
  %.not.i19 = icmp eq i16 %i.h, 0
  br i1 %.not.i19, label %objspace_malloc_gc_stress.exit, label %bb.c

bb.c:                                             ; preds = %check_malloc_not_in_gc.exit
  %i.i = tail call i32 @ruby_native_thread_p() #46
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %objspace_malloc_gc_stress.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 1120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !181
  %i.l = and i64 %i.k, 9
  %i.m = icmp eq i64 %i.l, 9
  %.0.i = select i1 %i.m, i32 111104, i32 45568
  %i.n = tail call fastcc i32 @garbage_collect_with_gvl(ptr noundef nonnull %0, i32 noundef %.0.i) ; 0 uses
  br label %objspace_malloc_gc_stress.exit

objspace_malloc_gc_stress.exit:                   ; preds = %check_malloc_not_in_gc.exit, %bb.c, %bb.d
  %i.o = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #65 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.e, label %.thread22, !prof !60

bb.e:                                             ; preds = %objspace_malloc_gc_stress.exit
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call fastcc i32 @garbage_collect_with_gvl(ptr noundef nonnull %0, i32 noundef 107008)
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %spec.store.select.i) #65 ; 2 uses
  %.not18 = icmp eq ptr %i.q, null
  br i1 %.not18, label %.thread, label %.thread22

.thread22:                                        ; preds = %objspace_malloc_gc_stress.exit, %bb.g
  %.01525 = phi ptr [ %i.q, %bb.g ], [ %i.o, %objspace_malloc_gc_stress.exit ]
  tail call fastcc void @objspace_malloc_increase_body(ptr noundef nonnull %0, i64 noundef %spec.store.select.i, i64 noundef 0, i32 noundef 0, i1 noundef zeroext %2)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %.thread22
  %.0 = phi ptr [ %.01525, %.thread22 ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @garbage_collect_with_gvl(ptr noundef %0, i32 noundef range(i32 512, 111105) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.objspace_and_reason, align 8 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 28
  %i.d = load i16, ptr %i.c, align 4
  %i.e = and i16 %i.d, 8
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @ruby_native_thread_p() #46
  %.not6 = icmp eq i32 %i.f, 0
  br i1 %.not6, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @ruby_thread_has_gvl_p() #46
  %.not7 = icmp eq i32 %i.g, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr %0, ptr %2, align 8, !tbaa !658
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %1, ptr %i.h, align 8, !tbaa !660
  %i.i = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @gc_with_gvl, ptr noundef nonnull %2) #46
  %i.j = icmp ne ptr %i.i, null
  %i.k = zext i1 %i.j to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.f, label %rb_gc_vm_lock.exit.i

bb.f:                                             ; preds = %bb.e
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #46, !inline_history !335
  %.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i

rb_gc_vm_lock.exit.i:                             ; preds = %bb.f, %bb.e
  %i.m = phi i32 [ 0, %bb.e ], [ %.pre.i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call fastcc void @gc_rest(ptr noundef nonnull %0), !inline_history !335
  call fastcc void @gc_start(ptr noundef nonnull %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.m, ptr %i.a, align 4, !tbaa !7
  %i.n = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i4.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i4.i, label %bb.g, label %garbage_collect.exit

bb.g:                                             ; preds = %rb_gc_vm_lock.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46, !inline_history !335
  br label %garbage_collect.exit

garbage_collect.exit:                             ; preds = %rb_gc_vm_lock.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %garbage_collect.exit, %bb.d
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %garbage_collect.exit ], [ %i.k, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef nonnull ptr @gc_with_gvl(ptr noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !658    ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.f = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.b, label %rb_gc_vm_lock.exit.i

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #46, !inline_history !335
  %.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i

rb_gc_vm_lock.exit.i:                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %.pre.i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call fastcc void @gc_rest(ptr noundef %i.c), !inline_history !335
  call fastcc void @gc_start(ptr noundef %i.c, i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.g, ptr %i.a, align 4, !tbaa !7
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i4.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i4.i, label %bb.c, label %garbage_collect.exit

bb.c:                                             ; preds = %rb_gc_vm_lock.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46, !inline_history !335
  br label %garbage_collect.exit

garbage_collect.exit:                             ; preds = %rb_gc_vm_lock.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr inttoptr (i64 1 to ptr)
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @objspace_malloc_increase_body(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 3) %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.objspace_and_reason, align 8 ; 5 uses
  %i.c = or i64 %2, %1
  %or.cond = icmp ult i64 %i.c, 8192
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw nsw i64 %1 to i32
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.d, %i.e
  %i.g = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @malloc_increase_local) ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7
  %i.i = add i32 %i.h, %i.f                       ; 5 uses
  store i32 %i.i, ptr %i.g, align 4, !tbaa !7
  %i.j = add i32 %i.i, -8192
  %or.cond4 = icmp ult i32 %i.j, -16383
end_hunk_3
begin_hunk_4_@objspace_malloc_increase_body:bb.a

bb.g:                                             ; preds = %bb.f
  %i.af = sub i32 0, %i.y
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  br label %.preheader.i.i.i25

.preheader.i.i.i25:                               ; preds = %.preheader.i.i.i25, %bb.g
  %.010.i.i.i26 = phi i64 [ %spec.select.i.i.i27, %.preheader.i.i.i25 ], [ %i.ag, %bb.g ]
  %i.ah = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i.i27 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %.010.i.i.i26) ; 2 uses
  %i.ai = sub i64 %i.ah, %spec.select.i.i.i27
  %i.aj = cmpxchg volatile ptr %0, i64 %i.ah, i64 %i.ai seq_cst seq_cst, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %atomic_sub_nounderflow.exit.i.i28, label %.preheader.i.i.i25

atomic_sub_nounderflow.exit.i.i28:                ; preds = %.preheader.i.i.i25
  %i.al = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %.preheader.i15.i.i29

.preheader.i15.i.i29:                             ; preds = %.preheader.i15.i.i29, %atomic_sub_nounderflow.exit.i.i28
  %.010.i16.i.i30 = phi i64 [ %spec.select.i17.i.i31, %.preheader.i15.i.i29 ], [ %i.ag, %atomic_sub_nounderflow.exit.i.i28 ]
  %i.am = load i64, ptr %i.al, align 8, !tbaa !59 ; 3 uses
  %spec.select.i17.i.i31 = tail call i64 @llvm.umin.i64(i64 %i.am, i64 %.010.i16.i.i30) ; 2 uses
  %i.an = sub i64 %i.am, %spec.select.i17.i.i31
  %i.ao = cmpxchg volatile ptr %i.al, i64 %i.am, i64 %i.an seq_cst seq_cst, align 8
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  br i1 %i.ap, label %malloc_increase_local_flush.exit33, label %.preheader.i15.i.i29

malloc_increase_local_flush.exit33:               ; preds = %.preheader.i15.i.i29, %bb.e, %malloc_increase_commit.exit.i32
  %i.aq = icmp ugt i64 %1, %2
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %malloc_increase_local_flush.exit33
  %i.ar = sub nuw i64 %1, %2
  br label %malloc_increase_local_flush.exit.sink.split

bb.i:                                             ; preds = %malloc_increase_local_flush.exit33
  %i.as = sub nuw i64 %2, %1                      ; 3 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %malloc_increase_local_flush.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i, %.preheader.i.i
  %.010.i.i = phi i64 [ %spec.select.i.i, %.preheader.i.i ], [ %i.as, %bb.i ]
  %i.au = load i64, ptr %0, align 8, !tbaa !59    ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %.010.i.i) ; 2 uses
  %i.av = sub i64 %i.au, %spec.select.i.i
  %i.aw = cmpxchg volatile ptr %0, i64 %i.au, i64 %i.av seq_cst seq_cst, align 8
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ax, label %atomic_sub_nounderflow.exit.i, label %.preheader.i.i

atomic_sub_nounderflow.exit.i:                    ; preds = %.preheader.i.i
  %i.ay = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %.preheader.i15.i

.preheader.i15.i:                                 ; preds = %.preheader.i15.i, %atomic_sub_nounderflow.exit.i
  %.010.i16.i = phi i64 [ %spec.select.i17.i, %.preheader.i15.i ], [ %i.as, %atomic_sub_nounderflow.exit.i ]
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !59 ; 3 uses
  %spec.select.i17.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %.010.i16.i) ; 2 uses
  %i.ba = sub i64 %i.az, %spec.select.i17.i
  %i.bb = cmpxchg volatile ptr %i.ay, i64 %i.az, i64 %i.ba seq_cst seq_cst, align 8
  %i.bc = extractvalue { i64, i1 } %i.bb, 1
  br i1 %i.bc, label %malloc_increase_local_flush.exit, label %.preheader.i15.i

malloc_increase_local_flush.exit.sink.split:      ; preds = %malloc_increase_commit.exit.i, %bb.h
  %.sink = phi i64 [ %i.ar, %bb.h ], [ %i.l, %malloc_increase_commit.exit.i ] ; 2 uses
  %i.bd = atomicrmw volatile add ptr %0, i64 %.sink seq_cst, align 8 ; 0 uses
  %i.be = getelementptr i8, ptr %0, i64 8
  %i.bf = atomicrmw volatile add ptr %i.be, i64 %.sink seq_cst, align 8 ; 0 uses
  br label %malloc_increase_local_flush.exit

malloc_increase_local_flush.exit:                 ; preds = %.preheader.i15.i, %.preheader.i15.i.i, %malloc_increase_local_flush.exit.sink.split, %bb.i, %bb.b
  %i.bg = icmp eq i32 %3, 0
  %or.cond6 = and i1 %i.bg, %4
  br i1 %or.cond6, label %.preheader, label %garbage_collect_with_gvl.exit

.preheader:                                       ; preds = %malloc_increase_local_flush.exit
  %i.bh = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bi = load i64, ptr %0, align 8, !tbaa !342
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !161
  %i.bk = icmp ugt i64 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph, label %garbage_collect_with_gvl.exit

.lr.ph:                                           ; preds = %.preheader
  %i.bl = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 144
  %i.bn = getelementptr i8, ptr %0, i64 296
  %i.bo = getelementptr i8, ptr %0, i64 448
  %i.bp = getelementptr i8, ptr %0, i64 600
  %i.bq = getelementptr i8, ptr %0, i64 752
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %has_sweeping_pages.exit.thread
  %i.br = tail call i32 @ruby_native_thread_p() #46
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %garbage_collect_with_gvl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load i16, ptr %i.bl, align 4
  %i.bt = and i16 %i.bs, 8
  %.not23 = icmp eq i16 %i.bt, 0
  br i1 %.not23, label %bb.l, label %garbage_collect_with_gvl.exit

bb.l:                                             ; preds = %bb.k
  %i.bu = tail call i32 @ruby_thread_has_gvl_p() #46
  %.not24 = icmp eq i32 %i.bu, 0
  br i1 %.not24, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !111
  %.not.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.not.i, label %bb.n, label %has_sweeping_pages.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !111
  %.not.1.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.1.not.i, label %bb.o, label %has_sweeping_pages.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !111
  %.not.2.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.2.not.i, label %bb.p, label %has_sweeping_pages.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !111
  %.not.3.not.i = icmp eq ptr %i.by, null
  br i1 %.not.3.not.i, label %has_sweeping_pages.exit, label %has_sweeping_pages.exit.thread

has_sweeping_pages.exit:                          ; preds = %bb.p
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !111
  %.not.4.not.i.not = icmp eq ptr %i.bz, null
  br i1 %.not.4.not.i.not, label %bb.q, label %has_sweeping_pages.exit.thread

has_sweeping_pages.exit.thread:                   ; preds = %bb.o, %bb.n, %bb.m, %bb.p, %has_sweeping_pages.exit
  tail call fastcc void @gc_rest(ptr noundef nonnull %0)
  %i.ca = load i64, ptr %0, align 8, !tbaa !342
  %i.cb = load i64, ptr %i.bh, align 8, !tbaa !161
  %i.cc = icmp ugt i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.j, label %garbage_collect_with_gvl.exit

bb.q:                                             ; preds = %has_sweeping_pages.exit, %bb.l
  %i.cd = load i16, ptr %i.bl, align 4
  %i.ce = and i16 %i.cd, 8
  %.not.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i, label %bb.r, label %garbage_collect_with_gvl.exit

bb.r:                                             ; preds = %bb.q
  %i.cf = tail call i32 @ruby_native_thread_p() #46, !inline_history !661
  %.not6.i = icmp eq i32 %i.cf, 0
  br i1 %.not6.i, label %garbage_collect_with_gvl.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = tail call i32 @ruby_thread_has_gvl_p() #46, !inline_history !661
  %.not7.i = icmp eq i32 %i.cg, 0
  br i1 %.not7.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  store ptr %0, ptr %5, align 8, !tbaa !658
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 512, ptr %i.ch, align 8, !tbaa !660
  %i.ci = call ptr @rb_thread_call_with_gvl(ptr noundef nonnull @gc_with_gvl, ptr noundef nonnull %5) #46, !inline_history !661 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %garbage_collect_with_gvl.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.cj = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %bb.v, label %rb_gc_vm_lock.exit.i

bb.v:                                             ; preds = %bb.u
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #46, !inline_history !662
  %.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !7
  br label %rb_gc_vm_lock.exit.i

rb_gc_vm_lock.exit.i:                             ; preds = %bb.v, %bb.u
  %i.ck = phi i32 [ 0, %bb.u ], [ %.pre.i.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call fastcc void @gc_rest(ptr noundef nonnull %0), !inline_history !662
  call fastcc void @gc_start(ptr noundef nonnull %0, i32 noundef 512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ck, ptr %i.a, align 4, !tbaa !7
  %i.cl = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !11
  %.not.i.i.i4.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i4.i, label %bb.w, label %garbage_collect.exit

bb.w:                                             ; preds = %rb_gc_vm_lock.exit.i
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46, !inline_history !662
  br label %garbage_collect.exit

garbage_collect.exit:                             ; preds = %rb_gc_vm_lock.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %garbage_collect_with_gvl.exit

garbage_collect_with_gvl.exit:                    ; preds = %bb.k, %bb.j, %has_sweeping_pages.exit.thread, %.preheader, %garbage_collect.exit, %bb.t, %bb.r, %bb.q, %malloc_increase_local_flush.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_gc_impl_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28         ; 4 uses
  %.val.i = load i16, ptr %i.a, align 4
  %i.b = and i16 %.val.i, 40
  %or.cond.i.i = icmp ne i16 %i.b, 32
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond1.i.i, label %check_malloc_not_in_gc.exit, label %malloc_during_gc_p.exit.i

malloc_during_gc_p.exit.i:                        ; preds = %bb.a
  %i.d = tail call i32 @ruby_thread_has_gvl_p() #46
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %check_malloc_not_in_gc.exit, label %bb.b, !prof !204

bb.b:                                             ; preds = %malloc_during_gc_p.exit.i
  %i.e = load i16, ptr %i.a, align 4
  %i.f = and i16 %i.e, -41
  %i.g = or disjoint i16 %i.f, 8
  store i16 %i.g, ptr %i.a, align 4
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.349) #61
  unreachable

check_malloc_not_in_gc.exit:                      ; preds = %bb.a, %malloc_during_gc_p.exit.i
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %check_malloc_not_in_gc.exit
  %i.h = tail call fastcc ptr @rb_gc_impl_malloc(ptr noundef nonnull %0, i64 noundef %2, i1 noundef zeroext %4)
  br label %.thread

bb.d:                                             ; preds = %check_malloc_not_in_gc.exit
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = tail call fastcc ptr @rb_gc_impl_malloc(ptr noundef nonnull %0, i64 noundef 0, i1 noundef zeroext %4) ; 2 uses
  %.not49 = icmp eq ptr %i.j, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @rb_gc_impl_free(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %3)
  br label %.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  %.043 = phi i64 [ %2, %bb.d ], [ 1, %bb.e ]     ; 3 uses
  %.not.i53 = icmp eq i64 %3, 0
  br i1 %.not.i53, label %bb.h, label %objspace_malloc_size.exit

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i64 @malloc_usable_size(ptr noundef nonnull %1) #46
  br label %objspace_malloc_size.exit

objspace_malloc_size.exit:                        ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %3, %bb.g ], [ %i.k, %bb.h ]
  %i.l = load i16, ptr %i.a, align 4
  %i.m = and i16 %i.l, 256
  %.not.i54 = icmp eq i16 %i.m, 0
  br i1 %.not.i54, label %objspace_malloc_gc_stress.exit, label %bb.i

bb.i:                                             ; preds = %objspace_malloc_size.exit
  %i.n = tail call i32 @ruby_native_thread_p() #46
  %.not5.i = icmp eq i32 %i.n, 0
  br i1 %.not5.i, label %objspace_malloc_gc_stress.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %0, i64 1120
  %i.p = load i64, ptr %i.o, align 8, !tbaa !181
  %i.q = and i64 %i.p, 9
  %i.r = icmp eq i64 %i.q, 9
  %.0.i55 = select i1 %i.r, i32 111104, i32 45568
  %i.s = tail call fastcc i32 @garbage_collect_with_gvl(ptr noundef nonnull %0, i32 noundef %.0.i55) ; 0 uses
  br label %objspace_malloc_gc_stress.exit

objspace_malloc_gc_stress.exit:                   ; preds = %objspace_malloc_size.exit, %bb.i, %bb.j
  %i.t = tail call ptr @realloc(ptr noundef nonnull %1, i64 noundef %.043) #69 ; 2 uses
  %.not50 = icmp eq ptr %i.t, null
  br i1 %.not50, label %bb.k, label %.thread60, !prof !60

bb.k:                                             ; preds = %objspace_malloc_gc_stress.exit
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = tail call fastcc i32 @garbage_collect_with_gvl(ptr noundef nonnull %0, i32 noundef 107008)
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.v = tail call ptr @realloc(ptr noundef nonnull %1, i64 noundef %.043) #69 ; 2 uses
  %.not52 = icmp eq ptr %i.v, null
  br i1 %.not52, label %.thread, label %.thread60

.thread60:                                        ; preds = %bb.m, %objspace_malloc_gc_stress.exit
  %.04463 = phi ptr [ %i.v, %bb.m ], [ %i.t, %objspace_malloc_gc_stress.exit ]
  tail call fastcc void @objspace_malloc_increase_body(ptr noundef nonnull %0, i64 noundef %.043, i64 noundef %.0.i, i32 noundef 2, i1 noundef zeroext %4)
  br label %.thread

.thread:                                          ; preds = %.thread60, %bb.l, %bb.m, %bb.f, %bb.c
  %.042 = phi ptr [ %i.j, %bb.f ], [ null, %bb.m ], [ %i.h, %bb.c ], [ null, %bb.l ], [ %.04463, %.thread60 ]
  ret ptr %.042
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @check_shareable_i(i64 noundef %0, ptr noundef captures(none) %1) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %i.c = and i64 %i.b, 256
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.351) #46 ; 0 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !124
  tail call fastcc void @rb_gc_rp(i64 noundef %i.f)
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.352) #46 ; 0 uses
  tail call fastcc void @rb_gc_rp(i64 noundef %0)
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.j = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull @.str.353) #46 ; 0 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !126
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !126
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.354) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_rp(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.c = call ptr @rb_raw_obj_info(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef %0) ; 0 uses
  %i.d = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.rb_gc_rp, ptr noundef nonnull @.str.1, i32 noundef 5461, ptr noundef nonnull %i.a) #46 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

declare i64 @rb_hash_new() local_unnamed_addr #11

declare i64 @rb_hash_aref(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @stat_one_heap(ptr noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr @gc_stat_heap_symbols.0, align 16, !tbaa !59 ; 2 uses
  %i.b = icmp eq i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.d = sext i16 %i.c to i64                     ; 2 uses
  %i.e = icmp sgt i16 %i.c, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.d, 1
  %i.g = or disjoint i64 %i.f, 1
  br label %rb_ull2num_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_ull2inum(i64 noundef %i.d) #46
  br label %rb_ull2num_inline.exit

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 4
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load i16, ptr %0, align 8, !tbaa !163    ; 2 uses
  %i.j = sext i16 %i.i to i64                     ; 2 uses
  %i.k = icmp sgt i16 %i.i, -1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = shl nuw nsw i64 %i.j, 1
  %i.m = or disjoint i64 %i.l, 1
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.n = tail call i64 @rb_ull2inum(i64 noundef %i.j) #46
  br label %.thread

bb.i:                                             ; preds = %bb.e
  %i.o = load i64, ptr @gc_stat_heap_symbols.1, align 8, !tbaa !59
  %i.p = icmp eq i64 %2, %i.o
  br i1 %i.p, label %bb.j, label %bb.p

.thread:                                          ; preds = %bb.h, %bb.g
  %.0.i79 = phi i64 [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  %i.q = tail call i64 @rb_hash_aset(i64 noundef %1, i64 noundef %i.a, i64 noundef %.0.i79) #46 ; 0 uses
  %i.r = load i64, ptr @gc_stat_heap_symbols.1, align 8, !tbaa !59 ; 2 uses
  %i.s = icmp eq i64 %2, %i.r
  br i1 %i.s, label %bb.j, label %bb.m
end_hunk_4
