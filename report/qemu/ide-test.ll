Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ide-test?download=true
inline.NumInlined: 79
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@wait_dma_completion:bb.a
bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = tail call zeroext i8 @qpci_io_readb(ptr noundef %1, i64 %4, i8 %5, i64 noundef 7) #14
  %i.n = and i8 %i.m, -120                        ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = uitofp i8 %i.n to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 222, ptr noundef nonnull @__func__.wait_dma_completion, ptr noundef nonnull @.str.49, x86_fp80 noundef %i.p, ptr noundef nonnull @.str.22, x86_fp80 noundef 0.000000e+00, i8 noundef signext 120) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.q = tail call zeroext i1 @qtest_get_irq(ptr noundef %0, i32 noundef 14) #14
  br i1 %i.q, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 225, ptr noundef nonnull @__func__.wait_dma_completion, ptr noundef nonnull @.str.50) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.r = and i32 %i.b, 1
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @qpci_io_writeb(ptr noundef %1, i64 %2, i8 %3, i64 noundef 0, i8 noundef zeroext 0) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret i8 %i.a
}

declare zeroext i1 @qtest_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @make_dirty(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.QPCIBar, align 8            ; 6 uses
  %2 = alloca %struct.QPCIBar, align 8            ; 6 uses
  %3 = alloca %struct.QPCIBar, align 8            ; 3 uses
  %4 = alloca %struct.QPCIBar, align 8            ; 6 uses
  %5 = alloca [1 x %struct.PrdtEntry], align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !10
  %i.a = call fastcc ptr @get_pci_device(ptr noundef %0, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.b = tail call i64 @guest_alloc(ptr noundef nonnull @guest_malloc, i64 noundef 512) #14 ; 3 uses
  %i.c = tail call noalias dereferenceable_or_null(512) ptr @g_malloc(i64 noundef 512) #16 ; 3 uses
  %i.d = tail call i32 @rand() #14
  %i.e = srem i32 %i.d, 255
  %i.f = trunc i32 %i.e to i8
  %i.g = add i8 %i.f, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.c, i8 noundef %i.g, i64 noundef 512, i1 noundef false) #14
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 795, ptr noundef nonnull @__func__.make_dirty, ptr noundef nonnull @.str.62) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @qtest_memwrite(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull %i.c, i64 noundef 512) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.h = trunc i64 %i.b to i32
  store i32 %i.h, ptr %5, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 -2147483136, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !10
  %i.j = call fastcc ptr @get_pci_device(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.k = load i64, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i8, ptr %i.l, align 8
  %i.n = load i64, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i8, ptr %i.o, align 8
  %i.q = call fastcc i32 @send_dma_request_dev(ptr noundef %0, ptr noundef nonnull %i.j, i64 %i.k, i8 %i.m, i64 %i.n, i8 %i.p, i32 noundef 202, i64 noundef 1, i32 noundef 1, ptr noundef nonnull %5, i32 noundef 1, ptr noundef null) ; 2 uses
  call void @g_free(ptr noundef nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = uitofp nneg i32 %i.q to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 809, ptr noundef nonnull @__func__.make_dirty, ptr noundef nonnull @.str.43, x86_fp80 noundef %i.s, ptr noundef nonnull @.str.22, x86_fp80 noundef 4.000000e+00, i8 noundef signext 120) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = load i64, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i8, ptr %i.u, align 8
  %i.w = call zeroext i8 @qpci_io_readb(ptr noundef nonnull %i.a, i64 %i.t, i8 %i.v, i64 noundef 7) #14
  %i.x = and i8 %i.w, 33                          ; 2 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = uitofp nneg i8 %i.x to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 810, ptr noundef nonnull @__func__.make_dirty, ptr noundef nonnull @.str.44, x86_fp80 noundef %i.z, ptr noundef nonnull @.str.22, x86_fp80 noundef 0.000000e+00, i8 noundef signext 120) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @g_free(ptr noundef nonnull %i.c) #14
  call void @g_free(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

declare ptr @qtest_hmp(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #4

declare void @prepare_blkdebug_script(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @qtest_qmp_eventwait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @qtest_qmp_assert_success(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @cdrom_pio_impl(i32 noundef range(i32 1, 11) %0) unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.QPCIBar, align 8            ; 3 uses
  %3 = alloca %struct.QPCIBar, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = tail call noalias dereferenceable_or_null(32768) ptr @g_malloc(i64 noundef 32768) #16 ; 4 uses
  %i.b = shl nuw nsw i32 %0, 11                   ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 3 uses
  %i.d = tail call noalias ptr @g_malloc0(i64 noundef %i.c) #16 ; 3 uses
  tail call void @generate_pattern(ptr noundef %i.a, i64 noundef 32768, i64 noundef 2048) #14
  %i.e = load ptr, ptr @tmp_path.0, align 16
  %i.f = tail call noalias ptr @fopen64(ptr noundef %i.e, ptr noundef nonnull @.str.71) ; 2 uses
  %i.g = tail call i64 @fwrite(ptr noundef %i.a, i64 noundef 2048, i64 noundef 16, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 16
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sitofp i64 %i.g to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1057, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.72, x86_fp80 noundef %i.i, ptr noundef nonnull @.str.22, x86_fp80 noundef 1.600000e+01, i8 noundef signext 105) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !10
  %i.j = tail call i32 @fclose(ptr noundef %i.f)  ; 0 uses
  %i.k = load ptr, ptr @tmp_path.0, align 16
  %i.l = tail call ptr (ptr, ...) @ide_test_start(ptr noundef nonnull @.str.73, ptr noundef %i.k) ; 9 uses
  %i.m = call fastcc ptr @get_pci_device(ptr noundef %i.l, ptr noundef %2, ptr noundef %3) ; 7 uses
  tail call void @qtest_irq_intercept_in(ptr noundef %i.l, ptr noundef nonnull @.str.46) #14
  %i.n = load i64, ptr %3, align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i8, ptr %i.o, align 8               ; 6 uses
  tail call void @qpci_io_writeb(ptr noundef nonnull %i.m, i64 %i.n, i8 %i.p, i64 noundef 6, i8 noundef zeroext 0) #14
  tail call void @qpci_io_writeb(ptr noundef nonnull %i.m, i64 %i.n, i8 %i.p, i64 noundef 4, i8 noundef zeroext 0) #14
  tail call void @qpci_io_writeb(ptr noundef nonnull %i.m, i64 %i.n, i8 %i.p, i64 noundef 5, i8 noundef zeroext 20) #14
  tail call void @qpci_io_writeb(ptr noundef nonnull %i.m, i64 %i.n, i8 %i.p, i64 noundef 7, i8 noundef zeroext -96) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %1, align 8
  store i64 400, ptr %i.q, align 8
  %i.r = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef null) #14 ; 0 uses
  %i.s = call i64 @qtest_clock_set(ptr noundef %i.l, i64 noundef 400) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.t = call fastcc zeroext i8 @ide_wait_clear(ptr noundef %i.l, i8 noundef zeroext -128)
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = and i32 %i.u, 72                         ; 2 uses
  %i.w = icmp eq i32 %i.v, 72
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = uitofp nneg i32 %i.v to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1075, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.74, x86_fp80 noundef %i.x, ptr noundef nonnull @.str.22, x86_fp80 noundef 7.200000e+01, i8 noundef signext 120) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = and i32 %i.u, 161                        ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph116, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = uitofp nneg i32 %i.y to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1076, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.75, x86_fp80 noundef %i.aa, ptr noundef nonnull @.str.22, x86_fp80 noundef 0.000000e+00, i8 noundef signext 120) #14
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %bb.f, %bb.e
  call void @send_scsi_cdb_read10(ptr noundef nonnull %i.m, i64 %i.n, i8 %i.p, i64 noundef 0, i32 noundef %0)
  %i.ab = trunc nuw nsw i32 %i.b to i16
  %.lhs.trunc = add nuw i16 %i.ab, 4096
  %i.ac = udiv i16 %.lhs.trunc, 5120
  %i.ad = lshr exact i64 %i.c, 1                  ; 2 uses
  %i.ae = zext nneg i16 %i.ac to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph116, %._crit_edge
  %.0102114.a = phi i32 [ 0, %.lr.ph116 ], [ %i.at, %._crit_edge ] ; 2 uses
  %4 = mul i32 %.0102114.a, 2560
  %i.af = sext i32 %4 to i64                      ; 3 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  call fastcc void @ide_wait_intr(ptr noundef %i.l)
  %i.ah = call fastcc zeroext i8 @ide_wait_clear(ptr noundef %i.l, i8 noundef zeroext -128)
  %i.ai = zext i8 %i.ah to i32                    ; 2 uses
  %i.aj = and i32 %i.ai, 72                       ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 72
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = uitofp nneg i32 %i.aj to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1098, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.74, x86_fp80 noundef %i.al, ptr noundef nonnull @.str.22, x86_fp80 noundef 7.200000e+01, i8 noundef signext 120) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.am = and i32 %i.ai, 161                      ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = uitofp nneg i32 %i.am to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1099, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.75, x86_fp80 noundef %i.ao, ptr noundef nonnull @.str.22, x86_fp80 noundef 0.000000e+00, i8 noundef signext 120) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %5 = call i64 @llvm.umin.i64(i64 %i.ag, i64 2560)
  %.not119 = icmp eq i64 %i.ad, %i.af
  br i1 %.not119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ap = getelementptr [2 x i8], ptr %i.d, i64 %i.af
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %i.aq = phi i64 [ 0, %.lr.ph ], [ %7, %bb.l ]
  %.0101113 = phi i32 [ 0, %.lr.ph ], [ %6, %bb.l ]
  %i.ar = call zeroext i16 @qpci_io_readw(ptr noundef nonnull %i.m, i64 %i.n, i8 %i.p, i64 noundef 0) #14
  %i.as = getelementptr [2 x i8], ptr %i.ap, i64 %i.aq
  store i16 %i.ar, ptr %i.as, align 2
  %6 = add i32 %.0101113, 1                       ; 2 uses
  %7 = sext i32 %6 to i64                         ; 2 uses
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %bb.l, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %i.at = add i32 %.0102114.a, 1                  ; 2 uses
  %i.au = icmp ult i32 %i.at, %i.ae
  br i1 %i.au, label %bb.g, label %._crit_edge117, !llvm.loop !20

._crit_edge117:                                   ; preds = %._crit_edge
  call fastcc void @ide_wait_intr(ptr noundef %i.l)
  %i.av = call fastcc zeroext i8 @ide_wait_clear(ptr noundef %i.l, i8 noundef zeroext 8)
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = and i32 %i.aw, 64
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge117
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1113, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.35, x86_fp80 noundef 0.000000e+00, ptr noundef nonnull @.str.22, x86_fp80 noundef 6.400000e+01, i8 noundef signext 120) #14
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge117, %bb.m
  %i.ay = and i32 %i.aw, 169                      ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = uitofp nneg i32 %i.ay to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1114, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.77, x86_fp80 noundef %i.ba, ptr noundef nonnull @.str.22, x86_fp80 noundef 0.000000e+00, i8 noundef signext 120) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bb = call i32 @memcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef %i.c) #17 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = sitofp i32 %i.bb to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1116, ptr noundef nonnull @__func__.cdrom_pio_impl, ptr noundef nonnull @.str.78, x86_fp80 noundef %i.bd, ptr noundef nonnull @.str.22, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @g_free(ptr noundef nonnull %i.a) #14
  call void @g_free(ptr noundef nonnull %i.d) #14
  %i.be = load ptr, ptr @pcibus, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %test_bmdma_teardown.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @qpci_free_pc(ptr noundef nonnull %i.be) #14
  store ptr null, ptr @pcibus, align 8
  br label %test_bmdma_teardown.exit

test_bmdma_teardown.exit:                         ; preds = %bb.r, %bb.s
  call void @alloc_destroy(ptr noundef nonnull @guest_malloc) #14
  call void @qtest_quit(ptr noundef %i.l) #14
  call void @g_free(ptr noundef nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #11

declare void @generate_pattern(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i8 @ide_wait_clear(ptr noundef %0, i8 noundef zeroext range(i8 8, -127) %1) unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.QPCIBar, align 8            ; 3 uses
  %4 = alloca %struct.QPCIBar, align 8            ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.b = call fastcc ptr @get_pci_device(ptr noundef %0, ptr noundef %3, ptr noundef %4) ; 3 uses
  %i.c = call i64 @time(ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.d = load i64, ptr %4, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = call zeroext i8 @qpci_io_readb(ptr noundef nonnull %i.b, i64 %i.d, i8 %i.f, i64 noundef 7) #14 ; 2 uses
  %i.h = and i8 %i.g, %1
  %.not8 = icmp eq i8 %i.h, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.lcssa = phi i8 [ %i.g, %bb.a ], [ %i.p, %bb.c ]
  call void @g_free(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret i8 %.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = call i64 @time(ptr noundef null) #14
  %i.k = load i64, ptr %i.a, align 8
  %i.l = call double @difftime(i64 noundef %i.j, i64 noundef %i.k) #18
  %i.m = fcmp ogt double %i.l, 5.000000e+00
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 0, ptr %2, align 8
  store i64 400, ptr %i.i, align 8
  %i.n = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef null) #14 ; 0 uses
  %i.o = call i64 @qtest_clock_set(ptr noundef %0, i64 noundef 400) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.p = call zeroext i8 @qpci_io_readb(ptr noundef nonnull %i.b, i64 %i.d, i8 %i.f, i64 noundef 7) #14 ; 2 uses
  %i.q = and i8 %i.p, %1
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1014, ptr noundef nonnull @__func__.ide_wait_clear, ptr noundef null) #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @send_scsi_cdb_read10(ptr noundef %0, i64 %1, i8 %2, i64 noundef %3, i32 noundef %4) #5 {
bb.a:
  %i.a = icmp slt i64 %3, 4294967296
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = uitofp nneg i64 %3 to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 969, ptr noundef nonnull @__func__.send_scsi_cdb_read10, ptr noundef nonnull @.str.79, x86_fp80 noundef %i.b, ptr noundef nonnull @.str.80, x86_fp80 noundef f0x401EFFFFFFFF00000000, i8 noundef signext 105) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = icmp slt i32 %4, 65536
  br i1 %i.c, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.d = uitofp nneg i32 %4 to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 970, ptr noundef nonnull @__func__.send_scsi_cdb_read10, ptr noundef nonnull @.str.81, x86_fp80 noundef %i.d, ptr noundef nonnull @.str.80, x86_fp80 noundef 6.553500e+04, i8 noundef signext 105) #14
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = icmp sgt i32 %4, -1
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = sitofp i32 %4 to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 971, ptr noundef nonnull @__func__.send_scsi_cdb_read10, ptr noundef nonnull @.str.82, x86_fp80 noundef %i.f, ptr noundef nonnull @.str.83, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #14
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e
  %i.g = trunc i64 %3 to i32
  %i.h = tail call noundef i32 @llvm.bswap.i32(i32 %i.g) ; 2 uses
  %.sroa.5.sroa.0.0.extract.trunc = trunc i32 %i.h to i16
  %.sroa.5.sroa.5.0.extract.shift = lshr i32 %i.h, 16
  %.sroa.5.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.5.sroa.5.0.extract.shift to i16
  %i.i = trunc i32 %4 to i16
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i) ; 2 uses
  %.sroa.8.sroa.0.1.insert.shift = shl i16 %i.j, 8
  tail call void @qpci_io_writew(ptr noundef %0, i64 %1, i8 %2, i64 noundef 0, i16 noundef zeroext 40) #14
  tail call void @qpci_io_writew(ptr noundef %0, i64 %1, i8 %2, i64 noundef 0, i16 noundef zeroext %.sroa.5.sroa.0.0.extract.trunc) #14
  tail call void @qpci_io_writew(ptr noundef %0, i64 %1, i8 %2, i64 noundef 0, i16 noundef zeroext %.sroa.5.sroa.5.0.extract.trunc) #14
  tail call void @qpci_io_writew(ptr noundef %0, i64 %1, i8 %2, i64 noundef 0, i16 noundef zeroext %.sroa.8.sroa.0.1.insert.shift) #14
  %i.k = lshr i16 %i.j, 8
  tail call void @qpci_io_writew(ptr noundef %0, i64 %1, i8 %2, i64 noundef 0, i16 noundef zeroext %i.k) #14
  tail call void @qpci_io_writew(ptr noundef %0, i64 %1, i8 %2, i64 noundef 0, i16 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ide_wait_intr(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.b = call i64 @time(ptr noundef nonnull %i.a) #14 ; 0 uses
  %i.c = call zeroext i1 @qtest_get_irq(ptr noundef %0, i32 noundef 14) #14
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.e = call i64 @time(ptr noundef null) #14
  %i.f = load i64, ptr %i.a, align 8
  %i.g = call double @difftime(i64 noundef %i.e, i64 noundef %i.f) #18
  %i.h = fcmp ogt double %i.g, 5.000000e+00
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store i64 0, ptr %1, align 8
  store i64 400, ptr %i.d, align 8
  %i.i = call i32 @nanosleep(ptr noundef nonnull %1, ptr noundef null) #14 ; 0 uses
  %i.j = call i64 @qtest_clock_set(ptr noundef %0, i64 noundef 400) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.k = call zeroext i1 @qtest_get_irq(ptr noundef %0, i32 noundef 14) #14
  br i1 %i.k, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 1034, ptr noundef nonnull @__func__.ide_wait_intr, ptr noundef null) #15
  unreachable
}

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @qtest_clock_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #12

declare void @qpci_io_writew(ptr noundef, i64, i8, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = !{ptr @send_scsi_cdb_read10}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
end_hunk_0
