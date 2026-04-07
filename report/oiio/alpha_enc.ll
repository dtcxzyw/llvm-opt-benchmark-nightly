begin_hunk_0_@EncodeAlphaInternal:bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.u = load i32, ptr %i.t, align 8, !tbaa !75
  call void %i.o(ptr noundef %.050, i32 noundef %1, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %i.s, i32 noundef %i.u) #7, !inline_history !76
  %i.v = call i32 @WebPConfigInitInternal(ptr noundef nonnull %9, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #7
  %.not16.i = icmp eq i32 %i.v, 0
  br i1 %.not16.i, label %.thread67, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %9, align 4, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 96
  store i32 1, ptr %i.w, align 4, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %6, ptr %i.x, align 4, !tbaa !36
  %i.y = icmp eq i32 %5, 0
end_hunk_0
begin_hunk_1_@EncodeAlphaInternal:bb.a
  %i.ab = fmul nnan float %i.aa, 8.000000e+00
  %i.ac = select i1 %or.cond.i, float 1.000000e+02, float %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ac, ptr %i.ad, align 4, !tbaa !79
  %i.ae = call i32 @VP8LEncodeStream(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #7
  call void @WebPPictureFree(ptr noundef nonnull %10) #7
  %.not17.i = icmp ne i32 %i.ae, 0
end_hunk_1
begin_hunk_2_@EncodeAlphaInternal:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  %i.ah = call ptr @VP8LBitWriterFinish(ptr noundef nonnull %11) #7
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !80
  %.not61 = icmp eq i32 %i.ai, 0
  br i1 %.not61, label %bb.k, label %bb.j

end_hunk_2
begin_hunk_3_@EncodeAlphaInternal:bb.a

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !83
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !84
  %i.at = add nsw i32 %i.as, 7
  %i.au = ashr i32 %i.at, 3
  %i.av = sext i32 %i.au to i64
end_hunk_3
begin_hunk_4_@EncodeAlphaInternal:bb.a

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !85
  %.not66 = icmp eq i32 %i.bo, 0
  %i.bp = zext i1 %.not66 to i32
  br label %bb.s
end_hunk_4
begin_hunk_5_@llvm.assume
!73 = !{!43, !4, i64 0}
!74 = !{!43, !24, i64 72}
!75 = !{!43, !4, i64 80}
!76 = distinct !{null}
!77 = !{!37, !4, i64 0}
!78 = !{!37, !4, i64 96}
!79 = !{!37, !38, i64 4}
!80 = !{!81, !4, i64 40}
!81 = !{!"", !16, i64 0, !4, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !4, i64 40}
!82 = !{!81, !15, i64 24}
!83 = !{!81, !15, i64 16}
!84 = !{!81, !4, i64 8}
!85 = !{!51, !4, i64 48}
end_hunk_5
