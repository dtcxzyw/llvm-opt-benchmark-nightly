begin_hunk_0_@_Z14ReadBERIntegerPhPi:bb.a
  %i.x = load i8, ptr %i.w, align 1, !tbaa !27    ; 2 uses
  %i.y = shl i32 %i.v, 7
  %i.z = and i8 %i.x, 127
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa
  %.not.4 = icmp slt i8 %i.x, 0
  %.not14.not.4 = icmp samesign ugt i32 %i.d, 4
  %or.cond24 = select i1 %.not.4, i1 %.not14.not.4, i1 false
  br i1 %or.cond24, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.lcssa20 = phi i32 [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.j, %bb.c ], [ %i.v, %bb.e ], [ %i.p, %bb.d ], [ %i.ab, %bb.f ]
  %.lcssa18 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 4, %bb.e ], [ 3, %bb.d ], [ 5, %bb.f ]
  store i32 %.lcssa18, ptr %1, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.critedge
  %.011 = phi i32 [ %.lcssa20, %.critedge ], [ 0, %bb.f ]
  ret i32 %.011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z20BuildBasePacketTable22AudioFormatDescriptioniPiP25port_CAFPacketTableHeader(ptr noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2, ptr noundef writeonly captures(none) initializes((0, 24)) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = lshr i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %i.f = mul i32 %i.c, %i.e                       ; 2 uses
  %i.g = udiv i32 %1, %i.f                        ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.i, align 1, !tbaa !32
  %i.j = lshr i64 %i.h, 12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.k, align 1, !tbaa !33
  %i.l = and i32 %i.g, 4095
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = sub nuw nsw i32 4096, %i.l
  store i32 %i.n, ptr %i.m, align 1, !tbaa !34
  %i.o = add nuw nsw i64 %i.j, 1                  ; 2 uses
  store i64 %i.o, ptr %3, align 1, !tbaa !29
  %i.p = shl i32 %i.f, 12
  %i.q = or disjoint i32 %i.p, 8
  %i.r = icmp slt i32 %i.q, 16384
  %.0 = select i1 %i.r, i64 2, i64 3
  %i.s = mul nuw nsw i64 %.0, %i.o
  %i.t = trunc nuw nsw i64 %i.s to i32
  store i32 %i.t, ptr %2, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 -1, 256) i32 @_Z30GetMagicCookieSizeFromCAFFkukiP8_IO_FILE(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  %i.b = tail call i64 @ftell(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.f = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0)
  %i.g = load i32, ptr %i.a, align 16
  %cond = icmp eq i32 %i.g, 1768650091
  br i1 %cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.h = load i8, ptr %i.e, align 1, !tbaa !27
  %i.i = zext i8 %i.h to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i32
  %i.k = load i32, ptr %i.d, align 8
  %i.l = tail call i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = zext i32 %i.l to i64
  %i.n = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.m, i32 noundef 1) ; 0 uses
  %i.o = icmp slt i32 %i.j, 1
  br i1 %i.o, label %.loopexit, label %bb.b, !llvm.loop !35

.loopexit:                                        ; preds = %bb.c, %.thread
  %.0.21 = phi i32 [ %i.i, %.thread ], [ -1, %bb.c ]
  %sext = shl i64 %i.b, 32
  %i.p = ashr exact i64 %sext, 32
  %i.q = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.p, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0.21
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @_Z26GetMagicCookieFromCAFFkukiP8_IO_FILEPhPj(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = tail call i64 @ftell(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %i.f = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0)
  %i.g = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.g, 1768650091
  br i1 %cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.e, align 1, !tbaa !27    ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !4
  %.not = icmp ult i32 %i.j, %i.i
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i8 %i.h to i64
  %i.l = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.k, ptr noundef %0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ]
  %.1.neg = phi i32 [ 0, %bb.d ], [ -1, %bb.c ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !4
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = trunc i64 %i.f to i32
  %i.n = load i32, ptr %i.d, align 4
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = zext i32 %i.o to i64
  %i.q = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.p, i32 noundef 1) ; 0 uses
  %i.r = icmp slt i32 %i.m, 1
  br i1 %i.r, label %.loopexit, label %bb.b, !llvm.loop !36

.loopexit:                                        ; preds = %bb.e, %.thread
  %. = phi i32 [ %.1.neg, %.thread ], [ -1, %bb.e ]
  %sext = shl i64 %i.b, 32
  %i.s = ashr exact i64 %sext, 32
  %i.t = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.s, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i1 @_Z17FindCAFFDataStartP8_IO_FILEPiS1_(ptr noundef captures(none) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0)
  %i.e = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.e, 1635017060            ; 2 uses
  br i1 %cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = tail call i64 @ftell(ptr noundef %0)
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 4
  store i32 %i.h, ptr %1, align 4, !tbaa !4
  %i.i = load i32, ptr %i.c, align 4
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = add nsw i32 %i.j, -4
  store i32 %i.k, ptr %2, align 4, !tbaa !4
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.d to i32
  %i.m = load i32, ptr %i.c, align 4
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.o, i32 noundef 1) ; 0 uses
  %i.q = icmp slt i32 %i.l, 1
  br i1 %i.q, label %.loopexit, label %bb.b, !llvm.loop !37

.loopexit:                                        ; preds = %bb.c, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %cond
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z17GetCAFFdescFormatP8_IO_FILEP22AudioFormatDescription(ptr noundef captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef 4, i32 noundef 1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef %0) ; 0 uses
  %i.p = load i32, ptr %i.a, align 16
  %cond = icmp eq i32 %i.p, 1668506980
  br i1 %cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 1) ; 0 uses
  %i.r = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 32, ptr noundef %0) ; 0 uses
  %i.s = load i32, ptr %i.d, align 8, !tbaa !17
  %i.t = tail call i32 @Swap32BtoN(i32 noundef %i.s)
  store i32 %i.t, ptr %i.e, align 8, !tbaa !13
  %i.u = load i32, ptr %i.f, align 8, !tbaa !24
  %i.v = tail call i32 @Swap32BtoN(i32 noundef %i.u)
  store i32 %i.v, ptr %i.g, align 4, !tbaa !23
  %i.w = load double, ptr %i.a, align 16, !tbaa !15
  %i.x = tail call double @SwapFloat64BtoN(double noundef %i.w)
  store double %i.x, ptr %1, align 8, !tbaa !14
  %i.y = load i32, ptr %i.h, align 4, !tbaa !26
  %i.z = tail call i32 @Swap32BtoN(i32 noundef %i.y)
  store i32 %i.z, ptr %i.i, align 8, !tbaa !25
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !18
  %i.ab = tail call i32 @Swap32BtoN(i32 noundef %i.aa)
  store i32 %i.ab, ptr %i.k, align 4, !tbaa !10
  %i.ac = load i32, ptr %i.l, align 16, !tbaa !20
  %i.ad = tail call i32 @Swap32BtoN(i32 noundef %i.ac) ; 2 uses
  store i32 %i.ad, ptr %i.m, align 8, !tbaa !19
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !13
  %i.af = icmp eq i32 %i.ae, 1634492771
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !38
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  store i32 %i.ad, ptr %i.n, align 8, !tbaa !38
  %i.ag = load i32, ptr %i.k, align 4, !tbaa !10  ; 3 uses
  %i.ah = and i32 %i.ag, 2
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %4, label %2

2:                                                ; preds = %bb.e
  %3 = and i32 %i.ag, -4
  store i32 %3, ptr %i.k, align 4, !tbaa !10
  br label %bb.g

4:                                                ; preds = %bb.e
  %5 = or disjoint i32 %i.ag, 2
  store i32 %5, ptr %i.k, align 4, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ai = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8, ptr noundef %0) ; 0 uses
  %i.aj = load i32, ptr %i.c, align 4
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.al, i32 noundef 1) ; 0 uses
  br label %bb.b, !llvm.loop !39

bb.g:                                             ; preds = %bb.d, %4, %2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22
  %i.ar = tail call i32 @Swap32BtoN(i32 noundef %i.aq)
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !21
  store i32 0, ptr %i.an, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 true
}

declare i32 @Swap32BtoN(i32 noundef) local_unnamed_addr #4

declare double @SwapFloat64BtoN(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !5, i64 12}
!11 = !{!"_ZTS22AudioFormatDescription", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !5, i64 8}
!14 = !{!11, !12, i64 0}
!15 = !{!16, !12, i64 0}
!16 = !{!"_ZTS24port_CAFAudioDescription", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28}
!17 = !{!16, !5, i64 8}
!18 = !{!16, !5, i64 12}
!19 = !{!11, !5, i64 16}
!20 = !{!16, !5, i64 16}
!21 = !{!11, !5, i64 20}
!22 = !{!16, !5, i64 20}
!23 = !{!11, !5, i64 28}
!24 = !{!16, !5, i64 24}
!25 = !{!11, !5, i64 32}
!26 = !{!16, !5, i64 28}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !9}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTS25port_CAFPacketTableHeader", !31, i64 0, !31, i64 8, !5, i64 16, !5, i64 20, !6, i64 24}
!31 = !{!"long", !6, i64 0}
!32 = !{!30, !31, i64 8}
!33 = !{!30, !5, i64 16}
!34 = !{!30, !5, i64 20}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = !{!11, !5, i64 24}
!39 = distinct !{!39, !9}
!40 = !{!11, !5, i64 36}
end_hunk_0
