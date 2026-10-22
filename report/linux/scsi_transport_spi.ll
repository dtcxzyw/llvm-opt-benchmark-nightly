Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/scsi_transport_spi?download=true
inline.NumInlined: 76
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@spi_attach_transport:bb.a
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
  tail call void asm sideeffect "647: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 647b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 647) #19, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, ptr @.str.142, i32 99, i32 0, i64 16) #19, !srcloc !28
  unreachable

transport_container_unregister.exit:              ; preds = %bb.a
  %i.c = tail call i32 @attribute_container_unregister(ptr noundef %0) #15
  %.not.i6 = icmp eq i32 %i.c, 0
  br i1 %.not.i6, label %transport_container_unregister.exit7, label %bb.c, !prof !12

bb.c:                                             ; preds = %transport_container_unregister.exit
  tail call void asm sideeffect "647: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 647b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 647) #19, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, ptr @.str.142, i32 99, i32 0, i64 16) #19, !srcloc !28
  unreachable

transport_container_unregister.exit7:             ; preds = %transport_container_unregister.exit
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @spi_transport_exit() #8 section ".exit.text" align 16 prefalign(16) {
bb.a:
  tail call void @transport_class_unregister(ptr noundef @spi_transport_class) #15
  tail call void @anon_transport_class_unregister(ptr noundef @spi_device_class) #15
  tail call void @transport_class_unregister(ptr noundef @spi_host_class) #15
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
  %i.a = tail call i32 @scsi_dev_info_add_list(i32 noundef 1, ptr noundef @.str.144) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %0 = getelementptr [24 x i8], ptr @spi_static_device_list, i64 %indvars.iv ; 3 uses
  %1 = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i32 @scsi_dev_info_list_add_keyed(i32 noundef 1, ptr noundef %1, ptr noundef %i.c, ptr noundef null, i64 noundef %i.e, i32 noundef 1) #15 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not12 = icmp eq i64 %indvars.iv.next, 2
  br i1 %.not12, label %.loopexit, label %.preheader, !llvm.loop !29

.loopexit:                                        ; preds = %.preheader, %bb.a
  %i.g = tail call i32 @transport_class_register(ptr noundef @spi_transport_class) #15 ; 2 uses
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  tail call void @anon_transport_class_register(ptr noundef @spi_device_class) #15
  %i.h = tail call i32 @transport_class_register(ptr noundef @spi_host_class) #15
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.b
  %.09 = phi i32 [ %i.h, %bb.b ], [ %i.g, %.loopexit ]
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef align 16 dereferenceable(24) @__const.spi_execute.failure_defs, i64 24, i1 false)
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
  br i1 %i.x, label %bb.b, label %.loopexit, !llvm.loop !30

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
  %i.f = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 3) #15, !callees !31 ; 2 uses
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
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.40, ptr noundef %i.j, ptr noundef @.str.46) #17
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
end_hunk_0
