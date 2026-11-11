Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mshv-cpu?download=true
inline.NumInlined: 129
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@mshv_arch_init_vcpu:bb.a
  %i.dy = add nuw nsw i64 %.035.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %i.cm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.g, !llvm.loop !27

init_cpuid2.exit:                                 ; preds = %register_intercept_result_cpuid_entry.exit.i.i
  call void @g_free(ptr noundef nonnull %i.cp) #11
  %i.dz = icmp sgt i32 %spec.select.i.i, -1
  br i1 %i.dz, label %bb.i, label %bb.h

bb.h:                                             ; preds = %init_cpuid2.exit
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2097, ptr noundef nonnull @__PRETTY_FUNCTION__.mshv_arch_init_vcpu) #13
  unreachable

bb.i:                                             ; preds = %init_cpuid2.exit.thread, %init_cpuid2.exit
  %i.ea = call i32 @mshv_init_msrs(ptr noundef nonnull %0) #11
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2100, ptr noundef nonnull @__PRETTY_FUNCTION__.mshv_arch_init_vcpu) #13
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ec = call ptr @qemu_memalign(i64 noundef 4096, i64 noundef 4096) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 17592186044416, ptr %2, align 8
  %i.ed = load ptr, ptr %i.h, align 8
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ef, ptr %i.eg, align 8
  %i.eh = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ee, i64 noundef 3222321153, ptr noundef nonnull %2) #11
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %init_lint.exit.thread, label %bb.l

init_lint.exit.thread:                            ; preds = %bb.k
  %i.ej = tail call ptr @__errno_location() #12
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = call ptr @strerror(i32 noundef %i.ek) #11
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.54, ptr noundef %i.el) #11
  call void @qemu_vfree(ptr noundef %i.ec) #11
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.53) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(140) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(140) %i.ec, i64 140, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 140
  %.sroa.5.0.copyload = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 148
  %.sroa.7.0.copyload = load <7 x i32>, ptr %.sroa.7.0..sroa_idx, align 1
  call void @qemu_vfree(ptr noundef nonnull %i.ec) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.em = and <2 x i32> %.sroa.5.0.copyload, <i32 -1, i32 -1793>
  %i.en = or <2 x i32> %i.em, <i32 1792, i32 1024>
  %i.eo = call ptr @qemu_memalign(i64 noundef 4096, i64 noundef 4096) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i64 17592186044416, ptr %1, align 8
  %i.ep = load ptr, ptr %i.h, align 8
  %i.eq = load i32, ptr %i.ep, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(140) %i.eo, ptr noundef nonnull align 8 dereferenceable(140) %.sroa.0, i64 140, i1 false)
  %.sroa.5.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.eo, i64 140
  store <2 x i32> %i.en, ptr %.sroa.5.0..sroa_idx65, align 1
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.eo, i64 148
  store <7 x i32> %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx67, align 1
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.er, ptr %i.es, align 8
  %i.et = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.eq, i64 noundef 3222321154, ptr noundef nonnull %1) #11
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %init_lint.exit, label %bb.n

init_lint.exit:                                   ; preds = %bb.l
  %i.ev = tail call ptr @__errno_location() #12   ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = call ptr @strerror(i32 noundef %i.ew) #11
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.57, ptr noundef %i.ex) #11
  call void @qemu_vfree(ptr noundef nonnull %i.eo) #11
  %i.ey = load i32, ptr %i.ev, align 4
  %i.ez = call ptr @strerror(i32 noundef %i.ey) #11
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.56, ptr noundef %i.ez) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.m

bb.m:                                             ; preds = %init_lint.exit, %init_lint.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2103, ptr noundef nonnull @__PRETTY_FUNCTION__.mshv_arch_init_vcpu) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @qemu_vfree(ptr noundef nonnull %i.eo) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

declare ptr @qemu_memalign(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @warn_report(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @mshv_init_msrs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @mshv_arch_destroy_vcpu(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 31584 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16             ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @munmap(ptr noundef nonnull %i.e, i64 noundef 4096) #11 ; 0 uses
  store ptr null, ptr %i.d, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @g_free(ptr noundef %i.h) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31592 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  store ptr null, ptr %i.i, align 8
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_free(ptr noundef nonnull %i.j) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 31376 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16
  tail call void @qemu_vfree(ptr noundef %i.l) #11
  store ptr null, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 31384
  store i32 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #3

declare void @qemu_vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mshv_get_supported_cpuid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 0, ptr %i.b, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !annotation !9
  call void @host_cpuid(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.d, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = icmp eq i32 %0, -2147483647
  %i.j = icmp eq i32 %2, 1                        ; 3 uses
  %or.cond = and i1 %i.i, %i.j
  %i.k = and i32 %.0, -5
  %spec.select = select i1 %or.cond, i32 %i.k, i32 %.0 ; 2 uses
  %i.l = icmp eq i32 %0, 1
  %or.cond3 = and i1 %i.l, %i.j
  %i.m = and i32 %spec.select, -33
  %.2 = select i1 %or.cond3, i32 %i.m, i32 %spec.select ; 2 uses
  %i.n = icmp eq i32 %0, 7
  %i.o = icmp eq i32 %1, 0
  %or.cond5 = and i1 %i.n, %i.o
  %or.cond7 = and i1 %or.cond5, %i.j
  %i.p = and i32 %.2, -65537
  %.3 = select i1 %or.cond7, i32 %i.p, i32 %.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.3
}

declare void @host_cpuid(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @mshv_arch_post_init_vm(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.hv_input_set_partition_property, align 1 ; 7 uses
  %2 = alloca %struct.mshv_root_hvcall, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 327703, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.b, align 1
  store i16 69, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 24, ptr %i.c, align 4
  %i.d = ptrtoint ptr %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %trace_mshv_hvcall_args.exit.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr @_TRACE_MSHV_HVCALL_ARGS_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.g, 0
  br i1 %.not2.i.i, label %trace_mshv_hvcall_args.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr @qemu_loglevel, align 4
  %i.i = and i32 %i.h, 32768
  %.not1.i.i = icmp eq i32 %i.i, 0
  br i1 %.not1.i.i, label %trace_mshv_hvcall_args.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef 69, i32 noundef 24) #11
  br label %trace_mshv_hvcall_args.exit.i

trace_mshv_hvcall_args.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.j = call i32 @mshv_hvcall(i32 noundef %0, ptr noundef nonnull %2) #11
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %set_unimplemented_msr_action.exit

set_unimplemented_msr_action.exit:                ; preds = %trace_mshv_hvcall_args.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.f

bb.e:                                             ; preds = %trace_mshv_hvcall_args.exit.i
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.9) #11
  br label %bb.f

bb.f:                                             ; preds = %set_unimplemented_msr_action.exit, %bb.e
  %.0.i4 = phi i32 [ -1, %bb.e ], [ 0, %set_unimplemented_msr_action.exit ]
  ret i32 %.0.i4
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_mshv_cpu_accel_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @mshv_cpu_accel_register_types, i32 noundef 4) #11
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @mshv_cpu_accel_register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @mshv_cpu_accel_type_info) #11 ; 0 uses
  ret void
}

declare void @rflags_to_lflags(ptr noundef) local_unnamed_addr #3

declare void @cpu_set_apic_tpr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @cpu_set_apic_base(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @x86_update_hflags(ptr noundef) local_unnamed_addr #3

declare i32 @decompact_xsave_area(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @x86_cpu_xrstor_all_areas(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lflags_to_rflags(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cpu_get_apic_tpr(ptr noundef) local_unnamed_addr #3

declare i64 @cpu_get_apic_base(ptr noundef) local_unnamed_addr #3

declare void @x86_cpu_xsave_all_areas(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @compact_xsave_area(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @load_regs(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.mshv_root_hvcall, align 8   ; 9 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 31584
  %i.c = load ptr, ptr %i.b, align 16             ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = load i8, ptr %i.d, align 1
  %.not15 = icmp eq i8 %i.e, 0
  br i1 %.not15, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #11 ; 19 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16496 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 31584
  %i.i = load ptr, ptr %i.h, align 16             ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 1
  store i64 %i.k, ptr %i.g, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i64, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16520
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load i64, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16504
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.s = load i64, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16512
  store i64 %i.s, ptr %i.t, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.v = load i64, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16544
  store i64 %i.v, ptr %i.w, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.y = load i64, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16552
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16528
  store i64 %i.ab, ptr %i.ac, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ae = load i64, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16536
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 16560
  store i64 %i.ah, ptr %i.ai, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16568
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16576
  store i64 %i.an, ptr %i.ao, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 16584
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.at = load i64, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 16592
  store i64 %i.at, ptr %i.au, align 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16600
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16608
  store i64 %i.az, ptr %i.ba, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.bc = load i64, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16616
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16752
  store i64 %i.bf, ptr %i.bg, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.bi = load i64, ptr %i.bh, align 1
end_hunk_0
