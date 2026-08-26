Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssl_mcnf?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"ssl/ssl_mcnf.c\00", align 1
@__func__.ssl_do_config = private unnamed_addr constant [14 x i8] c"ssl_do_config\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"system_default\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"name not specified (name == NULL)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @SSL_add_ssl_module() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSL_config(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_do_config(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ssl_do_config(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.f = icmp eq ptr %0, null                     ; 3 uses
  %i.g = icmp eq ptr %1, null
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @__func__.ssl_do_config) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786690, ptr noundef null) #4
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %2, null                     ; 2 uses
  %i.i = icmp ne i32 %3, 0                        ; 3 uses
  %or.cond3 = and i1 %i.h, %i.i
  br i1 %or.cond3, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store ptr @.str.1, ptr %i.a, align 8, !tbaa !8
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #4
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @__func__.ssl_do_config) #4
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 113, ptr noundef nonnull @.str.2) #4
  br label %bb.q

bb.f:                                             ; preds = %.thread, %bb.d
  %i.j = phi ptr [ @.str.1, %.thread ], [ %2, %bb.d ] ; 2 uses
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.in = phi ptr [ %i.l, %bb.g ], [ %1, %bb.f ]
  %i.m = load ptr, ptr %.in, align 8, !tbaa !19
  %i.n = tail call ptr @OSSL_LIB_CTX_get_data(ptr noundef %i.m, i32 noundef 23) #4 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %ssl_do_lookup_module.exit

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @OSSL_LIB_CTX_get0_global_default() #4
  %i.p = tail call ptr @OSSL_LIB_CTX_get_data(ptr noundef %i.o, i32 noundef 23) #4
  br label %ssl_do_lookup_module.exit

ssl_do_lookup_module.exit:                        ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.p, %bb.i ], [ %i.n, %bb.h ] ; 2 uses
  %i.q = call i32 @conf_ssl_name_find(ptr noundef %.0.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.b) #4
  %.not64 = icmp eq i32 %i.q, 0
  br i1 %.not64, label %bb.j, label %bb.l

bb.j:                                             ; preds = %ssl_do_lookup_module.exit
  br i1 %i.i, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @ERR_new() #4
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @__func__.ssl_do_config) #4
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 113, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.j) #4
  br label %bb.q

bb.l:                                             ; preds = %ssl_do_lookup_module.exit
  %i.r = load i64, ptr %i.b, align 8, !tbaa !51
  %i.s = call ptr @conf_ssl_get(ptr noundef %.0.i, i64 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #4
  %spec.select = select i1 %i.i, i32 2, i32 98    ; 2 uses
  %i.t = call ptr @SSL_CONF_CTX_new() #4          ; 7 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.f, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  call void @SSL_CONF_CTX_set_ssl(ptr noundef nonnull %i.t, ptr noundef nonnull %0) #4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  call void @SSL_CONF_CTX_set_ssl_ctx(ptr noundef nonnull %i.t, ptr noundef %1) #4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.051 = phi ptr [ %i.w, %bb.n ], [ %i.aa, %bb.o ] ; 2 uses
  %.049.in = phi ptr [ %i.y, %bb.n ], [ %1, %bb.o ]
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !19 ; 2 uses
  %i.ab = call i32 @OSSL_LIB_CTX_get_conf_diagnostics(ptr noundef %.049) #4
  %.not65 = icmp eq i32 %i.ab, 0                  ; 2 uses
  %i.ac = or disjoint i32 %spec.select, 16
  %spec.select71 = select i1 %.not65, i32 %spec.select, i32 %i.ac ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.051, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %.not66 = icmp eq ptr %i.ae, @ssl_undefined_function
  %i.af = or disjoint i32 %spec.select71, 8
  %.2 = select i1 %.not66, i32 %spec.select71, i32 %i.af ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.051, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %.not67 = icmp eq ptr %i.ah, @ssl_undefined_function
  %i.ai = or disjoint i32 %.2, 4
  %.3 = select i1 %.not67, i32 %.2, i32 %i.ai
  %i.aj = call i32 @SSL_CONF_CTX_set_flags(ptr noundef nonnull %i.t, i32 noundef %.3) #4 ; 0 uses
  %i.ak = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %.049) #4
  %i.al = load i64, ptr %i.c, align 8, !tbaa !51
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.05476 = phi i32 [ %spec.select72, %.lr.ph ], [ 0, %bb.p ]
  %.05775 = phi i64 [ %i.ar, %.lr.ph ], [ 0, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @conf_ssl_get_cmd(ptr noundef %i.s, i64 noundef %.05775, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #4
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.ao = call i32 @SSL_CONF_cmd(ptr noundef nonnull %i.t, ptr noundef %i.am, ptr noundef %i.an) #4
  %i.ap = icmp slt i32 %i.ao, 1
  %i.aq = zext i1 %i.ap to i32
  %spec.select72 = add nuw nsw i32 %.05476, %i.aq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.ar = add nuw i64 %.05775, 1                  ; 2 uses
  %i.as = load i64, ptr %i.c, align 8, !tbaa !51
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %.lr.ph, %bb.p
  %.054.lcssa = phi i32 [ 0, %bb.p ], [ %spec.select72, %.lr.ph ]
  %i.au = call i32 @SSL_CONF_CTX_finish(ptr noundef nonnull %i.t) #4
  %.not68 = icmp eq i32 %i.au, 0
  %i.av = zext i1 %.not68 to i32
  %i.aw = or i32 %.054.lcssa, %i.av
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = zext i1 %.not65 to i32
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l, %bb.j, %bb.k, %bb.e, %bb.b
  %.057 = phi i32 [ %3, %bb.b ], [ %3, %bb.e ], [ 0, %bb.k ], [ %3, %._crit_edge ], [ 0, %bb.l ], [ 1, %bb.j ]
  %.056 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.k ], [ %i.t, %._crit_edge ], [ null, %bb.l ], [ null, %bb.j ]
  %.256 = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.k ], [ %i.ax, %._crit_edge ], [ false, %bb.l ], [ false, %bb.j ]
  %.052 = phi i32 [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %bb.k ], [ %i.ay, %._crit_edge ], [ 1, %bb.l ], [ 1, %bb.j ]
  %.048 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.k ], [ %i.ak, %._crit_edge ], [ null, %bb.l ], [ null, %bb.j ]
  %i.az = call ptr @OSSL_LIB_CTX_set0_default(ptr noundef %.048) #4 ; 0 uses
  call void @SSL_CONF_CTX_free(ptr noundef %.056) #4
  %.not69 = icmp eq i32 %.057, 0
  %spec.select81 = select i1 %.not69, i32 0, i32 %.052
  %i.ba = select i1 %.256, i32 1, i32 %spec.select81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i32 %i.ba
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @SSL_CTX_config(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_do_config(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ssl_ctx_system_config(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @ssl_do_config(ptr noundef null, ptr noundef %0, ptr noundef null, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @conf_ssl_name_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @conf_ssl_get(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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

declare ptr @OSSL_LIB_CTX_get_data(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @OSSL_LIB_CTX_get0_global_default() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"ssl_st", !5, i64 0, !13, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !10, i64 40, !16, i64 48}
!13 = !{!"p1 _ZTS10ssl_ctx_st", !10, i64 0}
!14 = !{!"p1 _ZTS13ssl_method_st", !10, i64 0}
!15 = !{!"", !6, i64 0}
!16 = !{!"crypto_ex_data_st", !17, i64 0, !18, i64 8}
!17 = !{!"p1 _ZTS15ossl_lib_ctx_st", !10, i64 0}
!18 = !{!"p1 _ZTS13stack_st_void", !10, i64 0}
!19 = !{!20, !17, i64 0}
!20 = !{!"ssl_ctx_st", !17, i64 0, !14, i64 8, !21, i64 16, !21, i64 24, !21, i64 32, !22, i64 40, !23, i64 48, !24, i64 56, !25, i64 64, !25, i64 72, !5, i64 80, !26, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !27, i64 120, !15, i64 164, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !16, i64 240, !28, i64 256, !28, i64 264, !29, i64 272, !30, i64 280, !10, i64 288, !31, i64 296, !31, i64 304, !24, i64 312, !5, i64 320, !5, i64 324, !5, i64 328, !24, i64 336, !32, i64 344, !10, i64 352, !5, i64 360, !10, i64 368, !10, i64 376, !5, i64 384, !24, i64 392, !6, i64 400, !10, i64 432, !10, i64 440, !33, i64 448, !5, i64 456, !34, i64 464, !10, i64 472, !10, i64 480, !24, i64 488, !24, i64 496, !24, i64 504, !24, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !10, i64 544, !35, i64 552, !10, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !41, i64 856, !43, i64 984, !46, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !5, i64 1048, !5, i64 1052, !10, i64 1056, !10, i64 1064, !24, i64 1072, !24, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !24, i64 1112, !10, i64 1120, !10, i64 1128, !5, i64 1136, !10, i64 1144, !10, i64 1152, !9, i64 1160, !6, i64 1168, !6, i64 1232, !6, i64 1440, !6, i64 1560, !24, i64 1680, !24, i64 1688, !47, i64 1696, !37, i64 1704, !48, i64 1712, !24, i64 1720, !24, i64 1728, !49, i64 1736, !24, i64 1744, !24, i64 1752, !5, i64 1760, !5, i64 1764, !5, i64 1768, !5, i64 1772, !9, i64 1776, !24, i64 1784, !9, i64 1792, !24, i64 1800, !24, i64 1808, !50, i64 1816, !9, i64 1824}
!21 = !{!"p1 _ZTS19stack_st_SSL_CIPHER", !10, i64 0}
!22 = !{!"p1 _ZTS13x509_store_st", !10, i64 0}
!23 = !{!"p1 _ZTS20lhash_st_SSL_SESSION", !10, i64 0}
!24 = !{!"long", !6, i64 0}
!25 = !{!"p1 _ZTS14ssl_session_st", !10, i64 0}
!26 = !{!"", !24, i64 0}
!27 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40}
!28 = !{!"p1 _ZTS9evp_md_st", !10, i64 0}
!29 = !{!"p1 _ZTS13stack_st_X509", !10, i64 0}
!30 = !{!"p1 _ZTS17stack_st_SSL_COMP", !10, i64 0}
!31 = !{!"p1 _ZTS18stack_st_X509_NAME", !10, i64 0}
!32 = !{!"p1 _ZTS7cert_st", !10, i64 0}
!33 = !{!"p1 _ZTS20X509_VERIFY_PARAM_st", !10, i64 0}
!34 = !{!"p1 _ZTS14ctlog_store_st", !10, i64 0}
!35 = !{!"", !10, i64 0, !10, i64 8, !6, i64 16, !36, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !5, i64 72, !6, i64 76, !24, i64 80, !9, i64 88, !24, i64 96, !37, i64 104, !24, i64 112, !37, i64 120, !24, i64 128, !38, i64 136, !10, i64 144, !10, i64 152, !9, i64 160, !24, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !6, i64 208, !39, i64 240}
!36 = !{!"p1 _ZTS21ssl_ctx_ext_secure_st", !10, i64 0}
!37 = !{!"p1 short", !10, i64 0}
!38 = !{!"p1 long", !10, i64 0}
!39 = !{!"ossl_ech_ctx_st", !40, i64 0, !9, i64 8, !24, i64 16, !10, i64 24}
!40 = !{!"p1 _ZTS16ossl_echstore_st", !10, i64 0}
!41 = !{!"srp_ctx_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !9, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !9, i64 104, !5, i64 112, !24, i64 120}
!42 = !{!"p1 _ZTS9bignum_st", !10, i64 0}
!43 = !{!"dane_ctx_st", !44, i64 0, !9, i64 8, !6, i64 16, !24, i64 24}
!44 = !{!"p2 _ZTS9evp_md_st", !45, i64 0}
!45 = !{!"any p2 pointer", !10, i64 0}
!46 = !{!"p1 _ZTS32stack_st_SRTP_PROTECTION_PROFILE", !10, i64 0}
!47 = !{!"p1 _ZTS16sigalg_lookup_st", !10, i64 0}
!48 = !{!"p1 _ZTS17tls_group_info_st", !10, i64 0}
!49 = !{!"p1 _ZTS18tls_sigalg_info_st", !10, i64 0}
!50 = !{!"p1 _ZTS18ssl_token_store_st", !10, i64 0}
!51 = !{!24, !24, i64 0}
!52 = !{!12, !14, i64 24}
!53 = !{!20, !14, i64 8}
!54 = !{!55, !10, i64 64}
!55 = !{!"ssl_method_st", !5, i64 0, !5, i64 4, !24, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !56, i64 216, !10, i64 224, !10, i64 232, !10, i64 240}
!56 = !{!"p1 _ZTS15ssl3_enc_method", !10, i64 0}
!57 = !{!55, !10, i64 72}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
end_hunk_0
