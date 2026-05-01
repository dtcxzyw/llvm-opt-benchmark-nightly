inline.NumInlined: 230
inline.NumDeleted: 21
begin_hunk_0_@multiblock_speed:bb.a
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca [32 x i8], align 16               ; 3 uses
  %i.c = alloca [16 x i8], align 16               ; 3 uses
  %2 = alloca %struct.EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM, align 8 ; 9 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
end_hunk_0
begin_hunk_1_@multiblock_speed:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.b.i.pre38 = load i1, ptr @mr, align 4
end_hunk_1
begin_hunk_2_@multiblock_speed:bb.a
  store i64 0, ptr @aad, align 8
  store <4 x i8> <i8 23, i8 3, i8 2, i8 0>, ptr getelementptr inbounds nuw (i8, ptr @aad, i64 8), align 8, !tbaa !26
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @aad, i64 12), align 4, !tbaa !26
  store ptr null, ptr %2, align 8, !tbaa !200
  store ptr @aad, ptr %i.ac, align 8, !tbaa !202
  store i64 %i.au, ptr %i.ad, align 8, !tbaa !203
  store i32 8, ptr %i.ae, align 8, !tbaa !204
  %i.av = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %i.m, i32 noundef 25, i32 noundef 32, ptr noundef nonnull %2) #14
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.l, ptr %2, align 8, !tbaa !200
  store ptr %i.h, ptr %i.ac, align 8, !tbaa !202
  store i64 %i.au, ptr %i.ad, align 8, !tbaa !203
  %i.ax = call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %i.m, i32 noundef 26, i32 noundef 32, ptr noundef nonnull %2) #14 ; 0 uses
  br label %bb.w

end_hunk_2
begin_hunk_3_@llvm.vector.reduce.umax.v4i32
!197 = distinct !{!197, !19}
!198 = distinct !{!198, !19}
!199 = distinct !{!199, !19}
!200 = !{!201, !25, i64 0}
!201 = !{!"", !25, i64 0, !25, i64 8, !30, i64 16, !6, i64 24}
!202 = !{!201, !25, i64 8}
!203 = !{!201, !30, i64 16}
!204 = !{!201, !6, i64 24}
!205 = distinct !{!205, !19}
!206 = distinct !{!206, !19}
!207 = distinct !{!207, !19}
end_hunk_3
