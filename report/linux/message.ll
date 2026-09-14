Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/message?download=true
inline.NumInlined: 137
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@usb_sg_cancel:bb.a
  %i.w = icmp sgt i64 %indvars.iv, 0
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.x = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.a) #12 ; 2 uses
  %i.y = load i32, ptr %i.d, align 8
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.d, align 8
  %.not33 = icmp eq i32 %i.z, 0
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.aa = getelementptr i8, ptr %0, i64 56
  tail call void @complete(ptr noundef %i.aa) #12
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.a, %bb.b
  %.sink = phi i64 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %i.x, %bb.g ], [ %i.x, %._crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.a, i64 noundef %.sink) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usb_block_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %4, 1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.b, i1 false)
  %i.c = getelementptr i8, ptr %3, i64 1          ; 3 uses
  %i.d = zext i8 %1 to i16
  %i.e = shl nuw i16 %i.d, 8
  %i.f = zext i8 %2 to i16
  %i.g = or disjoint i16 %i.e, %i.f               ; 3 uses
  %i.h = trunc i32 %4 to i16                      ; 3 uses
  %.val = load i32, ptr %0, align 8
  %i.i = shl i32 %.val, 8
  %i.j = or i32 %i.i, -2147483520
  %i.k = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %i.j, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %i.g, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %i.h, i32 noundef 5000) #13 ; 5 uses
  %i.l = icmp slt i32 %i.k, 1
  %i.m = icmp ne i32 %i.k, -110
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp sgt i32 %i.k, 1
  br i1 %i.n, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.c, align 1
  %.not = icmp eq i8 %i.o, %1
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.val.1 = load i32, ptr %0, align 8
  %i.p = shl i32 %.val.1, 8
  %i.q = or i32 %i.p, -2147483520
  %i.r = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %i.q, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %i.g, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %i.h, i32 noundef 5000) #13 ; 5 uses
  %i.s = icmp slt i32 %i.r, 1
  %i.t = icmp ne i32 %i.r, -110
  %or.cond.1 = and i1 %i.s, %i.t
  br i1 %or.cond.1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.c, align 1
  %.not.1 = icmp eq i8 %i.v, %1
  br i1 %.not.1, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.val.2 = load i32, ptr %0, align 8
  %i.w = shl i32 %.val.2, 8
  %i.x = or i32 %i.w, -2147483520
  %i.y = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %i.x, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %i.g, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %i.h, i32 noundef 5000) #13 ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.aa = load i8, ptr %i.c, align 1
  %.not.2 = icmp eq i8 %i.aa, %1
  %spec.select = select i1 %.not.2, i32 %i.y, i32 -61
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.d, %bb.c, %bb.f, %bb.g, %bb.h, %bb.a
  %.019 = phi i32 [ -22, %bb.a ], [ %i.k, %bb.d ], [ %i.k, %bb.c ], [ %i.y, %bb.h ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %spec.select, %bb.i ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @usb_string(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %3, 0
  %i.e = icmp ne ptr %2, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %2, align 1
  %i.f = add i32 %1, -256
  %or.cond3 = icmp ult i32 %i.f, -255
  br i1 %or.cond3, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 64), align 16
  %i.h = tail call noalias align 8 dereferenceable_or_null(256) ptr @__kmalloc_cache_noprof(ptr noundef %i.g, i32 noundef 3072, i64 noundef 256) #10 ; 6 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 1253       ; 5 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = and i16 %i.j, 8
  %.not.i = icmp eq i16 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 1256       ; 4 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %usb_get_langid.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc i32 @usb_string_sub(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.h) #13, !srcloc !29 ; 3 uses
  switch i32 %i.o, label %bb.i [
    i32 -61, label %bb.h
    i32 3, label %bb.h
    i32 2, label %bb.h
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  store i32 1033, ptr %i.l, align 8
  %i.p = load i16, ptr %i.i, align 1
  %i.q = or i16 %i.p, 8
  store i16 %i.q, ptr %i.i, align 1
  %i.r = getelementptr i8, ptr %0, i64 176
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.r, ptr noundef nonnull @.str.21) #16
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.s = icmp slt i32 %i.o, 0
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 176
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.t, ptr noundef nonnull @.str.22, i32 noundef %i.o) #16
  store i32 -1, ptr %i.l, align 8
  br label %usb_get_langid.exit

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %i.h, i64 2
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i32
  store i32 %i.w, ptr %i.l, align 8
  %i.x = load i16, ptr %i.i, align 1
  %i.y = or i16 %i.x, 8
  store i16 %i.y, ptr %i.i, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.h
  %i.z = getelementptr i8, ptr %0, i64 1256
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = tail call fastcc i32 @usb_string_sub(ptr noundef %0, i32 noundef %i.aa, i32 noundef %1, ptr noundef %i.h) #13, !srcloc !30 ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %usb_get_langid.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.h, i64 2
  %4 = trunc nuw nsw i32 %i.ab to i16
  %.lhs.trunc = add nsw i16 %4, -2
  %5 = sdiv i16 %.lhs.trunc, 2
  %.sext = sext i16 %5 to i32
  %i.ae = trunc i64 %3 to i32
  %i.af = add i32 %i.ae, -1
  %i.ag = tail call i32 @utf16s_to_utf8s(ptr noundef %i.ad, i32 noundef %.sext, i32 noundef 1, ptr noundef nonnull %2, i32 noundef %i.af) #12 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  store i8 0, ptr %i.ai, align 1
  br label %usb_get_langid.exit

usb_get_langid.exit:                              ; preds = %bb.j, %bb.f, %bb.l, %bb.m
  %.032 = phi i32 [ %i.ag, %bb.m ], [ %i.ab, %bb.l ], [ -32, %bb.f ], [ -32, %bb.j ]
  tail call void @kfree(ptr noundef nonnull %i.h) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %usb_get_langid.exit
  %.0 = phi i32 [ -113, %bb.a ], [ -22, %bb.b ], [ %.032, %usb_get_langid.exit ], [ -22, %bb.c ], [ -12, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 255) i32 @usb_string_sub(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 256) %2, ptr noundef nonnull %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1308
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = trunc i32 %1 to i16                      ; 3 uses
  %i.e = trunc nuw i32 %2 to i8                   ; 3 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @usb_get_string(ptr noundef %0, i16 noundef zeroext %i.d, i8 noundef zeroext %i.e, ptr noundef %3, i32 noundef 255) #13, !srcloc !32 ; 2 uses
  %i.g = icmp slt i32 %i.f, 2
  br i1 %i.g, label %.thread, label %.thread27

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = tail call fastcc i32 @usb_get_string(ptr noundef %0, i16 noundef zeroext %i.d, i8 noundef zeroext %i.e, ptr noundef %3, i32 noundef 2) #13, !srcloc !33 ; 2 uses
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.j = load i8, ptr %3, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = tail call fastcc i32 @usb_get_string(ptr noundef %0, i16 noundef zeroext %i.d, i8 noundef zeroext %i.e, ptr noundef %3, i32 noundef %i.k) #13, !srcloc !34
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ %i.h, %.thread ] ; 3 uses
  %i.m = icmp sgt i32 %.0, 1
  br i1 %i.m, label %.thread27, label %.thread30

.thread27:                                        ; preds = %bb.b, %bb.d
  %.029 = phi i32 [ %.0, %bb.d ], [ %i.f, %bb.b ] ; 5 uses
  %i.n = load i8, ptr %3, align 1                 ; 2 uses
  %.not19 = icmp eq i8 %i.n, 0
  br i1 %.not19, label %bb.e, label %usb_try_string_workarounds.exit

bb.e:                                             ; preds = %.thread27
  %i.o = getelementptr i8, ptr %3, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %.not20 = icmp eq i8 %i.p, 0
  %i.q = icmp samesign ugt i32 %.029, 3
  %or.cond = select i1 %.not20, i1 %i.q, i1 false
  br i1 %or.cond, label %.lr.ph.i, label %usb_try_string_workarounds.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %4 = phi i32 [ %8, %bb.g ], [ 3, %bb.e ]
  %.014.i = phi i32 [ %7, %bb.g ], [ 2, %bb.e ]   ; 4 uses
  %5 = sext i32 %.014.i to i64
  %i.r = getelementptr i8, ptr %3, i64 %5
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr i8, ptr @_ctype, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, -105
  %.not.i = icmp eq i8 %i.w, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %6 = sext i32 %4 to i64
  %i.x = getelementptr i8, ptr %3, i64 %6
  %i.y = load i8, ptr %i.x, align 1
  %.not13.i = icmp eq i8 %i.y, 0
  br i1 %.not13.i, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %7 = add i32 %.014.i, 2                         ; 3 uses
  %8 = or disjoint i32 %7, 1                      ; 2 uses
  %9 = icmp slt i32 %8, %.029
  br i1 %9, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %bb.g, %bb.f, %.lr.ph.i
  %.0.lcssa.i = phi i32 [ %.014.i, %.lr.ph.i ], [ %7, %bb.g ], [ %.014.i, %bb.f ] ; 3 uses
  %10 = icmp sgt i32 %.0.lcssa.i, 2
  br i1 %10, label %bb.h, label %usb_try_string_workarounds.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.z = trunc i32 %.0.lcssa.i to i8              ; 2 uses
  store i8 %i.z, ptr %3, align 1
  br label %usb_try_string_workarounds.exit

usb_try_string_workarounds.exit:                  ; preds = %bb.h, %._crit_edge.i, %bb.e, %.thread27
  %i.aa = phi i8 [ %i.n, %.thread27 ], [ 0, %bb.e ], [ %i.z, %bb.h ], [ 0, %._crit_edge.i ]
  %.1 = phi i32 [ %.029, %.thread27 ], [ %.029, %bb.e ], [ %.0.lcssa.i, %bb.h ], [ %.029, %._crit_edge.i ]
  %i.ab = zext i8 %i.aa to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.1, i32 %i.ab) ; 2 uses
  %i.ac = and i32 %spec.select, -2                ; 2 uses
  %i.ad = icmp slt i32 %spec.select, 2
  br i1 %i.ad, label %.thread30, label %bb.i

.thread30:                                        ; preds = %bb.d, %usb_try_string_workarounds.exit
  %.332 = phi i32 [ %i.ac, %usb_try_string_workarounds.exit ], [ %.0, %bb.d ] ; 2 uses
  %i.ae = icmp slt i32 %.332, 0
  %i.af = select i1 %i.ae, i32 %.332, i32 -22
  br label %bb.i

bb.i:                                             ; preds = %.thread30, %usb_try_string_workarounds.exit
  %.4 = phi i32 [ %i.af, %.thread30 ], [ %i.ac, %usb_try_string_workarounds.exit ]
  ret i32 %.4
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @usb_cache_string(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.c = tail call noalias align 8 dereferenceable_or_null(382) ptr @__kmalloc_cache_noprof(ptr noundef %i.b, i32 noundef 3072, i64 noundef 382) #10 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @usb_string(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, i64 noundef 382) #13 ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef nonnull %i.c) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = add nuw i32 %i.d, 1
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @krealloc_node_align_noprof(ptr noundef nonnull %i.c, i64 noundef %i.g, i64 noundef 1, i32 noundef 3072, i32 noundef -1) #14 ; 2 uses
  %.not24 = icmp eq ptr %i.h, null
  %spec.select = select i1 %.not24, ptr %i.c, ptr %i.h, !prof !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.d
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.b ], [ %spec.select, %bb.e ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @krealloc_node_align_noprof(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @usb_get_device_descriptor(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
_kmalloc_noprof.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(18) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3072, i64 noundef range(i64 -1889785610240, 1889785609361) 18) #10 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %_kmalloc_noprof.exit
  %i.c = tail call i32 @usb_get_descriptor(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %i.b, i32 noundef 18) #13 ; 3 uses
  %i.d = icmp eq i32 %i.c, 18
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, -1
  %spec.store.select = select i1 %i.e, i32 -90, i32 %i.c
  tail call void @kfree(ptr noundef nonnull %i.b) #12
  %i.f = sext i32 %spec.store.select to i64
  %i.g = inttoptr i64 %i.f to ptr
  br label %bb.c

bb.c:                                             ; preds = %_kmalloc_noprof.exit, %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @usb_set_isoch_delay(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 940
  %i.b = load i8, ptr %i.a, align 4
  %i.c = icmp eq i8 %i.b, 9
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ult i32 %i.e, 5
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 1408
  %i.h = load i16, ptr %i.g, align 8
  %.val.i = load i32, ptr %0, align 8
  %i.i = shl i32 %.val.i, 8
  %i.j = or i32 %i.i, -2147483648
  %i.k = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %i.j, i8 noundef zeroext 49, i8 noundef zeroext 0, i16 noundef zeroext %i.h, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #13
  tail call void @kfree(ptr noundef null) #12
  %phi.call..i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %phi.call..i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @usb_get_status(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) #0 align 16 prefalign(16) {
bb.a:
  switch i32 %2, label %bb.i [
    i32 0, label %_kmalloc_noprof.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_kmalloc_noprof.exit, label %bb.i

_kmalloc_noprof.exit:                             ; preds = %bb.a, %bb.b
  %.025 = phi i32 [ 2, %bb.a ], [ 4, %bb.b ]      ; 2 uses
  %i.a = zext nneg i32 %.025 to i64
  %i.b = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -1889785610240, 1889785609361) %i.a, i32 noundef 3264) #15 ; 5 uses
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_kmalloc_noprof.exit
  %.val = load i32, ptr %0, align 8
  %i.c = shl i32 %.val, 8
  %i.d = or i32 %i.c, -2147483520
  %i.e = trunc i32 %1 to i8
  %i.f = or i8 %i.e, -128
  %i.g = trunc i32 %3 to i16
  %i.h = trunc nuw nsw i32 %.025 to i16
  %i.i = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %i.d, i8 noundef zeroext 0, i8 noundef zeroext %i.f, i16 noundef zeroext 0, i16 noundef zeroext %i.g, ptr noundef nonnull %i.b, i16 noundef zeroext %i.h, i32 noundef 5000) #13
  switch i32 %i.i, label %bb.h [
    i32 4, label %bb.d
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %.not28 = icmp eq i32 %2, 1
  br i1 %.not28, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.b, align 8
  store i32 %i.j, ptr %4, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = load i16, ptr %i.b, align 8
  store i16 %i.k, ptr %4, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.d, %bb.g, %bb.e
  %.023 = phi i32 [ -5, %bb.f ], [ 0, %bb.g ], [ 0, %bb.e ], [ -5, %bb.d ], [ -5, %bb.c ]
  tail call void @kfree(ptr noundef nonnull %i.b) #12
  br label %bb.i

bb.i:                                             ; preds = %_kmalloc_noprof.exit, %bb.a, %bb.b, %bb.h
  %.0 = phi i32 [ -22, %bb.b ], [ %.023, %bb.h ], [ -22, %bb.a ], [ -12, %_kmalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @usb_clear_halt(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = lshr i32 %1, 15
  %i.b = and i32 %i.a, 15                         ; 2 uses
  %i.c = and i32 %1, 128                          ; 2 uses
  %spec.select = or disjoint i32 %i.b, %i.c
  %i.d = trunc nuw nsw i32 %spec.select to i16
  %.val.i = load i32, ptr %0, align 8
  %i.e = shl i32 %.val.i, 8
  %i.f = or i32 %i.e, -2147483648
  %i.g = tail call i32 @usb_control_msg(ptr noundef %0, i32 noundef %i.f, i8 noundef zeroext 1, i8 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext %i.d, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #13 ; 2 uses
  tail call void @kfree(ptr noundef null) #12
  %.not11 = icmp sgt i32 %i.g, -1
  br i1 %.not11, label %bb.b, label %usb_reset_endpoint.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.c, 0
  %i.h = zext nneg i32 %i.b to i64
  %.0.in.v.v.i = select i1 %.not.i, i64 1112, i64 984
  %.0.in.v.i = getelementptr i8, ptr %0, i64 %.0.in.v.v.i
  %.0.in.i = getelementptr [8 x i8], ptr %.0.in.v.i, i64 %i.h
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 2 uses
  %.not8.i = icmp eq ptr %.0.i, null
  br i1 %.not8.i, label %usb_reset_endpoint.exit, label %bb.c

end_hunk_0
