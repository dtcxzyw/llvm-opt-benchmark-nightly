begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"../../deps/openssl/openssl/ssl/ssl_mcnf.c\00", align 1
@__func__.ssl_do_config = private unnamed_addr constant [14 x i8] c"ssl_do_config\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"system_default\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @SSL_add_ssl_module() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_config(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_do_config(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_do_config(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.f = icmp eq ptr %0, null                     ; 2 uses
  %i.g = icmp eq ptr %1, null
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull @__func__.ssl_do_config) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, ptr noundef null) #4
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null
  %4 = trunc nuw i32 %3 to i1                     ; 3 uses
  %or.cond3 = and i1 %i.h, %4
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %5 = call i32 @conf_ssl_name_find(ptr noundef %2, ptr noundef nonnull %i.b) #4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  store ptr @.str.1, ptr %i.a, align 8, !tbaa !9
  %i.i = call i32 @conf_ssl_name_find(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.b) #4
  %.not.a = icmp eq i32 %i.i, 0
  br i1 %.not.a, label %bb.m, label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %4, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @__func__.ssl_do_config) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 113, ptr noundef nonnull @.str.2, ptr noundef %2) #4
  br label %bb.m

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.j = load i64, ptr %i.b, align 8, !tbaa !12
  %i.k = call ptr @conf_ssl_get(i64 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #4
  %i.l = call ptr @SSL_CONF_CTX_new() #4          ; 7 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.select = select i1 %4, i32 2, i32 98      ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  call void @SSL_CONF_CTX_set_ssl(ptr noundef nonnull %i.l, ptr noundef nonnull %0) #4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !23
  call void @SSL_CONF_CTX_set_ssl_ctx(ptr noundef nonnull %i.l, ptr noundef %1) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.045 = phi ptr [ %i.o, %bb.j ], [ %i.s, %bb.k ] ; 2 uses
  %.042.in = phi ptr [ %i.q, %bb.j ], [ %1, %bb.k ]
  %.042 = load ptr, ptr %.042.in, align 8, !tbaa !53 ; 2 uses
  %i.t = call i32 @OSSL_LIB_CTX_get_conf_diagnostics(ptr noundef %.042) #4
  %.not58 = icmp eq i32 %i.t, 0                   ; 2 uses
  %i.u = or disjoint i32 %spec.select, 16
  %spec.select64 = select i1 %.not58, i32 %spec.select, i32 %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.045, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %.not59 = icmp eq ptr %i.w, @ssl_undefined_function
  %i.x = or disjoint i32 %spec.select64, 8
  %.2 = select i1 %.not59, i32 %spec.select64, i32 %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.045, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %.not60 = icmp eq ptr %i.z, @ssl_undefined_function
  %i.aa = or disjoint i32 %.2, 4
  %.3 = select i1 %.not60, i32 %.2, i32 %i.aa
  %i.ab = call i32 @SSL_CONF_CTX_set_flags(ptr noundef nonnull %i.l, i32 noundef %.3) #4 ; 0 uses
  %i.ac = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %.042) #4
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !12
  %.not70 = icmp eq i64 %i.ad, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.04869 = phi i32 [ %spec.select65, %.lr.ph ], [ 0, %bb.l ]
  %.05168 = phi i64 [ %i.aj, %.lr.ph ], [ 0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @conf_ssl_get_cmd(ptr noundef %i.k, i64 noundef %.05168, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #4
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.ag = call i32 @SSL_CONF_cmd(ptr noundef nonnull %i.l, ptr noundef %i.ae, ptr noundef %i.af) #4
  %i.ah = icmp slt i32 %i.ag, 1
  %i.ai = zext i1 %i.ah to i32
  %spec.select65 = add nuw nsw i32 %.04869, %i.ai ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.aj = add nuw i64 %.05168, 1                  ; 2 uses
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !12
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.048.lcssa = phi i32 [ 0, %bb.l ], [ %spec.select65, %.lr.ph ]
  %i.am = call i32 @SSL_CONF_CTX_finish(ptr noundef nonnull %i.l) #4
  %.not61 = icmp eq i32 %i.am, 0
  %i.an = zext i1 %.not61 to i32
  %i.ao = or i32 %.048.lcssa, %i.an
  %.fr = freeze i32 %i.ao
  %i.ap = icmp eq i32 %.fr, 0
  %i.aq = zext i1 %.not58 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %._crit_edge, %bb.h, %bb.f, %bb.g, %bb.b
  %.250 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ %i.ap, %._crit_edge ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.e ]
  %.046 = phi i32 [ 1, %bb.b ], [ 1, %bb.g ], [ %i.aq, %._crit_edge ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.e ]
  %.044 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.l, %._crit_edge ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.e ]
  %.043 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ %i.ac, %._crit_edge ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.e ]
  %.0 = phi i32 [ %3, %bb.b ], [ 0, %bb.g ], [ %3, %._crit_edge ], [ 0, %bb.h ], [ 1, %bb.f ], [ 1, %bb.e ]
  %i.ar = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %.043) #4 ; 0 uses
  call void @SSL_CONF_CTX_free(ptr noundef %.044) #4
  %.not62 = icmp eq i32 %.0, 0
  %spec.select73 = select i1 %.not62, i32 0, i32 %.046
  %i.as = select i1 %.250, i32 1, i32 %spec.select73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i32 %i.as
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_CTX_config(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_do_config(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl_ctx_system_config(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_do_config(ptr noundef null, ptr noundef %0, ptr noundef null, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @conf_ssl_name_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @conf_ssl_get(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @SSL_CONF_CTX_new() local_unnamed_addr #3

declare void @SSL_CONF_CTX_set_ssl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SSL_CONF_CTX_set_ssl_ctx(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @OSSL_LIB_CTX_get_conf_diagnostics(ptr noundef) local_unnamed_addr #3

declare i32 @ssl_undefined_function(ptr noundef) #3

declare i32 @SSL_CONF_CTX_set_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @OSSL_LIB_CTX_set0_default(ptr noundef) local_unnamed_addr #3

declare void @conf_ssl_get_cmd(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SSL_CONF_cmd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @SSL_CONF_CTX_finish(ptr noundef) local_unnamed_addr #3

declare void @SSL_CONF_CTX_free(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !17, i64 24}
!15 = !{!"ssl_st", !6, i64 0, !16, i64 8, !17, i64 16, !17, i64 24, !18, i64 32, !11, i64 40, !19, i64 48}
!16 = !{!"p1 _ZTS10ssl_ctx_st", !11, i64 0}
!17 = !{!"p1 _ZTS13ssl_method_st", !11, i64 0}
!18 = !{!"", !7, i64 0}
!19 = !{!"crypto_ex_data_st", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTS15ossl_lib_ctx_st", !11, i64 0}
!21 = !{!"p1 _ZTS13stack_st_void", !11, i64 0}
!22 = !{!15, !16, i64 8}
!23 = !{!24, !17, i64 8}
!24 = !{!"ssl_ctx_st", !20, i64 0, !17, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !26, i64 40, !27, i64 48, !13, i64 56, !28, i64 64, !28, i64 72, !6, i64 80, !29, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !30, i64 120, !18, i64 164, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !19, i64 240, !31, i64 256, !31, i64 264, !32, i64 272, !33, i64 280, !11, i64 288, !34, i64 296, !34, i64 304, !13, i64 312, !6, i64 320, !6, i64 324, !6, i64 328, !13, i64 336, !35, i64 344, !11, i64 352, !6, i64 360, !11, i64 368, !11, i64 376, !6, i64 384, !13, i64 392, !7, i64 400, !11, i64 432, !11, i64 440, !36, i64 448, !6, i64 456, !37, i64 464, !11, i64 472, !11, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !38, i64 520, !11, i64 528, !11, i64 536, !11, i64 544, !11, i64 552, !39, i64 560, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !43, i64 832, !45, i64 960, !48, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !6, i64 1024, !6, i64 1028, !11, i64 1032, !11, i64 1040, !13, i64 1048, !13, i64 1056, !11, i64 1064, !11, i64 1072, !11, i64 1080, !13, i64 1088, !11, i64 1096, !11, i64 1104, !6, i64 1112, !11, i64 1120, !11, i64 1128, !10, i64 1136, !7, i64 1144, !7, i64 1200, !7, i64 1392, !7, i64 1504, !13, i64 1616, !13, i64 1624, !49, i64 1632, !41, i64 1640, !50, i64 1648, !13, i64 1656, !13, i64 1664, !51, i64 1672, !13, i64 1680, !13, i64 1688, !6, i64 1696, !6, i64 1700, !6, i64 1704, !6, i64 1708, !10, i64 1712, !13, i64 1720, !10, i64 1728, !13, i64 1736, !13, i64 1744, !52, i64 1752, !10, i64 1760}
!25 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !11, i64 0}
!26 = !{!"p1 _ZTS13x509_store_st", !11, i64 0}
!27 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !11, i64 0}
!28 = !{!"p1 _ZTS14ssl_session_st", !11, i64 0}
!29 = !{!"", !13, i64 0}
!30 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!31 = !{!"p1 _ZTS9evp_md_st", !11, i64 0}
!32 = !{!"p1 _ZTS13stack_st_X509", !11, i64 0}
!33 = !{!"p1 _ZTS17stack_st_SSL_COMP", !11, i64 0}
!34 = !{!"p1 _ZTS18stack_st_X509_NAME", !11, i64 0}
!35 = !{!"p1 _ZTS7cert_st", !11, i64 0}
!36 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !11, i64 0}
!37 = !{!"p1 _ZTS14ctlog_store_st", !11, i64 0}
!38 = !{!"p1 _ZTS9engine_st", !11, i64 0}
!39 = !{!"", !11, i64 0, !11, i64 8, !7, i64 16, !40, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !6, i64 72, !7, i64 76, !13, i64 80, !10, i64 88, !13, i64 96, !41, i64 104, !13, i64 112, !41, i64 120, !13, i64 128, !42, i64 136, !11, i64 144, !11, i64 152, !10, i64 160, !13, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !7, i64 208}
!40 = !{!"p1 _ZTS21ssl_ctx_ext_secure_st", !11, i64 0}
!41 = !{!"p1 short", !11, i64 0}
!42 = !{!"p1 long", !11, i64 0}
!43 = !{!"srp_ctx_st", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !10, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !44, i64 72, !44, i64 80, !44, i64 88, !44, i64 96, !10, i64 104, !6, i64 112, !13, i64 120}
!44 = !{!"p1 _ZTS9bignum_st", !11, i64 0}
!45 = !{!"dane_ctx_st", !46, i64 0, !10, i64 8, !7, i64 16, !13, i64 24}
!46 = !{!"p2 _ZTS9evp_md_st", !47, i64 0}
!47 = !{!"any p2 pointer", !11, i64 0}
!48 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !11, i64 0}
!49 = !{!"p1 _ZTS16sigalg_lookup_st", !11, i64 0}
!50 = !{!"p1 _ZTS17tls_group_info_st", !11, i64 0}
!51 = !{!"p1 _ZTS18tls_sigalg_info_st", !11, i64 0}
!52 = !{!"p1 _ZTS18ssl_token_store_st", !11, i64 0}
!53 = !{!24, !20, i64 0}
!54 = !{!55, !11, i64 64}
!55 = !{!"ssl_method_st", !6, i64 0, !6, i64 4, !13, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !56, i64 216, !11, i64 224, !11, i64 232, !11, i64 240}
!56 = !{!"p1 _ZTS15ssl3_enc_method", !11, i64 0}
!57 = !{!55, !11, i64 72}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
end_hunk_0
