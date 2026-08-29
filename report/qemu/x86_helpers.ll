Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/x86_helpers?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
begin_hunk_0_@x86_is_v8086:bb.a
  %i.p = and i64 %i.o, 131072
  %i.q = icmp ne i64 %i.p, 0
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.e, %x86_is_protected.exit
  %i.r = phi i1 [ false, %x86_is_protected.exit ], [ %i.q, %bb.e ], [ false, %.split ]
  ret i1 %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @x86_is_long_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.b = load ptr, ptr @emul_ops, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 %i.d(ptr noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 17224
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 1280
  %i.i = icmp eq i64 %i.h, 1280
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @x86_is_la57(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.b = load ptr, ptr @emul_ops, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 %i.d(ptr noundef %0, i32 noundef 4) #7, !inline_history !7
  br label %x86_read_cr.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 17080
  %i.g = load i64, ptr %i.f, align 8
  br label %x86_read_cr.exit

x86_read_cr.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = and i64 %.0.i, 4096
  %i.i = icmp ne i64 %i.h, 0
  ret i1 %i.i
}

; Function Attrs: cold noreturn nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @x86_is_long64_mode(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #4 {
bb.a:
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.1) #7
  tail call void @abort() #9
  unreachable
}

declare void @error_report(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @x86_is_paging_mode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.b = load ptr, ptr @emul_ops, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 %i.d(ptr noundef %0, i32 noundef 0) #7, !inline_history !7
  br label %x86_read_cr.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 17048
  %i.g = load i64, ptr %i.f, align 8
  br label %x86_read_cr.exit

x86_read_cr.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = and i64 %.0.i, 2147483648
  %i.i = icmp ne i64 %i.h, 0
  ret i1 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @x86_is_pae_enabled(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.b = load ptr, ptr @emul_ops, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 %i.d(ptr noundef %0, i32 noundef 4) #7, !inline_history !7
  br label %x86_read_cr.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 17080
  %i.g = load i64, ptr %i.f, align 8
  br label %x86_read_cr.exit

x86_read_cr.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = and i64 %.0.i, 32
  %i.i = icmp ne i64 %i.h, 0
  ret i1 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @linear_addr(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.x86_segment_descriptor, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !10
  %i.a = load ptr, ptr @emul_ops, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %2) #7, !inline_history !11
  %.val.i = load i64, ptr %3, align 8             ; 3 uses
  %sh.diff.i.i = lshr i64 %.val.i, 32
  %tr.sh.diff.i.i = trunc nuw i64 %sh.diff.i.i to i32
  %i.d = and i32 %tr.sh.diff.i.i, -16777216
  %sh.diff3.i.i = lshr i64 %.val.i, 16
  %tr.sh.diff4.i.i = trunc i64 %sh.diff3.i.i to i32
  %i.e = and i32 %tr.sh.diff4.i.i, 16711680
  %i.f = trunc i64 %.val.i to i32
  %i.g = lshr i32 %i.f, 16
  %i.h = or disjoint i32 %i.e, %i.g
  %i.i = or disjoint i32 %i.h, %i.d
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = load ptr, ptr @emul_ops, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.b, label %.split.i.i

.split.i.i:                                       ; preds = %bb.a
  %i.n = call zeroext i1 %i.m(ptr noundef %0) #7, !inline_history !12
  br i1 %i.n, label %bb.e, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.o = call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.p = load ptr, ptr @emul_ops, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = call i64 %i.r(ptr noundef %0, i32 noundef 0) #7, !inline_history !13
  br label %x86_is_protected.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 17048
  %i.u = load i64, ptr %i.t, align 8
  br label %x86_is_protected.exit.i.i

x86_is_protected.exit.i.i:                        ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ]
  %i.v = trunc i64 %.0.i.i.i.i to i1
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %x86_is_protected.exit.i.i, %.split.i.i
  %i.w = call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #7
  %i.x = load ptr, ptr @emul_ops, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i2.i.i, label %x86_is_long_mode.exit.i.i, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.aa = call zeroext i1 %i.z(ptr noundef %0) #7, !inline_history !14
  br i1 %i.aa, label %cpu_mode.exit.i, label %bb.g

x86_is_long_mode.exit.i.i:                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 17224
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 1280
  %i.ae = icmp eq i64 %i.ad, 1280
  br i1 %i.ae, label %cpu_mode.exit.i, label %bb.g

cpu_mode.exit.i:                                  ; preds = %x86_is_long_mode.exit.i.i, %.split.i
  %i.af = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %i.j)
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %bb.f, label %bb.n

bb.f:                                             ; preds = %cpu_mode.exit.i
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.5) #7
  br label %bb.m

bb.g:                                             ; preds = %x86_is_long_mode.exit.i.i, %.split.i, %x86_is_protected.exit.i.i, %.split.i.i
  %i.ah = load i64, ptr %3, align 8               ; 5 uses
  %i.ai = and i64 %1, 4294967295                  ; 3 uses
  %sh.diff.i22.i = lshr i64 %i.ah, 32
  %tr.sh.diff.i23.i = trunc nuw i64 %sh.diff.i22.i to i32
  %i.aj = and i32 %tr.sh.diff.i23.i, 983040
  %i.ak = trunc i64 %i.ah to i32
  %i.al = and i32 %i.ak, 65535
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = and i64 %i.ah, 36028797018963968
  %.not.i.i = icmp eq i64 %i.an, 0
  %i.ao = shl nuw i32 %i.am, 12
  %i.ap = or disjoint i32 %i.ao, 4095
  %.0.i24.i = select i1 %.not.i.i, i32 %i.am, i32 %i.ap ; 2 uses
  %i.aq = and i64 %i.ah, 13194139533312
  %.0.i25.i = icmp eq i64 %i.aq, 4398046511104
  br i1 %.0.i25.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ar = zext i32 %.0.i24.i to i64
  %.not.i = icmp samesign ult i64 %i.ai, %i.ar
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.7) #7
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.as = and i64 %i.ah, 18014398509481984
  %.not.i26.i = icmp eq i64 %i.as, 0
  %..i.i = select i1 %.not.i26.i, i32 65535, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.0.i = phi i32 [ %..i.i, %bb.j ], [ %.0.i24.i, %bb.g ] ; 2 uses
  %i.at = zext i32 %.0.i to i64
  %i.au = icmp samesign ugt i64 %i.ai, %i.at
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.8, i32 noundef %.0.i) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.2) #7
  call void @abort() #9
  unreachable

bb.n:                                             ; preds = %bb.k, %cpu_mode.exit.i
  %.0.a = phi i64 [ %1, %cpu_mode.exit.i ], [ %i.ai, %bb.k ]
  %.0 = add nuw i64 %.0.a, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @linear_addr_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 2, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %1, 65535
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = and i64 %1, 4294967295
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i64 [ %1, %bb.a ], [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  %i.c = tail call i64 @linear_addr(ptr noundef %0, i64 noundef %.0, i32 noundef %3)
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @linear_rip(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @linear_addr(ptr noundef %0, i64 noundef %1, i32 noundef 1)
  ret i64 %i.a
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { cold noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{ptr @x86_read_cr}
!8 = !{ptr @x86_is_protected}
!9 = !{ptr @x86_is_protected, ptr @x86_read_cr}
!10 = !{!"auto-init"}
!11 = distinct !{null}
!12 = distinct !{null, null, ptr @x86_is_protected}
!13 = distinct !{null, null, ptr @x86_is_protected, ptr @x86_read_cr}
!14 = distinct !{null, null, ptr @x86_is_long_mode}
end_hunk_0
