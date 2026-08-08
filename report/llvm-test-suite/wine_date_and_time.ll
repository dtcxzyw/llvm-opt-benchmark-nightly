inline.NumInlined: 10
inline.NumDeleted: 6
begin_hunk_0_@FileTimeToSystemTime:bb.a
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ag, ptr %1, align 2, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.af, ptr %i.aj, align 2, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.ai, ptr %i.ak, align 2, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.j, ptr %i.al, align 2, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.l, ptr %i.am, align 2, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 %i.m, ptr %i.an, align 2, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.d, ptr %i.ao, align 2, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.p, ptr %i.ap, align 2, !tbaa !33
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @LocalFileTimeToFileTime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i64, ptr %0, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = tail call i64 @time(ptr noundef null) #8
  store i64 %i.c, ptr %i.a, align 8, !tbaa !22
  %i.d = call ptr @localtime(ptr noundef nonnull %i.a) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = call ptr @gmtime(ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i32 %i.f, ptr %i.h, align 8, !tbaa !18
  %i.i = call i64 @mktime(ptr noundef %i.g) #8
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22
  %i.k = sub nsw i64 %i.i, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %sext.i = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext.i, 32
  %i.m = mul nsw i64 %i.l, 10000000
  %i.n = add nsw i64 %i.m, %i.b
  store i64 %i.n, ptr %1, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @GetSystemTime(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #8 ; 0 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !34
  %i.c = mul i64 %i.b, 10000000
  %i.d = add i64 %i.c, 116444736000000000
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36
  %i.g = mul nsw i64 %i.f, 10
  %i.h = add nsw i64 %i.d, %i.g                   ; 3 uses
  %i.i = srem i64 %i.h, 10000000
  %.lhs.trunc.i.i = trunc nsw i64 %i.i to i32
  %i.j = sdiv i32 %.lhs.trunc.i.i, 10000
  %i.k = trunc nsw i32 %i.j to i16
  %i.l = sdiv i64 %i.h, 10000000
  %i.m = sdiv i64 %i.h, 864000000000              ; 2 uses
  %i.n = srem i64 %i.l, 86400
  %i.o = trunc nsw i64 %i.n to i32                ; 2 uses
  %i.p = sdiv i32 %i.o, 3600
  %i.q = trunc nsw i32 %i.p to i16
  %i.r = srem i32 %i.o, 3600
  %.lhs.trunc1.i.i = trunc nsw i32 %i.r to i16    ; 2 uses
  %i.s = sdiv i16 %.lhs.trunc1.i.i, 60
  %i.t = srem i16 %.lhs.trunc1.i.i, 60
  %i.u = trunc nsw i64 %i.m to i32                ; 2 uses
  %.lhs.trunc5.i.i = add nsw i32 %i.u, 1
  %i.v = srem i32 %.lhs.trunc5.i.i, 7
  %i.w = trunc nsw i32 %i.v to i16
  %i.x = shl nsw i32 %i.u, 2
  %.lhs.trunc7.i.i = add nsw i32 %i.x, 1227
  %i.y = sdiv i32 %.lhs.trunc7.i.i, 146097
  %i.z = trunc nsw i32 %i.y to i16
  %i.aa = mul nsw i16 %i.z, 3
  %.lhs.trunc9.i.i = add nsw i16 %i.aa, 3
  %i.ab = sdiv i16 %.lhs.trunc9.i.i, 4
  %.sext10.i.i = sext i16 %i.ab to i64
  %i.ac = add nsw i64 %i.m, 28188
  %i.ad = add nsw i64 %i.ac, %.sext10.i.i         ; 2 uses
  %i.ae = trunc nsw i64 %i.ad to i32
  %i.af = mul nsw i32 %i.ae, 20
  %.lhs.trunc11.i.i = add nsw i32 %i.af, -2442
  %i.ag = sdiv i32 %.lhs.trunc11.i.i, 7305        ; 2 uses
  %.neg.lhs.trunc.i.i = mul nsw i32 %i.ag, 1461
  %.neg13.i.i = sdiv i32 %.neg.lhs.trunc.i.i, -4
  %.neg.sext.i.i = sext i32 %.neg13.i.i to i64
  %i.ah = add nsw i64 %i.ad, %.neg.sext.i.i       ; 3 uses
  %.tr18.i.i = trunc nsw i64 %i.ah to i32
  %.lhs.trunc14.i.i = shl nsw i32 %.tr18.i.i, 6
  %i.ai = sdiv i32 %.lhs.trunc14.i.i, 1959        ; 2 uses
  %i.aj = icmp slt i64 %i.ah, 429                 ; 2 uses
  %i.ak = trunc i32 %i.ai to i16
  %i.al = trunc nsw i32 %i.ag to i16
  %..i.i = select i1 %i.aj, i16 -1, i16 -13
  %.21.i.i = select i1 %i.aj, i16 1524, i16 1525
  %i.am = add i16 %..i.i, %i.ak
  %i.an = add nsw i16 %.21.i.i, %i.al
  %.neg32.lhs.trunc.i.i = mul nsw i32 %i.ai, 1959
  %.neg3216.i.i = sdiv i32 %.neg32.lhs.trunc.i.i, -64
  %.neg32.sext.i.i = zext i32 %.neg3216.i.i to i64
  %i.ao = add nsw i64 %i.ah, %.neg32.sext.i.i
  %i.ap = trunc i64 %i.ao to i16
  store i16 %i.an, ptr %0, align 2, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.am, ptr %i.aq, align 2, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.ap, ptr %i.ar, align 2, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.q, ptr %i.as, align 2, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.s, ptr %i.at, align 2, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.t, ptr %i.au, align 2, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.k, ptr %i.av, align 2, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.w, ptr %i.aw, align 2, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SystemTimeToFileTime(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !27   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <4 x i16>, ptr %i.d, align 2, !tbaa !23
  %.fr = freeze <4 x i16> %i.e                    ; 5 uses
  %i.f = icmp ugt <4 x i16> %.fr, <i16 23, i16 59, i16 59, i16 999>
  %i.g = add i16 %i.c, -13
  %or.cond45.i = icmp ult i16 %i.g, -12
  %i.h = bitcast <4 x i1> %i.f to i4
  %i.i = icmp ne i4 %i.h, 0
  %op.rdx = select i1 %i.i, i1 true, i1 %or.cond45.i
  br i1 %op.rdx, label %_ZL19RtlTimeFieldsToTimeP12_TIME_FIELDSP13LARGE_INTEGER.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.k = load i16, ptr %i.j, align 2, !tbaa !28   ; 2 uses
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = icmp slt i16 %i.k, 1
  br i1 %i.m, label %_ZL19RtlTimeFieldsToTimeP12_TIME_FIELDSP13LARGE_INTEGER.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i16 %i.c, 2
  br i1 %i.n, label %_ZL10IsLeapYeari.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i16 %i.a, 3
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.e, label %_ZL10IsLeapYeari.exit.i

bb.e:                                             ; preds = %bb.d
  %i.q = srem i16 %i.a, 100
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %bb.f, label %_ZL10IsLeapYeari.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = srem i16 %i.a, 400
  %i.s = icmp eq i16 %i.r, 0
  %i.t = zext i1 %i.s to i64
  br label %_ZL10IsLeapYeari.exit.i

_ZL10IsLeapYeari.exit.i:                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.u = phi i64 [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ %i.t, %bb.f ]
  %i.v = getelementptr inbounds nuw [48 x i8], ptr @_ZL12MonthLengths, i64 %i.u
  %i.w = zext nneg i16 %i.c to i64
  %i.x = getelementptr [4 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = icmp slt i32 %i.z, %i.l
  %i.ab = icmp slt i16 %i.a, 1601
  %or.cond14 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond14, label %_ZL19RtlTimeFieldsToTimeP12_TIME_FIELDSP13LARGE_INTEGER.exit, label %bb.g

bb.g:                                             ; preds = %_ZL10IsLeapYeari.exit.i
  %i.ac = zext nneg i16 %i.a to i32
  %i.ad = icmp samesign ult i16 %i.c, 3           ; 2 uses
  %i.ae = sext i1 %i.ad to i32
  %.033.i = add nsw i32 %i.ae, %i.ac              ; 2 uses
  %.032.v.i = select i1 %i.ad, i16 13, i16 1
  %.032.i = add nuw nsw i16 %.032.v.i, %i.c
  %.lhs.trunc.i = trunc nuw nsw i32 %.033.i to i16
  %i.af = udiv i16 %.lhs.trunc.i, 100
  %narrow.i = mul nuw nsw i16 %i.af, 3
  %narrow48.i = add nuw nsw i16 %narrow.i, 3
  %i.ag = lshr i16 %narrow48.i, 2
  %i.ah = zext nneg i16 %i.ag to i32
  %i.ai = mul nuw nsw i32 %.033.i, 1461
  %2 = lshr i32 %i.ai, 2
  %.lhs.trunc46.i = mul nuw i16 %.032.i, 1959
  %i.aj = lshr i16 %.lhs.trunc46.i, 6
  %.zext47.i = zext nneg i16 %i.aj to i32
  %i.ak = add nsw i32 %2, -584817
  %i.al = add nsw i32 %i.ak, %.zext47.i
  %i.am = sub nsw i32 %i.al, %i.ah
  %i.an = add nsw i32 %i.am, %i.l
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ao, 24
  %i.aq = extractelement <4 x i16> %.fr, i64 0
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add nsw i64 %i.ap, %i.ar
  %i.at = mul nsw i64 %i.as, 60
  %i.au = extractelement <4 x i16> %.fr, i64 1
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = add nsw i64 %i.at, %i.av
  %i.ax = mul nsw i64 %i.aw, 60
  %i.ay = extractelement <4 x i16> %.fr, i64 2
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add nsw i64 %i.ax, %i.az
  %i.bb = mul nsw i64 %i.ba, 1000
  %i.bc = extractelement <4 x i16> %.fr, i64 3
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = add nsw i64 %i.bb, %i.bd
  %i.bf = mul nsw i64 %i.be, 10000
  br label %_ZL19RtlTimeFieldsToTimeP12_TIME_FIELDSP13LARGE_INTEGER.exit

_ZL19RtlTimeFieldsToTimeP12_TIME_FIELDSP13LARGE_INTEGER.exit: ; preds = %bb.a, %bb.b, %_ZL10IsLeapYeari.exit.i, %bb.g
  %.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %i.bf, %bb.g ], [ undef, %bb.b ], [ undef, %_ZL10IsLeapYeari.exit.i ]
  store i64 %.sroa.0.0, ptr %1, align 4
  ret i32 1
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTS2tm", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !10, i64 40, !11, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !5, i64 4}
!14 = !{!9, !5, i64 8}
!15 = !{!9, !5, i64 12}
!16 = !{!9, !5, i64 16}
!17 = !{!9, !5, i64 20}
!18 = !{!9, !5, i64 32}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTS13LARGE_INTEGER", !21, i64 0}
!21 = !{!"long long", !6, i64 0}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !6, i64 0}
!25 = !{!26, !24, i64 0}
!26 = !{!"_ZTS11_SYSTEMTIME", !24, i64 0, !24, i64 2, !24, i64 4, !24, i64 6, !24, i64 8, !24, i64 10, !24, i64 12, !24, i64 14}
!27 = !{!26, !24, i64 2}
!28 = !{!26, !24, i64 6}
!29 = !{!26, !24, i64 8}
!30 = !{!26, !24, i64 10}
!31 = !{!26, !24, i64 12}
!32 = !{!26, !24, i64 14}
!33 = !{!26, !24, i64 4}
!34 = !{!35, !10, i64 0}
!35 = !{!"_ZTS7timeval", !10, i64 0, !10, i64 8}
!36 = !{!35, !10, i64 8}
end_hunk_0
