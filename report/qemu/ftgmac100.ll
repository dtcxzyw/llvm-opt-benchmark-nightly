Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ftgmac100?download=true
inline.NumInlined: 132
inline.NumDeleted: 40
begin_hunk_0_@ftgmac100_receive:bb.a

bb.ai:                                            ; preds = %.thread, %bb.ah, %bb.ag
  %i.fq = phi i32 [ %i.fg, %.thread ], [ %.reass, %bb.ah ], [ %i.fm, %bb.ag ]
  %.1144184 = phi ptr [ %.0143207, %.thread ], [ %i.fk, %bb.ah ], [ %i.fk, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i32 %i.fq, ptr %3, align 4
  %i.fr = load <2 x i32>, ptr %i.cr, align 4
  store <2 x i32> %i.fr, ptr %i.cs, align 4
  %i.fs = load i32, ptr %i.co, align 4
  store i32 %i.fs, ptr %i.ct, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !11
  fence seq_cst
  %i.ft = call i32 @address_space_rw(ptr noundef nonnull @address_space_memory, i64 noundef %.0140208, i64 4294967296, ptr noundef nonnull %3, i64 noundef range(i64 -2147483648, 4294967296) 16, i1 noundef zeroext true) #7
  %.not.i173 = icmp eq i32 %i.ft, 0
  br i1 %.not.i173, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fu = load i32, ptr @qemu_loglevel, align 4
  %i.fv = and i32 %i.fu, 2048
  %.not14.i174 = icmp eq i32 %i.fv, 0
  br i1 %.not14.i174, label %bb.al, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.ftgmac100_write_bd, i64 noundef %.0140208) #7
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.fw = load i32, ptr %i.ci, align 8
  %i.fx = or i32 %i.fw, 256                       ; 2 uses
  store i32 %i.fx, ptr %i.ci, align 8
  br label %.loopexit

bb.am:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.fy = load i32, ptr %5, align 4
  %i.fz = load i32, ptr %i.cu, align 4
  %i.ga = and i32 %i.fz, %i.fy
  %.not162 = icmp eq i32 %i.ga, 0
  br i1 %.not162, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gb = load i64, ptr %i.cv, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gc = load i32, ptr %i.cw, align 8
  %i.gd = lshr i32 %i.gc, 9
  %i.ge = and i32 %i.gd, 120
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = add i64 %.0140208, %i.gf
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.1141 = phi i64 [ %i.gb, %bb.an ], [ %i.gg, %bb.ao ] ; 2 uses
  %.not156 = icmp eq i64 %i.dy, 0
  br i1 %.not156, label %.loopexit.loopexit, label %bb.o, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %bb.ap
  %.pre = load i32, ptr %i.ci, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n, %bb.al, %bb.x
  %i.gh = phi i32 [ %i.dr, %bb.x ], [ %i.fx, %bb.al ], [ %i.ck, %bb.n ], [ %.pre, %.loopexit.loopexit ]
  %.0140197 = phi i64 [ %.0140208, %bb.x ], [ %.0140208, %bb.al ], [ %i.cm, %bb.n ], [ %.1141, %.loopexit.loopexit ]
  store i64 %.0140197, ptr %i.cl, align 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 9032
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 19084
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = and i32 %i.gl, %i.gh
  call void @qemu_set_irq(ptr noundef %i.gj, i32 noundef %i.gm) #7
  br label %ftgmac100_filter.exit.thread

ftgmac100_filter.exit.thread:                     ; preds = %bb.h, %bb.d, %bb.f, %bb.g, %.loopexit190, %bb.s, %bb.a, %.loopexit
  %.0 = phi i64 [ -1, %bb.a ], [ %2, %.loopexit ], [ -1, %.loopexit190 ], [ -1, %bb.s ], [ %2, %bb.g ], [ %2, %bb.f ], [ %2, %bb.d ], [ %2, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ftgmac100_cleanup(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #7
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 15, ptr noundef nonnull @__func__.FTGMAC100) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ftgmac100_set_link(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @qemu_get_nic_opaque(ptr noundef %0) #7
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef 15, ptr noundef nonnull @__func__.FTGMAC100) #7 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @qemu_get_queue(ptr noundef %i.d) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %.not.i = icmp eq i32 %i.g, 0                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 19176 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 19188 ; 2 uses
  %i.k = and i32 %i.i, -37
  %masksel.i = select i1 %.not.i, i32 36, i32 0
  %.sink.i = or disjoint i32 %i.k, %masksel.i
  %.sink7.i = select i1 %.not.i, i32 2048, i32 256
  store i32 %.sink.i, ptr %i.h, align 8
  %i.l = load i32, ptr %i.j, align 4
  %i.m = or i32 %i.l, %.sink7.i
  store i32 %i.m, ptr %i.j, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 9032
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 19080
  %i.q = load i32, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 19084
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, %i.q
  tail call void @qemu_set_irq(ptr noundef %i.o, i32 noundef %i.t) #7
  ret void
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @net_crc32_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_mii_reset_hold(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37, i32 noundef 78, ptr noundef nonnull @__func__.ASPEED_MII) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1092
  store i64 0, ptr %i.b, align 16
  store i32 65536, ptr %i.c, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_mii_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37, i32 noundef 78, ptr noundef nonnull @__func__.ASPEED_MII) #7 ; 3 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 1400, ptr noundef nonnull @__PRETTY_FUNCTION__.aspeed_mii_realize) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull @aspeed_mii_ops, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.2, i64 noundef 8) #7
  tail call void @sysbus_init_mmio(ptr noundef %i.b, ptr noundef nonnull %i.e) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @aspeed_mii_read(ptr noundef %0, i64 noundef %1, i32 %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37, i32 noundef 78, ptr noundef nonnull @__func__.ASPEED_MII) #7
  switch i64 %1, label %bb.c [
    i64 0, label %bb.d
    i64 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 1353, ptr noundef nonnull @__func__.aspeed_mii_read, ptr noundef null) #8
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1092, %bb.b ], [ 1088, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink
  %.0.in = load i32, ptr %i.b, align 4
  %.0 = zext i32 %.0.in to i64
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @aspeed_mii_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.37, i32 noundef 78, ptr noundef nonnull @__func__.ASPEED_MII) #7 ; 7 uses
  switch i64 %1, label %bb.d [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.c = load i32, ptr %i.b, align 16
  %i.d = and i32 %i.c, -2147483648
  %4 = zext i32 %i.d to i64
  %5 = xor i64 %4, -1
  %6 = and i64 %2, %5
  %7 = trunc i64 %6 to i32
  br label %aspeed_mii_transition.exit

bb.c:                                             ; preds = %bb.a
  %i.e = trunc i64 %2 to i32
  %i.f = and i32 %i.e, -131072
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1092
  store i32 %i.f, ptr %i.g, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %.pre = load i32, ptr %.phi.trans.insert, align 16
  br label %aspeed_mii_transition.exit

bb.d:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.78, i32 noundef 1370, ptr noundef nonnull @__func__.aspeed_mii_write, ptr noundef null) #8
  unreachable

aspeed_mii_transition.exit:                       ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre, %bb.c ], [ %7, %bb.b ]  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 4 uses
  %i.j = icmp slt i32 %i.h, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1092 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = and i32 %i.l, -65537
  %masksel = select i1 %i.j, i32 0, i32 65536
  %.sink.i = or disjoint i32 %i.m, %masksel       ; 2 uses
  store i32 %i.h, ptr %i.i, align 16
  store i32 %.sink.i, ptr %i.k, align 4
  %i.n = zext i32 %i.h to i64                     ; 2 uses
  %i.o = and i64 %i.n, 268435456
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %aspeed_mii_transition.exit
  %i.p = and i32 %i.h, 2147483647
  store i32 %i.p, ptr %i.i, align 16
  %i.q = or i32 %i.l, 65536
  store i32 %i.q, ptr %i.k, align 4
  %i.r = load i32, ptr @qemu_loglevel, align 4
  %i.s = and i32 %i.r, 1024
  %.not16.i = icmp eq i32 %i.s, 0
  br i1 %.not16.i, label %aspeed_mii_do_phy_ctl.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.aspeed_mii_do_phy_ctl) #7
  br label %aspeed_mii_do_phy_ctl.exit

bb.g:                                             ; preds = %aspeed_mii_transition.exit
  %.not14.i = icmp sgt i32 %i.h, -1
  br i1 %.not14.i, label %aspeed_mii_do_phy_ctl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = lshr i32 %i.h, 16
  %i.u = trunc i32 %i.t to i8
  %i.v = and i8 %i.u, 31                          ; 2 uses
  %i.w = and i64 %i.n, 201326592
  switch i64 %i.w, label %bb.k [
    i64 67108864, label %bb.i
    i64 134217728, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = trunc i32 %i.h to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.z = load ptr, ptr %i.y, align 8
  tail call fastcc void @do_phy_write(ptr noundef %i.z, i8 noundef zeroext %i.v, i16 noundef zeroext %i.x)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.aa = and i32 %.sink.i, -65536
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call fastcc zeroext i16 @do_phy_read(ptr noundef %i.ac, i8 noundef zeroext %i.v)
  %i.ae = zext i16 %i.ad to i32
  %i.af = or disjoint i32 %i.aa, %i.ae
  store i32 %i.af, ptr %i.k, align 4
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 2048
  %.not15.i = icmp eq i32 %i.ah, 0
  br i1 %.not15.i, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.aspeed_mii_do_phy_ctl, i32 noundef %i.h) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ai = load i32, ptr %i.i, align 16
  %i.aj = and i32 %i.ai, 2147483647
  store i32 %i.aj, ptr %i.i, align 16
  %i.ak = load i32, ptr %i.k, align 4
  %i.al = or i32 %i.ak, 65536
  store i32 %i.al, ptr %i.k, align 4
  br label %aspeed_mii_do_phy_ctl.exit

aspeed_mii_do_phy_ctl.exit:                       ; preds = %bb.e, %bb.f, %bb.g, %bb.m
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 2152399019}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
