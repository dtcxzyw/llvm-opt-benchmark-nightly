inline.NumInlined: 77
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@reset_method_store:bb.a
.lr.ph.i.i:                                       ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.i.i
  %.04.i.i = phi i32 [ %i.p, %arch_atomic_try_cmpxchg.exit.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.k = add i32 %.04.i.i, -1
  %i.l = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, i32 range(i32 0, -1) %i.k, ptr elementtype(i32) %i.h, i32 %.04.i.i) #8, !srcloc !33 ; 2 uses
  %i.m = extractvalue { i8, i32 } %i.l, 0         ; 2 uses
  %i.n = icmp ult i8 %i.m, 2
  tail call void @llvm.assume(i1 %i.n)
  %i.o = trunc nuw i8 %i.m to i1
  br i1 %i.o, label %pm_runtime_get_active.exit, label %arch_atomic_try_cmpxchg.exit.i.i, !prof !34

arch_atomic_try_cmpxchg.exit.i.i:                 ; preds = %.lr.ph.i.i
  %i.p = extractvalue { i8, i32 } %i.l, 1         ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %pm_runtime_get_active.exit, label %.lr.ph.i.i, !prof !35

pm_runtime_get_active.exit:                       ; preds = %.lr.ph.i.i, %arch_atomic_try_cmpxchg.exit.i.i, %bb.d
  %i.r = icmp eq ptr %0, null
  br i1 %i.r, label %class_pm_runtime_active_try_destructor.exit, label %bb.e

bb.e:                                             ; preds = %pm_runtime_get_active.exit
  %i.s = sext i32 %i.f to i64
  %i.t = inttoptr i64 %i.s to ptr
  br label %class_pm_runtime_active_try_constructor.exit

class_pm_runtime_active_try_constructor.exit:     ; preds = %bb.c, %bb.e
  %.0.i = phi ptr [ %0, %bb.c ], [ %i.t, %bb.e ]  ; 4 uses
  store ptr null, ptr %i.a, align 8, !annotation !10
  %i.u = ptrtoint ptr %.0.i to i64
  %.not.i = icmp ne ptr %.0.i, null
  %i.v = icmp ult ptr %.0.i, inttoptr (i64 -4095 to ptr)
  %i.w = and i1 %.not.i, %i.v
  br i1 %i.w, label %bb.f, label %__free_kfree.exit

bb.f:                                             ; preds = %class_pm_runtime_active_try_constructor.exit
  %i.x = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.123) #9
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @pci_init_reset_methods(ptr noundef %i.c) #9
  br label %__free_kfree.exit

bb.h:                                             ; preds = %bb.f
  %i.y = tail call ptr @kstrndup(ptr noundef %2, i64 noundef %3, i32 noundef 3264) #9 ; 4 uses
  %.not39 = icmp eq ptr %i.y, null
  br i1 %.not39, label %__free_kfree.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.y, ptr %i.a, align 8
  br label %.outer

.outer:                                           ; preds = %bb.v, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %bb.i ] ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.k
  %i.z = call ptr @strsep(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.119) #9 ; 3 uses
  %.not40 = icmp eq ptr %i.z, null
  br i1 %.not40, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call zeroext i1 @sysfs_streq(ptr noundef nonnull %i.z, ptr noundef nonnull @.str.120) #9
  br i1 %i.aa, label %bb.j, label %bb.l, !llvm.loop !36

bb.l:                                             ; preds = %bb.k
  %i.ab = call ptr @strim(ptr noundef nonnull %i.z) #9 ; 9 uses
  %i.ac = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 24), align 8
  %i.ad = call zeroext i1 @sysfs_streq(ptr noundef %i.ab, ptr noundef %i.ac) #9
  br i1 %i.ad, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 40), align 8
  %i.af = call zeroext i1 @sysfs_streq(ptr noundef %i.ab, ptr noundef %i.ae) #9
  br i1 %i.af, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 56), align 8
  %i.ah = call zeroext i1 @sysfs_streq(ptr noundef %i.ab, ptr noundef %i.ag) #9
  br i1 %i.ah, label %select.unfold, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 72), align 8
  %i.aj = call zeroext i1 @sysfs_streq(ptr noundef %i.ab, ptr noundef %i.ai) #9
  br i1 %i.aj, label %select.unfold, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 88), align 8
  %i.al = call zeroext i1 @sysfs_streq(ptr noundef %i.ab, ptr noundef %i.ak) #9
  br i1 %i.al, label %select.unfold, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 104), align 8
  %i.an = call zeroext i1 @sysfs_streq(ptr noundef %i.ab, ptr noundef %i.am) #9
  br i1 %i.an, label %select.unfold, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 120), align 8
  %i.ap = call zeroext i1 @sysfs_streq(ptr noundef %i.ab, ptr noundef %i.ao) #9
  br i1 %i.ap, label %select.unfold, label %reset_method_lookup.exit

reset_method_lookup.exit:                         ; preds = %bb.r
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.124, ptr noundef %i.ab) #10
  br label %bb.z

select.unfold:                                    ; preds = %bb.r, %bb.l, %bb.q, %bb.m, %bb.n, %bb.p, %bb.o
  %.05.i.ph = phi i32 [ 1, %bb.l ], [ 4, %bb.o ], [ 5, %bb.p ], [ 3, %bb.n ], [ 2, %bb.m ], [ 6, %bb.q ], [ 7, %bb.r ] ; 2 uses
  %i.aq = zext nneg i32 %.05.i.ph to i64
  %i.ar = getelementptr [16 x i8], ptr @pci_reset_fn_methods, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call i32 %i.as(ptr noundef %i.c, i1 noundef zeroext true) #9
  %.not42 = icmp eq i32 %i.at, 0
  br i1 %.not42, label %bb.t, label %bb.s

bb.s:                                             ; preds = %select.unfold
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.125, ptr noundef %i.ab) #10
  br label %bb.z

bb.t:                                             ; preds = %select.unfold
  %i.au = icmp eq i64 %indvars.iv, 7
  br i1 %i.au, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.126) #10
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.av = trunc nuw nsw i32 %.05.i.ph to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aw = getelementptr i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.av, ptr %i.aw, align 1
  br label %.outer, !llvm.loop !36

bb.w:                                             ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.b, i64 %indvars.iv
  store i8 0, ptr %i.ax, align 1
  %i.ay = load ptr, ptr getelementptr (i8, ptr @pci_reset_fn_methods, i64 16), align 8
  %i.az = call i32 %i.ay(ptr noundef %i.c, i1 noundef zeroext true) #9
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = load i8, ptr %i.b, align 8
  %i.bc = icmp ne i8 %i.bb, 1
  %or.cond = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.127) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = getelementptr i8, ptr %0, i64 1736
  %i.be = load i64, ptr %i.b, align 8
  store i64 %i.be, ptr %i.bd, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u, %bb.s, %reset_method_lookup.exit
  %.035 = phi i64 [ -22, %bb.s ], [ -22, %bb.u ], [ -22, %reset_method_lookup.exit ], [ %3, %bb.y ] ; 2 uses
  %i.bf = icmp ugt ptr %i.y, inttoptr (i64 -4096 to ptr)
  br i1 %i.bf, label %__free_kfree.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @kfree(ptr noundef nonnull %i.y) #9
  br label %__free_kfree.exit

__free_kfree.exit:                                ; preds = %bb.h, %bb.aa, %bb.z, %class_pm_runtime_active_try_constructor.exit, %bb.g
  %.1 = phi i64 [ -6, %class_pm_runtime_active_try_constructor.exit ], [ %3, %bb.g ], [ %.035, %bb.aa ], [ %.035, %bb.z ], [ -12, %bb.h ] ; 2 uses
  %i.bg = add i64 %i.u, 4095
  %i.bh = icmp ult i64 %i.bg, 4096
  br i1 %i.bh, label %class_pm_runtime_active_try_destructor.exit, label %bb.ab

bb.ab:                                            ; preds = %__free_kfree.exit
  %i.bi = call i32 @__pm_runtime_idle(ptr noundef %.0.i, i32 noundef 5) #9 ; 0 uses
  br label %class_pm_runtime_active_try_destructor.exit

class_pm_runtime_active_try_destructor.exit:      ; preds = %pm_runtime_get_active.exit, %bb.ab, %__free_kfree.exit, %bb.b
  %.2 = phi i64 [ %3, %bb.b ], [ %.1, %__free_kfree.exit ], [ %.1, %bb.ab ], [ -6, %pm_runtime_get_active.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_init_reset_methods(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pci_dev_attrs_are_visible(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -200
  %i.b = icmp eq ptr %1, @dev_attr_boot_vga
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 -132
  %.val = load i32, ptr %i.c, align 4
  %i.d = lshr i32 %.val, 8
  switch i32 %i.d, label %.thread [
    i32 768, label %bb.c
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %3 = load i16, ptr getelementptr inbounds nuw (i8, ptr @dev_attr_boot_vga, i64 8), align 8
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, @dev_attr_serial_number
  br i1 %i.e, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %4 = tail call i64 @pci_get_dsn(ptr noundef %i.a) #9
  %.not = icmp eq i64 %4, 0
  %i.f = load i16, ptr getelementptr inbounds nuw (i8, ptr @dev_attr_serial_number, i64 8), align 8
  %spec.select = select i1 %.not, i16 0, i16 %i.f
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.0 = phi i16 [ %3, %bb.c ], [ 0, %bb.d ], [ %spec.select, %bb.e ], [ 0, %bb.b ]
  ret i16 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @pci_get_dsn(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @boot_vga_show(ptr nofree noundef readonly captures(address) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @vga_default_device() #9   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 -200
  %i.c = icmp eq ptr %i.b, %i.a
  %i.d = zext i1 %i.c to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1176
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 1
  %i.i = and i32 %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.i, %bb.c ], [ %i.d, %bb.b ]
  %i.j = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %.sink) #9
  %.0 = sext i32 %i.j to i64
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @vga_default_device() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @serial_number_show(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 -200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = tail call i64 @pci_get_dsn(ptr noundef %i.b) #9 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @llvm.bswap.i64(i64 range(i64 1, 0) %i.c)
  store i64 %i.d, ptr %i.a, align 8
  %i.e = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.132, ptr noundef nonnull %i.a) #9
  %i.f = sext i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ -5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal zeroext i16 @pci_dev_hp_attrs_are_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1536
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16777216
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @remove_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.b = call i32 @kstrtoull(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a) #9
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call zeroext i1 @device_remove_file_self(ptr noundef %0, ptr noundef %1) #9
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 -200
  call void @pci_stop_and_remove_bus_device_locked(ptr noundef %i.f) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi i64 [ -22, %bb.a ], [ %3, %bb.d ], [ %3, %bb.c ], [ %3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @device_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_stop_and_remove_bus_device_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @dev_rescan_store(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.b = call i32 @kstrtoull(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a) #9
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @pci_lock_rescan_remove() #9
  %i.e = getelementptr i8, ptr %0, i64 -184
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call i32 @pci_rescan_bus(ptr noundef %i.f) #9 ; 0 uses
  call void @pci_unlock_rescan_remove() #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ -22, %bb.a ], [ %3, %bb.c ], [ %3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal zeroext i16 @pci_bridge_attrs_are_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -127
  %.val = load i8, ptr %i.a, align 1
  %i.b = add i8 %.val, -1
  %spec.select.i = icmp ult i8 %i.b, 2
  br i1 %spec.select.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i16 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @subordinate_bus_number_show(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -200       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.a, align 1, !annotation !10
  tail call void @pci_config_pm_runtime_get(ptr noundef %i.b) #9
  %i.c = call i32 @pci_read_config_byte(ptr noundef %i.b, i32 noundef 26, ptr noundef nonnull %i.a) #9
  call void @pci_config_pm_runtime_put(ptr noundef %i.b) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %i.e) #9
  %i.g = sext i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @secondary_bus_number_show(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -200       ; 3 uses
end_hunk_0
