Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/scsi_transport_spi?download=true
inline.NumInlined: 79
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@spi_display_xfer_agreement:bb.a
  %i.af = sdiv i32 %.021.i, %i.ac
  %i.ag = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.ae, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.af) #15 ; 0 uses
  %i.ah = add i32 %.0.i, 1                        ; 2 uses
  %i.ai = srem i32 %.021.i, %i.ac                 ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.o, label %bb.n, !llvm.loop !0

bb.o:                                             ; preds = %bb.n
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.aj
  store i8 0, ptr %i.ak, align 1
  br label %sprint_frac.exit

sprint_frac.exit:                                 ; preds = %bb.l, %bb.o
  %i.al = getelementptr i8, ptr %0, i64 40
  %i.am = load i16, ptr %i.r, align 8             ; 9 uses
  %i.an = and i16 %i.am, 1
  %.not33 = icmp eq i16 %i.an, 0
  %i.ao = select i1 %.not33, ptr @.str.13, ptr @.str.12
  %i.ap = udiv i32 %spec.select, 10
  %i.aq = urem i32 %spec.select, 10
  %i.ar = and i16 %i.am, 16
  %.not34 = icmp eq i16 %i.ar, 0
  %i.as = select i1 %.not34, ptr @.str.15, ptr @.str.14
  %i.at = and i16 %i.am, 4
  %.not35 = icmp eq i16 %i.at, 0
  %i.au = select i1 %.not35, ptr @.str.13, ptr @.str.16
  %i.av = and i16 %i.am, 32
  %.not36 = icmp eq i16 %i.av, 0
  %i.aw = select i1 %.not36, ptr @.str.13, ptr @.str.17
  %i.ax = and i16 %i.am, 256
  %.not37 = icmp eq i16 %i.ax, 0
  %i.ay = select i1 %.not37, ptr @.str.13, ptr @.str.18
  %i.az = and i16 %i.am, 512
  %.not38 = icmp eq i16 %i.az, 0
  %i.ba = select i1 %.not38, ptr @.str.13, ptr @.str.19
  %i.bb = and i16 %i.am, 128
  %.not39 = icmp eq i16 %i.bb, 0
  %i.bc = select i1 %.not39, ptr @.str.13, ptr @.str.20
  %i.bd = and i16 %i.am, 1024
  %.not40 = icmp eq i16 %i.bd, 0
  %i.be = select i1 %.not40, ptr @.str.13, ptr @.str.21
  %i.bf = and i16 %i.am, 2048
  %.not41 = icmp eq i16 %i.bf, 0
  %i.bg = select i1 %.not41, ptr @.str.13, ptr @.str.22
  %i.bh = load i32, ptr %i.b, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.al, ptr noundef nonnull @.str.11, ptr noundef nonnull %.0, ptr noundef nonnull %i.ao, i32 noundef %i.ap, i32 noundef %i.aq, ptr noundef nonnull %i.as, ptr noundef nonnull %i.au, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.a, i32 noundef %i.bh) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.q

bb.p:                                             ; preds = %bb.a, %bb.b
  %i.bi = getelementptr i8, ptr %0, i64 40
  %i.bj = getelementptr i8, ptr %0, i64 864
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = and i16 %i.bk, 1
  %.not = icmp eq i16 %i.bl, 0
  %i.bm = select i1 %.not, ptr @.str.13, ptr @.str.24
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.bi, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.bm) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %sprint_frac.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local noundef i32 @spi_populate_width_msg(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) #5 align 16 prefalign(16) {
bb.a:
  store i8 1, ptr %0, align 1
  %i.a = getelementptr i8, ptr %0, i64 1
  store i8 2, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 2
  store i8 3, ptr %i.b, align 1
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr i8, ptr %0, i64 3
  store i8 %i.c, ptr %i.d, align 1
  ret i32 4
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local noundef i32 @spi_populate_sync_msg(ptr nofree noundef writeonly captures(none) initializes((0, 5)) %0, i32 noundef %1, i32 noundef %2) #5 align 16 prefalign(16) {
bb.a:
  store i8 1, ptr %0, align 1
  %i.a = getelementptr i8, ptr %0, i64 1
  store i8 3, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 2
  store i8 1, ptr %i.b, align 1
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr i8, ptr %0, i64 3
  store i8 %i.c, ptr %i.d, align 1
  %i.e = trunc i32 %2 to i8
  %i.f = getelementptr i8, ptr %0, i64 4
  store i8 %i.e, ptr %i.f, align 1
  ret i32 5
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define dso_local noundef i32 @spi_populate_ppr_msg(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 align 16 prefalign(16) {
bb.a:
  store i8 1, ptr %0, align 1
  %i.a = getelementptr i8, ptr %0, i64 1
  store i8 6, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 2
  store i8 4, ptr %i.b, align 1
  %i.c = trunc i32 %1 to i8
  %i.d = getelementptr i8, ptr %0, i64 3
  store i8 %i.c, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %0, i64 4
  store i8 0, ptr %i.e, align 1
  %i.f = trunc i32 %2 to i8
  %i.g = getelementptr i8, ptr %0, i64 5
  store i8 %i.f, ptr %i.g, align 1
  %i.h = trunc i32 %3 to i8
  %i.i = getelementptr i8, ptr %0, i64 6
  store i8 %i.h, ptr %i.i, align 1
  %i.j = trunc i32 %4 to i8
  %i.k = getelementptr i8, ptr %0, i64 7
  store i8 %i.j, ptr %i.k, align 1
  ret i32 8
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local range(i32 0, 3) i32 @spi_populate_tag_msg(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 256
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  store i8 32, ptr %0, align 1
  %i.e = getelementptr i8, ptr %1, i64 -216
  %i.f = load i32, ptr %i.e, align 8
  %i.g = trunc i32 %i.f to i8
  store i8 %i.g, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 1, 259) i32 @spi_print_msg(ptr nofree noundef readonly captures(none) %0) #7 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 8 uses
  %i.b = zext i8 %i.a to i32                      ; 6 uses
  %i.c = icmp eq i8 %i.a, 1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 2
  %i.h = icmp eq i8 %i.e, 0
  %spec.select = select i1 %i.h, i32 258, i32 %i.g ; 8 uses
  %i.i = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %i.k = icmp ult i8 %i.j, 6
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i8 %i.j to i64
  %i.m = getelementptr [8 x i8], ptr @extended_msgs, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %i.n) #17 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = zext i8 %i.j to i32
  %i.q = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %i.p) #17 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = load i8, ptr %i.i, align 1
  switch i8 %i.r, label %.preheader [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

.preheader:                                       ; preds = %bb.e
  %i.s = icmp samesign ugt i32 %spec.select, 2
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %1 = getelementptr i8, ptr %0, i64 3
  %2 = load i32, ptr %1, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.27, i32 noundef %3) #17 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @print_nego(ptr noundef %0, i32 noundef 3, i32 noundef 4, i32 noundef 0) #18, !srcloc !22
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %0, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl i32 8, %i.v
  %i.x = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %i.w) #17 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  tail call fastcc void @print_nego(ptr noundef %0, i32 noundef 3, i32 noundef 5, i32 noundef 6) #18, !srcloc !23
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %5 = getelementptr i8, ptr %0, i64 3
  %6 = load i32, ptr %5, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.28, i32 noundef %7) #17 ; 0 uses
  %9 = getelementptr i8, ptr %0, i64 7
  %10 = load i32, ptr %9, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.29, i32 noundef %11) #17 ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %indvars.iv
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %i.aa) #17 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

bb.k:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = and i32 %i.b, 64
  %.not44 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not44, ptr @.str.32, ptr @.str.13
  %i.ae = and i32 %i.b, 32
  %.not45 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not45, ptr @.str.34, ptr @.str.33
  %i.ag = and i32 %i.b, 7
  %i.ah = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.af, i32 noundef %i.ag) #17 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp samesign ult i8 %i.a, 31
  br i1 %i.ai, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp samesign ult i8 %i.a, 24
  br i1 %i.aj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ak = zext nneg i8 %i.a to i64                ; 2 uses
  %i.al = shl nuw nsw i64 1, %i.ak
  %i.am = and i64 %i.al, 3145730
  %.not43.not = icmp eq i64 %i.am, 0
  br i1 %.not43.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr [8 x i8], ptr @one_byte_msgs, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %i.ao) #17 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.aq = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %i.b) #17 ; 0 uses
  br label %.loopexit

bb.r:                                             ; preds = %bb.m
  %i.ar = icmp eq i8 %i.a, 85
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #17 ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.at = icmp samesign ult i8 %i.a, 48
  br i1 %i.at, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.au = add nsw i32 %i.b, -32                   ; 2 uses
  %i.av = icmp ult i32 %i.au, 5
  br i1 %i.av, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr [8 x i8], ptr @two_byte_msgs, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %0, i64 1
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %i.ay, i32 noundef %i.bb) #17 ; 0 uses
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bd = getelementptr i8, ptr %0, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %i.b, i32 noundef %i.bf) #17 ; 0 uses
  br label %.loopexit

bb.x:                                             ; preds = %bb.t
  %i.bh = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.v, %bb.w, %bb.l, %bb.s, %bb.x, %bb.p, %bb.q, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.1 = phi i32 [ 2, %bb.v ], [ %spec.select, %bb.f ], [ %spec.select, %bb.g ], [ %spec.select, %bb.h ], [ %spec.select, %bb.i ], [ %spec.select, %bb.j ], [ 1, %bb.l ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.s ], [ 1, %bb.x ], [ 2, %bb.w ], [ 2, %.preheader ], [ %spec.select, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @print_nego(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 4) %1, i32 noundef range(i32 0, 6) %2, i32 noundef range(i32 0, 7) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !annotation !14
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1               ; 4 uses
  %i.e = icmp ult i8 %i.d, 13
  br i1 %i.e, label %bb.c, label %.thread13.i

.thread13.i:                                      ; preds = %bb.b
  %i.f = zext i8 %i.d to i32
  %i.g = mul nuw nsw i32 %i.f, 4000
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.d to i64
  %i.i = getelementptr [4 x i8], ptr @ppr_to_ps, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp samesign ult i8 %i.d, 7
  br i1 %i.k, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.63, i64 9, i1 false)
  br label %period_to_str.exit

bb.d:                                             ; preds = %bb.c, %.thread13.i
  %.015.i = phi i32 [ %i.g, %.thread13.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = srem i32 %.015.i, 1000                   ; 2 uses
  %i.m = sdiv i32 %.015.i, 1000
  %i.n = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq i32 %i.l, 0
  br i1 %i.o, label %period_to_str.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %i.n, 1
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr i8, ptr %i.a, i64 %i.q
  store i8 46, ptr %i.r, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.022.i.i = phi i32 [ 1000, %bb.e ], [ %i.s, %bb.f ]
  %.021.i.i = phi i32 [ %i.l, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %.0.i.i = phi i32 [ %i.p, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.s = sdiv i32 %.022.i.i, 10                   ; 3 uses
  %i.t = sext i32 %.0.i.i to i64
  %i.u = getelementptr i8, ptr %i.a, i64 %i.t
  %i.v = sdiv i32 %.021.i.i, %i.s
  %i.w = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.u, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %i.v) #15 ; 0 uses
  %i.x = add i32 %.0.i.i, 1                       ; 2 uses
  %i.y = srem i32 %.021.i.i, %i.s                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z
  store i8 0, ptr %i.aa, align 1
  br label %period_to_str.exit

period_to_str.exit:                               ; preds = %.thread.i, %bb.d, %bb.g
  %i.ab = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %i.a) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.h:                                             ; preds = %period_to_str.exit, %bb.a
  %.not10 = icmp eq i32 %2, 0
  br i1 %.not10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %i.af) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not11 = icmp eq i32 %3, 0
  br i1 %.not11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = zext nneg i32 %3 to i64
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl i32 8, %i.ak
  %i.am = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %i.al) #17 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @spi_attach_transport(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(384) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 3520, i64 noundef range(i64 40, 8193) 384) #16 ; 13 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %i.d = getelementptr i8, ptr %i.b, i64 168
  store ptr @spi_transport_class, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 176
  store ptr @target_attribute_group, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 192
  store ptr @spi_target_match, ptr %i.f, align 8
  tail call void @attribute_container_register(ptr noundef %i.c) #15
  %i.g = getelementptr i8, ptr %i.b, i64 352
  store i32 80, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 56
  store ptr @spi_host_class, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.b, i64 64
  store ptr @host_attribute_group, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 80
  store ptr @spi_host_match, ptr %i.j, align 8
  tail call void @attribute_container_register(ptr noundef nonnull %i.b) #15
  %i.k = getelementptr i8, ptr %i.b, i64 360
  store i32 4, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %i.b, i64 376
  store ptr %0, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @spi_target_match(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @scsi_is_target_device(ptr noundef %1) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.07.i = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.d ] ; 3 uses
  %i.d = tail call i32 @scsi_is_host_device(ptr noundef %.07.i) #15
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %.07.i, i64 64
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %dev_to_shost.exit, label %bb.c, !llvm.loop !1

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.07.i, i64 -632
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.g, %bb.e ], [ null, %bb.d ]
  %i.h = getelementptr i8, ptr %.0.i, i64 168
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %bb.j, label %bb.f

bb.f:                                             ; preds = %dev_to_shost.exit
  %i.j = getelementptr i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  %.not18 = icmp eq ptr %i.k, @spi_host_class
  br i1 %.not18, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.i, i64 376
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 192
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.o, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %1, i64 -40
  %i.q = tail call i32 %i.o(ptr noundef %i.p) #15
  %.not20 = icmp eq i32 %i.q, 0
  br i1 %.not20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr i8, ptr %i.i, i64 112
  %i.s = icmp eq ptr %i.r, %0
  %i.t = zext i1 %i.s to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %dev_to_shost.exit, %bb.f, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %dev_to_shost.exit ], [ %i.t, %bb.i ], [ 0, %bb.f ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @spi_host_match(ptr nofree noundef readnone captures(address) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @scsi_is_host_device(ptr noundef %1) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %i.b = tail call i32 @scsi_is_host_device(ptr noundef %.07.i) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %.07.i, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %dev_to_shost.exit, label %.preheader, !llvm.loop !1

bb.c:                                             ; preds = %.preheader
  %i.e = getelementptr i8, ptr %.07.i, i64 -632
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ]
  %i.f = getelementptr i8, ptr %.0.i, i64 168
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %dev_to_shost.exit
  %i.h = getelementptr i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %.not8 = icmp eq ptr %i.i, @spi_host_class
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = icmp eq ptr %i.g, %0
  %i.k = zext i1 %i.j to i32
  br label %bb.f

bb.f:                                             ; preds = %dev_to_shost.exit, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.e ], [ 0, %bb.d ], [ 0, %dev_to_shost.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @spi_release_transport(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = tail call i32 @attribute_container_unregister(ptr noundef %i.a) #15
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %transport_container_unregister.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "647: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 647b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 647) #19, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.142, i32 99, i32 0, i64 16) #19, !srcloc !25
  unreachable

transport_container_unregister.exit:              ; preds = %bb.a
  %i.c = tail call i32 @attribute_container_unregister(ptr noundef %0) #15
  %.not.i6 = icmp eq i32 %i.c, 0
  br i1 %.not.i6, label %transport_container_unregister.exit7, label %bb.c, !prof !12

bb.c:                                             ; preds = %transport_container_unregister.exit
  tail call void asm sideeffect "647: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 647b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 647) #19, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.13, ptr nonnull @.str.142, i32 99, i32 0, i64 16) #19, !srcloc !25
  unreachable

transport_container_unregister.exit7:             ; preds = %transport_container_unregister.exit
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @spi_transport_exit() #8 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @transport_class_unregister(ptr noundef nonnull @spi_transport_class) #15
  tail call void @anon_transport_class_unregister(ptr noundef nonnull @spi_device_class) #15
  tail call void @transport_class_unregister(ptr noundef nonnull @spi_host_class) #15
  %i.a = tail call i32 @scsi_dev_info_remove_list(i32 noundef 1) #15 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @transport_class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @anon_transport_class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_dev_info_remove_list(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @spi_transport_init() #8 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @scsi_dev_info_add_list(i32 noundef 1, ptr noundef nonnull @.str.144) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr [24 x i8], ptr @spi_static_device_list, i64 %indvars.iv ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call i32 @scsi_dev_info_list_add_keyed(i32 noundef 1, ptr noundef %i.c, ptr noundef %i.e, ptr noundef null, i64 noundef %i.g, i32 noundef 1) #15 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not12 = icmp eq i64 %indvars.iv.next, 2
  br i1 %.not12, label %.loopexit, label %.preheader, !llvm.loop !26

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.i = tail call i32 @transport_class_register(ptr noundef nonnull @spi_transport_class) #15 ; 2 uses
  %.not13 = icmp eq i32 %i.i, 0
  br i1 %.not13, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  tail call void @anon_transport_class_register(ptr noundef nonnull @spi_device_class) #15
  %i.j = tail call i32 @transport_class_register(ptr noundef nonnull @spi_host_class) #15
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.09 = phi i32 [ %i.j, %bb.b ], [ %i.i, %.loopexit ]
  ret i32 %.09
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @spi_dv_device_compare_inquiry(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca [2 x %struct.scsi_failure], align 16 ; 4 uses
  %5 = alloca %struct.scsi_failures, align 8      ; 5 uses
  %6 = alloca %struct.scsi_exec_args, align 8     ; 8 uses
  %i.a = alloca [6 x i8], align 1                 ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 208
  %i.c = load i8, ptr %i.b, align 8               ; 3 uses
  %i.d = zext i8 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 18, ptr %i.a, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.c, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.i, align 1
  %i.j = icmp sgt i32 %3, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.k = zext i8 %i.c to i64                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.q = getelementptr i8, ptr %0, i64 2088
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.029 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.h ] ; 2 uses
  %.02228 = phi ptr [ %2, %.lr.ph ], [ %.123, %bb.h ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.02228, i8 0, i64 %i.k, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) @__const.spi_execute.failure_defs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %5, align 8
  store ptr %4, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 4, ptr %i.m, align 8
  store i32 0, ptr %i.n, align 4
  store ptr null, ptr %i.o, align 8
  store ptr %5, ptr %i.p, align 8
  %i.r = call i32 @scsi_execute_cmd(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1826, ptr noundef %.02228, i32 noundef %i.d, i32 noundef 10000, i32 noundef 1, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val = load i32, ptr %i.q, align 8
  switch i32 %.val, label %bb.e [
    i32 7, label %bb.d
    i32 6, label %bb.d
    i32 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.b
  %i.s = call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 5) #15 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq ptr %.02228, %1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %.02228, i64 %i.k
  %i.v = add i32 %.029, -1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %bcmp = call i32 @bcmp(ptr %1, ptr %.02228, i64 %i.k)
  %.not26 = icmp eq i32 %bcmp, 0
  br i1 %.not26, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f
  %.123 = phi ptr [ %i.u, %bb.f ], [ %.02228, %bb.g ]
  %.1 = phi i32 [ %i.v, %bb.f ], [ %.029, %bb.g ]
  %i.w = add i32 %.1, 1                           ; 2 uses
  %i.x = icmp slt i32 %i.w, %3
  br i1 %i.x, label %bb.b, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.a, %bb.d
  %.021 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.021
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 3) i32 @spi_dv_retrain(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 320        ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 3) #15, !callees !28 ; 2 uses
  %i.g = and i32 %i.f, -3
  %or.cond91 = icmp eq i32 %i.g, 0
  br i1 %or.cond91, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 376      ; 8 uses
  %i.i = getelementptr i8, ptr %i.e, i64 864      ; 2 uses
  %i.j = getelementptr i8, ptr %i.e, i64 40       ; 4 uses
  %i.k = getelementptr i8, ptr %i.e, i64 848
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.05693 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.u ] ; 5 uses
  %.05792 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.u ] ; 5 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.n(ptr noundef %i.e) #15
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %.pre, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not72 = icmp eq ptr %i.q, null
  br i1 %.not72, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.q(ptr noundef %i.e) #15
  %.pre94 = load ptr, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %.pre94, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not73 = icmp eq ptr %i.s, null
  br i1 %.not73, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.d, align 8
  tail call void %i.s(ptr noundef %i.t) #15
  %.pre95 = load ptr, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %.pre95, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %.not74 = icmp eq ptr %i.w, null
  br i1 %.not74, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i16, ptr %i.i, align 8
  %i.y = and i16 %i.x, 4
  %.not75 = icmp eq i16 %i.y, 0
  br i1 %.not75, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.46) #17
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not81 = icmp eq ptr %i.ab, null
  br i1 %.not81, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.d, align 8
  tail call void %i.ab(ptr noundef %i.ac, i32 noundef 0) #15
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr i8, ptr %i.u, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not76 = icmp eq ptr %i.ae, null
  br i1 %.not76, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i16, ptr %i.i, align 8
  %i.ag = and i16 %i.af, 32
  %.not77 = icmp eq i16 %i.ag, 0
  br i1 %.not77, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.47) #17
  %i.ah = load ptr, ptr %i.h, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not80 = icmp eq ptr %i.aj, null
  br i1 %.not80, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.d, align 8
  tail call void %i.aj(ptr noundef %i.ak, i32 noundef 0) #15
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.al = load i32, ptr %i.k, align 8
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %.05792) ; 3 uses
  %i.an = icmp slt i32 %i.am, 13
  %i.ao = lshr i32 %i.am, 1
  %.158.v = select i1 %i.an, i32 1, i32 %i.ao
  %.158 = add i32 %.158.v, %i.am                  ; 7 uses
  %i.ap = icmp sgt i32 %.158, 255
  %i.aq = icmp eq i32 %.158, %.05693
  %i.ar = select i1 %i.ap, i1 true, i1 %i.aq, !prof !13
  br i1 %i.ar, label %bb.q, label %bb.s, !prof !13

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.48) #17
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not79 = icmp eq ptr %i.au, null
  br i1 %.not79, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %i.d, align 8
  tail call void %i.au(ptr noundef %i.av, i32 noundef 0) #15
  br label %.thread

bb.s:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.49) #17
  %i.aw = load ptr, ptr %i.h, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not78 = icmp eq ptr %i.ay, null
  br i1 %.not78, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.d, align 8
  tail call void %i.ay(ptr noundef %i.az, i32 noundef %.158) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.j, %bb.n, %bb.o, %bb.t, %bb.s
  %.3 = phi i32 [ %.05792, %bb.n ], [ %.158, %bb.t ], [ %.158, %bb.s ], [ %.05792, %bb.k ], [ %.05792, %bb.j ], [ %.05792, %bb.o ]
  %.2 = phi i32 [ %.05693, %bb.n ], [ %.158, %bb.t ], [ %.158, %bb.s ], [ %.05693, %bb.k ], [ %.05693, %bb.j ], [ %.05693, %bb.o ]
  %i.ba = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 3) #15, !callees !28 ; 2 uses
  %i.bb = and i32 %i.ba, -3
  %or.cond = icmp eq i32 %i.bb, 0
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.u, %bb.a, %bb.r, %bb.q
  %.262 = phi i32 [ 1, %bb.r ], [ 1, %bb.q ], [ %i.f, %bb.a ], [ %i.ba, %bb.u ]
  ret i32 %.262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 3) i32 @spi_dv_device_echo_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca [2 x %struct.scsi_failure], align 16 ; 4 uses
  %5 = alloca %struct.scsi_failures, align 8      ; 5 uses
  %6 = alloca %struct.scsi_exec_args, align 8     ; 8 uses
  %7 = alloca [2 x %struct.scsi_failure], align 16 ; 4 uses
  %8 = alloca %struct.scsi_failures, align 8      ; 5 uses
  %9 = alloca %struct.scsi_exec_args, align 8     ; 9 uses
  %10 = alloca %struct.scsi_sense_hdr, align 8    ; 8 uses
  %i.a = alloca [10 x i8], align 1                ; 9 uses
  %i.b = alloca [10 x i8], align 1                ; 9 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 59, ptr %i.a, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 10, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.j = lshr i64 %i.e, 8
  %i.k = trunc i64 %i.j to i8                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, i8 0, i64 5, i1 false)
  store i8 %i.k, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = trunc i64 %i.e to i8                     ; 2 uses
  store i8 %i.m, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 60, ptr %i.b, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 10, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.p, i8 0, i64 5, i1 false)
  store i8 %i.k, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.m, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %i.s, align 1
  %i.t = icmp sgt i32 %i.f, 0
  br i1 %i.t, label %.preheader128.lr.ph, label %.preheader

.preheader128.lr.ph:                              ; preds = %bb.a
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.f, i32 32) ; 4 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  br label %.preheader128

.loopexit125:                                     ; preds = %.lr.ph139, %.preheader124
  %.1115.lcssa = phi i32 [ %.0114142, %.preheader124 ], [ %i.cc, %.lr.ph139 ]
  %.4.lcssa = phi i32 [ %.3.lcssa, %.preheader124 ], [ %i.cd, %.lr.ph139 ] ; 2 uses
  %i.v = icmp slt i32 %.4.lcssa, %i.f
  br i1 %i.v, label %.preheader128, label %.preheader, !llvm.loop !29

.preheader128:                                    ; preds = %.preheader128.lr.ph, %.loopexit125
  %.0112143 = phi i32 [ 0, %.preheader128.lr.ph ], [ %.4.lcssa, %.loopexit125 ] ; 3 uses
  %.0114142 = phi i32 [ 65535, %.preheader128.lr.ph ], [ %.1115.lcssa, %.loopexit125 ] ; 2 uses
  %i.w = icmp slt i32 %.0112143, %i.u
  br i1 %i.w, label %.lr.ph.preheader, label %.preheader127

.lr.ph.preheader:                                 ; preds = %.preheader128
  %i.x = zext i32 %.0112143 to i64                ; 4 uses
  %i.y = sub nsw i64 %wide.trip.count, %i.x
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.z = trunc i64 %indvars.iv.prol to i8
  %i.aa = getelementptr i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !30

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %i.x, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %.preheader127, label %.lr.ph

.preheader:                                       ; preds = %.loopexit125, %bb.a
  %i.ad = icmp sgt i32 %3, 0
  br i1 %i.ad, label %.lr.ph145, label %.loopexit

.lr.ph145:                                        ; preds = %.preheader
  store i64 0, ptr %10, align 8, !annotation !14
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ak = getelementptr i8, ptr %0, i64 2088
  %sext = shl i64 %i.e, 32
  %i.al = ashr exact i64 %sext, 32                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40
  br label %bb.c

.preheader127:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader128
  %.1.lcssa = phi i32 [ %.0112143, %.preheader128 ], [ %i.u, %.lr.ph ], [ %i.u, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ar = add nuw i32 %.1.lcssa, 32
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.f) ; 3 uses
  %i.at = icmp slt i32 %.1.lcssa, %i.as
  br i1 %i.at, label %.lr.ph132, label %.preheader126

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.au = trunc i64 %indvars.iv to i8
  %i.av = getelementptr i8, ptr %1, i64 %indvars.iv
  store i8 %i.au, ptr %i.av, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = trunc i64 %indvars.iv.next to i8
  %i.ax = getelementptr i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = trunc i64 %indvars.iv.next.1 to i8
  %i.az = getelementptr i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = trunc i64 %indvars.iv.next.2 to i8
  %i.bb = getelementptr i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bc = trunc i64 %indvars.iv.next.3 to i8
  %i.bd = getelementptr i8, ptr %1, i64 %indvars.iv.next.3
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.be = trunc i64 %indvars.iv.next.4 to i8
  %i.bf = getelementptr i8, ptr %1, i64 %indvars.iv.next.4
  store i8 %i.be, ptr %i.bf, align 1
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bg = trunc i64 %indvars.iv.next.5 to i8
  %i.bh = getelementptr i8, ptr %1, i64 %indvars.iv.next.5
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bi = trunc i64 %indvars.iv.next.6 to i8
  %i.bj = getelementptr i8, ptr %1, i64 %indvars.iv.next.6
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.preheader127, label %.lr.ph, !llvm.loop !31

.preheader126.loopexit:                           ; preds = %.lr.ph132
  %.pre = add i32 %.2131, 34
  %.pre158 = tail call i32 @llvm.smin.i32(i32 %.pre, i32 %i.f)
  br label %.preheader126

.preheader126:                                    ; preds = %.preheader126.loopexit, %.preheader127
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader126.loopexit ], [ %i.as, %.preheader127 ] ; 3 uses
  %.2.lcssa = phi i32 [ %i.br, %.preheader126.loopexit ], [ %.1.lcssa, %.preheader127 ] ; 3 uses
  %i.bk = icmp slt i32 %.2.lcssa, %.pre-phi159
  br i1 %i.bk, label %.lr.ph135, label %.preheader124

.lr.ph132:                                        ; preds = %.preheader127, %.lr.ph132
  %.2131 = phi i32 [ %i.br, %.lr.ph132 ], [ %.1.lcssa, %.preheader127 ] ; 4 uses
  %i.bl = sext i32 %.2131 to i64
  %i.bm = getelementptr i8, ptr %1, i64 %i.bl
  %i.bn = trunc i32 %.2131 to i16
  %i.bo = lshr i16 %i.bn, 1
  %i.bp = and i16 %i.bo, 1
  %i.bq = add nsw i16 %i.bp, -1
  store i16 %i.bq, ptr %i.bm, align 2
  %i.br = add i32 %.2131, 2                       ; 3 uses
  %i.bs = icmp slt i32 %i.br, %i.as
  br i1 %i.bs, label %.lr.ph132, label %.preheader126.loopexit, !llvm.loop !32

.preheader124.loopexit:                           ; preds = %.lr.ph135
  %.pre160 = add i32 %.3134, 34
  %.pre162 = tail call i32 @llvm.smin.i32(i32 %.pre160, i32 %i.f)
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.loopexit, %.preheader126
  %.pre-phi163 = phi i32 [ %.pre162, %.preheader124.loopexit ], [ %.pre-phi159, %.preheader126 ] ; 2 uses
  %.3.lcssa = phi i32 [ %i.by, %.preheader124.loopexit ], [ %.2.lcssa, %.preheader126 ] ; 3 uses
  %i.bt = icmp slt i32 %.3.lcssa, %.pre-phi163
  br i1 %i.bt, label %.lr.ph139, label %.loopexit125

.lr.ph135:                                        ; preds = %.preheader126, %.lr.ph135
  %.3134 = phi i32 [ %i.by, %.lr.ph135 ], [ %.2.lcssa, %.preheader126 ] ; 4 uses
  %i.bu = sext i32 %.3134 to i64
  %i.bv = getelementptr i8, ptr %1, i64 %i.bu
  %i.bw = and i32 %.3134, 2
  %.not120 = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not120, i16 -21846, i16 21845
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = add i32 %.3134, 2                       ; 3 uses
  %i.bz = icmp slt i32 %i.by, %.pre-phi159
  br i1 %i.bz, label %.lr.ph135, label %.preheader124.loopexit, !llvm.loop !33

.lr.ph139:                                        ; preds = %.preheader124, %.lr.ph139
  %.4138 = phi i32 [ %i.cd, %.lr.ph139 ], [ %.3.lcssa, %.preheader124 ] ; 2 uses
  %.1115137 = phi i32 [ %i.cc, %.lr.ph139 ], [ %.0114142, %.preheader124 ] ; 3 uses
  %i.ca = sext i32 %.4138 to i64
  %i.cb = getelementptr i8, ptr %1, i64 %i.ca
  store i32 %.1115137, ptr %i.cb, align 4
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %.1115137, i32 %.1115137, i32 1) ; 2 uses
  %i.cd = add i32 %.4138, 4                       ; 3 uses
  %i.ce = icmp slt i32 %i.cd, %.pre-phi163
  br i1 %i.ce, label %.lr.ph139, label %.loopexit125, !llvm.loop !34

bb.b:                                             ; preds = %bb.h
  %i.cf = add nuw nsw i32 %.0113144, 1            ; 2 uses
  %exitcond157.not = icmp eq i32 %i.cf, %3
  br i1 %exitcond157.not, label %.loopexit, label %bb.c, !llvm.loop !35

bb.c:                                             ; preds = %.lr.ph145, %bb.b
  %.0113144 = phi i32 [ 0, %.lr.ph145 ], [ %i.cf, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(24) @__const.spi_execute.failure_defs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 0, ptr %8, align 8
  store ptr %7, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %10, ptr %i.af, align 8
  store i32 4, ptr %i.ag, align 8
  store i32 0, ptr %i.ah, align 4
  store ptr null, ptr %i.ai, align 8
  store ptr %8, ptr %i.aj, align 8
  %i.cg = call i32 @scsi_execute_cmd(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1827, ptr noundef %1, i32 noundef %i.f, i32 noundef 10000, i32 noundef 1, ptr noundef nonnull %9) #15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val = load i32, ptr %i.ak, align 8
  switch i32 %.val, label %bb.h [
    i32 7, label %.thread
    i32 6, label %.thread
    i32 4, label %.thread
  ]

.thread:                                          ; preds = %bb.d, %bb.d, %bb.d
  %i.ch = call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 5) #15 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ci = call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 5) #15 ; 0 uses
  %i.cj = icmp sgt i32 %i.cg, 0
  br i1 %i.cj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ck = load i8, ptr %10, align 8
  %i.cl = and i8 %i.ck, 112
  %i.cm = icmp eq i8 %i.cl, 112
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = icmp eq i8 %i.co, 5
  %or.cond = select i1 %i.cm, i1 %i.cp, i1 false
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.cr = load i8, ptr %i.cq, align 2
  %i.cs = icmp eq i8 %i.cr, 36
  %or.cond7 = select i1 %or.cond, i1 %i.cs, i1 false
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 3
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp eq i8 %i.cu, 0
  %or.cond11 = select i1 %or.cond7, i1 %i.cv, i1 false
  br i1 %or.cond11, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.40, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef %i.cg) #15
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.al, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) @__const.spi_execute.failure_defs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %5, align 8
  store ptr %4, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 4, ptr %i.an, align 8
  store i32 0, ptr %i.ao, align 4
  store ptr null, ptr %i.ap, align 8
  store ptr %5, ptr %i.aq, align 8
  %i.cw = call i32 @scsi_execute_cmd(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1826, ptr noundef %2, i32 noundef %i.f, i32 noundef 10000, i32 noundef 1, ptr noundef nonnull %6) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cx = call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 5) #15 ; 0 uses
  %bcmp = call i32 @bcmp(ptr %1, ptr %2, i64 %i.al)
  %.not118 = icmp eq i32 %bcmp, 0
  br i1 %.not118, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.b, %.preheader, %bb.f, %bb.g
  %.0 = phi i32 [ 2, %bb.f ], [ 1, %bb.g ], [ 0, %.preheader ], [ 1, %bb.h ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_execute_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @spi_setup_transport_attrs(ptr nofree readnone captures(none) %0, ptr noundef initializes((808, 824)) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 808
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 812
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %1, i64 816
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 820
  store i32 255, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %1, i64 824        ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 856        ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 8
  %i.j = and i16 %i.f, -8192
  %i.k = or disjoint i16 %i.j, 74
  store i16 %i.k, ptr %i.e, align 8
  %i.l = getelementptr i8, ptr %1, i64 864
  tail call void @mutex_init_generic(ptr noundef %i.l) #15
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @spi_target_configure(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @sysfs_update_group(ptr noundef %2, ptr noundef nonnull @target_attribute_group) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_update_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext range(i16 0, 421) i16 @target_attribute_is_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.i = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.c ] ; 3 uses
  %i.c = tail call i32 @scsi_is_host_device(ptr noundef %.07.i) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.07.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %dev_to_shost.exit, label %bb.b, !llvm.loop !1

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.07.i, i64 -632
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i, i64 168
  %i.h = load ptr, ptr %i.g, align 8              ; 16 uses
  %i.i = icmp eq ptr %1, @dev_attr_period
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %dev_to_shost.exit
  %i.j = getelementptr i8, ptr %i.b, i64 840
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.thread141, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.h, i64 376
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 200
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, 1
  %.not120 = icmp eq i16 %i.q, 0
  %i.r = select i1 %.not120, i16 0, i16 292
  %i.s = getelementptr i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.not121 = icmp eq ptr %i.t, null
  %i.u = select i1 %.not121, i16 0, i16 128
  %i.v = or disjoint i16 %i.r, %i.u
  br label %bb.am

bb.g:                                             ; preds = %dev_to_shost.exit
end_hunk_0
begin_hunk_1_@show_spi_host_hba_id:bb.a
bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.i = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.c ] ; 3 uses
  %i.c = tail call i32 @scsi_is_host_device(ptr noundef %.07.i) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.07.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %dev_to_shost.exit, label %bb.b, !llvm.loop !1

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.07.i, i64 -632
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i, i64 496
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull dereferenceable(1) @.str.98, i32 noundef %i.h) #15
  %i.j = sext i32 %i.i to i64
  ret i64 %i.j
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @attribute_container_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @spi_device_configure(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -456
  %i.b = getelementptr i8, ptr %1, i64 -136
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr i8, ptr %1, i64 -240       ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = tail call i64 @scsi_get_device_flags_keyed(ptr noundef %i.a, ptr noundef %i.f, ptr noundef %i.g, i32 noundef 1) #15
  %i.i = getelementptr i8, ptr %1, i64 -116       ; 3 uses
  %.val = load i64, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %i.c, i64 880      ; 4 uses
  %i.k = lshr i64 %.val, 14
  %i.l = trunc i64 %i.k to i8
  %i.m = and i8 %i.l, 1
  %i.n = load i8, ptr %i.j, align 8
  %i.o = and i8 %i.n, -2
  %i.p = or disjoint i8 %i.m, %i.o                ; 2 uses
  store i8 %i.p, ptr %i.j, align 8
  %.val21 = load i64, ptr %i.i, align 4
  %sh.diff = lshr i64 %.val21, 14
  %tr.sh.diff = trunc i64 %sh.diff to i8
  %i.q = and i8 %tr.sh.diff, 2
  %i.r = and i8 %i.p, -3
  %i.s = or disjoint i8 %i.q, %i.r                ; 2 uses
  store i8 %i.s, ptr %i.j, align 8
  %.val22 = load i64, ptr %i.i, align 4
  %sh.diff25 = lshr i64 %.val22, 14
  %tr.sh.diff26 = trunc i64 %sh.diff25 to i8
  %i.t = and i8 %tr.sh.diff26, 4
  %i.u = and i8 %i.s, -5
  %i.v = or disjoint i8 %i.u, %i.t
  store i8 %i.v, ptr %i.j, align 8
  %i.w = getelementptr i8, ptr %1, i64 -248       ; 3 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = icmp ult i8 %i.x, 57
  br i1 %i.y, label %scsi_device_dt_only.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.d, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 56
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 12
  %i.ad = icmp eq i8 %i.ac, 4
  %i.ae = zext i1 %i.ad to i32
  br label %scsi_device_dt_only.exit

scsi_device_dt_only.exit:                         ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.ae, %bb.b ], [ 0, %bb.a ]
  %i.af = getelementptr i8, ptr %i.c, i64 884
  store i32 %.0.i, ptr %i.af, align 4
  %i.ag = load i8, ptr %i.w, align 8
  %i.ah = icmp ult i8 %i.ag, 57
  br i1 %i.ah, label %scsi_device_ius.exit, label %bb.c

bb.c:                                             ; preds = %scsi_device_dt_only.exit
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, 1
  %i.am = zext nneg i8 %i.al to i32
  br label %scsi_device_ius.exit

scsi_device_ius.exit:                             ; preds = %scsi_device_dt_only.exit, %bb.c
  %.0.i23 = phi i32 [ %i.am, %bb.c ], [ 0, %scsi_device_dt_only.exit ]
  %i.an = getelementptr i8, ptr %i.c, i64 888     ; 2 uses
  store i32 %.0.i23, ptr %i.an, align 8
  %i.ao = and i64 %i.h, 1
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %scsi_device_ius.exit
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.143) #17
  store i32 0, ptr %i.an, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %scsi_device_ius.exit
  %i.ap = load i8, ptr %i.w, align 8
  %i.aq = icmp ult i8 %i.ap, 57
  br i1 %i.aq, label %scsi_device_qas.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.d, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 56
  %i.at = load i8, ptr %i.as, align 1
  %i.au = and i8 %i.at, 2
  %i.av = zext nneg i8 %i.au to i32
  br label %scsi_device_qas.exit

scsi_device_qas.exit:                             ; preds = %bb.e, %bb.f
  %.0.i24 = phi i32 [ %i.av, %bb.f ], [ 0, %bb.e ]
  %i.aw = getelementptr i8, ptr %i.c, i64 892
  store i32 %.0.i24, ptr %i.aw, align 4
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @spi_device_match(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @scsi_is_sdev_device(ptr noundef %1) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 -456
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %.not16 = icmp eq ptr %i.g, @spi_host_class
  br i1 %.not16, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.e, i64 376
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 192
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.k, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 -136
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.k(ptr noundef %i.m) #15
  %.not18 = icmp eq i32 %i.n, 0
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @scsi_get_device_flags_keyed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_dev_info_add_list(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_dev_info_list_add_keyed(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @transport_class_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @anon_transport_class_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #12 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #17 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #18 = { noredzone "no-builtin-wcslen" }
attributes #19 = { nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 8, !"cf-protection-branch", i32 1}
!4 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6 = !{i32 1, !"Code Model", i32 2}
!7 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!8 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{i32 4, !"SkipRaxSetup", i32 1}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{null}
!17 = !{i64 24004}
!18 = !{i64 24429}
!19 = !{i64 26341}
!20 = !{i64 27159}
!21 = distinct !{!21, !15}
!22 = !{i64 35752}
!23 = !{i64 35873}
!24 = !{i64 2157677989, i64 2157677864}
!25 = !{i64 2157678512, i64 2157678988, i64 2157679021, i64 2157679056, i64 2157679072, i64 2157679913, i64 2157679971, i64 2157680020, i64 2157679830, i64 2157679131, i64 2157679163}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = !{ptr @spi_dv_device_compare_inquiry, ptr @spi_dv_device_echo_buffer}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !36}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
