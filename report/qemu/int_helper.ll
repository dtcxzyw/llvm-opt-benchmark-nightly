begin_hunk_0_@helper_das:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.ah, align 8
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_divq_EAX(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.c = ptrtoint ptr %i.b to i64
  tail call void @raise_exception_ra(ptr noundef %0, i32 noundef 0, i64 noundef %i.c) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 16               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16             ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = udiv i64 %i.d, %1
  %i.i = urem i64 %i.d, %1
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp ult i64 %i.f, %1
  br i1 %.not.i, label %.preheader.i, label %div64.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.02941.i = phi i32 [ %i.r, %.preheader.i ], [ 0, %bb.e ]
  %.03040.i = phi i64 [ %i.q, %.preheader.i ], [ %i.d, %bb.e ] ; 2 uses
  %.03139.i = phi i64 [ %.1.i.1, %.preheader.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.j = tail call i64 @llvm.fshl.i64(i64 %.03139.i, i64 %.03040.i, i64 1) ; 2 uses
  %.not37.i = icmp slt i64 %.03139.i, 0
  %.not38.i = icmp uge i64 %i.j, %1
  %or.cond.not.i = select i1 %.not37.i, i1 true, i1 %.not38.i ; 2 uses
  %i.k = select i1 %or.cond.not.i, i64 %1, i64 0
  %.1.i = sub i64 %i.j, %i.k                      ; 2 uses
  %.0.i = zext i1 %or.cond.not.i to i64
  %i.l = shl i64 %.03040.i, 1                     ; 2 uses
  %i.m = or disjoint i64 %i.l, %.0.i
  %i.n = tail call i64 @llvm.fshl.i64(i64 %.1.i, i64 %i.l, i64 1) ; 2 uses
  %.not37.i.1 = icmp slt i64 %.1.i, 0
  %.not38.i.1 = icmp uge i64 %i.n, %1
  %or.cond.not.i.1 = select i1 %.not37.i.1, i1 true, i1 %.not38.i.1 ; 2 uses
  %i.o = select i1 %or.cond.not.i.1, i64 %1, i64 0
  %.1.i.1 = sub i64 %i.n, %i.o                    ; 2 uses
  %.0.i.1 = zext i1 %or.cond.not.i.1 to i64
  %i.p = shl i64 %i.m, 1
  %i.q = or disjoint i64 %i.p, %.0.i.1            ; 2 uses
  %i.r = add nuw nsw i32 %.02941.i, 2             ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.r, 64
  br i1 %exitcond.not.i.1, label %.loopexit, label %.preheader.i, !llvm.loop !7

div64.exit:                                       ; preds = %bb.e
  %i.s = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.t = ptrtoint ptr %i.s to i64
  tail call void @raise_exception_ra(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.t) #9
  unreachable

.loopexit:                                        ; preds = %.preheader.i, %bb.d
  %.010.ph = phi i64 [ %i.h, %bb.d ], [ %i.q, %.preheader.i ]
  %.0.ph = phi i64 [ %i.i, %bb.d ], [ %.1.i.1, %.preheader.i ]
  store i64 %.010.ph, ptr %0, align 16
  store i64 %.0.ph, ptr %i.e, align 16
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_idivq_EAX(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.c = ptrtoint ptr %i.b to i64
  tail call void @raise_exception_ra(ptr noundef %0, i32 noundef 0, i64 noundef %i.c) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 16               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16             ; 5 uses
  %i.g = icmp sgt i64 %i.f, -1                    ; 3 uses
  br i1 %i.g, label %neg128.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = xor i64 %i.f, -1
  %i.i = sub i64 0, %i.d
  %i.j = icmp eq i64 %i.d, 0
  br i1 %i.j, label %neg128.exit.i.thread, label %neg128.exit.i

neg128.exit.i.thread:                             ; preds = %bb.d
  %i.k = sub i64 0, %i.f
  %spec.select.i20 = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false)
  br label %bb.f

neg128.exit.i:                                    ; preds = %bb.d, %bb.c
  %i.l = phi i64 [ %i.d, %bb.c ], [ %i.i, %bb.d ] ; 3 uses
  %i.m = phi i64 [ %i.f, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 range(i64 1, 0) %1, i1 false) ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %neg128.exit.i
  %i.o = udiv i64 %i.l, %spec.select.i
  %i.p = urem i64 %i.l, %spec.select.i
  br label %.loopexit.i

bb.f:                                             ; preds = %neg128.exit.i.thread, %neg128.exit.i
  %spec.select.i23 = phi i64 [ %spec.select.i20, %neg128.exit.i.thread ], [ %spec.select.i, %neg128.exit.i ] ; 5 uses
  %i.q = phi i64 [ %i.k, %neg128.exit.i.thread ], [ %i.m, %neg128.exit.i ] ; 2 uses
  %i.r = phi i64 [ 0, %neg128.exit.i.thread ], [ %i.l, %neg128.exit.i ]
  %.not.i.i = icmp ult i64 %i.q, %spec.select.i23
  br i1 %.not.i.i, label %.preheader.i.i, label %idiv64.exit.thread33

.preheader.i.i:                                   ; preds = %bb.f, %.preheader.i.i
  %.02941.i.i = phi i32 [ %i.aa, %.preheader.i.i ], [ 0, %bb.f ]
  %.03040.i.i = phi i64 [ %i.z, %.preheader.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %.03139.i.i = phi i64 [ %.1.i.i.1, %.preheader.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %.03139.i.i, i64 %.03040.i.i, i64 1) ; 2 uses
  %.not37.i.i = icmp slt i64 %.03139.i.i, 0
  %.not38.i.i = icmp uge i64 %i.s, %spec.select.i23
  %or.cond.not.i.i = select i1 %.not37.i.i, i1 true, i1 %.not38.i.i ; 2 uses
  %i.t = select i1 %or.cond.not.i.i, i64 %spec.select.i23, i64 0
  %.1.i.i = sub i64 %i.s, %i.t                    ; 2 uses
  %.0.i.i = zext i1 %or.cond.not.i.i to i64
  %i.u = shl i64 %.03040.i.i, 1                   ; 2 uses
  %i.v = or disjoint i64 %i.u, %.0.i.i
  %i.w = tail call i64 @llvm.fshl.i64(i64 %.1.i.i, i64 %i.u, i64 1) ; 2 uses
  %.not37.i.i.1 = icmp slt i64 %.1.i.i, 0
  %.not38.i.i.1 = icmp uge i64 %i.w, %spec.select.i23
  %or.cond.not.i.i.1 = select i1 %.not37.i.i.1, i1 true, i1 %.not38.i.i.1 ; 2 uses
  %i.x = select i1 %or.cond.not.i.i.1, i64 %spec.select.i23, i64 0
  %.1.i.i.1 = sub i64 %i.w, %i.x                  ; 2 uses
  %.0.i.i.1 = zext i1 %or.cond.not.i.i.1 to i64
  %i.y = shl i64 %i.v, 1
  %i.z = or disjoint i64 %i.y, %.0.i.i.1          ; 2 uses
  %i.aa = add nuw nsw i32 %.02941.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.aa, 64
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !7

.loopexit.i:                                      ; preds = %.preheader.i.i, %bb.e
  %storemerge36.i.i = phi i64 [ %i.o, %bb.e ], [ %i.z, %.preheader.i.i ] ; 6 uses
  %storemerge.i.i = phi i64 [ %i.p, %bb.e ], [ %.1.i.i.1, %.preheader.i.i ] ; 3 uses
  %.lobit23.i = xor i64 %i.f, %1
  %.not24.i = icmp sgt i64 %.lobit23.i, -1
  br i1 %.not24.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i
  %i.ab = icmp ugt i64 %storemerge36.i.i, -9223372036854775808
  br i1 %i.ab, label %idiv64.exit.thread33, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = sub i64 0, %storemerge36.i.i            ; 2 uses
  br i1 %i.g, label %idiv64.exit.thread, label %._crit_edge.i

bb.i:                                             ; preds = %.loopexit.i
  %i.ad = icmp slt i64 %storemerge36.i.i, 0
  %brmerge.i = or i1 %i.g, %i.ad
  br i1 %brmerge.i, label %idiv64.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.i
  %.117 = phi i64 [ %storemerge36.i.i, %bb.i ], [ %i.ac, %bb.h ]
  %i.ae = sub i64 0, %storemerge.i.i
  br label %idiv64.exit.thread

idiv64.exit:                                      ; preds = %bb.i
  %.not = icmp sgt i64 %storemerge36.i.i, -1
  br i1 %.not, label %idiv64.exit.thread, label %idiv64.exit.thread33

idiv64.exit.thread33:                             ; preds = %bb.f, %bb.g, %idiv64.exit
  %i.af = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.ag = ptrtoint ptr %i.af to i64
  tail call void @raise_exception_ra(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.ag) #9
  unreachable

idiv64.exit.thread:                               ; preds = %._crit_edge.i, %bb.h, %idiv64.exit
  %.129 = phi i64 [ %storemerge.i.i, %idiv64.exit ], [ %storemerge.i.i, %bb.h ], [ %i.ae, %._crit_edge.i ]
  %.228 = phi i64 [ %storemerge36.i.i, %idiv64.exit ], [ %i.ac, %bb.h ], [ %.117, %._crit_edge.i ]
  store i64 %.228, ptr %0, align 16
  store i64 %.129, ptr %i.e, align 16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable
define dso_local i64 @helper_pdep(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not12 = icmp eq i64 %1, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.01014 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.01113 = phi i64 [ %i.b, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %2 = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.01113, i1 true)
  %i.a = add i64 %.01113, -1
  %i.b = and i64 %i.a, %.01113                    ; 2 uses
  %i.c = zext nneg i32 %.015 to i64
  %i.d = lshr i64 %0, %i.c
  %i.e = and i64 %i.d, 1
  %3 = shl nuw i64 %i.e, %2
  %i.f = or i64 %3, %.01014                       ; 2 uses
  %i.g = add i32 %.015, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.010.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph ]
  ret i64 %.010.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable
define dso_local i64 @helper_pext(i64 noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not12 = icmp eq i64 %1, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.01014 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]
  %.01113 = phi i64 [ %i.c, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.01113, i1 true)
  %i.b = add i64 %.01113, -1
  %i.c = and i64 %i.b, %.01113                    ; 2 uses
  %i.d = lshr i64 %0, %i.a
  %i.e = and i64 %i.d, 1
  %i.f = zext nneg i32 %.015 to i64
  %i.g = shl nuw i64 %i.e, %i.f
  %i.h = or i64 %i.g, %.01014                     ; 2 uses
  %i.i = add i32 %.015, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.010.lcssa = phi i64 [ 0, %bb.a ], [ %i.h, %.lr.ph ]
  ret i64 %.010.lcssa
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_cr4_testbit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.b = load i64, ptr %i.a, align 8
  %i.c = zext i32 %1 to i64
  %i.d = and i64 %i.b, %i.c
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.g = ptrtoint ptr %i.f to i64
  tail call void @raise_exception_ra(ptr noundef nonnull %0, i32 noundef 6, i64 noundef %i.g) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @helper_rdrand(ptr nofree noundef writeonly captures(none) initializes((280, 288), (296, 300)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 0, ptr %i.b, align 8, !annotation !12
  %i.c = call i32 @qemu_guest_getrandom(ptr noundef nonnull %i.b, i64 noundef 8, ptr noundef nonnull %i.a) #10
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @qemu_loglevel, align 4
  %i.f = and i32 %i.e, 1024
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = call ptr @error_get_pretty(ptr noundef %i.g) #10
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str, ptr noundef %i.h) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8
  call void @error_free(ptr noundef %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.j, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 1, ptr %i.k, align 8
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %.pre, %bb.e ], [ 0, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.l
}

declare i32 @qemu_guest_getrandom(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #5

declare ptr @error_get_pretty(ptr noundef) local_unnamed_addr #5

declare void @error_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

attributes #0 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nofree noinline norecurse nosync nounwind sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
