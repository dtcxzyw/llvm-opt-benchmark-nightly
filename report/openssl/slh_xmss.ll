Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/slh_xmss?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_slh_xmss_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23
  tail call void %i.h(ptr noundef %5, i32 noundef 0) #3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  tail call void %i.j(ptr noundef %5, i32 noundef %2) #3
  %i.k = tail call i32 @ossl_slh_wots_pk_gen(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #3
  %.not45 = icmp eq i32 %i.k, 0
  br i1 %.not45, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.l = shl i32 %2, 1                            ; 2 uses
  %i.m = add i32 %3, -1                           ; 2 uses
  %i.n = call i32 @ossl_slh_xmss_node(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.l, i32 noundef %i.m, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.a, i64 noundef 32)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = or disjoint i32 %i.l, 1
  %i.p = call i32 @ossl_slh_xmss_node(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.o, i32 noundef %i.m, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.b, i64 noundef 32)
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  call void %i.r(ptr noundef %5, i32 noundef 2) #3
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  call void %i.t(ptr noundef %5, i32 noundef %3) #3
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  call void %i.v(ptr noundef %5, i32 noundef %2) #3
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = call i32 %i.z(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %6, i64 noundef %7) #3
  %.not44.not = icmp eq i32 %i.aa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br i1 %.not44.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  br label %bb.g

.critedge:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.b, %bb.e, %bb.f
  %.1 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %.critedge ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ossl_slh_wots_pk_gen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_slh_xmss_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  call void %i.n(ptr noundef nonnull %i.a, ptr noundef %5) #3
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  call void %i.p(ptr noundef %5, i32 noundef 0) #3
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  call void %i.r(ptr noundef %5, i32 noundef %3) #3
  %i.s = call i32 @ossl_slh_wots_sign(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6) #3
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !37
  call void %i.t(ptr noundef %5, ptr noundef nonnull %i.a) #3
  %.not44 = icmp eq i32 %i.l, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.039 = phi i32 [ %i.y, %bb.d ], [ %3, %bb.b ]  ; 2 uses
  %.03438 = phi i32 [ %i.z, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.u = call i32 @WPACKET_allocate_bytes(ptr noundef %6, i64 noundef %i.j, ptr noundef nonnull %i.b) #3
  %.not36 = icmp eq i32 %i.u, 0
  br i1 %.not36, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.v = xor i32 %.039, 1
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.x = call i32 @ossl_slh_xmss_node(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.v, i32 noundef %.03438, ptr noundef %4, ptr noundef %5, ptr noundef %i.w, i64 noundef %i.j)
  %.not37 = icmp eq i32 %i.x, 0
  br i1 %.not37, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = lshr i32 %.039, 1
  %i.z = add nuw i32 %.03438, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, %i.l
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.d, %bb.b, %bb.a
  %.035 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ], [ 0, %bb.c ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.035
}

declare i32 @ossl_slh_wots_sign(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WPACKET_allocate_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_slh_xmss_pk_from_sig(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !33
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23
  tail call void %i.t(ptr noundef %5, i32 noundef 0) #3
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  tail call void %i.v(ptr noundef %5, i32 noundef %1) #3
  %i.w = tail call i32 @ossl_slh_wots_pk_from_sig(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) #3
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %PACKET_get_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !23
  tail call void %i.x(ptr noundef %5, i32 noundef 2) #3
  %i.y = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %.not73 = icmp eq i32 %i.r, 0
  br i1 %.not73, label %PACKET_get_bytes.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.066 = phi i32 [ %i.ad, %bb.f ], [ 0, %bb.b ]
  %.05565 = phi i32 [ %8, %bb.f ], [ %1, %bb.b ]  ; 2 uses
  %.val.i.i = load i64, ptr %i.y, align 8, !tbaa !41 ; 2 uses
  %i.z = icmp ult i64 %.val.i.i, %i.p
  br i1 %i.z, label %PACKET_get_bytes.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.p
  store ptr %i.ab, ptr %2, align 8, !tbaa !42
  %i.ac = sub nuw i64 %.val.i.i, %i.p
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !41
  %i.ad = add nuw i32 %.066, 1                    ; 3 uses
  tail call void %i.k(ptr noundef %5, i32 noundef %i.ad) #3
  %i.ae = and i32 %.05565, 1
  %i.af = icmp eq i32 %i.ae, 0
  %8 = lshr i32 %.05565, 1                        ; 2 uses
  tail call void %i.i(ptr noundef %5, i32 noundef %8) #3
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.aa, ptr noundef %6, i64 noundef %7) #3
  %.not58 = icmp eq i32 %i.ag, 0
  br i1 %.not58, label %PACKET_get_bytes.exit.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = tail call i32 %i.g(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef %i.aa, ptr noundef %6, ptr noundef %6, i64 noundef %7) #3
  %.not57 = icmp eq i32 %i.ah, 0
  br i1 %.not57, label %PACKET_get_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %exitcond.not = icmp eq i32 %i.ad, %i.r
  br i1 %exitcond.not, label %PACKET_get_bytes.exit.thread, label %.lr.ph, !llvm.loop !39

PACKET_get_bytes.exit.thread:                     ; preds = %bb.d, %bb.e, %bb.f, %.lr.ph, %bb.b, %bb.a
  %.054 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %.lr.ph ]
  ret i32 %.054
}

declare i32 @ossl_slh_wots_pk_from_sig(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14slh_dsa_key_st", !8, i64 0}
!10 = !{!"p1 _ZTS14evp_mac_ctx_st", !8, i64 0}
!11 = !{!"slh_dsa_hash_ctx_st", !9, i64 0, !8, i64 8, !8, i64 16, !10, i64 24, !5, i64 32}
!12 = !{!11, !9, i64 0}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"p1 _ZTS15ossl_lib_ctx_st", !8, i64 0}
!15 = !{!"p1 _ZTS17slh_dsa_params_st", !8, i64 0}
!16 = !{!"p1 _ZTS16slh_adrs_func_st", !8, i64 0}
!17 = !{!"p1 _ZTS16slh_hash_func_st", !8, i64 0}
!18 = !{!"p1 _ZTS9evp_md_st", !8, i64 0}
!19 = !{!"p1 _ZTS10evp_mac_st", !8, i64 0}
!20 = !{!"slh_dsa_key_st", !4, i64 0, !13, i64 128, !14, i64 136, !13, i64 144, !5, i64 152, !15, i64 160, !16, i64 168, !17, i64 176, !18, i64 184, !18, i64 192, !19, i64 200}
!21 = !{!20, !16, i64 168}
!22 = !{!"slh_adrs_func_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80}
!23 = !{!22, !8, i64 16}
!24 = !{!22, !8, i64 24}
!25 = !{!22, !8, i64 48}
!26 = !{!22, !8, i64 64}
!27 = !{!20, !17, i64 176}
!28 = !{!"slh_hash_func_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64}
!29 = !{!28, !8, i64 48}
!30 = !{!20, !15, i64 160}
!31 = !{!"long", !4, i64 0}
!32 = !{!"slh_dsa_params_st", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !31, i64 56}
!33 = !{!32, !5, i64 16}
!34 = !{!32, !5, i64 28}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = !{!22, !8, i64 80}
!38 = !{!13, !13, i64 0}
!39 = distinct !{!39, !35}
!40 = !{!"", !13, i64 0, !13, i64 8, !31, i64 16}
!41 = !{!40, !31, i64 16}
!42 = !{!40, !13, i64 0}
end_hunk_0
