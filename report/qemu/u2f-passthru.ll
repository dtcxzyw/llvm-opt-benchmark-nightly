Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/u2f-passthru?download=true
inline.NumInlined: 31
inline.NumDeleted: 20
begin_hunk_0_@u2f_passthru_realize:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8008
  call void @timer_del(ptr noundef nonnull %i.bq) #6
  %i.br = load i32, ptr %i.bp, align 8
  call void @qemu_set_fd_handler(i32 noundef %i.br, ptr noundef null, ptr noundef null, ptr noundef %i.c) #6
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8000
  store i64 0, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 7996
  store i8 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 7997
  store i8 0, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 7998
  store i8 0, ptr %i.bv, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.r, %u2f_passthru_open_from_scan.exit.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @u2f_passthru_unrealize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 461, ptr noundef nonnull @__func__.u2f_passthru_unrealize) #6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8008
  tail call void @timer_del(ptr noundef nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7928 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  tail call void @qemu_set_fd_handler(i32 noundef %i.d, ptr noundef null, ptr noundef null, ptr noundef %i.a) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8000
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7996
  store i8 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7997
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7998
  store i8 0, ptr %i.h, align 2
  %i.i = load i32, ptr %i.c, align 8
  %i.j = tail call i32 @qemu_close(i32 noundef %i.i) #6 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @u2f_passthru_recv_from_guest(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 335, ptr noundef nonnull @__func__.u2f_passthru_recv_from_guest) #6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 1
  %i.d = icmp slt i8 %.val, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1                ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7
  tail call fastcc void @u2f_transaction_add(ptr noundef %i.b, i32 noundef -1, ptr noundef nonnull readonly %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @u2f_transaction_add(ptr noundef %i.b, i32 noundef %i.e, ptr noundef null)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #6
  %i.i = sdiv i64 %i.h, 1000000                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8000 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.f, label %u2f_transaction_start.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  %i.n = load i32, ptr %i.m, align 8
  tail call void @qemu_set_fd_handler(i32 noundef %i.n, ptr noundef nonnull @u2f_passthru_read, ptr noundef null, ptr noundef nonnull %i.b) #6
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8008 ; 2 uses
  tail call void @timer_init_full(ptr noundef nonnull %i.o, ptr noundef null, i32 noundef 1, i32 noundef 1000000, i32 noundef 0, ptr noundef nonnull @u2f_timeout_check, ptr noundef nonnull %i.b) #6
  %i.p = add nsw i64 %i.i, 30000
  tail call void @timer_mod(ptr noundef nonnull %i.o, i64 noundef %i.p) #6
  br label %u2f_transaction_start.exit

u2f_transaction_start.exit:                       ; preds = %bb.e, %bb.f
  store i64 %i.i, ptr %i.j, align 8
  br label %bb.g

bb.g:                                             ; preds = %u2f_transaction_start.exit, %bb.a
  store i8 0, ptr %i.a, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.q, ptr noundef nonnull align 1 dereferenceable(64) %1, i64 noundef 64, i1 noundef false) #6
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  %i.s = load i32, ptr %i.r, align 8
  %i.t = call i64 @write(i32 noundef %i.s, ptr noundef nonnull %i.a, i64 noundef 65) #6 ; 2 uses
  %.not = icmp eq i64 %i.t, 65
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, i64 noundef 65, i64 noundef %i.t) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @qemu_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @qemu_close(i32 noundef) local_unnamed_addr #1

declare ptr @udev_new() local_unnamed_addr #1

declare ptr @udev_enumerate_new(ptr noundef) local_unnamed_addr #1

declare ptr @udev_unref(ptr noundef) local_unnamed_addr #1

declare i32 @udev_enumerate_add_match_subsystem(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @udev_enumerate_unref(ptr noundef) local_unnamed_addr #1

declare i32 @udev_enumerate_scan_devices(ptr noundef) local_unnamed_addr #1

declare ptr @udev_enumerate_get_list_entry(ptr noundef) local_unnamed_addr #1

declare ptr @udev_list_entry_get_name(ptr noundef) local_unnamed_addr #1

declare ptr @udev_device_new_from_syspath(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @udev_device_unref(ptr noundef) local_unnamed_addr #1

declare ptr @udev_list_entry_get_next(ptr noundef) local_unnamed_addr #1

declare ptr @udev_device_get_devnode(ptr noundef) local_unnamed_addr #1

declare i32 @qemu_open_old(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #4

declare void @timer_del(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_fd_handler(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

declare void @error_report(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @u2f_transaction_add(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7998 ; 4 uses
  %i.b = load i8, ptr %i.a, align 2               ; 5 uses
  %i.c = icmp ugt i8 %i.b, 3
  br i1 %i.c, label %.lr.ph.i.i, label %u2f_transaction_close.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7996 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7932 ; 4 uses
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i8 %i.b to i32
  %i.k = zext i8 %i.e to i32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.l = add nuw nsw i32 %.01116.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.l, %i.j
  br i1 %exitcond.not.i.i, label %u2f_transaction_close.exit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.01116.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.m = add nuw nsw i32 %.01116.i.i, %i.k        ; 2 uses
  %i.n = and i32 %i.m, 3                          ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %.not.i.i = icmp eq i32 %i.i, %i.q
  br i1 %.not.i.i, label %u2f_transaction_get_index.exit.preheader.i, label %bb.b

u2f_transaction_get_index.exit.preheader.i:       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7997 ; 3 uses
  %3 = load i8, ptr %i.r, align 1
  %4 = zext i8 %3 to i32                          ; 2 uses
  %.0.in20.i = add nuw i32 %i.m, 1
  %.021.i = and i32 %.0.in20.i, 3                 ; 2 uses
  %.not22.i = icmp eq i32 %.021.i, %4
  br i1 %.not22.i, label %u2f_transaction_get_index.exit._crit_edge.i, label %u2f_transaction_get_index.exit.i

u2f_transaction_get_index.exit.i:                 ; preds = %u2f_transaction_get_index.exit.preheader.i, %u2f_transaction_get_index.exit.i
  %.024.i = phi i32 [ %.0.i, %u2f_transaction_get_index.exit.i ], [ %.021.i, %u2f_transaction_get_index.exit.preheader.i ] ; 4 uses
  %.01623.i = phi i32 [ %.024.i, %u2f_transaction_get_index.exit.i ], [ %i.n, %u2f_transaction_get_index.exit.preheader.i ]
  %i.s = zext nneg i32 %.01623.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.s
  %i.u = zext nneg i32 %.024.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, ptr noundef nonnull align 1 dereferenceable(16) %i.v, i64 noundef 16, i1 noundef false) #6
  %.0.in.i = add nuw nsw i32 %.024.i, 1
  %.0.i = and i32 %.0.in.i, 3                     ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %4
  br i1 %.not.i, label %u2f_transaction_get_index.exit._crit_edge.loopexit.i, label %u2f_transaction_get_index.exit.i, !llvm.loop !1

u2f_transaction_get_index.exit._crit_edge.loopexit.i: ; preds = %u2f_transaction_get_index.exit.i
  %.pre.i = load i8, ptr %i.a, align 2
  br label %u2f_transaction_get_index.exit._crit_edge.i

u2f_transaction_get_index.exit._crit_edge.i:      ; preds = %u2f_transaction_get_index.exit._crit_edge.loopexit.i, %u2f_transaction_get_index.exit.preheader.i
  %i.w = phi i8 [ %i.b, %u2f_transaction_get_index.exit.preheader.i ], [ %.pre.i, %u2f_transaction_get_index.exit._crit_edge.loopexit.i ]
  %.016.lcssa.i = phi i32 [ %i.n, %u2f_transaction_get_index.exit.preheader.i ], [ %.024.i, %u2f_transaction_get_index.exit._crit_edge.loopexit.i ]
  %i.x = trunc nuw nsw i32 %.016.lcssa.i to i8
  store i8 %i.x, ptr %i.r, align 1
  %i.y = add i8 %i.w, -1                          ; 3 uses
  store i8 %i.y, ptr %i.a, align 2
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.d, label %u2f_transaction_close.exit

bb.d:                                             ; preds = %u2f_transaction_get_index.exit._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8008
  tail call void @timer_del(ptr noundef nonnull %i.aa) #6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7928
  %i.ac = load i32, ptr %i.ab, align 8
  tail call void @qemu_set_fd_handler(i32 noundef %i.ac, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8000
  store i64 0, ptr %i.ad, align 8
  store i8 0, ptr %i.d, align 4
  store i8 0, ptr %i.r, align 1
  br label %u2f_transaction_close.exit

u2f_transaction_close.exit:                       ; preds = %bb.b, %bb.d, %u2f_transaction_get_index.exit._crit_edge.i, %bb.a
  %i.ae = phi i8 [ %i.b, %bb.a ], [ 0, %bb.d ], [ %i.y, %u2f_transaction_get_index.exit._crit_edge.i ], [ %i.b, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 7997 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = add i8 %i.ag, 1
  %i.ai = and i8 %i.ah, 3
  store i8 %i.ai, ptr %i.af, align 1
  %i.aj = add i8 %i.ae, 1
  store i8 %i.aj, ptr %i.a, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7932
  %i.al = zext i8 %i.ag to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  store i32 %1, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i16 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store i16 0, ptr %i.ao, align 2
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %u2f_transaction_close.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i64, ptr %2, align 1
  store i64 %i.aq, ptr %i.ap, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %u2f_transaction_close.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @u2f_passthru_read(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7915
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp ugt i8 %i.c, 31
  br i1 %i.d, label %u2f_passthru_recv_from_host.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !annotation !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7928 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = call i64 @read(i32 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef 128) #6
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load i8, ptr %i.j, align 8, !range !13, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %u2f_passthru_recv_from_host.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @usb_device_detach(ptr noundef nonnull %0) #6 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8008
  tail call void @timer_del(ptr noundef nonnull %i.n) #6
  %i.o = load i32, ptr %i.e, align 8
  tail call void @qemu_set_fd_handler(i32 noundef %i.o, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #6
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8000
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7996
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7997
  store i8 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7998
  store i8 0, ptr %i.s, align 2
  br label %u2f_passthru_recv_from_host.exit

bb.e:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.h, 64
  br i1 %.not, label %bb.f, label %u2f_passthru_recv_from_host.exit

bb.f:                                             ; preds = %bb.e
  %.val33.i = load i32, ptr %i.a, align 16        ; 3 uses
  %i.t = icmp eq i32 %.val33.i, -1                ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val32.i = load i8, ptr %i.u, align 4
  %i.v = icmp slt i8 %.val32.i, 0
  br i1 %i.v, label %bb.h, label %u2f_passthru_recv_from_host.exit

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7932
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7998
  %i.z = load i8, ptr %i.y, align 2               ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %.not.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i, label %u2f_passthru_recv_from_host.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7996
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = zext i8 %i.ac to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.01423.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.aq, %bb.k ] ; 2 uses
  %i.ae = add nuw nsw i32 %.01423.i.i, %i.ad
  %i.af = and i32 %i.ae, 3
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ag ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i64, ptr %i.w, align 1
  %i.am = load i64, ptr %i.ak, align 1
  %i.an = icmp ne i64 %i.al, %i.am
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %u2f_transaction_get_from_nonce.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = add nuw nsw i32 %.01423.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aq, %i.aa
  br i1 %exitcond.not.i.i, label %u2f_passthru_recv_from_host.exit, label %bb.i, !llvm.loop !12

bb.l:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 7998
  %i.as = load i8, ptr %i.ar, align 2             ; 2 uses
  %i.at = zext i8 %i.as to i32
  %.not19.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not19.i.i.i, label %u2f_passthru_recv_from_host.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7996
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7932
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.ay = add nuw nsw i32 %.01116.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.ay, %i.at
  br i1 %exitcond.not.i.i.i, label %u2f_passthru_recv_from_host.exit, label %bb.n, !llvm.loop !0

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %.01116.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.ay, %bb.m ] ; 2 uses
  %i.az = add nuw nsw i32 %.01116.i.i.i, %i.aw
  %i.ba = and i32 %i.az, 3
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.bb ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %.not.i.i.i = icmp eq i32 %.val33.i, %i.bd
  br i1 %.not.i.i.i, label %u2f_transaction_get_from_nonce.exit.i, label %bb.m

u2f_transaction_get_from_nonce.exit.i:            ; preds = %bb.n
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val.pre.i = load i8, ptr %.phi.trans.insert.i, align 4
  %i.be = icmp slt i8 %.val.pre.i, 0
  br i1 %i.be, label %u2f_transaction_get_from_nonce.exit.thread.i, label %bb.p

u2f_transaction_get_from_nonce.exit.thread.i:     ; preds = %bb.j, %u2f_transaction_get_from_nonce.exit.i
  %.12768.i = phi ptr [ %i.bc, %u2f_transaction_get_from_nonce.exit.i ], [ %i.ah, %bb.j ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.val34.i = load i8, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.val35.i = load i8, ptr %i.bg, align 2
  %i.bh = zext i8 %.val34.i to i16
  %i.bi = shl nuw i16 %i.bh, 8
  %i.bj = zext i8 %.val35.i to i16
  %i.bk = or disjoint i16 %i.bi, %i.bj            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.12768.i, i64 4
  store i16 %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.12768.i, i64 6
  store i16 57, ptr %i.bm, align 2
  br i1 %i.t, label %bb.o, label %.critedge31.i

bb.o:                                             ; preds = %u2f_transaction_get_from_nonce.exit.thread.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.12768.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bp = load i64, ptr %i.bn, align 1
  %i.bq = load i64, ptr %i.bo, align 1
  %i.br = icmp ne i64 %i.bp, %i.bq
  %i.bs = zext i1 %i.br to i32
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %.critedge31.i, label %u2f_passthru_recv_from_host.exit

bb.p:                                             ; preds = %u2f_transaction_get_from_nonce.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bc, i64 6 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = add i16 %i.bu, 59                       ; 2 uses
  store i16 %i.bv, ptr %i.bt, align 2
  %.phi.trans.insert62.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert62.i, align 4
  br label %.critedge31.i

.critedge31.i:                                    ; preds = %bb.p, %bb.o, %u2f_transaction_get_from_nonce.exit.thread.i
  %i.bw = phi i16 [ %i.bk, %u2f_transaction_get_from_nonce.exit.thread.i ], [ %i.bk, %bb.o ], [ %.pre.i, %bb.p ]
  %i.bx = phi i16 [ 57, %u2f_transaction_get_from_nonce.exit.thread.i ], [ 57, %bb.o ], [ %i.bv, %bb.p ]
  %.not29.i = icmp ult i16 %i.bx, %i.bw
  br i1 %.not29.i, label %u2f_transaction_close.exit.i, label %bb.q

bb.q:                                             ; preds = %.critedge31.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7998 ; 4 uses
  %i.bz = load i8, ptr %i.by, align 2             ; 3 uses
  %i.ca = zext i8 %i.bz to i32
  %.not19.i.i36.i = icmp eq i8 %i.bz, 0
  br i1 %.not19.i.i36.i, label %u2f_transaction_close.exit.i, label %.lr.ph.i.i37.i

.lr.ph.i.i37.i:                                   ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 7996 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 7932 ; 3 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.cf = add nuw nsw i32 %.01116.i.i38.i, 1      ; 2 uses
  %exitcond.not.i.i40.i = icmp eq i32 %i.cf, %i.ca
  br i1 %exitcond.not.i.i40.i, label %u2f_transaction_close.exit.i, label %bb.s, !llvm.loop !0

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i37.i
  %.01116.i.i38.i = phi i32 [ 0, %.lr.ph.i.i37.i ], [ %i.cf, %bb.r ] ; 2 uses
  %i.cg = add nuw nsw i32 %.01116.i.i38.i, %i.cd  ; 2 uses
  %i.ch = and i32 %i.cg, 3                        ; 3 uses
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4
  %.not.i.i39.i = icmp eq i32 %.val33.i, %i.ck
  br i1 %.not.i.i39.i, label %u2f_transaction_get_index.exit.preheader.i.i, label %bb.r

u2f_transaction_get_index.exit.preheader.i.i:     ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 7997 ; 3 uses
  %1 = load i8, ptr %i.cl, align 1
  %2 = zext i8 %1 to i32                          ; 2 uses
  %.0.in20.i.i = add nuw i32 %i.cg, 1
  %.021.i.i = and i32 %.0.in20.i.i, 3             ; 2 uses
  %.not22.i.i = icmp eq i32 %.021.i.i, %2
  br i1 %.not22.i.i, label %u2f_transaction_get_index.exit._crit_edge.i.i, label %u2f_transaction_get_index.exit.i.i

u2f_transaction_get_index.exit.i.i:               ; preds = %u2f_transaction_get_index.exit.preheader.i.i, %u2f_transaction_get_index.exit.i.i
  %.024.i.i = phi i32 [ %.0.i.i, %u2f_transaction_get_index.exit.i.i ], [ %.021.i.i, %u2f_transaction_get_index.exit.preheader.i.i ] ; 4 uses
  %.01623.i.i = phi i32 [ %.024.i.i, %u2f_transaction_get_index.exit.i.i ], [ %i.ch, %u2f_transaction_get_index.exit.preheader.i.i ]
  %i.cm = zext nneg i32 %.01623.i.i to i64
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cm
  %i.co = zext nneg i32 %.024.i.i to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cn, ptr noundef nonnull align 1 dereferenceable(16) %i.cp, i64 noundef 16, i1 noundef false) #6
  %.0.in.i.i = add nuw nsw i32 %.024.i.i, 1
  %.0.i.i = and i32 %.0.in.i.i, 3                 ; 2 uses
  %.not.i41.i = icmp eq i32 %.0.i.i, %2
  br i1 %.not.i41.i, label %u2f_transaction_get_index.exit._crit_edge.loopexit.i.i, label %u2f_transaction_get_index.exit.i.i, !llvm.loop !1

u2f_transaction_get_index.exit._crit_edge.loopexit.i.i: ; preds = %u2f_transaction_get_index.exit.i.i
  %.pre.i.i = load i8, ptr %i.by, align 2
  br label %u2f_transaction_get_index.exit._crit_edge.i.i

u2f_transaction_get_index.exit._crit_edge.i.i:    ; preds = %u2f_transaction_get_index.exit._crit_edge.loopexit.i.i, %u2f_transaction_get_index.exit.preheader.i.i
  %i.cq = phi i8 [ %i.bz, %u2f_transaction_get_index.exit.preheader.i.i ], [ %.pre.i.i, %u2f_transaction_get_index.exit._crit_edge.loopexit.i.i ]
  %.016.lcssa.i.i = phi i32 [ %i.ch, %u2f_transaction_get_index.exit.preheader.i.i ], [ %.024.i.i, %u2f_transaction_get_index.exit._crit_edge.loopexit.i.i ]
  %i.cr = trunc nuw nsw i32 %.016.lcssa.i.i to i8
  store i8 %i.cr, ptr %i.cl, align 1
  %i.cs = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cs, ptr %i.by, align 2
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.t, label %u2f_transaction_close.exit.i

bb.t:                                             ; preds = %u2f_transaction_get_index.exit._crit_edge.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8008
  tail call void @timer_del(ptr noundef nonnull %i.cu) #6
  %i.cv = load i32, ptr %i.e, align 8
  tail call void @qemu_set_fd_handler(i32 noundef %i.cv, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #6
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8000
  store i64 0, ptr %i.cw, align 8
  store i8 0, ptr %i.cb, align 4
  store i8 0, ptr %i.cl, align 1
  store i8 0, ptr %i.by, align 2
  br label %u2f_transaction_close.exit.i

u2f_transaction_close.exit.i:                     ; preds = %bb.r, %bb.t, %u2f_transaction_get_index.exit._crit_edge.i.i, %bb.q, %.critedge31.i
  call void @u2f_send_to_guest(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #6
  br label %u2f_passthru_recv_from_host.exit

u2f_passthru_recv_from_host.exit:                 ; preds = %bb.m, %bb.k, %u2f_transaction_close.exit.i, %bb.o, %bb.l, %bb.h, %bb.g, %bb.e, %bb.c, %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @u2f_timeout_check(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #6
  %i.b = sdiv i64 %i.a, 1000000                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8000 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 120000
  %i.f = icmp sgt i64 %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8008 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @timer_del(ptr noundef nonnull %i.g) #6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7928
  %i.i = load i32, ptr %i.h, align 8
  tail call void @qemu_set_fd_handler(i32 noundef %i.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %0) #6
  store i64 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7996
  store i8 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7997
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7998
  store i8 0, ptr %i.l, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = add nsw i64 %i.b, 30000
  tail call void @timer_mod(ptr noundef nonnull %i.g, i64 noundef %i.m) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @usb_device_detach(ptr noundef) local_unnamed_addr #1

declare void @u2f_send_to_guest(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @u2f_passthru_post_load(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8008
  tail call void @timer_del(ptr noundef nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7928
  %i.c = load i32, ptr %i.b, align 8
  tail call void @qemu_set_fd_handler(i32 noundef %i.c, ptr noundef null, ptr noundef null, ptr noundef %0) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8000
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7996
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7997
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7998
  store i8 0, ptr %i.g, align 2
  ret i32 0
}

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{!"auto-init"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = !{i8 0, i8 2}
!14 = !{}
end_hunk_0
