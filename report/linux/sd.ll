Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sd?download=true
inline.NumInlined: 375
inline.NumDeleted: 124
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sd_get_unique_id:bb.a

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.2 = phi i32 [ -6, %bb.a ], [ -22, %bb.b ], [ 16, %bb.d ], [ %.1, %bb.e ]
  tail call void @__rcu_read_unlock() #19
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_set_medium_removal(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @disk_check_media_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_ioctl(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsicam_bios_param(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 983041) i32 @sd_pr_register(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #3 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i32 %3, 2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not5 = icmp eq i32 %3, 0
  %i.a = select i1 %.not5, i8 0, i8 6
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.c, align 8         ; 2 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8
  %i.d = getelementptr i8, ptr %.val.val, i64 800
  %.val.val.val6 = load i32, ptr %i.d, align 8
  %i.e = tail call fastcc i32 @sd_pr_out_command(ptr %.val.val.val, i32 %.val.val.val6, i8 noundef zeroext %i.a, i64 noundef %1, i64 noundef %2, i32 noundef 0, i8 noundef zeroext 1) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -95, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 983041) i32 @sd_pr_reserve(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #3 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @block_pr_type_to_scsi(i32 noundef %2) #19
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.c, align 8         ; 2 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8
  %i.d = getelementptr i8, ptr %.val.val, i64 800
  %.val.val.val4 = load i32, ptr %i.d, align 8
  %i.e = tail call fastcc i32 @sd_pr_out_command(ptr %.val.val.val, i32 %.val.val.val4, i8 noundef zeroext 1, i64 noundef %1, i64 noundef 0, i32 noundef %i.a, i8 noundef zeroext 0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ -95, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 983041) i32 @sd_pr_release(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @block_pr_type_to_scsi(i32 noundef %2) #19
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.c, align 8         ; 2 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8
  %i.d = getelementptr i8, ptr %.val.val, i64 800
  %.val.val.val2 = load i32, ptr %i.d, align 8
  %i.e = tail call fastcc i32 @sd_pr_out_command(ptr %.val.val.val, i32 %.val.val.val2, i8 noundef zeroext 2, i64 noundef %1, i64 noundef 0, i32 noundef %i.a, i8 noundef zeroext 0) #22
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 983041) i32 @sd_pr_preempt(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #3 align 16 prefalign(16) {
bb.a:
  %i.a = select i1 %4, i8 5, i8 4
  %i.b = tail call i32 @block_pr_type_to_scsi(i32 noundef %3) #19
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.d, align 8         ; 2 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8
  %i.e = getelementptr i8, ptr %.val.val, i64 800
  %.val.val.val4 = load i32, ptr %i.e, align 8
  %i.f = tail call fastcc i32 @sd_pr_out_command(ptr %.val.val.val, i32 %.val.val.val4, i8 noundef zeroext %i.a, i64 noundef %1, i64 noundef %2, i32 noundef %i.b, i8 noundef zeroext 0) #22
  ret i32 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 983041) i32 @sd_pr_clear(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 88
  %.val.val = load ptr, ptr %i.b, align 8         ; 2 uses
  %.val.val.val = load ptr, ptr %.val.val, align 8
  %i.c = getelementptr i8, ptr %.val.val, i64 800
  %.val.val.val1 = load i32, ptr %i.c, align 8
  %i.d = tail call fastcc i32 @sd_pr_out_command(ptr %.val.val.val, i32 %.val.val.val1, i8 noundef zeroext 3, i64 noundef %1, i64 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #22
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 983041) i32 @sd_pr_read_keys(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp ugt i32 %i.b, 536870911
  %i.d = shl i32 %i.b, 3                          ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.d, i32 8) ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0         ; 2 uses
  %i.j = icmp samesign ugt i32 %i.d, 65527
  %or.cond = or i1 %i.j, %i.h
  br i1 %or.cond, label %bb.f, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %i.l = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -2147483648, 65536) %i.k, i32 noundef 3520) #25 ; 8 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val43 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val43, i64 88
  %.val43.val = load ptr, ptr %i.n, align 8
  %i.o = tail call fastcc i32 @sd_pr_in_command(ptr %.val43.val, i8 noundef zeroext 0, ptr noundef nonnull %i.l, i32 noundef %i.i) #22 ; 2 uses
  %.not40 = icmp eq i32 %i.o, 0
  br i1 %.not40, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.val41 = load i32, ptr %i.l, align 8
  %i.p = tail call i32 @llvm.bswap.i32(i32 %.val41)
  store i32 %i.p, ptr %1, align 8
  %i.q = getelementptr i8, ptr %i.l, i64 4
  %.val = load i32, ptr %i.q, align 4
  %i.r = tail call i32 @llvm.bswap.i32(i32 %.val)
  %i.s = lshr i32 %i.r, 3                         ; 2 uses
  store i32 %i.s, ptr %i.a, align 4
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.s) ; 4 uses
  %.not46 = icmp eq i32 %i.t, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %wide.trip.count = zext nneg i32 %i.t to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.v = icmp eq i32 %i.t, 1
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 536870910
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %.03744 = phi i32 [ 8, %.lr.ph.new ], [ %i.ad, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %2 = sext i32 %.03744 to i64
  %i.w = getelementptr i8, ptr %i.l, i64 %2
  %.val42 = load i64, ptr %i.w, align 8
  %i.x = tail call i64 @llvm.bswap.i64(i64 %.val42)
  %i.y = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv
  store i64 %i.x, ptr %i.y, align 8
  %3 = add i32 %.03744, 8
  %4 = sext i32 %3 to i64
  %i.z = getelementptr i8, ptr %i.l, i64 %4
  %.val42.1 = load i64, ptr %i.z, align 8
  %i.aa = tail call i64 @llvm.bswap.i64(i64 %.val42.1)
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  store i64 %i.aa, ptr %i.ac, align 8
  %i.ad = add i32 %.03744, 16                     ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !63

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.03744.epil.init = phi i32 [ 8, %.lr.ph ], [ %i.ad, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod52 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.ae = sext i32 %.03744.epil.init to i64
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ae
  %.val42.epil = load i64, ptr %i.af, align 8
  %i.ag = tail call i64 @llvm.bswap.i64(i64 %.val42.epil)
  %i.ah = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv.epil.init
  store i64 %i.ag, ptr %i.ah, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d, %bb.c
  tail call void @kfree(ptr noundef nonnull %i.l) #19
  br label %bb.f

bb.f:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %bb.b, %.loopexit
  %.0 = phi i32 [ -22, %bb.a ], [ %i.o, %.loopexit ], [ -22, %bb.b ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 983041) i32 @sd_pr_read_reservation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.e = load ptr, ptr %.val, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.f = call fastcc i32 @sd_pr_in_command(ptr %.val, i8 noundef zeroext 1, ptr noundef nonnull %i.a, i32 noundef 24) #22 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val16 = load i32, ptr %i.g, align 4           ; 2 uses
  %i.h = call i32 @llvm.bswap.i32(i32 %.val16)    ; 2 uses
  %.not14 = icmp eq i32 %.val16, 0
  br i1 %.not14, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.h, 14
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %i.e, ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef %i.h) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val15 = load i32, ptr %i.a, align 16
  %i.j = call i32 @llvm.bswap.i32(i32 %.val15)
  %i.k = getelementptr i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val17 = load i64, ptr %i.l, align 8
  %i.m = call i64 @llvm.bswap.i64(i64 %.val17)
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.o = load i8, ptr %i.n, align 1
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i32
  %i.r = call i32 @scsi_pr_type_to_block(i32 noundef %i.q) #19
  %i.s = getelementptr i8, ptr %1, i64 12
  store i32 %i.r, ptr %i.s, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.0 = phi i32 [ %i.f, %bb.a ], [ -22, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 983041) i32 @sd_pr_out_command(ptr %.16.val.88.val.0.val, i32 %.16.val.88.val.800.val, i8 noundef zeroext range(i8 0, 7) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i8 noundef zeroext range(i8 0, 2) %4) unnamed_addr #3 align 16 {
bb.a:
  %5 = alloca %struct.scsi_sense_hdr, align 8     ; 9 uses
  %6 = alloca [2 x %struct.scsi_failure], align 16 ; 4 uses
  %7 = alloca %struct.scsi_failures, align 8      ; 5 uses
  %8 = alloca %struct.scsi_exec_args, align 8     ; 7 uses
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %i.b = alloca [24 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i64 0, ptr %5, align 8, !annotation !42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull align 16 dereferenceable(24) @__const.sd_pr_in_command.failure_defs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %7, align 8
  store ptr %6, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %7, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.g, align 16
  store i8 95, ptr %i.a, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %0, ptr %i.h, align 1
  %i.i = trunc i32 %3 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i32 402653184, ptr %i.k, align 1
  %i.l = call i64 @llvm.bswap.i64(i64 %1)
  store i64 %i.l, ptr %i.b, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = call i64 @llvm.bswap.i64(i64 %2)
  store i64 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i8 %4, ptr %i.o, align 4
  %i.p = call i32 @scsi_execute_cmd(ptr noundef %.16.val.88.val.0.val, ptr noundef nonnull %i.a, i32 noundef 35, ptr noundef nonnull %i.b, i32 noundef 24, i32 noundef 30000, i32 noundef %.16.val.88.val.800.val, ptr noundef nonnull %8) #19 ; 6 uses
  %i.q = and i32 %i.p, -2147483394
  %narrow.i.not = icmp eq i32 %i.q, 2
  br i1 %narrow.i.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = load i8, ptr %5, align 8
  %i.s = and i8 %i.r, 112
  %i.t = icmp eq i8 %i.s, 112
  br i1 %i.t, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %.16.val.88.val.0.val, ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef %i.p) #19
  call void @scsi_print_sense_hdr(ptr noundef %.16.val.88.val.0.val, ptr noundef null, ptr noundef nonnull %5) #19
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.u = icmp slt i32 %i.p, 1
  br i1 %i.u, label %sd_scsi_to_pr_err.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %i.v = lshr i32 %i.p, 16
  %trunc.i = trunc i32 %i.v to i8
  switch i8 %trunc.i, label %bb.g [
    i8 20, label %sd_scsi_to_pr_err.exit
    i8 14, label %sd_scsi_to_pr_err.exit
    i8 2, label %sd_scsi_to_pr_err.exit
    i8 1, label %bb.e
    i8 15, label %bb.f
  ]

bb.e:                                             ; preds = %.thread
  br label %sd_scsi_to_pr_err.exit

bb.f:                                             ; preds = %.thread
  br label %sd_scsi_to_pr_err.exit

bb.g:                                             ; preds = %.thread
  %trunc7.i = trunc i32 %i.p to i8
  switch i8 %trunc7.i, label %bb.k [
    i8 24, label %sd_scsi_to_pr_err.exit
    i8 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %5, align 8
  %i.x = and i8 %i.w, 112
  %i.y = icmp eq i8 %i.x, 112
  br i1 %i.y, label %bb.i, label %sd_scsi_to_pr_err.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 5
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = and i8 %i.ad, -3
  %switch.selectcmp.i = icmp eq i8 %i.ae, 36
  %i.af = select i1 %switch.selectcmp.i, i32 -22, i32 2
  br label %sd_scsi_to_pr_err.exit

bb.k:                                             ; preds = %bb.i, %bb.g
  br label %sd_scsi_to_pr_err.exit

sd_scsi_to_pr_err.exit:                           ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %.thread, %.thread, %.thread, %bb.d
  %.0 = phi i32 [ %i.p, %bb.d ], [ 2, %bb.k ], [ 917504, %.thread ], [ 2, %bb.h ], [ 24, %bb.g ], [ 983040, %bb.f ], [ 65536, %bb.e ], [ 917504, %.thread ], [ 917504, %.thread ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
end_hunk_0
