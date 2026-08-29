Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/var-service-core?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0_@uefi_vars_read:bb.a
bb.t:                                             ; preds = %bb.s, %bb.q, %bb.j, %bb.r, %bb.p, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %trace_uefi_reg_read.exit
  %.1 = phi i64 [ -1, %trace_uefi_reg_read.exit ], [ 3825, %bb.e ], [ %i.g, %bb.f ], [ %i.j, %bb.g ], [ %i.m, %bb.h ], [ %i.p, %bb.i ], [ %spec.select, %bb.s ], [ %.0, %bb.p ], [ 0, %bb.j ], [ %i.as, %bb.r ], [ 0, %bb.q ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @uefi_vars_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %trace_uefi_reg_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_UEFI_REG_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.b, 0
  br i1 %.not3.i, label %trace_uefi_reg_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %trace_uefi_reg_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %1, i64 noundef %2, i32 noundef %3) #8
  br label %trace_uefi_reg_write.exit

trace_uefi_reg_write.exit:                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  switch i64 %1, label %bb.t [
    i64 2, label %bb.e
    i64 4, label %bb.j
    i64 8, label %bb.k
    i64 12, label %bb.l
    i64 16, label %bb.m
  ]

bb.e:                                             ; preds = %trace_uefi_reg_write.exit
  %i.e = trunc i64 %2 to i32
  switch i32 %i.e, label %uefi_vars_cmd.exit [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = load ptr, ptr %i.f, align 16
  tail call void @g_free(ptr noundef %i.g) #8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  br label %uefi_vars_cmd.exit

bb.g:                                             ; preds = %bb.e
  %i.i = tail call fastcc i32 @uefi_vars_cmd_mm(ptr noundef %0, i1 noundef zeroext true)
  br label %uefi_vars_cmd.exit

bb.h:                                             ; preds = %bb.e
  %i.j = tail call fastcc i32 @uefi_vars_cmd_mm(ptr noundef %0, i1 noundef zeroext false)
  br label %uefi_vars_cmd.exit

bb.i:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.k, align 8
  br label %uefi_vars_cmd.exit

uefi_vars_cmd.exit:                               ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.i ], [ 0, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ], [ 17, %bb.e ]
  %i.l = trunc i32 %.0.i to i16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 %i.l, ptr %i.m, align 16
  br label %bb.t

bb.j:                                             ; preds = %trace_uefi_reg_write.exit
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 65536)
  %i.n = trunc nuw nsw i64 %spec.store.select to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16
  tail call void @g_free(ptr noundef %i.q) #8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16
  tail call void @g_free(ptr noundef %i.s) #8
  %i.t = load i32, ptr %i.o, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = tail call noalias ptr @g_malloc0(i64 noundef %i.u) #9
  store ptr %i.v, ptr %i.p, align 16
  %i.w = load i32, ptr %i.o, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = tail call noalias ptr @g_malloc0(i64 noundef %i.x) #9
  store ptr %i.y, ptr %i.r, align 16
  br label %bb.t

bb.k:                                             ; preds = %trace_uefi_reg_write.exit
  %i.z = trunc i64 %2 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.z, ptr %i.aa, align 8
  br label %bb.t

bb.l:                                             ; preds = %trace_uefi_reg_write.exit
  %i.ab = trunc i64 %2 to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.ab, ptr %i.ac, align 4
  br label %bb.t

bb.m:                                             ; preds = %trace_uefi_reg_write.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = add i32 %i.ae, %3
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp ugt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ak = load ptr, ptr %i.aj, align 16
  %i.al = zext i32 %i.ae to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 4 uses
  %i.an = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %.split, label %bb.s

.split:                                           ; preds = %bb.n
  %i.ap = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 true)
  switch i32 %i.ap, label %bb.s [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %.split
  %i.aq = trunc i64 %2 to i8
  store i8 %i.aq, ptr %i.am, align 1
  br label %bb.s

bb.p:                                             ; preds = %.split
  %i.ar = trunc i64 %2 to i16
  store i16 %i.ar, ptr %i.am, align 2
  br label %bb.s

bb.q:                                             ; preds = %.split
  %i.as = trunc i64 %2 to i32
  store i32 %i.as, ptr %i.am, align 4
  br label %bb.s

bb.r:                                             ; preds = %.split
  store i64 %2, ptr %i.am, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r, %bb.q, %bb.p, %bb.o, %.split
  %i.at = load i32, ptr %i.ad, align 8
  %i.au = add i32 %i.at, %3
  store i32 %i.au, ptr %i.ad, align 8
  br label %bb.t

bb.t:                                             ; preds = %trace_uefi_reg_write.exit, %bb.m, %bb.s, %bb.l, %bb.k, %bb.j, %uefi_vars_cmd.exit
  ret void
}

declare i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @uefi_vars_cmd_mm(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 16             ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp ult i32 %i.f, 24
  br i1 %i.g, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !10
  fence seq_cst
  %i.h = tail call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.b, i64 4294967296, ptr noundef nonnull %i.d, i64 noundef 24, i1 noundef zeroext false) #8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = load ptr, ptr %i.i, align 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.d, ptr noundef nonnull align 1 dereferenceable(24) %i.j, i64 noundef 24, i1 noundef false) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8              ; 4 uses
  %2 = icmp ugt i64 %i.l, -25
  %3 = add nuw i64 %i.l, 24                       ; 4 uses
  br i1 %2, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.e, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %3, %i.n
  br i1 %i.o, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = add i64 %i.b, 24
  %i.q = load ptr, ptr %i.c, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !10
  fence seq_cst
  %i.s = tail call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.p, i64 4294967296, ptr noundef nonnull %i.r, i64 noundef %i.l, i1 noundef zeroext false) #8 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.c, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.w = load ptr, ptr %i.v, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.u, ptr noundef nonnull align 1 %i.x, i64 noundef %i.l, i1 noundef false) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %i.c, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %3
  %i.aa = load i32, ptr %i.e, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = sub nsw i64 %i.ab, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.z, i8 noundef 0, i64 noundef %i.ac, i1 noundef false) #8
  %i.ad = load ptr, ptr %i.c, align 16
  tail call void @uefi_vars_pcap_request(ptr noundef nonnull %0, ptr noundef %i.ad, i64 noundef %3) #8
  %i.ae = tail call i32 @qemu_uuid_is_equal(ptr noundef nonnull %i.d, ptr noundef nonnull @EfiSmmVariableProtocolGuid) #8
  %.not78 = icmp eq i32 %i.ae, 0
  br i1 %.not78, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call i32 @uefi_vars_mm_vars_proto(ptr noundef nonnull %0) #8
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.ag = tail call i32 @qemu_uuid_is_equal(ptr noundef nonnull %i.d, ptr noundef nonnull @VarCheckPolicyLibMmiHandlerGuid) #8
  %.not79 = icmp eq i32 %i.ag, 0
  br i1 %.not79, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call i32 @uefi_vars_mm_check_policy_proto(ptr noundef nonnull %0) #8
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ai = tail call i32 @qemu_uuid_is_equal(ptr noundef nonnull %i.d, ptr noundef nonnull @EfiEndOfDxeEventGroupGuid) #8
  %.not80 = icmp eq i32 %i.ai, 0
  br i1 %.not80, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @trace_uefi_event(ptr noundef nonnull @.str.20)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i8 1, ptr %i.aj, align 8
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.ak = tail call i32 @qemu_uuid_is_equal(ptr noundef nonnull %i.d, ptr noundef nonnull @EfiEventReadyToBootGuid) #8
  %.not81 = icmp eq i32 %i.ak, 0
  br i1 %.not81, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @trace_uefi_event(ptr noundef nonnull @.str.21)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 345
  store i8 1, ptr %i.al, align 1
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.am = tail call i32 @qemu_uuid_is_equal(ptr noundef nonnull %i.d, ptr noundef nonnull @EfiEventExitBootServicesGuid) #8
  %.not82 = icmp eq i32 %i.am, 0
  br i1 %.not82, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @trace_uefi_event(ptr noundef nonnull @.str.22)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 346
  store i8 1, ptr %i.an, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.n, %bb.r, %bb.t, %bb.p, %bb.l
  %.076 = phi i32 [ %i.af, %bb.l ], [ %i.ah, %bb.n ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.t ], [ 17, %bb.s ] ; 2 uses
  %i.ao = load ptr, ptr %i.c, align 16
  %i.ap = load i64, ptr %i.k, align 8
  %i.aq = add i64 %i.ap, 24
  tail call void @uefi_vars_pcap_reply(ptr noundef nonnull %0, ptr noundef %i.ao, i64 noundef %i.aq) #8
  br i1 %1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.c, align 16
  %i.as = load i64, ptr %i.k, align 8
  %i.at = add i64 %i.as, 24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !10
  fence seq_cst
  %i.au = tail call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %i.b, i64 4294967296, ptr noundef %i.ar, i64 noundef %i.at, i1 noundef zeroext true) #8 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aw = load ptr, ptr %i.av, align 16
  %i.ax = load ptr, ptr %i.c, align 16
  %i.ay = load i64, ptr %i.k, align 8
  %i.az = add i64 %i.ay, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aw, ptr noundef nonnull align 1 %i.ax, i64 noundef %i.az, i1 noundef false) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.g, %bb.f, %bb.a, %bb.b
  %.0 = phi i32 [ 18, %bb.g ], [ 18, %bb.a ], [ 18, %bb.f ], [ 18, %bb.b ], [ %.076, %bb.w ], [ %.076, %bb.v ]
  ret i32 %.0
}

declare void @uefi_vars_pcap_request(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @qemu_uuid_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uefi_vars_mm_vars_proto(ptr noundef) local_unnamed_addr #1

declare i32 @uefi_vars_mm_check_policy_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_uefi_event(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_UEFI_EVENT_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.23, ptr noundef %0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @uefi_vars_pcap_reply(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{i64 2152055072}
end_hunk_0
