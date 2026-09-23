Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/kvm?download=true
inline.NumInlined: 610
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@kvm_msr_energy_thread_init:bb.a
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.185) #29
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @is_rapl_enabled() #29
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @vmsr_init_topo_info(ptr noundef nonnull %i.f, ptr noundef %1) #29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 %i.k, ptr %i.l, align 4
  %i.m = zext i32 %i.h to i64
  %i.n = tail call noalias ptr @g_malloc0_n(i64 noundef %i.m, i64 noundef 8) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr %i.q(ptr noundef nonnull %1) #29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr %i.r, ptr %i.s, align 8
  %i.t = tail call i32 @vmsr_get_maxcpus() #29    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 572
  store i32 %i.t, ptr %i.v, align 4
  %i.w = icmp eq i32 %i.t, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.186) #29
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.x = tail call i32 @vmsr_get_max_physical_package(i32 noundef %i.t) #29 ; 3 uses
  store i32 %i.x, ptr %i.u, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.187) #29
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.z = zext i32 %i.x to i64
  %i.aa = tail call noalias ptr @g_malloc0_n(i64 noundef %i.z, i64 noundef 4) #34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.u, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ad, i64 noundef 4) #34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.ab, align 8
  %i.ah = load i32, ptr %i.u, align 8
  %i.ai = tail call i32 @vmsr_count_cpus_per_package(ptr noundef %i.ag, i32 noundef %i.ah) #29 ; 0 uses
  %i.aj = load i32, ptr %i.u, align 8             ; 2 uses
  %.not9597.not = icmp eq i32 %i.aj, 0
  br i1 %.not9597.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ak = load ptr, ptr %i.ab, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.098 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.k ] ; 3 uses
  %i.al = sext i32 %.098 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.188, i32 noundef %.098) #29
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.ap = add nuw i32 %.098, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.aj
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !43

.critedge:                                        ; preds = %bb.k, %bb.h
  %i.aq = tail call i32 @getpid() #29
  store i32 %i.aq, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.au = tail call ptr @vmsr_compute_default_paths() #29 ; 2 uses
  store ptr %i.au, ptr %i.ar, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %i.av = phi ptr [ %i.au, %bb.l ], [ %i.as, %.critedge ]
  %i.aw = tail call ptr @vmsr_open_socket(ptr noundef %i.av) #29 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.189) #29
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.c, align 8
  %i.ba = tail call i64 @vmsr_read_msr(i32 noundef 1542, i32 noundef 0, i32 noundef %i.az, ptr noundef nonnull %i.aw) #29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  store i64 %i.ba, ptr %i.bb, align 8
  %i.bc = load i32, ptr %i.c, align 8
  %i.bd = load ptr, ptr %i.ax, align 8
  %i.be = tail call i64 @vmsr_read_msr(i32 noundef 1552, i32 noundef 0, i32 noundef %i.bc, ptr noundef %i.bd) #29
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = load i32, ptr %i.c, align 8
  %i.bh = load ptr, ptr %i.ax, align 8
  %i.bi = tail call i64 @vmsr_read_msr(i32 noundef 1556, i32 noundef 0, i32 noundef %i.bg, ptr noundef %i.bh) #29 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = load i64, ptr %i.bb, align 8
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr %i.bf, align 8
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = icmp eq i64 %i.bi, 0
  %or.cond = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.190) #29
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 536
  tail call void @qemu_thread_create(ptr noundef nonnull %i.bp, ptr noundef nonnull @.str.191, ptr noundef nonnull @kvm_msr_energy_thread, ptr noundef nonnull %0, i32 noundef 0) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.j, %bb.c, %bb.r, %bb.q, %bb.n, %bb.g, %bb.e, %bb.b
  %.1 = phi i32 [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.n ], [ -1, %bb.q ], [ 0, %bb.r ], [ -1, %bb.j ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.1
}

declare void @kvm_vmfd_add_change_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @kvm_put_apicbase(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 33016      ; 3 uses
  %.val.i = load ptr, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %.val.i, i8 noundef 0, i64 noundef 4096, i1 noundef false) #29
  %.val5.i = load ptr, ptr %i.a, align 8          ; 3 uses
  %i.b = load i32, ptr %.val5.i, align 8          ; 3 uses
  %.not.i.i = icmp ugt i32 %i.b, 254
  br i1 %.not.i.i, label %bb.b, label %kvm_put_one_msr.exit

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_put_one_msr.exit:                             ; preds = %bb.a
  %i.c = shl nuw nsw i32 %i.b, 4
  %.idx.i.i = zext nneg i32 %i.c to i64
  %i.d = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.idx.i.i ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 27, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %1, ptr %i.g, align 8
  %i.h = add nuw nsw i32 %i.b, 1
  store i32 %i.h, ptr %.val5.i, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = tail call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %0, i64 noundef 1074310793, ptr noundef %i.i) #29
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %kvm_put_one_msr.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.18, i32 noundef 3899, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_put_apicbase) #31
  unreachable

bb.d:                                             ; preds = %kvm_put_one_msr.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @kvm_arch_put_registers(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.kvm_mp_state, align 4       ; 4 uses
  %4 = alloca %struct.kvm_vcpu_events, align 8    ; 26 uses
  %5 = alloca %struct.kvm_xcrs, align 8           ; 8 uses
  %6 = alloca %struct.kvm_regs, align 8           ; 13 uses
  %7 = alloca %struct.kvm_sregs, align 8          ; 155 uses
  %8 = alloca %struct.kvm_sregs2, align 8         ; 157 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29 ; 172 uses
  %i.b = tail call zeroext i1 @cpu_is_stopped(ptr noundef %0) #29
  %.sink36.i.sroa.gep = getelementptr inbounds nuw i8, ptr %8, i64 142
  %.sink36.i.sroa.gep100 = getelementptr inbounds nuw i8, ptr %8, i64 138 ; 2 uses
  %.sink29.i.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 142
  %.sink29.i.sroa.gep101 = getelementptr inbounds nuw i8, ptr %7, i64 138 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @qemu_cpu_is_self(ptr noundef %0) #29
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.18, i32 noundef 5721, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_arch_put_registers) #31
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.d = icmp ugt i32 %1, 1                       ; 4 uses
  %i.e = load i8, ptr @has_msr_feature_control, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond109 = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond109, label %bb.e, label %kvm_put_msr_feature_control.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28152
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.a, i64 33016    ; 3 uses
  %.val.i.i = load ptr, ptr %i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %.val.i.i, i8 noundef 0, i64 noundef 4096, i1 noundef false) #29
  %.val5.i.i = load ptr, ptr %i.i, align 8        ; 3 uses
  %i.j = load i32, ptr %.val5.i.i, align 8        ; 3 uses
  %.not.i.i.i = icmp ugt i32 %i.j, 254
  br i1 %.not.i.i.i, label %bb.f, label %kvm_put_one_msr.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_put_one_msr.exit.i:                           ; preds = %bb.e
  %i.k = shl nuw nsw i32 %i.j, 4
  %.idx.i.i.i = zext nneg i32 %i.k to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %.idx.i.i.i ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 58, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.h, ptr %i.o, align 8
  %i.p = add nuw nsw i32 %i.j, 1
  store i32 %i.p, ptr %.val5.i.i, align 8
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = tail call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 1074310793, ptr noundef %i.q) #29 ; 4 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %kvm_put_msr_feature_control.exit, label %bb.g

bb.g:                                             ; preds = %kvm_put_one_msr.exit.i
  %i.t = icmp eq i32 %i.r, 1
  br i1 %i.t, label %kvm_put_msr_feature_control.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.18, i32 noundef 3940, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_put_msr_feature_control) #31
  unreachable

kvm_put_msr_feature_control.exit:                 ; preds = %kvm_put_one_msr.exit.i
  %i.u = sub i32 0, %i.r
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5731, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.u, ptr noundef nonnull @.str.47) #29
  br label %bb.bf

kvm_put_msr_feature_control.exit.thread:          ; preds = %bb.g, %bb.d
  %i.v = load i32, ptr @has_sregs2, align 4
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %kvm_put_msr_feature_control.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 280 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %8, i8 0, i64 320, i1 false)
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 131072
  %.not.i = icmp eq i64 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16808 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16832 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i16 %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16840
  %i.ag = load i64, ptr %i.af, align 8
  store i64 %i.ag, ptr %8, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16848
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 14
  store i8 3, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 15
  store i8 1, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 3, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 18
  store i8 1, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16880
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = trunc i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i16 %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16888
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.ao, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16896
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 38
  store i8 3, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 39
  store i8 1, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i8 3, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 42
  store i8 1, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bd = load i32, ptr %i.aa, align 8
  %i.be = trunc i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i16 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16816
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %i.bc, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16824
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i32 %i.bj, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 62
  store i8 3, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 63
  store i8 1, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i8 3, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 66
  store i8 1, ptr %i.bo, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16904
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = trunc i32 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 84
  store i16 %i.bs, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 16912
  %i.bv = load i64, ptr %i.bu, align 8
  store i64 %i.bv, ptr %i.bp, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16920
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i32 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 86
  store i8 3, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 87
  store i8 1, ptr %i.ca, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i8 3, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 90
  store i8 1, ptr %i.cc, align 2
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16928
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = trunc i32 %i.cf to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 108
  store i16 %i.cg, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16936
  %i.cj = load i64, ptr %i.ci, align 8
  store i64 %i.cj, ptr %i.cd, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16944
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 110
  store i8 3, ptr %i.cn, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 111
  store i8 1, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 112
  store i8 3, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 114
  store i8 1, ptr %i.cq, align 2
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 16856
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 132
  store i16 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16864
  %i.cx = load i64, ptr %i.cw, align 8
  store i64 %i.cx, ptr %i.cr, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 16872
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i32 %i.cz, ptr %i.da, align 8
end_hunk_0
begin_hunk_1_@kvm_arch_put_registers:bb.a
  %i.aiv = getelementptr inbounds nuw i8, ptr %7, i64 176
  store i32 %i.aiu, ptr %i.aiv, align 8
  %i.aiw = lshr i32 %i.ain, 8
  %i.aix = trunc i32 %i.aiw to i8
  %i.aiy = and i8 %i.aix, 15
  %i.aiz = getelementptr inbounds nuw i8, ptr %7, i64 182
  store i8 %i.aiy, ptr %i.aiz, align 2
  %i.aja = lshr i32 %i.ain, 15
  %i.ajb = trunc i32 %i.aja to i8
  %i.ajc = and i8 %i.ajb, 1                       ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %7, i64 183
  store i8 %i.ajc, ptr %i.ajd, align 1
  %i.aje = lshr i32 %i.ain, 13
  %i.ajf = trunc i32 %i.aje to i8
  %i.ajg = and i8 %i.ajf, 3
  %i.ajh = getelementptr inbounds nuw i8, ptr %7, i64 184
  store i8 %i.ajg, ptr %i.ajh, align 8
  %i.aji = lshr i32 %i.ain, 22
  %i.ajj = trunc i32 %i.aji to i8
  %i.ajk = and i8 %i.ajj, 1
  %i.ajl = getelementptr inbounds nuw i8, ptr %7, i64 185
  store i8 %i.ajk, ptr %i.ajl, align 1
  %i.ajm = lshr i32 %i.ain, 12
  %i.ajn = trunc i32 %i.ajm to i8
  %i.ajo = and i8 %i.ajn, 1
  %i.ajp = getelementptr inbounds nuw i8, ptr %7, i64 186
  store i8 %i.ajo, ptr %i.ajp, align 2
  %i.ajq = lshr i32 %i.ain, 21
  %i.ajr = trunc i32 %i.ajq to i8
  %i.ajs = and i8 %i.ajr, 1
  %i.ajt = getelementptr inbounds nuw i8, ptr %7, i64 187
  store i8 %i.ajs, ptr %i.ajt, align 1
  %i.aju = lshr i32 %i.ain, 23
  %i.ajv = trunc i32 %i.aju to i8
  %i.ajw = and i8 %i.ajv, 1
  %i.ajx = getelementptr inbounds nuw i8, ptr %7, i64 188
  store i8 %i.ajw, ptr %i.ajx, align 4
  %i.ajy = lshr i32 %i.ain, 20
  %i.ajz = trunc i32 %i.ajy to i8
  %i.aka = and i8 %i.ajz, 1
  %i.akb = getelementptr inbounds nuw i8, ptr %7, i64 189
  store i8 %i.aka, ptr %i.akb, align 1
  %i.akc = xor i8 %i.ajc, 1
  %i.akd = getelementptr inbounds nuw i8, ptr %7, i64 190
  store i8 %i.akc, ptr %i.akd, align 2
  %i.ake = getelementptr inbounds nuw i8, ptr %7, i64 191
  store i8 0, ptr %i.ake, align 1
  %i.akf = getelementptr inbounds nuw i8, ptr %i.a, i64 17040
  %i.akg = load i32, ptr %i.akf, align 16
  %i.akh = trunc i32 %i.akg to i16
  %i.aki = getelementptr inbounds nuw i8, ptr %7, i64 208
  %i.akj = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i16 %i.akh, ptr %i.akj, align 8
  %i.akk = getelementptr inbounds nuw i8, ptr %i.a, i64 17032
  %i.akl = load i64, ptr %i.akk, align 8
  store i64 %i.akl, ptr %i.aki, align 8
  %i.akm = getelementptr inbounds nuw i8, ptr %7, i64 218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.akm, i8 noundef 0, i64 noundef 6, i1 noundef false) #29
  %i.akn = getelementptr inbounds nuw i8, ptr %i.a, i64 17016
  %i.ako = load i32, ptr %i.akn, align 8
  %i.akp = trunc i32 %i.ako to i16
  %i.akq = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.akr = getelementptr inbounds nuw i8, ptr %7, i64 200
  store i16 %i.akp, ptr %i.akr, align 8
  %i.aks = getelementptr inbounds nuw i8, ptr %i.a, i64 17008
  %i.akt = load i64, ptr %i.aks, align 16
  store i64 %i.akt, ptr %i.akq, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %7, i64 202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.aku, i8 noundef 0, i64 noundef 6, i1 noundef false) #29
  %i.akv = getelementptr inbounds nuw i8, ptr %i.a, i64 17048
  %i.akw = load i64, ptr %i.akv, align 8
  %i.akx = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i64 %i.akw, ptr %i.akx, align 8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.a, i64 17064
  %i.akz = getelementptr inbounds nuw i8, ptr %7, i64 232
  %i.ala = load <2 x i64>, ptr %i.aky, align 8
  store <2 x i64> %i.ala, ptr %i.akz, align 8
  %i.alb = getelementptr inbounds nuw i8, ptr %i.a, i64 17080
  %i.alc = load i64, ptr %i.alb, align 8
  %i.ald = getelementptr inbounds nuw i8, ptr %7, i64 248
  store i64 %i.alc, ptr %i.ald, align 8
  %i.ale = getelementptr inbounds nuw i8, ptr %i.a, i64 32960 ; 2 uses
  %i.alf = load ptr, ptr %i.ale, align 16
  %i.alg = tail call zeroext i8 @cpu_get_apic_tpr(ptr noundef %i.alf) #29
  %i.alh = zext i8 %i.alg to i64
  %i.ali = getelementptr inbounds nuw i8, ptr %7, i64 256
  store i64 %i.alh, ptr %i.ali, align 8
  %i.alj = load ptr, ptr %i.ale, align 16
  %i.alk = tail call i64 @cpu_get_apic_base(ptr noundef %i.alj) #29
  %i.all = getelementptr inbounds nuw i8, ptr %7, i64 272
  store i64 %i.alk, ptr %i.all, align 8
  %i.alm = getelementptr inbounds nuw i8, ptr %i.a, i64 17224
  %i.aln = load i64, ptr %i.alm, align 8
  %i.alo = getelementptr inbounds nuw i8, ptr %7, i64 264
  store i64 %i.aln, ptr %i.alo, align 8
  %i.alp = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 1094233732, ptr noundef nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.p

bb.p:                                             ; preds = %kvm_put_sregs.exit, %kvm_put_sregs2.exit
  %i.alq = phi i32 [ %i.sw, %kvm_put_sregs2.exit ], [ %i.alp, %kvm_put_sregs.exit ] ; 3 uses
  %i.alr = icmp slt i32 %i.alq, 0
  br i1 %i.alr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.als = sub i32 0, %i.alq
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5739, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.als, ptr noundef nonnull @.str.48) #29
  br label %bb.bf

bb.r:                                             ; preds = %bb.p
  br i1 %i.d, label %bb.s, label %.thread104

bb.s:                                             ; preds = %bb.r
  %i.alt = call i32 @kvm_max_nested_state_length() #29
  %i.alu = getelementptr inbounds nuw i8, ptr %i.a, i64 31392 ; 4 uses
  %i.alv = load ptr, ptr %i.alu, align 16         ; 3 uses
  %.not.i93 = icmp eq ptr %i.alv, null
  br i1 %.not.i93, label %kvm_put_nested_state.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.alw = getelementptr inbounds nuw i8, ptr %i.a, i64 16800
  %i.alx = load i32, ptr %i.alw, align 16
  %i.aly = load i16, ptr %i.alv, align 8
  %i.alz = and i16 %i.aly, -2
  %i.ama = lshr i32 %i.alx, 21
  %i.amb = trunc nuw nsw i32 %i.ama to i16
  %masksel.i = and i16 %i.amb, 1
  %storemerge.i = or disjoint i16 %masksel.i, %i.alz
  store i16 %storemerge.i, ptr %i.alv, align 8
  %i.amc = getelementptr i8, ptr %i.a, i64 30264
  %.val.i = load i64, ptr %i.amc, align 8
  %i.amd = and i64 %.val.i, 4
  %.not17.i = icmp eq i64 %i.amd, 0
  br i1 %.not17.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ame = getelementptr inbounds nuw i8, ptr %i.a, i64 16804
  %i.amf = load i32, ptr %i.ame, align 4
  %i.amg = and i32 %i.amf, 1
  %.not15.i = icmp eq i32 %i.amg, 0
  br i1 %.not15.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.amh = load ptr, ptr %i.alu, align 16         ; 2 uses
  %i.ami = load i16, ptr %i.amh, align 8
  %i.amj = or i16 %i.ami, 256
  store i16 %i.amj, ptr %i.amh, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.amk = load ptr, ptr %i.alu, align 16         ; 2 uses
  %i.aml = load i16, ptr %i.amk, align 8
  %i.amm = and i16 %i.aml, -257
  store i16 %i.amm, ptr %i.amk, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.amn = load ptr, ptr %i.alu, align 16         ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 4
  %i.amp = load i32, ptr %i.amo, align 4
  %.not16.i = icmp ugt i32 %i.amp, %i.alt
  br i1 %.not16.i, label %bb.y, label %kvm_put_nested_state.exit

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.18, i32 noundef 5667, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_put_nested_state) #31
  unreachable

kvm_put_nested_state.exit:                        ; preds = %bb.x
  %i.amq = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 1082175167, ptr noundef nonnull %i.amn) #29 ; 3 uses
  %i.amr = icmp slt i32 %i.amq, 0
  br i1 %i.amr, label %bb.z, label %kvm_put_nested_state.exit.thread

bb.z:                                             ; preds = %kvm_put_nested_state.exit
  %i.ams = sub i32 0, %i.amq
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5746, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.ams, ptr noundef nonnull @.str.49) #29
  br label %bb.bf

kvm_put_nested_state.exit.thread:                 ; preds = %bb.s, %kvm_put_nested_state.exit
  %i.amt = icmp eq i32 %1, 3
  br i1 %i.amt, label %bb.aa, label %.thread104

bb.aa:                                            ; preds = %kvm_put_nested_state.exit.thread
  %i.amu = call fastcc i32 @kvm_arch_set_tsc_khz(ptr noundef %0) ; 0 uses
  %i.amv = load i32, ptr @xen_mode, align 4
  %i.amw = icmp eq i32 %i.amv, 2
  br i1 %i.amw, label %bb.ab, label %.thread104

bb.ab:                                            ; preds = %bb.aa
  %i.amx = call i32 @kvm_put_xen_state(ptr noundef %0) #29 ; 3 uses
  %i.amy = icmp slt i32 %i.amx, 0
  br i1 %i.amy, label %bb.ac, label %.thread104

bb.ac:                                            ; preds = %bb.ab
  %i.amz = sub i32 0, %i.amx
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5764, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.amz, ptr noundef nonnull @.str.50) #29
  br label %bb.bf

.thread104:                                       ; preds = %bb.r, %kvm_put_nested_state.exit.thread, %bb.ab, %bb.aa
  %i.ana = getelementptr inbounds nuw i8, ptr %i.a, i64 16496
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %9 = load i64, ptr %i.ana, align 8
  store i64 %9, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 16520
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 16504
  %15 = load <2 x i64>, ptr %14, align 8
  store <2 x i64> %15, ptr %13, align 8
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 16544
  %18 = load <2 x i64>, ptr %17, align 8
  store <2 x i64> %18, ptr %16, align 8
  %i.anb = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.anc = getelementptr inbounds nuw i8, ptr %i.a, i64 16528
  %19 = load <2 x i64>, ptr %i.anc, align 8
  store <2 x i64> %19, ptr %i.anb, align 8
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 16560
  %22 = load <2 x i64>, ptr %21, align 8
  store <2 x i64> %22, ptr %20, align 8
  %i.and = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ane = getelementptr inbounds nuw i8, ptr %i.a, i64 16576
  %23 = load <2 x i64>, ptr %i.ane, align 8
  store <2 x i64> %23, ptr %i.and, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.ang = getelementptr inbounds nuw i8, ptr %i.a, i64 16592
  %24 = load <2 x i64>, ptr %i.ang, align 8
  store <2 x i64> %24, ptr %i.anf, align 8
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 112
  %26 = getelementptr inbounds nuw i8, ptr %i.a, i64 16608
  %27 = load <2 x i64>, ptr %26, align 8
  store <2 x i64> %27, ptr %25, align 8
  %i.anh = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ani = getelementptr inbounds nuw i8, ptr %i.a, i64 16752
  %i.anj = load <2 x i64>, ptr %i.ani, align 8
  store <2 x i64> %i.anj, ptr %i.anh, align 8
  %i.ank = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 1083223682, ptr noundef nonnull %6) #29 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.anl = icmp slt i32 %i.ank, 0
  br i1 %i.anl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread104
  %i.anm = sub i32 0, %i.ank
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5772, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.anm, ptr noundef nonnull @.str.51) #29
  br label %bb.bf

bb.ae:                                            ; preds = %.thread104
  %i.ann = getelementptr inbounds nuw i8, ptr %i.a, i64 31376
  %i.ano = load ptr, ptr %i.ann, align 16         ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.a, i64 31384
  %i.anq = load i32, ptr %i.anp, align 8
  call void @x86_cpu_xsave_all_areas(ptr noundef nonnull %i.a, ptr noundef %i.ano, i32 noundef %i.anq) #29
  %i.anr = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 1342221989, ptr noundef %i.ano) #29 ; 3 uses
  %i.ans = icmp slt i32 %i.anr, 0
  br i1 %i.ans, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ant = sub i32 0, %i.anr
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5777, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.ant, ptr noundef nonnull @.str.52) #29
  br label %bb.bf

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.anu = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.anu, i8 0, i64 384, i1 false)
  %i.anv = load i32, ptr @has_xcrs, align 4
  %.not.i95 = icmp eq i32 %i.anv, 0
  br i1 %.not.i95, label %kvm_put_xcrs.exit.thread, label %kvm_put_xcrs.exit

kvm_put_xcrs.exit.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.ai

kvm_put_xcrs.exit:                                ; preds = %bb.ag
  store i32 1, ptr %5, align 8
  %i.anw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.anw, align 4
  %i.anx = getelementptr inbounds nuw i8, ptr %i.a, i64 28128
  %i.any = load i64, ptr %i.anx, align 16
  %i.anz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.any, ptr %i.anz, align 8
  %i.aoa = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 1099476647, ptr noundef nonnull %5) #29 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.aob = icmp slt i32 %i.aoa, 0
  br i1 %i.aob, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %kvm_put_xcrs.exit
  %i.aoc = sub i32 0, %i.aoa
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5782, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.aoc, ptr noundef nonnull @.str.53) #29
  br label %bb.bf

bb.ai:                                            ; preds = %kvm_put_xcrs.exit.thread, %kvm_put_xcrs.exit
  %i.aod = call fastcc i32 @kvm_put_msrs(ptr noundef nonnull %i.a, i32 noundef %1) ; 3 uses
  %i.aoe = icmp slt i32 %i.aod, 0
  br i1 %i.aoe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aof = sub i32 0, %i.aod
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5787, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.aof, ptr noundef nonnull @.str.54) #29
  br label %bb.bf

bb.ak:                                            ; preds = %bb.ai
  %i.aog = getelementptr inbounds nuw i8, ptr %i.a, i64 30232
  %i.aoh = load i64, ptr %i.aog, align 8
  %i.aoi = and i64 %i.aoh, 128
  %.not.i97 = icmp eq i64 %i.aoi, 0
  br i1 %.not.i97, label %kvm_put_kvm_regs.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.a, i64 28096
  %i.aok = call i32 @kvm_set_one_reg(ptr noundef nonnull %i.a, i64 noundef 2319353820980707328, ptr noundef nonnull %i.aoj) #29 ; 3 uses
  %i.aol = icmp slt i32 %i.aok, 0
  br i1 %i.aol, label %bb.am, label %kvm_put_kvm_regs.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.aom = sub i32 0, %i.aok
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 5792, ptr noundef nonnull @__func__.kvm_arch_put_registers, i32 noundef %i.aom, ptr noundef nonnull @.str.55) #29
  br label %bb.bf

kvm_put_kvm_regs.exit.thread:                     ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.aon = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %i.aoo = load i32, ptr @has_exception_payload, align 4
  %.not.i99 = icmp eq i32 %i.aoo, 0
  br i1 %.not.i99, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %kvm_put_kvm_regs.exit.thread
  store i32 16, ptr %i.aon, align 4
  %i.aop = getelementptr inbounds nuw i8, ptr %i.a, i64 31309
  %i.aoq = load i8, ptr %i.aop, align 1
  %i.aor = getelementptr inbounds nuw i8, ptr %4, i64 3
  store i8 %i.aoq, ptr %i.aor, align 1
  %i.aos = getelementptr inbounds nuw i8, ptr %i.a, i64 31312
  %i.aot = load i8, ptr %i.aos, align 16
  %i.aou = getelementptr inbounds nuw i8, ptr %4, i64 55
  store i8 %i.aot, ptr %i.aou, align 1
  %i.aov = getelementptr inbounds nuw i8, ptr %i.a, i64 31320
  %i.aow = load i64, ptr %i.aov, align 8
  %i.aox = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 %i.aow, ptr %i.aox, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %kvm_put_kvm_regs.exit.thread
  %i.aoy = phi i32 [ 16, %bb.an ], [ 0, %kvm_put_kvm_regs.exit.thread ] ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.a, i64 31300
  %i.apa = load i32, ptr %i.aoz, align 4
  %i.apb = trunc i32 %i.apa to i8
  %i.apc = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 %i.apb, ptr %i.apc, align 1
  %i.apd = getelementptr inbounds nuw i8, ptr %i.a, i64 31310
  %i.ape = load i8, ptr %i.apd, align 2
  store i8 %i.ape, ptr %4, align 8
  %i.apf = getelementptr inbounds nuw i8, ptr %i.a, i64 31311
  %i.apg = load i8, ptr %i.apf, align 1
  %i.aph = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i8 %i.apg, ptr %i.aph, align 2
  %i.api = getelementptr inbounds nuw i8, ptr %i.a, i64 29936
  %i.apj = load i32, ptr %i.api, align 16
  %i.apk = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.apj, ptr %i.apk, align 4
  %i.apl = getelementptr inbounds nuw i8, ptr %i.a, i64 31304
  %i.apm = load i32, ptr %i.apl, align 8          ; 2 uses
  %i.apn = icmp sgt i32 %i.apm, -1
  %i.apo = zext i1 %i.apn to i8
  %i.app = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.apo, ptr %i.app, align 8
  %i.apq = trunc i32 %i.apm to i8
  %i.apr = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 %i.apq, ptr %i.apr, align 1
  %i.aps = getelementptr inbounds nuw i8, ptr %i.a, i64 31308
  %i.apt = load i8, ptr %i.aps, align 4
  %i.apu = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i8 %i.apt, ptr %i.apu, align 2
  %i.apv = getelementptr inbounds nuw i8, ptr %i.a, i64 30116
  %i.apw = load i8, ptr %i.apv, align 4
  %i.apx = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 %i.apw, ptr %i.apx, align 4
  %i.apy = getelementptr inbounds nuw i8, ptr %i.a, i64 30117
  %i.apz = load i8, ptr %i.apy, align 1
  %i.aqa = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 %i.apz, ptr %i.aqa, align 1
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.a, i64 16804
  %i.aqc = load i32, ptr %i.aqb, align 4
  %i.aqd = trunc i32 %i.aqc to i8                 ; 2 uses
  %i.aqe = lshr i8 %i.aqd, 2
  %i.aqf = and i8 %i.aqe, 1
  %i.aqg = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i8 %i.aqf, ptr %i.aqg, align 2
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.a, i64 31336
  %i.aqi = load i32, ptr %i.aqh, align 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.aqi, ptr %i.aqj, align 8
  %.b.i = load i1, ptr @has_msr_smbase, align 1
  br i1 %.b.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.aqk = or disjoint i32 %i.aoy, 8              ; 3 uses
  store i32 %i.aqk, ptr %i.aon, align 4
  %i.aql = getelementptr inbounds nuw i8, ptr %i.a, i64 16800
  %i.aqm = load i32, ptr %i.aql, align 16
  %i.aqn = lshr i32 %i.aqm, 19
  %i.aqo = trunc i32 %i.aqn to i8
  %i.aqp = and i8 %i.aqo, 1
  %i.aqq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.aqp, ptr %i.aqq, align 8
  %i.aqr = lshr i8 %i.aqd, 4
  %i.aqs = and i8 %i.aqr, 1
  %i.aqt = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 %i.aqs, ptr %i.aqt, align 2
  %i.aqu = load i8, ptr @kvm_kernel_irqchip, align 1, !range !10, !noundef !11
  %i.aqv = trunc nuw i8 %i.aqu to i1
  br i1 %i.aqv, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.aqx = load i32, ptr %i.aqw, align 16
  %i.aqy = trunc i32 %i.aqx to i8
  %i.aqz = and i8 %i.aqy, 64
  %i.ara = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 %i.aqz, ptr %i.ara, align 1
  %i.arb = getelementptr inbounds nuw i8, ptr %4, i64 27
  store i8 0, ptr %i.arb, align 1
  call void @cpu_reset_interrupt(ptr noundef nonnull %i.a, i32 noundef 1088) #29
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.arc = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.arc, align 1
  %i.ard = getelementptr inbounds nuw i8, ptr %4, i64 27
  store i8 0, ptr %i.ard, align 1
  br label %bb.as
end_hunk_1
begin_hunk_2_@kvm_put_msrs:bb.a
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.bhm, i64 8
  store i32 1701, ptr %i.bhn, align 8
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhm, i64 12
  store i32 0, ptr %i.bho, align 4
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhm, i64 16
  store i64 %i.bhk, ptr %i.bhp, align 8
  %i.bhq = add nuw nsw i32 %i.bhi, 1
  store i32 %i.bhq, ptr %.val419, align 8
  %.val418 = load ptr, ptr %i.a, align 8          ; 3 uses
  %i.bhr = load i32, ptr %.val418, align 8        ; 3 uses
  %.not.i866 = icmp ugt i32 %i.bhr, 254
  br i1 %.not.i866, label %bb.hs, label %kvm_msr_entry_add.exit868

bb.hs:                                            ; preds = %kvm_msr_entry_add.exit865
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit868:                        ; preds = %kvm_msr_entry_add.exit865
  %i.bhs = getelementptr inbounds nuw i8, ptr %0, i64 28072
  %i.bht = load i64, ptr %i.bhs, align 8
  %i.bhu = shl nuw nsw i32 %i.bhr, 4
  %.idx.i867 = zext nneg i32 %i.bhu to i64
  %i.bhv = getelementptr inbounds nuw i8, ptr %.val418, i64 %.idx.i867 ; 3 uses
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bhv, i64 8
  store i32 1702, ptr %i.bhw, align 8
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhv, i64 12
  store i32 0, ptr %i.bhx, align 4
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhv, i64 16
  store i64 %i.bht, ptr %i.bhy, align 8
  %i.bhz = add nuw nsw i32 %i.bhr, 1
  store i32 %i.bhz, ptr %.val418, align 8
  %.val417 = load ptr, ptr %i.a, align 8          ; 3 uses
  %i.bia = load i32, ptr %.val417, align 8        ; 3 uses
  %.not.i869 = icmp ugt i32 %i.bia, 254
  br i1 %.not.i869, label %bb.ht, label %kvm_msr_entry_add.exit871

bb.ht:                                            ; preds = %kvm_msr_entry_add.exit868
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit871:                        ; preds = %kvm_msr_entry_add.exit868
  %i.bib = getelementptr inbounds nuw i8, ptr %0, i64 28080
  %i.bic = load i64, ptr %i.bib, align 16
  %i.bid = shl nuw nsw i32 %i.bia, 4
  %.idx.i870 = zext nneg i32 %i.bid to i64
  %i.bie = getelementptr inbounds nuw i8, ptr %.val417, i64 %.idx.i870 ; 3 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 8
  store i32 1703, ptr %i.bif, align 8
  %i.big = getelementptr inbounds nuw i8, ptr %i.bie, i64 12
  store i32 0, ptr %i.big, align 4
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bie, i64 16
  store i64 %i.bic, ptr %i.bih, align 8
  %i.bii = add nuw nsw i32 %i.bia, 1
  store i32 %i.bii, ptr %.val417, align 8
  %i.bij = load i32, ptr @lm_capable_kernel, align 4
  %.not407 = icmp eq i32 %i.bij, 0
  br i1 %.not407, label %bb.hw, label %bb.hu

bb.hu:                                            ; preds = %kvm_msr_entry_add.exit871
  %.val416 = load ptr, ptr %i.a, align 8          ; 3 uses
  %i.bik = load i32, ptr %.val416, align 8        ; 3 uses
  %.not.i872 = icmp ugt i32 %i.bik, 254
  br i1 %.not.i872, label %bb.hv, label %kvm_msr_entry_add.exit874

bb.hv:                                            ; preds = %bb.hu
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit874:                        ; preds = %bb.hu
  %i.bil = getelementptr inbounds nuw i8, ptr %0, i64 28088
  %i.bim = load i64, ptr %i.bil, align 8
  %i.bin = shl nuw nsw i32 %i.bik, 4
  %.idx.i873 = zext nneg i32 %i.bin to i64
  %i.bio = getelementptr inbounds nuw i8, ptr %.val416, i64 %.idx.i873 ; 3 uses
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bio, i64 8
  store i32 1704, ptr %i.bip, align 8
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bio, i64 12
  store i32 0, ptr %i.biq, align 4
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bio, i64 16
  store i64 %i.bim, ptr %i.bir, align 8
  %i.bis = add nuw nsw i32 %i.bik, 1
  store i32 %i.bis, ptr %.val416, align 8
  br label %bb.hw

bb.hw:                                            ; preds = %kvm_msr_entry_add.exit859, %kvm_msr_entry_add.exit874, %kvm_msr_entry_add.exit871, %bb.hl
  %i.bit = load ptr, ptr %i.a, align 8
  %i.biu = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %0, i64 noundef 1074310793, ptr noundef %i.bit) #29 ; 5 uses
  %i.biv = icmp slt i32 %i.biu, 0
  br i1 %i.biv, label %kvm_buf_set_msrs.exit, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.biw = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bix = load i32, ptr %i.biw, align 8          ; 2 uses
  %i.biy = icmp ult i32 %i.biu, %i.bix
  br i1 %i.biy, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biw, i64 8
  %i.bja = zext nneg i32 %i.biu to i64
  %i.bjb = getelementptr inbounds nuw [16 x i8], ptr %i.biz, i64 %i.bja ; 2 uses
  %i.bjc = load i32, ptr %i.bjb, align 8
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjb, i64 8
  %i.bje = load i64, ptr %i.bjd, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.198, i32 noundef %i.bjc, i64 noundef %i.bje) #29
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre13.i = load i32, ptr %.pre.i, align 8
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.bjf = phi i32 [ %.pre13.i, %bb.hy ], [ %i.bix, %bb.hx ]
  %i.bjg = icmp eq i32 %i.biu, %i.bjf
  br i1 %i.bjg, label %kvm_buf_set_msrs.exit, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.18, i32 noundef 4114, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_buf_set_msrs) #31
  unreachable

kvm_buf_set_msrs.exit:                            ; preds = %bb.hw, %bb.hz
  %.0.i = phi i32 [ %i.biu, %bb.hw ], [ 0, %bb.hz ]
  ret i32 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @kvm_put_tscdeadline_msr(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.b = load i1, ptr @has_msr_tsc_deadline, align 1
  br i1 %.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28112
  %i.b = load i64, ptr %i.a, align 16
  %i.c = getelementptr i8, ptr %0, i64 33016      ; 3 uses
  %.val.i = load ptr, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %.val.i, i8 noundef 0, i64 noundef 4096, i1 noundef false) #29
  %.val5.i = load ptr, ptr %i.c, align 8          ; 3 uses
  %i.d = load i32, ptr %.val5.i, align 8          ; 3 uses
  %.not.i.i = icmp ugt i32 %i.d, 254
  br i1 %.not.i.i, label %bb.c, label %kvm_put_one_msr.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_put_one_msr.exit:                             ; preds = %bb.b
  %i.e = shl nuw nsw i32 %i.d, 4
  %.idx.i.i = zext nneg i32 %i.e to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.val5.i, i64 %.idx.i.i ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1760, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.b, ptr %i.i, align 8
  %i.j = add nuw nsw i32 %i.d, 1
  store i32 %i.j, ptr %.val5.i, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = tail call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %0, i64 noundef 1074310793, ptr noundef %i.k) #29 ; 3 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %kvm_put_one_msr.exit
  %i.n = icmp eq i32 %i.l, 1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.18, i32 noundef 3916, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_put_tscdeadline_msr) #31
  unreachable

bb.f:                                             ; preds = %bb.d, %kvm_put_one_msr.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.l, %kvm_put_one_msr.exit ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @kvm_put_debugregs(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.kvm_debugregs, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29952
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 30000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.c, align 16
  store <2 x i64> %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.f, align 8
  %i.g = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef %0, i64 noundef 1082175138, ptr noundef nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i32 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -2147483648, 1) i32 @kvm_arch_get_registers(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.kvm_lapic_state, align 1    ; 6 uses
  %3 = alloca %struct.kvm_sregs, align 8          ; 108 uses
  %4 = alloca %struct.kvm_sregs2, align 8         ; 110 uses
  %5 = alloca %struct.kvm_xcrs, align 8           ; 7 uses
  %6 = alloca %struct.kvm_regs, align 8           ; 15 uses
  %7 = alloca %struct.kvm_mp_state, align 4       ; 6 uses
  %8 = alloca %struct.kvm_vcpu_events, align 8    ; 25 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29 ; 131 uses
  %i.b = tail call zeroext i1 @cpu_is_stopped(ptr noundef %0) #29
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @qemu_cpu_is_self(ptr noundef %0) #29
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.18, i32 noundef 5826, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_arch_get_registers) #31
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %i.d = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef %i.a, i64 noundef 2151722655, ptr noundef nonnull %8) #29 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i32 %i.g, 16
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 3
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 55
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 31320
  store i64 %i.n, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink40.i = phi i8 [ %i.j, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %.sink.i = phi i8 [ %i.l, %bb.f ], [ 0, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 31309
  store i8 %.sink40.i, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 31312
  store i8 %.sink.i, ptr %i.q, align 16
  %i.r = load i8, ptr %8, align 8                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 31310
  store i8 %i.r, ptr %i.s, align 2
  %.not30.i = icmp eq i8 %.sink40.i, 0
  %.not31.i = icmp eq i8 %i.r, 0
  %or.cond.i = select i1 %.not30.i, i1 %.not31.i, i1 false
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = select i1 %or.cond.i, i32 -1, i32 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 31300
  store i32 %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 2
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 31311
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 29936
  store i32 %i.ac, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i8, ptr %i.ae, align 8
  %.not32.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 9
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = select i1 %.not32.i, i32 -1, i32 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 31304
  store i32 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 10
  %i.am = load i8, ptr %i.al, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 31308
  store i8 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 30116
  store i8 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 13
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 30117
  store i8 %i.as, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 14
  %i.av = load i8, ptr %i.au, align 2
  %.not33.i = icmp eq i8 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16804 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, -5
  %masksel.i = select i1 %.not33.i, i32 0, i32 4
  %.sink42.i = or disjoint i32 %i.ay, %masksel.i  ; 2 uses
  store i32 %.sink42.i, ptr %i.aw, align 4
  %i.az = and i32 %i.g, 8
  %.not34.i = icmp eq i32 %i.az, 0
  br i1 %.not34.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bb = load i8, ptr %i.ba, align 8
  %.not35.i = icmp eq i8 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16800 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 16
  %i.be = and i32 %i.bd, -524289
  %masksel45.i = select i1 %.not35.i, i32 0, i32 524288
  %.sink43.i = or disjoint i32 %i.be, %masksel45.i
  store i32 %.sink43.i, ptr %i.bc, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 25
  %i.bg = load i8, ptr %i.bf, align 1
  %.not36.i = icmp eq i8 %i.bg, 0
  br i1 %.not36.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @cpu_interrupt(ptr noundef nonnull %i.a, i32 noundef 64) #29
  %.pre = load i32, ptr %i.aw, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = phi i32 [ %.pre, %bb.i ], [ %.sink42.i, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 26
  %i.bj = load i8, ptr %i.bi, align 2
  %.not37.i = icmp eq i8 %i.bj, 0
  %i.bk = and i32 %i.bh, -17
  %masksel46.i = select i1 %.not37.i, i32 0, i32 16
  %.sink44.i = or disjoint i32 %i.bk, %masksel46.i
  store i32 %.sink44.i, ptr %i.aw, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 27
  %i.bm = load i8, ptr %i.bl, align 1
  %.not38.i = icmp eq i8 %i.bm, 0
  br i1 %.not38.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @cpu_interrupt(ptr noundef nonnull %i.a, i32 noundef 1024) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g
  %i.bn = load i32, ptr %i.f, align 4
  %i.bo = and i32 %i.bn, 32
  %.not39.i = icmp eq i32 %i.bo, 0
  br i1 %.not39.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.bq = load i8, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 31328
  store i8 %i.bq, ptr %i.br, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.bs = sub i32 0, %i.d
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 5830, ptr noundef nonnull @__func__.kvm_arch_get_registers, i32 noundef %i.bs, ptr noundef nonnull @.str.61) #29
  br label %bb.bd

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 31336
  store i32 %i.bu, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 0, ptr %7, align 4, !annotation !13
  %i.bw = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 2147790488, ptr noundef nonnull %7) #29 ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %7, align 4               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 31296
  store i32 %i.by, ptr %i.bz, align 16
  %i.ca = load i8, ptr @kvm_kernel_irqchip, align 1, !range !10, !noundef !11
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cc = icmp eq i32 %i.by, 3
  %i.cd = zext i1 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 700
  store i32 %i.cd, ptr %i.ce, align 4
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cf = sub i32 0, %i.bw
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 5839, ptr noundef nonnull @__func__.kvm_arch_get_registers, i32 noundef %i.cf, ptr noundef nonnull @.str.62) #29
  br label %bb.bd

bb.s:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16496 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %6, i8 0, i64 144, i1 false), !annotation !13
  %i.ch = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 2156965505, ptr noundef nonnull %6) #29 ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.cj = sub i32 0, %i.ch
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 5844, ptr noundef nonnull @__func__.kvm_arch_get_registers, i32 noundef %i.cj, ptr noundef nonnull @.str.63) #29
  br label %bb.bd

bb.u:                                             ; preds = %bb.s
  %9 = load i64, ptr %6, align 8
  store i64 %9, ptr %i.cg, align 16
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 16520
  %12 = load i64, ptr %10, align 8
  store i64 %12, ptr %11, align 8
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 16504
  %15 = load <2 x i64>, ptr %13, align 8
  store <2 x i64> %15, ptr %14, align 8
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %i.a, i64 16544
  %18 = load <2 x i64>, ptr %16, align 8
  store <2 x i64> %18, ptr %17, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16528
  %19 = load <2 x i64>, ptr %i.ck, align 8
  store <2 x i64> %19, ptr %i.cl, align 16
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 64
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 16560
  %22 = load <2 x i64>, ptr %20, align 8
  store <2 x i64> %22, ptr %21, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16576
  %23 = load <2 x i64>, ptr %i.cm, align 8
  store <2 x i64> %23, ptr %i.cn, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 16592
  %24 = load <2 x i64>, ptr %i.co, align 8
  store <2 x i64> %24, ptr %i.cp, align 16
  %25 = getelementptr inbounds nuw i8, ptr %6, i64 112
  %26 = getelementptr inbounds nuw i8, ptr %i.a, i64 16608
  %27 = load <2 x i64>, ptr %25, align 8
  store <2 x i64> %27, ptr %26, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16752
  %i.cs = load <2 x i64>, ptr %i.cq, align 8
  store <2 x i64> %i.cs, ptr %i.cr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 31376
  %i.cu = load ptr, ptr %i.ct, align 16           ; 2 uses
  %i.cv = load i32, ptr @has_xsave2, align 4
  %.not.i66 = icmp eq i32 %i.cv, 0
  %i.cw = select i1 %.not.i66, i64 2415963812, i64 2415963855
  %i.cx = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef %i.cw, ptr noundef %i.cu) #29 ; 3 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = sub i32 0, %i.cx
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 5849, ptr noundef nonnull @__func__.kvm_arch_get_registers, i32 noundef %i.cz, ptr noundef nonnull @.str.64) #29
  br label %bb.bd

bb.w:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 31384
  %i.db = load i32, ptr %i.da, align 8
  call void @x86_cpu_xrstor_all_areas(ptr noundef nonnull %i.a, ptr noundef %i.cu, i32 noundef %i.db) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.dc = load i32, ptr @has_xcrs, align 4
  %.not.i68 = icmp eq i32 %i.dc, 0
  br i1 %.not.i68, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %5, i8 0, i64 392, i1 false), !annotation !13
  %i.dd = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef nonnull %i.a, i64 noundef 2173218470, ptr noundef nonnull %5) #29 ; 3 uses
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.ab, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %i.df = load i32, ptr %5, align 8               ; 2 uses
  %.not12.i = icmp eq i32 %i.df, 0
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.dh = add nuw i32 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dh, %i.df
  br i1 %exitcond.not.i, label %.loopexit, label %bb.z, !llvm.loop !50

bb.z:                                             ; preds = %bb.y, %.lr.ph.i
  %.011.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dh, %bb.y ] ; 2 uses
  %i.di = sext i32 %.011.i to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.dg, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 28128
  store i64 %i.dn, ptr %i.do, align 16
  br label %.loopexit

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.dp = sub i32 0, %i.dd
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 5854, ptr noundef nonnull @__func__.kvm_arch_get_registers, i32 noundef %i.dp, ptr noundef nonnull @.str.65) #29
  br label %bb.bd

.loopexit:                                        ; preds = %bb.y, %bb.w, %bb.aa, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.dq = load i32, ptr @has_sregs2, align 4
  %.not = icmp eq i32 %i.dq, 0
  br i1 %.not, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %4, i8 0, i64 320, i1 false), !annotation !13
  %i.dr = call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef %i.a, i64 noundef 2168499916, ptr noundef nonnull %4) #29 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %kvm_get_sregs2.exit, label %get_seg.exit.i

get_seg.exit.i:                                   ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 16808
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 16832
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dw = load i16, ptr %i.dv, align 4
  %i.dx = zext i16 %i.dw to i32
  store i32 %i.dx, ptr %i.du, align 16
  %i.dy = load i64, ptr %4, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 16840
  store i64 %i.dy, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 16848
  store i32 %i.eb, ptr %i.ec, align 16
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.ee = load i8, ptr %i.ed, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.eg = load i8, ptr %i.ef, align 1
  %.not.i.i = icmp eq i8 %i.eg, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ei = load i8, ptr %i.eh, align 2
  %.not16.i.i = icmp ne i8 %i.ei, 0
  %i.ej = select i1 %.not.i.i, i1 true, i1 %.not16.i.i
  %i.ek = select i1 %i.ej, i32 0, i32 32768
  %i.el = zext i8 %i.ee to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = or i32 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ep = load i8, ptr %i.eo, align 8
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 13
  %i.es = or i32 %i.en, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 22
  %i.ex = or disjoint i32 %i.es, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.ez = load i8, ptr %i.ey, align 2
  %i.fa = zext i8 %i.ez to i32
  %i.fb = shl nuw nsw i32 %i.fa, 12
  %i.fc = or i32 %i.ex, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 19
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 21
  %i.fh = or i32 %i.fc, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fj = load i8, ptr %i.fi, align 4
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw nsw i32 %i.fk, 23
  %i.fm = or i32 %i.fh, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 20
  %i.fr = or i32 %i.fm, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 16852
  store i32 %i.fr, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 16880
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.fw = load i16, ptr %i.fv, align 4
  %i.fx = zext i16 %i.fw to i32
  store i32 %i.fx, ptr %i.ft, align 16
  %i.fy = load i64, ptr %i.fu, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 16888
  store i64 %i.fy, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gb = load i32, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 16896
  store i32 %i.gb, ptr %i.gc, align 16
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 38
  %i.ge = load i8, ptr %i.gd, align 2
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 39
  %i.gg = load i8, ptr %i.gf, align 1
  %.not.i35.i = icmp eq i8 %i.gg, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 46
  %i.gi = load i8, ptr %i.gh, align 2
  %.not16.i36.i = icmp ne i8 %i.gi, 0
  %i.gj = select i1 %.not.i35.i, i1 true, i1 %.not16.i36.i
  %i.gk = select i1 %i.gj, i32 0, i32 32768
  %i.gl = zext i8 %i.ge to i32
  %i.gm = shl nuw nsw i32 %i.gl, 8
  %i.gn = or i32 %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gp = load i8, ptr %i.go, align 8
  %i.gq = zext i8 %i.gp to i32
  %i.gr = shl nuw nsw i32 %i.gq, 13
  %i.gs = or i32 %i.gn, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 41
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 22
  %i.gx = or disjoint i32 %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 42
  %i.gz = load i8, ptr %i.gy, align 2
  %i.ha = zext i8 %i.gz to i32
  %i.hb = shl nuw nsw i32 %i.ha, 12
  %i.hc = or i32 %i.gx, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 43
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = zext i8 %i.he to i32
  %i.hg = shl nuw nsw i32 %i.hf, 21
  %i.hh = or i32 %i.hc, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.hj = load i8, ptr %i.hi, align 4
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 23
  %i.hm = or i32 %i.hh, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 45
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = zext i8 %i.ho to i32
  %i.hq = shl nuw nsw i32 %i.hp, 20
  %i.hr = or i32 %i.hm, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 16900
  store i32 %i.hr, ptr %i.hs, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 48
end_hunk_2
