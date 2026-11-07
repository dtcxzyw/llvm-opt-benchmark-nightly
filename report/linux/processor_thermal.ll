Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/processor_thermal?download=true
inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0_@acpi_thermal_cpufreq_exit:bb.a
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.n, i64 936
  %i.p = tail call i32 @freq_qos_remove_request(ptr noundef %i.o) #4 ; 0 uses
  %i.q = getelementptr i8, ptr %i.n, i64 864
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @thermal_cooling_device_update(ptr noundef %i.r) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = add nuw nsw i64 %i.f, 1
  %i.t = and i64 %i.s, 127                        ; 2 uses
  %i.u = icmp samesign ugt i64 %i.t, 63
  br i1 %i.u, label %find_next_bit.exit.thread, label %bb.b, !prof !12, !llvm.loop !17

find_next_bit.exit.thread:                        ; preds = %bb.b, %bb.e, %find_next_bit.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @processor_get_max_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 784
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 600
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %.not8 = icmp eq ptr %.val, null
  br i1 %.not8, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr @acpi_processor_cpufreq_init, align 1, !range !14, !noundef !15
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %cpufreq_get_max_state.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %.val, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call ptr @cpufreq_cpu_get(i32 noundef %i.g) #4 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i.i, label %cpufreq_get_max_state.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %i.h) #4
  br label %cpufreq_get_max_state.exit.i

cpufreq_get_max_state.exit.i:                     ; preds = %bb.e, %bb.d, %bb.c
  %i.i = phi i32 [ 3, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.j = getelementptr i8, ptr %.val, i64 32
  %i.k = load i16, ptr %i.j, align 8
  %i.l = and i16 %i.k, 4
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %acpi_processor_max_state.exit, label %bb.f

bb.f:                                             ; preds = %cpufreq_get_max_state.exit.i
  %i.m = getelementptr i8, ptr %.val, i64 680
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.i, -1
  %i.p = add i32 %i.o, %i.n
  br label %acpi_processor_max_state.exit

acpi_processor_max_state.exit:                    ; preds = %cpufreq_get_max_state.exit.i, %bb.f
  %.0.i = phi i32 [ %i.p, %bb.f ], [ %i.i, %cpufreq_get_max_state.exit.i ]
  %i.q = sext i32 %.0.i to i64
  store i64 %i.q, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %acpi_processor_max_state.exit
  %.0 = phi i32 [ 0, %acpi_processor_max_state.exit ], [ -22, %bb.a ], [ -22, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @processor_get_cur_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 784
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 600
  %.val = load ptr, ptr %i.c, align 8             ; 4 uses
  %.not11 = icmp eq ptr %.val, null
  br i1 %.not11, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = load i8, ptr @acpi_processor_cpufreq_init, align 1, !range !14, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %cpufreq_get_cur_state.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @cpufreq_cpu_get(i32 noundef %i.e) #4 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %cpufreq_get_cur_state.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %i.h) #4
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, ptrtoint (ptr @cpu_info to i64)
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 232
  %i.o = load i32, ptr %i.n, align 8
  %i.p = load i64, ptr @__cpu_online_mask, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.h
  %i.q = add nuw nsw i64 %i.w, 1
  %i.r = and i64 %i.q, 127                        ; 2 uses
  %i.s = icmp samesign ugt i64 %i.r, 63
  br i1 %i.s, label %phys_package_first_cpu.exit.i, label %bb.g, !prof !12, !llvm.loop !0

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i64 [ 0, %bb.e ], [ %i.r, %bb.f ]
  %i.u = shl nsw i64 -1, %i.t
  %i.v = and i64 %i.u, %i.p                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i, label %phys_package_first_cpu.exit.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.g
  %i.w = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.v) #3, !srcloc !11 ; 4 uses
  %i.x = and i64 %i.w, 4294967232
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %phys_package_first_cpu.exit.i

bb.h:                                             ; preds = %find_next_bit.exit.i.i
  %i.z = and i64 %i.w, 63
  %i.aa = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, ptrtoint (ptr @cpu_info to i64)
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 232
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, %i.o
  br i1 %i.ag, label %phys_package_first_cpu.exit.i, label %bb.f

phys_package_first_cpu.exit.i:                    ; preds = %bb.h, %find_next_bit.exit.i.i, %bb.g, %bb.f
  %.0.i3.i = phi i64 [ %i.w, %bb.h ], [ 0, %find_next_bit.exit.i.i ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.ah = and i64 %.0.i3.i, 63
  %i.ai = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, ptrtoint (ptr @cpufreq_thermal_reduction_step to i64)
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.al, align 4
  %i.an = sext i32 %i.am to i64
  br label %cpufreq_get_cur_state.exit

cpufreq_get_cur_state.exit:                       ; preds = %bb.c, %bb.d, %phys_package_first_cpu.exit.i
  %.0.i = phi i64 [ %i.an, %phys_package_first_cpu.exit.i ], [ 0, %bb.c ], [ 0, %bb.d ] ; 2 uses
  store i64 %.0.i, ptr %1, align 8
  %i.ao = getelementptr i8, ptr %.val, i64 32
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, 4
  %.not12 = icmp eq i16 %i.aq, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %cpufreq_get_cur_state.exit
  %i.ar = getelementptr i8, ptr %.val, i64 640
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = zext i32 %i.as to i64
  %i.au = add nsw i64 %.0.i, %i.at
  store i64 %i.au, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %cpufreq_get_cur_state.exit, %bb.i, %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.b ], [ -22, %bb.a ], [ 0, %bb.i ], [ 0, %cpufreq_get_cur_state.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @processor_set_cur_state(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 784
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 600
  %.val = load ptr, ptr %i.c, align 8             ; 7 uses
  %.not25 = icmp eq ptr %.val, null
  br i1 %.not25, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.val, i64 16      ; 4 uses
  %i.e = load i8, ptr @acpi_processor_cpufreq_init, align 1, !range !14, !noundef !15
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %cpufreq_get_max_state.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 8
  %i.h = tail call ptr @cpufreq_cpu_get(i32 noundef %i.g) #4 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.h, null
  br i1 %.not1.i.i, label %cpufreq_get_max_state.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %i.h) #4
  br label %cpufreq_get_max_state.exit

cpufreq_get_max_state.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %2 = phi i32 [ 3, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %i.i = load i8, ptr @acpi_processor_cpufreq_init, align 1, !range !14, !noundef !15
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %cpufreq_get_max_state.exit.i

bb.f:                                             ; preds = %cpufreq_get_max_state.exit
  %i.k = load i32, ptr %i.d, align 8
  %i.l = tail call ptr @cpufreq_cpu_get(i32 noundef %i.k) #4 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not1.i.i.i, label %cpufreq_get_max_state.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %i.l) #4
  br label %cpufreq_get_max_state.exit.i

cpufreq_get_max_state.exit.i:                     ; preds = %bb.g, %bb.f, %cpufreq_get_max_state.exit
  %3 = phi i32 [ 3, %bb.g ], [ 0, %cpufreq_get_max_state.exit ], [ 0, %bb.f ] ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 32
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 4
  %.not.i = icmp eq i16 %i.o, 0                   ; 2 uses
  br i1 %.not.i, label %acpi_processor_max_state.exit, label %bb.h

bb.h:                                             ; preds = %cpufreq_get_max_state.exit.i
  %i.p = getelementptr i8, ptr %.val, i64 680
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %3, -1
  %i.s = add i32 %i.r, %i.q
  br label %acpi_processor_max_state.exit

acpi_processor_max_state.exit:                    ; preds = %cpufreq_get_max_state.exit.i, %bb.h
  %.0.i = phi i32 [ %i.s, %bb.h ], [ %3, %cpufreq_get_max_state.exit.i ]
  %i.t = sext i32 %.0.i to i64
  %i.u = icmp ugt i64 %1, %i.t
  br i1 %i.u, label %bb.o, label %bb.i

bb.i:                                             ; preds = %acpi_processor_max_state.exit
  %i.v = zext nneg i32 %2 to i64
  %.not26 = icmp ugt i64 %1, %i.v
  br i1 %.not26, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr i8, ptr %.val, i64 640
  %i.x = load i32, ptr %i.w, align 8
  %.not28 = icmp eq i32 %i.x, 0
  br i1 %.not28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i32 @acpi_processor_set_throttling(ptr noundef nonnull %.val, i32 noundef 0, i1 noundef zeroext false) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0 = phi i32 [ %i.y, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ]
  %i.z = load i32, ptr %i.d, align 8
  %i.aa = trunc nuw nsw i64 %1 to i32
  tail call fastcc void @cpufreq_set_cur_state(i32 noundef %i.z, i32 noundef %i.aa) #6
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.d, align 8
  tail call fastcc void @cpufreq_set_cur_state(i32 noundef %i.ab, i32 noundef %2) #6
  %i.ac = trunc i64 %1 to i32
  %i.ad = sub i32 %i.ac, %2
  %i.ae = tail call i32 @acpi_processor_set_throttling(ptr noundef nonnull %.val, i32 noundef %i.ad, i1 noundef zeroext false) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %acpi_processor_max_state.exit, %bb.b, %bb.a
  %.020 = phi i32 [ -22, %bb.b ], [ -22, %acpi_processor_max_state.exit ], [ -22, %bb.a ], [ %.0, %bb.m ], [ %i.ae, %bb.n ]
  ret i32 %.020
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_processor_thermal_init(ptr nofree noundef captures(none) initializes((864, 872)) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @thermal_cooling_device_register(ptr noundef @.str.1, ptr noundef %1, ptr noundef @processor_cooling_ops) #4 ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 864        ; 4 uses
  store ptr %i.a, ptr %i.b, align 8
  %i.c = icmp ugt ptr %i.a, inttoptr (i64 -4096 to ptr)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = trunc i64 %i.d to i32
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 608        ; 4 uses
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = tail call i32 @sysfs_create_link(ptr noundef %i.f, ptr noundef %i.g, ptr noundef @.str.2) #4 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.f, ptr noundef @.str.3) #5
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = tail call i32 @sysfs_create_link(ptr noundef %i.j, ptr noundef %i.f, ptr noundef @.str.4) #4 ; 2 uses
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.m, ptr noundef @.str.5) #5
  tail call void @sysfs_remove_link(ptr noundef %i.f, ptr noundef @.str.2) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ %i.k, %bb.f ]
  %i.n = load ptr, ptr %i.b, align 8
  tail call void @thermal_cooling_device_unregister(ptr noundef %i.n) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.b
  %.016 = phi i32 [ %i.e, %bb.b ], [ %.0, %bb.g ], [ 0, %bb.e ]
  ret i32 %.016
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_processor_thermal_exit(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 864        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 608
  tail call void @sysfs_remove_link(ptr noundef %i.c, ptr noundef @.str.2) #4
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 24
  tail call void @sysfs_remove_link(ptr noundef %i.e, ptr noundef @.str.4) #4
  %i.f = load ptr, ptr %i.a, align 8
  tail call void @thermal_cooling_device_unregister(ptr noundef %i.f) #4
  store ptr null, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_processor_set_throttling(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @cpufreq_set_cur_state(i32 noundef %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = load i8, ptr @acpi_processor_cpufreq_init, align 1, !range !14, !noundef !15
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %cpu_has_cpufreq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @cpufreq_cpu_get(i32 noundef %0) #4 ; 2 uses
  %.not1.i = icmp eq ptr %i.c, null
  br i1 %.not1.i, label %cpu_has_cpufreq.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %i.c) #4
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, ptrtoint (ptr @cpu_info to i64)
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 232
  %i.j = load i32, ptr %i.i, align 8
  %i.k = load i64, ptr @__cpu_online_mask, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.l = add nuw nsw i64 %i.r, 1
  %i.m = and i64 %i.l, 127                        ; 2 uses
  %i.n = icmp samesign ugt i64 %i.m, 63
  br i1 %i.n, label %phys_package_first_cpu.exit, label %bb.e, !prof !12, !llvm.loop !0

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ]
  %i.p = shl nsw i64 -1, %i.o
  %i.q = and i64 %i.p, %i.k                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %phys_package_first_cpu.exit, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.e
  %i.r = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.q) #3, !srcloc !11 ; 4 uses
  %i.s = and i64 %i.r, 4294967232
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %phys_package_first_cpu.exit

bb.f:                                             ; preds = %find_next_bit.exit.i
  %i.u = and i64 %i.r, 63
  %i.v = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.u
end_hunk_0
