Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/esp-pci?download=true
inline.NumInlined: 60
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@esp_pci_io_write:bb.a
  %i.bq = and i32 %i.bp, 32768
  %.not2.i.i36.i = icmp eq i32 %i.bq, 0
  br i1 %.not2.i.i36.i, label %esp_pci_handle_start.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23, i32 noundef %i.an) #4
  br label %esp_pci_handle_start.exit.i

esp_pci_handle_start.exit.i:                      ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3044
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3052
  %i.bt = load <2 x i32>, ptr %i.br, align 4
  store <2 x i32> %i.bt, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 3068
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3060 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = and i32 %i.by, -64
  store i32 %i.bz, ptr %i.bx, align 4
  tail call void @esp_dma_enable(ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #4
  br label %esp_pci_dma_write.exit

default.unreachable:                              ; preds = %bb.p
  unreachable

bb.ai:                                            ; preds = %trace_esp_pci_dma_write.exit.i, %trace_esp_pci_dma_write.exit.i, %trace_esp_pci_dma_write.exit.i
  store i32 %i.an, ptr %i.aq, align 4
  br label %esp_pci_dma_write.exit

bb.aj:                                            ; preds = %trace_esp_pci_dma_write.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.cb = load i32, ptr %i.ca, align 16
  %i.cc = and i32 %i.cb, 16777216
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %esp_pci_dma_write.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cd = and i32 %i.an, 14
  %i.ce = xor i32 %i.cd, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3060 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = and i32 %i.cg, %i.ce                    ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4
  %i.ci = load i32, ptr %i.ao, align 16
  %i.cj = and i32 %i.ci, 64
  %.not.i37.i = icmp ne i32 %i.cj, 0
  %i.ck = and i32 %i.ch, 8
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = select i1 %.not.i37.i, i1 %i.cl, i1 false
  %i.cn = and i32 %i.cg, 16
  %i.co = icmp ne i32 %i.cn, 0
  %i.cp = select i1 %i.co, i1 true, i1 %i.cm
  %i.cq = zext i1 %i.cp to i32
  %i.cr = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #4
  tail call void @pci_set_irq(ptr noundef %i.cr, i32 noundef %i.cq) #4
  br label %esp_pci_dma_write.exit

bb.al:                                            ; preds = %trace_esp_pci_dma_write.exit.i
  %i.cs = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i38.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i38.i, label %esp_pci_dma_write.exit, label %bb.am, !prof !7

bb.am:                                            ; preds = %bb.al
  %i.ct = load i16, ptr @_TRACE_ESP_PCI_ERROR_INVALID_WRITE_DMA_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not2.i.i, label %esp_pci_dma_write.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cu = load i32, ptr @qemu_loglevel, align 4
  %i.cv = and i32 %i.cu, 32768
  %.not3.i39.i = icmp eq i32 %i.cv, 0
  br i1 %.not3.i39.i, label %esp_pci_dma_write.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.an, i32 noundef range(i32 0, 8) %i.am) #4
  br label %esp_pci_dma_write.exit

bb.ap:                                            ; preds = %bb.k
  %i.cw = icmp eq i64 %.0, 112
  br i1 %i.cw, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3072 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 16
  %i.cz = trunc i64 %.042 to i32                  ; 2 uses
  %i.da = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i45 = icmp eq i32 %i.da, 0
  br i1 %.not.i45, label %trace_esp_pci_sbac_write.exit, label %bb.ar, !prof !7

bb.ar:                                            ; preds = %bb.aq
  %i.db = load i16, ptr @_TRACE_ESP_PCI_SBAC_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.db, 0
  br i1 %.not2.i, label %trace_esp_pci_sbac_write.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = load i32, ptr @qemu_loglevel, align 4
  %i.dd = and i32 %i.dc, 32768
  %.not3.i = icmp eq i32 %i.dd, 0
  br i1 %.not3.i, label %trace_esp_pci_sbac_write.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.25, i32 noundef %i.cy, i32 noundef %i.cz) #4
  br label %trace_esp_pci_sbac_write.exit

trace_esp_pci_sbac_write.exit:                    ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at
  store i32 %i.cz, ptr %i.cx, align 16
  br label %esp_pci_dma_write.exit

bb.au:                                            ; preds = %bb.ap
  %i.de = trunc i64 %.0 to i32
  %i.df = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i46 = icmp eq i32 %i.df, 0
  br i1 %.not.i46, label %esp_pci_dma_write.exit, label %bb.av, !prof !7

bb.av:                                            ; preds = %bb.au
  %i.dg = load i16, ptr @_TRACE_ESP_PCI_ERROR_INVALID_WRITE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.dg, 0
  br i1 %.not1.i, label %esp_pci_dma_write.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dh = load i32, ptr @qemu_loglevel, align 4
  %i.di = and i32 %i.dh, 32768
  %.not2.i47 = icmp eq i32 %i.di, 0
  br i1 %.not2.i47, label %esp_pci_dma_write.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, i32 noundef %i.de) #4
  br label %esp_pci_dma_write.exit

esp_pci_dma_write.exit:                           ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %esp_pci_handle_start.exit.i, %bb.ad, %trace_esp_pci_dma_abort.exit.i.i, %esp_pci_handle_blast.exit.i, %esp_pci_handle_idle.exit.i, %trace_esp_pci_sbac_write.exit, %bb.j
  ret void
}

declare i64 @esp_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @pci_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @esp_reg_write(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @esp_dma_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @scsi_req_cancel(ptr noundef) local_unnamed_addr #1

declare void @scsi_bus_init_named(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @esp_transfer_data(ptr noundef, i32 noundef) #1

declare void @esp_command_complete(ptr noundef, i64 noundef) #1

declare void @esp_request_cancelled(ptr noundef) #1

declare void @qemu_free_irq(ptr noundef) local_unnamed_addr #1

declare void @esp_hard_reset(ptr noundef) local_unnamed_addr #1

declare i32 @esp_pre_save(ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @dc390_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #4 ; 2 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE_CLASS) #4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @dc390_scsi_realize, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @dc390_read_config, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr @dc390_write_config, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = or i64 %i.g, 4
  store i64 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.35, ptr %i.i, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @dc390_scsi_realize(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, i32 noundef 467, ptr noundef nonnull @__func__.DC390) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store ptr null, ptr %i.a, align 8
  call void @esp_pci_scsi_realize(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %i.c) #4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.e = call ptr @eeprom93xx_new(ptr noundef %i.d, i16 noundef zeroext 64) #4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 3648
  store ptr %i.e, ptr %i.f, align 16
  %i.g = call ptr @eeprom93xx_data(ptr noundef %i.e) #4 ; 12 uses
  store <16 x i8> <i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0>, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <16 x i8> <i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0, i8 87, i8 0>, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 7, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  store i8 15, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  store i8 4, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store i8 7, ptr %i.l, align 1
  %2 = load <56 x i16>, ptr %i.g, align 1         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %3 = load <4 x i16>, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.o = load i16, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 122
  %i.q = load i16, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 124
  %i.s = load i16, ptr %i.r, align 1
  %4 = shufflevector <56 x i16> %2, <56 x i16> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add <4 x i16> %4, %3
  %5 = shufflevector <4 x i16> %rdx.op, <4 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %6 = shufflevector <56 x i16> %5, <56 x i16> %2, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111>
  %7 = call i16 @llvm.vector.reduce.add.v56i16(<56 x i16> %6)
  %i.t = add i16 %7, %i.o
  %i.u = add i16 %i.q, %i.s
  %i.v = add i16 %i.t, %i.u
  %i.w = sub i16 4660, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 126
  store i16 %i.w, ptr %i.x, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @dc390_read_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, i32 noundef 467, ptr noundef nonnull @__func__.DC390) #4
  %i.b = tail call i32 @pci_default_read_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 ; 3 uses
  %i.c = icmp eq i32 %1, 0
  %i.d = icmp eq i32 %2, 1
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3648
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = tail call zeroext i16 @eeprom93xx_read(ptr noundef %i.f) #4
  %.not = icmp eq i16 %i.g, 0
  %i.h = and i32 %i.b, -256
  %spec.select = select i1 %.not, i32 %i.h, i32 %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @dc390_write_config(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.5, i32 noundef 467, ptr noundef nonnull @__func__.DC390) #4 ; 2 uses
  switch i32 %1, label %bb.d [
    i32 128, label %bb.b
    i32 192, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %2, 7
  %.lobit = and i32 %i.b, 1
  %i.c = lshr i32 %2, 6
  %.lobit12 = and i32 %i.c, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3648
  %i.e = load ptr, ptr %i.d, align 16
  tail call void @eeprom93xx_write(ptr noundef %i.e, i32 noundef 1, i32 noundef %.lobit, i32 noundef %.lobit12) #4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3648
  %i.g = load ptr, ptr %i.f, align 16
  tail call void @eeprom93xx_write(ptr noundef %i.g, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @pci_default_write_config(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @eeprom93xx_new(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @eeprom93xx_data(ptr noundef) local_unnamed_addr #1

declare i32 @pci_default_read_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i16 @eeprom93xx_read(ptr noundef) local_unnamed_addr #1

declare void @eeprom93xx_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @pci_default_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v56i16(<56 x i16>) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i64 2152106814}
end_hunk_0
