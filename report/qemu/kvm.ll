Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/kvm?download=true
inline.NumInlined: 610
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@kvm_arch_insert_gdbstub_hw_breakpoint:bb.a
  br i1 %i.i, label %.lr.ph.i, label %find_hw_breakpoint.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.j = icmp eq i32 %i.h, -1
  %wide.trip.count24.i = zext nneg i32 %i.f to i64 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %bb.g ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv21.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 16
  %i.m = icmp eq i64 %i.l, %0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %2
  br i1 %i.p, label %find_hw_breakpoint.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !55

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv.i ; 3 uses
  %i.r = load i64, ptr %i.q, align 16
  %i.s = icmp eq i64 %i.r, %0
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, %2
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, %i.h
  br i1 %i.y, label %find_hw_breakpoint.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count24.i
  br i1 %exitcond.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.i, !llvm.loop !55

find_hw_breakpoint.exit:                          ; preds = %bb.i, %bb.f
  %.012.i.in = phi i64 [ %indvars.iv21.i, %bb.f ], [ %indvars.iv.i, %bb.i ]
  %i.z = and i64 %.012.i.in, 2147483648
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.k, label %find_hw_breakpoint.exit.thread

find_hw_breakpoint.exit.thread:                   ; preds = %bb.j, %bb.g, %bb.e, %find_hw_breakpoint.exit
  %i.ab = sext i32 %i.f to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr @hw_breakpoint, i64 %i.ab ; 3 uses
  store i64 %0, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.h, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 %2, ptr %i.ae, align 4
  %i.af = add i32 %i.f, 1
  store i32 %i.af, ptr @nb_hw_breakpoint, align 4
  br label %bb.k

bb.k:                                             ; preds = %find_hw_breakpoint.exit, %bb.d, %bb.a, %.split, %bb.b, %bb.c, %find_hw_breakpoint.exit.thread
  %.0 = phi i32 [ -22, %.split ], [ -38, %bb.a ], [ -105, %bb.d ], [ 0, %find_hw_breakpoint.exit.thread ], [ -22, %bb.c ], [ -22, %bb.b ], [ -17, %find_hw_breakpoint.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @kvm_arch_remove_gdbstub_hw_breakpoint(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = trunc i64 %1 to i32
  %i.c = select i1 %i.a, i32 1, i32 %i.b          ; 2 uses
  %i.d = load i32, ptr @nb_hw_breakpoint, align 4 ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %find_hw_breakpoint.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = icmp eq i32 %i.c, -1
  %wide.trip.count24.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.c
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv21.i ; 2 uses
  %i.h = load i64, ptr %i.g, align 16
  %i.i = icmp eq i64 %i.h, %0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %find_hw_breakpoint.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !55

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv.i ; 3 uses
  %i.n = load i64, ptr %i.m, align 16
  %i.o = icmp eq i64 %i.n, %0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, %2
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %i.c
  br i1 %i.u, label %find_hw_breakpoint.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count24.i
  br i1 %exitcond.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.i, !llvm.loop !55

find_hw_breakpoint.exit:                          ; preds = %bb.e, %bb.b
  %.012.i.in = phi i64 [ %indvars.iv21.i, %bb.b ], [ %indvars.iv.i, %bb.e ] ; 2 uses
  %i.v = and i64 %.012.i.in, 2147483648
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.g, label %find_hw_breakpoint.exit.thread

bb.g:                                             ; preds = %find_hw_breakpoint.exit
  %i.w = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.w, ptr @nb_hw_breakpoint, align 4
  %i.x = and i64 %.012.i.in, 2147483647
  %i.y = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %i.x
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %i.aa, i64 16, i1 false)
  br label %find_hw_breakpoint.exit.thread

find_hw_breakpoint.exit.thread:                   ; preds = %bb.f, %bb.c, %bb.a, %find_hw_breakpoint.exit, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %find_hw_breakpoint.exit ], [ -2, %bb.c ], [ -2, %bb.a ], [ -2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @kvm_arch_remove_all_gdbstub_hw_breakpoints() local_unnamed_addr #21 {
bb.a:
  store i32 0, ptr @nb_hw_breakpoint, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @kvm_arch_update_guest_debug(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @kvm_sw_breakpoints_active(ptr noundef %0) #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8
  %i.c = or i32 %i.b, 65537
  store i32 %i.c, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr @nb_hw_breakpoint, align 4 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %1, align 8
  %i.g = or i32 %i.f, 131073
  store i32 %i.g, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store i64 1536, ptr %i.i, align 8
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv ; 3 uses
  %i.k = load i64, ptr %i.j, align 16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store i64 %i.k, ptr %i.l, align 8
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.m = shl i32 %indvars.iv.tr, 1
  %i.n = shl i32 2, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @__const.kvm_arch_update_guest_debug.type_code, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %3 = shl i32 %2, 2                              ; 2 uses
  %i.u = add i32 %3, 16
  %i.v = shl i32 %i.t, %i.u
  %i.w = or i32 %i.v, %i.n
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr @__const.kvm_arch_update_guest_debug.len_code, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %3, 18
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = or i32 %i.w, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = load i64, ptr %i.i, align 8
  %i.ai = or i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.i, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !56

.loopexit:                                        ; preds = %bb.e, %bb.c
  ret void
}

declare i32 @kvm_sw_breakpoints_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @kvm_enable_sgx_provisioning(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.kvm_enable_cap, align 8     ; 6 uses
  %.b = load i1, ptr @kvm_enable_sgx_provisioning._memorized, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @has_sgx_provisioning, align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store i1 true, ptr @kvm_enable_sgx_provisioning._memorized, align 1
  %i.c = tail call i32 @kvm_vm_check_extension(ptr noundef %0, i32 noundef 196) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %__kvm_enable_sgx_provisioning.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, i32, ...) @qemu_open_old(ptr noundef nonnull @.str.211, i32 noundef 0) #29 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %__kvm_enable_sgx_provisioning.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 104, i1 false)
  store i32 196, ptr %1, align 8
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = call i32 (ptr, i64, ...) @kvm_vm_ioctl(ptr noundef %0, i64 noundef 1080602275, ptr noundef nonnull %1) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %.not16.i = icmp eq i32 %i.h, 0
  br i1 %.not16.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = sub i32 0, %i.h
  %i.j = call ptr @strerror(i32 noundef %i.i) #29
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.212, ptr noundef %i.j) #29
  call void @exit(i32 noundef 1) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = call i32 @close(i32 noundef %i.d) #29    ; 0 uses
  br label %__kvm_enable_sgx_provisioning.exit

__kvm_enable_sgx_provisioning.exit:               ; preds = %bb.c, %bb.d, %bb.g
  %.0.i = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ false, %bb.d ] ; 2 uses
  %i.l = zext i1 %.0.i to i8
  store i8 %i.l, ptr @has_sgx_provisioning, align 1
  br label %bb.h

bb.h:                                             ; preds = %__kvm_enable_sgx_provisioning.exit, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ %.0.i, %__kvm_enable_sgx_provisioning.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @kvm_arch_handle_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.kvm_pre_fault_memory, align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  switch i32 %i.e, label %bb.co [
    i32 5, label %bb.b
    i32 11, label %kvm_handle_hypercall.exit
    i32 12, label %bb.f
    i32 9, label %bb.g
    i32 1, label %bb.i
    i32 4, label %bb.j
    i32 27, label %bb.ai
    i32 26, label %bb.aj
    i32 33, label %kvm_handle_hypercall.exit
    i32 37, label %bb.ak
    i32 29, label %bb.ao
    i32 30, label %bb.bh
    i32 34, label %bb.ca
    i32 3, label %bb.cb
    i32 24, label %bb.ci
    i32 40, label %bb.ck
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.18, i32 noundef 6543) #29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.g = load atomic i32, ptr %i.f acquire, align 16
  %i.h = and i32 %i.g, 2
  %.not6.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16760
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 512
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %kvm_handle_halt.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load atomic i32, ptr %i.f acquire, align 16
  %i.m = and i32 %i.l, 512
  %.not7.i = icmp eq i32 %i.m, 0
  br i1 %.not7.i, label %bb.e, label %kvm_handle_halt.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 700
  store i32 1, ptr %i.n, align 4
  br label %kvm_handle_halt.exit

kvm_handle_halt.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 65537, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  tail call void @bql_unlock() #29
  br label %kvm_handle_hypercall.exit

bb.f:                                             ; preds = %bb.a
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.18, i32 noundef 6551) #29
  %i.o = getelementptr i8, ptr %i.c, i64 640
  %.val = load ptr, ptr %i.o, align 16            ; 2 uses
  %i.p = getelementptr i8, ptr %i.c, i64 32960
  %.val39 = load ptr, ptr %i.p, align 16
  %i.q = getelementptr i8, ptr %.val, i64 32
  %.val.val = load i64, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %.val, i64 40
  %.val.val40 = load i32, ptr %i.r, align 8
  %.not.i41 = icmp ne i32 %.val.val40, 0
  %i.s = zext i1 %.not.i41 to i32
  tail call void @apic_handle_tpr_access_report(ptr noundef %.val39, i64 noundef %.val.val, i32 noundef %i.s) #29
  tail call void @bql_unlock() #29
  br label %kvm_handle_hypercall.exit

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = load ptr, ptr @stderr, align 8
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.v, i32 noundef 1, ptr noundef nonnull @.str.77, i64 noundef %i.u) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 0, ptr %i.a, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 0, ptr %i.b, align 4, !annotation !16
  call void @host_cpuid(i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #29
  %i.x = load i32, ptr %i.a, align 4
  %i.y = and i32 %i.x, 32
  %i.z = icmp ne i32 %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.aa = icmp eq i64 %i.u, 2147483681
  %or.cond = and i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.h, label %kvm_handle_hypercall.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @stderr, align 8
  %i.ac = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ab, i32 noundef 1, ptr noundef nonnull @.str.78) #29 ; 0 uses
  br label %kvm_handle_hypercall.exit

bb.i:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr @stderr, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ad, i32 noundef 1, ptr noundef nonnull @.str.79, i32 noundef %i.af, i32 noundef %i.ah) #29 ; 0 uses
  br label %kvm_handle_hypercall.exit

bb.j:                                             ; preds = %bb.a
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.18, i32 noundef 6579) #29
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16496
  %i.al = load i32, ptr %i.aj, align 8
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %bb.af

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = and i64 %i.ao, 16384
  %.not26.i = icmp eq i64 %i.ap, 0
  br i1 %.not26.i, label %.preheader.i, label %bb.l

.preheader.i:                                     ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 600 ; 8 uses
  %i.as = and i64 %i.ao, 1
end_hunk_0
