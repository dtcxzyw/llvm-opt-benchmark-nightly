Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/crash?download=true
inline.NumInlined: 15
inline.NumDeleted: 12
begin_hunk_0_@kdump_nmi_callback:bb.a
bb.a:
  tail call void @crash_save_cpu(ptr noundef %1, i32 noundef %0) #7
  tail call void @cpu_emergency_stop_pt() #7
  tail call void @disable_local_APIC() #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @disable_local_APIC() local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @crash_smp_send_stop() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @smp_ops, i64 32), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.a() #7
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @smp_ops, i64 24), align 8
  tail call void %i.b(i32 noundef 0) #7, !inline_history !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i1 true, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @native_machine_crash_shutdown(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !12
  %.b.i = load i1, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %.b.i, label %crash_smp_send_stop.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @smp_ops, i64 32), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.a() #7, !inline_history !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @smp_ops, i64 24), align 8
  tail call void %i.b(i32 noundef 0) #7, !inline_history !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i1 true, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br label %crash_smp_send_stop.exit

crash_smp_send_stop.exit:                         ; preds = %bb.a, %bb.e
  tail call void @cpu_emergency_stop_pt() #7
  tail call void @ioapic_zap_locks() #7
  tail call void @clear_IO_APIC() #7
  tail call void @lapic_shutdown() #7
  tail call void @restore_boot_irq_mode() #7
  tail call void @hpet_disable() #7
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @x86_platform, i64 200), align 8
  tail call void %i.c() #7
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @x86_platform, i64 208), align 8
  tail call void %i.d() #7
  %i.e = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #9, !srcloc !14
  tail call void @crash_save_cpu(ptr noundef %0, i32 noundef %i.e) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpu_emergency_stop_pt() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ioapic_zap_locks() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_IO_APIC() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @lapic_shutdown() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @restore_boot_irq_mode() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @hpet_disable() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @crash_save_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef range(i32 0, 2) i32 @arch_crash_hotplug_support(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = and i64 %1, 12
  %i.b = icmp ne i64 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef i32 @arch_crash_get_elfcorehdr_size() local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  ret i32 3696
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @arch_crash_handle_hotplug_event(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 760
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 4
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 816
  %i.h = load i8, ptr %i.g, align 8, !range !15, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 808
  %i.k = load i32, ptr %i.j, align 8
  %.off = add i32 %i.k, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4
  %i.l = call i32 @walk_system_ram_res(i64 noundef 0, i64 noundef -1, ptr noundef nonnull %i.a, ptr noundef @get_nr_ram_ranges_callback) #7 ; 0 uses
  %i.m = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %prepare_elf_headers.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i32 %i.m, 3                          ; 2 uses
  store i32 %i.n, ptr %i.a, align 4
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 4
  %i.q = or disjoint i64 %i.p, 8
  %i.r = call noalias ptr @vzalloc_noprof(i64 noundef %i.q) #10 ; 9 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i, label %prepare_elf_headers.exit.thread, label %bb.f

prepare_elf_headers.exit.thread:                  ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.a, align 4
  store i32 %i.s, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.t = call i32 @walk_system_ram_res(i64 noundef 0, i64 noundef -1, ptr noundef nonnull %i.r, ptr noundef @prepare_elf64_ram_headers_callback) #7
  %.not16.i = icmp eq i32 %i.t, 0
  br i1 %.not16.i, label %bb.g, label %prepare_elf_headers.exit.thread31

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @crash_exclude_mem_range(ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 1048575) #7
  %.not.i18.i = icmp eq i32 %i.u, 0
  br i1 %.not.i18.i, label %bb.h, label %prepare_elf_headers.exit.thread31

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr @crashk_res, align 8
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @crashk_res, i64 8), align 8
  %i.x = call i32 @crash_exclude_mem_range(ptr noundef nonnull %i.r, i64 noundef %i.v, i64 noundef %i.w) #7
  %.not22.i.i = icmp eq i32 %i.x, 0
  br i1 %.not22.i.i, label %bb.i, label %prepare_elf_headers.exit.thread31

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @crashk_low_res, i64 8), align 8 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.y, 0
  br i1 %.not23.i.i, label %prepare_elf_headers.exit, label %elf_header_exclude_ranges.exit.i

elf_header_exclude_ranges.exit.i:                 ; preds = %bb.i
  %i.z = load i64, ptr @crashk_low_res, align 8
  %i.aa = call i32 @crash_exclude_mem_range(ptr noundef nonnull %i.r, i64 noundef %i.z, i64 noundef %i.y) #7
  %.not17.i = icmp eq i32 %i.aa, 0
  br i1 %.not17.i, label %prepare_elf_headers.exit, label %prepare_elf_headers.exit.thread31

prepare_elf_headers.exit.thread31:                ; preds = %bb.f, %elf_header_exclude_ranges.exit.i, %bb.g, %bb.h
  call void @vfree(ptr noundef nonnull %i.r) #7
  br label %bb.j

prepare_elf_headers.exit:                         ; preds = %bb.i, %elf_header_exclude_ranges.exit.i
  %i.ab = call i32 @crash_prepare_elf64_headers(ptr noundef nonnull %i.r, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #7
  call void @vfree(ptr noundef nonnull %i.r) #7
  %.not27 = icmp eq i32 %i.ab, 0
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %prepare_elf_headers.exit.thread31, %prepare_elf_headers.exit.thread, %prepare_elf_headers.exit
  %i.ac = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #11 ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %prepare_elf_headers.exit
  %i.ad = getelementptr i8, ptr %0, i64 64
  %i.ae = getelementptr i8, ptr %0, i64 812
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr [32 x i8], ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8             ; 2 uses
  %i.al = icmp ugt i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i64 noundef %i.ak, i64 noundef %i.aj) #11 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.ah, i64 16
  %i.ao = load i64, ptr %i.an, align 8
  %.idx = and i64 %i.ao, -4096
  %i.ap = load i64, ptr @page_offset_base, align 8
  %i.aq = add i64 %.idx, %i.ap                    ; 2 uses
  %.not28 = icmp eq i64 %i.aq, 0
  br i1 %.not28, label %bb.n, label %memcpy_flushcache.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #11 ; 0 uses
  br label %bb.o

memcpy_flushcache.exit:                           ; preds = %bb.m
  %i.as = inttoptr i64 %i.aq to ptr
  %i.at = call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @kexec_crash_image, ptr null, ptr elementtype(ptr) @kexec_crash_image) #8, !srcloc !17 ; 0 uses
  %i.au = load i64, ptr %i.c, align 8
  %i.av = load ptr, ptr %i.b, align 8
  call void @__memcpy_flushcache(ptr noundef nonnull %i.as, ptr noundef %i.av, i64 noundef %i.au) #7
  %i.aw = call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @kexec_crash_image, ptr %0, ptr elementtype(ptr) @kexec_crash_image) #8, !srcloc !18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %memcpy_flushcache.exit, %bb.n, %bb.l, %bb.j
  %i.ax = load ptr, ptr %i.b, align 8
  call void @vfree(ptr noundef %i.ax) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @walk_system_ram_res(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef i32 @prepare_elf64_ram_headers_callback(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  store i64 %i.a, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = add i32 %i.d, 1
  store i32 %i.j, ptr %i.c, align 4
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crash_prepare_elf64_headers(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal noundef i32 @get_nr_ram_ranges_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr %1, align 4
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc_noprof(i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @crash_exclude_mem_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__memcpy_flushcache(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(read) }
attributes #10 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = distinct !{null}
!11 = distinct !{ptr @crash_smp_send_stop, null}
!12 = !{i64 2183213}
!13 = !{ptr @crash_smp_send_stop}
!14 = !{i64 2157542751}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{i64 2157557982}
!18 = !{i64 2157559312}
end_hunk_0
