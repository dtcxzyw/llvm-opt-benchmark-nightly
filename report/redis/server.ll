inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@addReplyCommandArgList:bb.a
  %.not = icmp eq i32 %i.e, -1
  %spec.select = select i1 %.not, i64 2, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !607
  %4 = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %5 = load ptr, ptr %4, align 8, !tbaa !608
  %6 = load <2 x ptr>, ptr %i.f, align 8, !tbaa !344
  %7 = insertelement <4 x ptr> poison, ptr %i.h, i64 2
  %8 = insertelement <4 x ptr> %7, ptr %5, i64 3
  %9 = shufflevector <2 x ptr> %6, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x ptr> %9, <4 x ptr> %8, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %11 = icmp ne <4 x ptr> %10, zeroinitializer
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %12 = load i32, ptr %i.i, align 8, !tbaa !609
  %.not103.a = icmp ne i32 %12, 0
  %i.j = zext i1 %.not103.a to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !610
  %.off113 = add i32 %i.l, -7
  %switch114 = icmp ult i32 %.off113, 2           ; 3 uses
  %13 = zext i1 %switch114 to i64
  %not.switch114 = xor i1 %switch114, true
  %14 = zext i1 %not.switch114 to i64
  %15 = bitcast <4 x i1> %11 to i4
  %16 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %15)
  %i.m = zext nneg i4 %16 to i64
  %op.rdx = add nuw nsw i64 %i.m, %i.j
  %op.rdx120 = add nuw nsw i64 %13, %14
  %op.rdx121 = add nuw nsw i64 %op.rdx, %op.rdx120
  %op.rdx122 = add nuw nsw i64 %op.rdx121, %spec.select
  tail call void @addReplyMapLen(ptr noundef %0, i64 noundef %op.rdx122) #42
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.280) #42
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !611
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.n) #42
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.281) #42
  %i.o = load i32, ptr %i.k, align 8, !tbaa !610
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @ARG_TYPE_STR, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !344
end_hunk_0
begin_hunk_1_@addReplyCommandArgList:bb.a
bb.b:                                             ; preds = %.lr.ph
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.282) #42
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !612  ; 2 uses
  %.not105 = icmp eq ptr %i.t, null
  br i1 %.not105, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !611
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_1
begin_hunk_2_@addReplyCommandArgList:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !613
  %.not107 = icmp eq ptr %i.z, null
  br i1 %.not107, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.284) #42
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !613
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.aa) #42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = load ptr, ptr %3, align 8, !tbaa !614
  %.not108 = icmp eq ptr %i.ab, null
  br i1 %.not108, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.285) #42
  %i.ac = load ptr, ptr %3, align 8, !tbaa !614
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ac) #42
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !607
  %.not109 = icmp eq ptr %i.ad, null
  br i1 %.not109, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.286) #42
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !607
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ae) #42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = load ptr, ptr %4, align 8, !tbaa !608
  %.not110 = icmp eq ptr %i.af, null
  br i1 %.not110, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.287) #42
  %i.ag = load ptr, ptr %4, align 8, !tbaa !608
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef %i.ag) #42
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !609
  %.not111 = icmp eq i32 %i.ah, 0
  br i1 %.not111, label %addReplyFlagsForArg.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @addReplyBulkCString(ptr noundef %0, ptr noundef nonnull @.str.288) #42
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !609 ; 4 uses
  %i.aj = zext i32 %i.ai to i64                   ; 3 uses
  %i.ak = and i64 %i.aj, 1
  %i.al = lshr i64 %i.aj, 1
end_hunk_2
begin_hunk_3_@addReplyCommandArgList:bb.a
  br label %addReplyFlagsForArg.exit

addReplyFlagsForArg.exit:                         ; preds = %bb.s, %.lr.ph29.i.2.i, %bb.o
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !610
  %.off = add i32 %i.aq, -7
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.t, label %bb.u
end_hunk_3
begin_hunk_4_@llvm.assume
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v16i64(<16 x i64>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #40

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
begin_hunk_5_@llvm.ctpop.i4/@llvm.vector.reduce.add.v16i64
!604 = !{!389, !10, i64 32}
!605 = !{!606, !10, i64 12}
!606 = !{!"redisCommandArg", !16, i64 0, !10, i64 8, !10, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !10, i64 40, !16, i64 48, !10, i64 56, !390, i64 64, !16, i64 72}
!607 = !{!606, !16, i64 32}
!608 = !{!606, !16, i64 48}
!609 = !{!606, !10, i64 40}
!610 = !{!606, !10, i64 8}
!611 = !{!606, !16, i64 0}
!612 = !{!606, !16, i64 72}
!613 = !{!606, !16, i64 16}
!614 = !{!606, !16, i64 24}
!615 = !{!606, !390, i64 64}
!616 = !{!606, !10, i64 56}
!617 = distinct !{!617, !154}
end_hunk_5
